Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4047D201DBA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 00:04:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=EcWe9gV2abkB7shvpbJSFy8WdFjBUhzafP2372ncprg=; b=Bi9
	HxpUavVZzwsVvzdLsrjBlvzKoba38tGzJyh2VkJH32/0CXHOU5jJzHqqnXBLc4w3lKgJDssKg5vfr
	OOa9r2WOGBEvt8mK2lhDBG0LNyKZ5ERbAemUBSlX5nnm5+GJId4Hnb4jzzB/ZFffWyFswl1JQ1dyS
	5TvxcEWiPmRZ+FaNAXfvbruzApQ+iYgq7BhMkLYWglQgpmsarItgErkvE9rJsNcCex5PO/LC2tUFf
	ureIEAkVR+kEMD9+t3VmzoAGymbWg+LKtZIM8clF5uR29tQQrlDLhd0TByEc5rv3xmx++vphmJrI5
	/PPeWS1XDl9kjO82SMw+0zPrk8xNrAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmP77-0003YW-GN; Fri, 19 Jun 2020 22:03:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmP6y-0003Xu-0c
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 22:03:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C0823D6E;
 Fri, 19 Jun 2020 15:03:46 -0700 (PDT)
Received: from e120937-lin.home (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B88053F71F;
 Fri, 19 Jun 2020 15:03:45 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] firmware: arm_scmi: Fix SCMI Generic Power Domain probing
Date: Fri, 19 Jun 2020 23:03:30 +0100
Message-Id: <20200619220330.12217-1-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_150348_145872_B5DAD32B 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Jonathan.Cameron@Huawei.com, cristian.marussi@arm.com,
 james.quinlan@broadcom.com, lukasz.luba@arm.com, sudeep.holla@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When, at probe time, an SCMI communication failure inhibits the capacity to
query power domains states, such domains should be skipped.

Registering partially initialized SCMI Power Domains with GenPD causes a
Kernel panic.

[  292.593774] arm-scmi firmware:scmi: timed out in resp(caller: scmi_power_state_get+0xa4/0xd0)
[  292.602369] scmi-power-domain scmi_dev.2: failed to get state for domain 9
[  292.609366] Unable to handle kernel NULL pointer dereference at virtual address 0000000000000000
[  292.618190] Mem abort info:
[  292.620982]   ESR = 0x96000006
[  292.624065]   EC = 0x25: DABT (current EL), IL = 32 bits
[  292.629403]   SET = 0, FnV = 0
[  292.632474]   EA = 0, S1PTW = 0
[  292.635641] Data abort info:
[  292.638542]   ISV = 0, ISS = 0x00000006
[  292.642396]   CM = 0, WnR = 0
[  292.645364] user pgtable: 4k pages, 48-bit VAs, pgdp=00000009f3691000
[  292.651838] [0000000000000000] pgd=00000009f1ca0003, p4d=00000009f1ca0003, pud=00000009f35ea003, pmd=0000000000000000
[  292.662504] Internal error: Oops: 96000006 [#1] PREEMPT SMP
[  292.672272] CPU: 2 PID: 381 Comm: bash Not tainted 5.8.0-rc1-00011-gebd118c2cca8 #2
[  292.679938] Hardware name: ARM LTD ARM Juno Development Platform/ARM Juno Development Platform, BIOS EDK II Jan  3 2020
   292.662504] Internal error: Oops: 96000006 [#1] PREEMPT SMP
[  292.702221] pstate: 80000005 (Nzcv daif -PAN -UAO BTYPE=--)
[  292.707803] pc : of_genpd_add_provider_onecell+0x98/0x1f8
[  292.713207] lr : of_genpd_add_provider_onecell+0x48/0x1f8
[  292.718609] sp : ffff80001325bb50
[  292.721922] x29: ffff80001325bb50 x28: ffff000974b28ec0
[  292.727240] x27: ffff000971c11380 x26: ffff80001235b200
[  292.732558] x25: ffff00097eff82c0 x24: 0000000000000001
[  292.737874] x23: 00000000ffffffea x22: ffff00097eff82a8
[  292.743191] x21: ffff80001235b1e0 x20: 0000000000000000
[  292.748507] x19: ffff000974b2c080 x18: 0000000000000010
[  292.753823] x17: 0000000000000000 x16: 0000000000000000
[  292.759140] x15: ffffffffffffffff x14: ffff800012139948
[  292.764456] x13: ffff80009325b817 x12: ffff80001325b81f
[  292.769772] x11: ffff80001215a000 x10: 0000000000000a10
[  292.775089] x9 : ffff800010970e08 x8 : ffff000974e84370
[  292.780405] x7 : 00000000ffffffff x6 : ffff00097ef5c1f0
[  292.785721] x5 : ffff00097ef5c1f0 x4 : 0000000000000000
[  292.791038] x3 : ffff80001235b1e0 x2 : fffffffffffffc28
[  292.796354] x1 : 000000000000000a x0 : ffff000971c11680
[  292.801671] Call trace:
[  292.804117]  of_genpd_add_provider_onecell+0x98/0x1f8
[  292.809173]  scmi_pm_domain_probe+0x174/0x1e8
[  292.813533]  scmi_dev_probe+0x90/0xe0
[  292.817198]  really_probe+0xe4/0x448
[  292.820774]  driver_probe_device+0xfc/0x168
[  292.824961]  device_driver_attach+0x7c/0x88
[  292.829146]  bind_store+0xe8/0x128
[  292.832548]  drv_attr_store+0x2c/0x40
[  292.836214]  sysfs_kf_write+0x4c/0x60
[  292.839876]  kernfs_fop_write+0x114/0x230
[  292.843889]  __vfs_write+0x24/0x50
[  292.847291]  vfs_write+0xbc/0x1e0
[  292.850605]  ksys_write+0x70/0xf8
[  292.853919]  __arm64_sys_write+0x24/0x30
[  292.857844]  el0_svc_common.constprop.3+0x94/0x160
[  292.862638]  do_el0_svc+0x2c/0x98
[  292.865954]  el0_sync_handler+0x148/0x1a8
[  292.869964]  el0_sync+0x158/0x180
[  292.873281] Code: eb1a005f d10f6042 540000c1 1400004e (f941ec42)
[  292.879388] ---[ end trace 0077e182f3135393 ]---
[  292.884007] Kernel panic - not syncing: Fatal exception
[  292.889239] SMP: stopping secondary CPUs
[  292.893347] Kernel Offset: 0x140000 from 0xffff800010000000
[  292.898923] PHYS_OFFSET: 0x80000000
[  292.902411] CPU features: 0x240022,25806087
[  292.906594] Memory Limit: none
[  292.909655] ---[ end Kernel panic - not syncing: Fatal exception ]---

Do not register with GenPD any power domain that failed to be queried.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
 drivers/firmware/arm_scmi/scmi_pm_domain.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/firmware/arm_scmi/scmi_pm_domain.c b/drivers/firmware/arm_scmi/scmi_pm_domain.c
index bafbfe358f97..9e44479f0284 100644
--- a/drivers/firmware/arm_scmi/scmi_pm_domain.c
+++ b/drivers/firmware/arm_scmi/scmi_pm_domain.c
@@ -85,7 +85,10 @@ static int scmi_pm_domain_probe(struct scmi_device *sdev)
 	for (i = 0; i < num_domains; i++, scmi_pd++) {
 		u32 state;
 
-		domains[i] = &scmi_pd->genpd;
+		if (handle->power_ops->state_get(handle, i, &state)) {
+			dev_warn(dev, "failed to get state for domain %d\n", i);
+			continue;
+		}
 
 		scmi_pd->domain = i;
 		scmi_pd->handle = handle;
@@ -94,13 +97,10 @@ static int scmi_pm_domain_probe(struct scmi_device *sdev)
 		scmi_pd->genpd.power_off = scmi_pd_power_off;
 		scmi_pd->genpd.power_on = scmi_pd_power_on;
 
-		if (handle->power_ops->state_get(handle, i, &state)) {
-			dev_warn(dev, "failed to get state for domain %d\n", i);
-			continue;
-		}
-
 		pm_genpd_init(&scmi_pd->genpd, NULL,
 			      state == SCMI_POWER_STATE_GENERIC_OFF);
+
+		domains[i] = &scmi_pd->genpd;
 	}
 
 	scmi_pd_data->domains = domains;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

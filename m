Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCC41F2284
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:09:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IrMreIiHYPcdFz8alQ2GsDjinBd3auXV631E8y6S5zk=; b=HuuqysfUfvBdT1
	46YsK5+wDCTR5Y+CJjfGMT/Et8JHlp1NKdFAWiJvhMcnykUZywLC4IR4dXUKLZNo0VEiB5fijxQw/
	6gUSlbh3h13w/LOvVgWz6Qsldl/2FU2sY7w4QKTqTOfaYYPZZjIFhScbAOix7GC/D9NDOPF991DA6
	bOUk2yguvYdSLsBYkkaNn4hJJ566mxV3agPwgGqnsepp+3hx5yI8DbkBsK7MQ9CMzuXFj8Ho2LQR+
	wY4i2B40i6DZaUNxi2hL6nghsNo1zOzcSY1N+QS+F343RM6t0XuuBdu15E9mj1ZQhPcO7I2WC4lwX
	DawVHoy0eLIuCtpgdZ+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiQtM-0000MQ-1d; Mon, 08 Jun 2020 23:09:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiQrQ-0007FR-DZ
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 23:07:29 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DFD862087E;
 Mon,  8 Jun 2020 23:07:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591657639;
 bh=KeY6RO9Q9yvF6MpjhhdIDXm5QTdCoMZ8/UAisDVoSoY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WbgJ/i4sg4h8Y0wZ+arhDFkzAolxdi//qOflGTRZ87/9CJ3TkxA8Ju4nsTs9fdgVr
 gHnLOTex3yxdm4kvm8LAgfAfDWfZXImVluJFfr/w9BqxBGUvjN2ZDP0ljGyCFnNfr0
 HOhCHwuhvUJY+okaxINPSgaTw6feoTQ8DwVLLIeI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 057/274] pmu/smmuv3: Clear IRQ affinity hint on
 device removal
Date: Mon,  8 Jun 2020 19:02:30 -0400
Message-Id: <20200608230607.3361041-57-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_160720_585406_043DF398 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jean-Philippe Brucker <jean-philippe@linaro.org>

[ Upstream commit 10f6cd2af21bb44faab31a50ec3361d7649e5a39 ]

Currently when trying to remove the SMMUv3 PMU module we get a
WARN_ON_ONCE from free_irq(), because the affinity hint set during probe
hasn't been properly cleared.

[  238.878383] WARNING: CPU: 0 PID: 175 at kernel/irq/manage.c:1744 free_irq+0x324/0x358
...
[  238.897263] Call trace:
[  238.897998]  free_irq+0x324/0x358
[  238.898792]  devm_irq_release+0x18/0x28
[  238.899189]  release_nodes+0x1b0/0x228
[  238.899984]  devres_release_all+0x38/0x60
[  238.900779]  device_release_driver_internal+0x10c/0x1d0
[  238.901574]  driver_detach+0x50/0xe0
[  238.902368]  bus_remove_driver+0x5c/0xd8
[  238.903448]  driver_unregister+0x30/0x60
[  238.903958]  platform_driver_unregister+0x14/0x20
[  238.905075]  arm_smmu_pmu_exit+0x1c/0xecc [arm_smmuv3_pmu]
[  238.905547]  __arm64_sys_delete_module+0x14c/0x260
[  238.906342]  el0_svc_common.constprop.0+0x74/0x178
[  238.907355]  do_el0_svc+0x24/0x90
[  238.907932]  el0_sync_handler+0x11c/0x198
[  238.908979]  el0_sync+0x158/0x180

Just like the other perf drivers, clear the affinity hint before
releasing the device.

Fixes: 7d839b4b9e00 ("perf/smmuv3: Add arm64 smmuv3 pmu driver")
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
Link: https://lore.kernel.org/r/20200422084805.237738-1-jean-philippe@linaro.org
Signed-off-by: Will Deacon <will@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/perf/arm_smmuv3_pmu.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
index f01a57e5a5f3..48e28ef93a70 100644
--- a/drivers/perf/arm_smmuv3_pmu.c
+++ b/drivers/perf/arm_smmuv3_pmu.c
@@ -814,7 +814,7 @@ static int smmu_pmu_probe(struct platform_device *pdev)
 	if (err) {
 		dev_err(dev, "Error %d registering hotplug, PMU @%pa\n",
 			err, &res_0->start);
-		return err;
+		goto out_clear_affinity;
 	}
 
 	err = perf_pmu_register(&smmu_pmu->pmu, name, -1);
@@ -833,6 +833,8 @@ static int smmu_pmu_probe(struct platform_device *pdev)
 
 out_unregister:
 	cpuhp_state_remove_instance_nocalls(cpuhp_state_num, &smmu_pmu->node);
+out_clear_affinity:
+	irq_set_affinity_hint(smmu_pmu->irq, NULL);
 	return err;
 }
 
@@ -842,6 +844,7 @@ static int smmu_pmu_remove(struct platform_device *pdev)
 
 	perf_pmu_unregister(&smmu_pmu->pmu);
 	cpuhp_state_remove_instance_nocalls(cpuhp_state_num, &smmu_pmu->node);
+	irq_set_affinity_hint(smmu_pmu->irq, NULL);
 
 	return 0;
 }
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

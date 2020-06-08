Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B701F266D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1+mVRYzHt6IGmjEAtzuaAMfGPP1KICP/GFdsE4QsnSE=; b=PQLLzzdo6gclM/
	9VK3ErkrmkKRX93JhRNoUvqPtau1QnQd+n60eXN7icYMYUPUfpuaP1CZnxJw19Nk3s1U6B8so6CxM
	3q7WytKA31561xsr1xuZoU03UtCCa5+OLnCKkSGZWbHR+fiqtEySfEWrX70ugyfcWv8fOvzYEVqr1
	mxTHbGA9NcH5SDuQW+hCh7jDW5qpszpIjXw7oxlJmf93T7E7Mfuaw78s81uT6pP9HY038Vn3LCtZ2
	pHgX7c2ux6toTFrjeQ8gaifvpUWGM9PcyIy0tx42ydMdfLUEYx0RxeYRzUd//hWHpRUG01nOZdrXr
	aHzg2FD7kN1Wgrxw30Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiRNK-0007yE-QB; Mon, 08 Jun 2020 23:40:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiR3L-00060z-Px
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 23:19:42 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C327B20814;
 Mon,  8 Jun 2020 23:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591658379;
 bh=eVIpr8/ofo5takKWsPqMw/Pep/g6XXz7jFfvgEA1vCQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MXO6zPlrjp4O3jDi/ibgXtprthp4fj9qT5rByDQdbFbe0Jsrdq9MHh5Fw+iBV16pj
 SRKMM1HkgKb8H9uz4F/kzzvprWnrAl1O6cwKWkY3aPBJkoN26AWlHuka/1aOR0gVJc
 tU4tgLYYVGqd22I1vATNYJrqKqEg/LLNBPF0QfUo=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 041/175] pmu/smmuv3: Clear IRQ affinity hint on
 device removal
Date: Mon,  8 Jun 2020 19:16:34 -0400
Message-Id: <20200608231848.3366970-41-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231848.3366970-1-sashal@kernel.org>
References: <20200608231848.3366970-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_161939_870966_BD3075A7 
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
index 2f8787276d9b..3269232ff570 100644
--- a/drivers/perf/arm_smmuv3_pmu.c
+++ b/drivers/perf/arm_smmuv3_pmu.c
@@ -815,7 +815,7 @@ static int smmu_pmu_probe(struct platform_device *pdev)
 	if (err) {
 		dev_err(dev, "Error %d registering hotplug, PMU @%pa\n",
 			err, &res_0->start);
-		return err;
+		goto out_clear_affinity;
 	}
 
 	err = perf_pmu_register(&smmu_pmu->pmu, name, -1);
@@ -834,6 +834,8 @@ static int smmu_pmu_probe(struct platform_device *pdev)
 
 out_unregister:
 	cpuhp_state_remove_instance_nocalls(cpuhp_state_num, &smmu_pmu->node);
+out_clear_affinity:
+	irq_set_affinity_hint(smmu_pmu->irq, NULL);
 	return err;
 }
 
@@ -843,6 +845,7 @@ static int smmu_pmu_remove(struct platform_device *pdev)
 
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

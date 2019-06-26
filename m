Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48527563AA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 09:50:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TwEtMUWAJLQUQuSs8FzlKz5RnnNCMBdvJ0mh7GiTmUM=; b=n2J3bFJWSzJvoo
	nNfmflJjX7jdv2WwZNT0ho3Fnbt6uxFupJ+B7ZEhRfEhu2lqaCcC72Cbu80hi7bzBOdGpb3b4L8x/
	kWKMTJMk1wXNQRtU8m37BYMECY49MMgW3qoVcncZmYQk9mdg37m3YAxToHcPR8bYSxKq2NFXuSp7y
	itlvJVLi7gtUIPmY/cixrVU5XgensgnqVUHX0CXtbhS8/gdNs7VcV/7StbB9QgQJ3FKBmvBAYRMB2
	DcUunNd3TDAvjeMglraElxrQmvKSziSOGd27U/0nZg4SWMyKUMCaw4yGexhmMVLZ/Rh9umZvavMG2
	MHpyoWF7T/dDnNrULxvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg2h3-00033w-EG; Wed, 26 Jun 2019 07:50:13 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg2gj-00033N-Ux
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 07:49:55 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5Q7nkRO053910;
 Wed, 26 Jun 2019 02:49:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561535386;
 bh=zmZI9L/7aa+aZonFo/L+XtFMZfNbn+xOwQY5rhl7174=;
 h=From:To:CC:Subject:Date;
 b=yC7kwJlTN4tagiYZNYbJtSHvs7TZGr9esErsXGZeGArQ48iTBrRfjthe+IasZ9RXX
 Qy5OB9EjiVzQFumPjukWOn2ZmfD+eklfYFBvGnyE+yWchBwRvMF0wI/X2cwOll1lwb
 7xIpH8z5SOMT6VvNUbq3HphzdYsiUjmQtsm/fkJo=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5Q7nkSG004765
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 26 Jun 2019 02:49:46 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 26
 Jun 2019 02:49:45 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 26 Jun 2019 02:49:45 -0500
Received: from a0393675ula.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5Q7nhd5049598;
 Wed, 26 Jun 2019 02:49:43 -0500
From: Keerthy <j-keerthy@ti.com>
To: <tony@atomide.com>, <ssantosh@kernel.org>
Subject: [PATCH] soc: ti: pm33xx: Fix static checker warnings
Date: Wed, 26 Jun 2019 13:20:14 +0530
Message-ID: <20190626075014.2911-1-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_004954_105005_EE55A358 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: d-gerlach@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, linux-arm-kernel@lists.infradead.org,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch fixes a bunch of static checker warnings.

Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Keerthy <j-keerthy@ti.com>
---
 drivers/soc/ti/pm33xx.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/soc/ti/pm33xx.c b/drivers/soc/ti/pm33xx.c
index bb77c220b6f8..5f3a4499cf40 100644
--- a/drivers/soc/ti/pm33xx.c
+++ b/drivers/soc/ti/pm33xx.c
@@ -252,7 +252,7 @@ static int am33xx_pm_begin(suspend_state_t state)
 	if (state == PM_SUSPEND_MEM && pm_ops->check_off_mode_enable()) {
 		nvmem = devm_nvmem_device_get(&omap_rtc->dev,
 					      "omap_rtc_scratch0");
-		if (nvmem)
+		if (!IS_ERR(nvmem))
 			nvmem_device_write(nvmem, RTC_SCRATCH_MAGIC_REG * 4, 4,
 					   (void *)&rtc_magic_val);
 		rtc_only_idle = 1;
@@ -278,9 +278,12 @@ static void am33xx_pm_end(void)
 	struct nvmem_device *nvmem;
 
 	nvmem = devm_nvmem_device_get(&omap_rtc->dev, "omap_rtc_scratch0");
+	if (IS_ERR(nvmem))
+		return;
+
 	m3_ipc->ops->finish_low_power(m3_ipc);
 	if (rtc_only_idle) {
-		if (retrigger_irq)
+		if (retrigger_irq) {
 			/*
 			 * 32 bits of Interrupt Set-Pending correspond to 32
 			 * 32 interrupts. Compute the bit offset of the
@@ -291,8 +294,10 @@ static void am33xx_pm_end(void)
 			writel_relaxed(1 << (retrigger_irq & 31),
 				       gic_dist_base + GIC_INT_SET_PENDING_BASE
 				       + retrigger_irq / 32 * 4);
-			nvmem_device_write(nvmem, RTC_SCRATCH_MAGIC_REG * 4, 4,
-					   (void *)&val);
+		}
+
+		nvmem_device_write(nvmem, RTC_SCRATCH_MAGIC_REG * 4, 4,
+				   (void *)&val);
 	}
 
 	rtc_only_idle = 0;
@@ -415,7 +420,7 @@ static int am33xx_pm_rtc_setup(void)
 
 		nvmem = devm_nvmem_device_get(&omap_rtc->dev,
 					      "omap_rtc_scratch0");
-		if (nvmem) {
+		if (!IS_ERR(nvmem)) {
 			nvmem_device_read(nvmem, RTC_SCRATCH_MAGIC_REG * 4,
 					  4, (void *)&rtc_magic_val);
 			if ((rtc_magic_val & 0xffff) != RTC_REG_BOOT_MAGIC)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

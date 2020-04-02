Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B8819C0A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 14:02:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9y500/wuCfupt1dYExM7lSdgLZGG01v8xk0O3pi2MdA=; b=NjzkGB/+AZ8fUM
	OJps3Q3xRHyCPTuHMe9GUqnQJmkYnWxkS+KpI8HZCe1BcyMpioFyTtlMhReGWxYUkf8FtN+SiGorO
	jc6K1g5SLESob3GUMFtTl2bmu8n0cyAoXF1rG7ac9ErgMWWG+bZA9tKbkgVOgcwJ8qcxf/mvx8ia/
	L6DfDUtjAVBM1jGlVxZe9ayX3gaL1ksZEubY5H2OA8OfdFdpa9lX2eqFM3tz7MmpFJeiA4WVtm8vw
	CcpeuannEgcIhnr5j3Ldnq/U4SoYddiQ3M5il4Y2TYEkLU+nKSHt74YnKt7wMtbYDhnTojvjUh7QN
	jf3s6AwIB7ydcmhyKbMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJyYV-0007K8-MG; Thu, 02 Apr 2020 12:02:43 +0000
Received: from cmccmta1.chinamobile.com ([221.176.66.79])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJyYO-0007Jk-EI
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 12:02:38 +0000
Received: from spf.mail.chinamobile.com (unknown[172.16.121.11]) by
 rmmx-syy-dmz-app04-12004 (RichMail) with SMTP id 2ee45e85d43a72f-5e895;
 Thu, 02 Apr 2020 20:02:03 +0800 (CST)
X-RM-TRANSID: 2ee45e85d43a72f-5e895
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from localhost.localdomain (unknown[112.25.154.146])
 by rmsmtp-syy-appsvr06-12006 (RichMail) with SMTP id 2ee65e85d439357-4c8f6;
 Thu, 02 Apr 2020 20:02:03 +0800 (CST)
X-RM-TRANSID: 2ee65e85d439357-4c8f6
From: Tang Bin <tangbin@cmss.chinamobile.com>
To: will@kernel.org,
	mark.rutland@arm.com
Subject: [PATCH] perf:arm_spe:Avoid duplicate printouts
Date: Thu,  2 Apr 2020 20:03:30 +0800
Message-Id: <20200402120330.19468-1-tangbin@cmss.chinamobile.com>
X-Mailer: git-send-email 2.20.1.windows.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_050236_972042_5922BF24 
X-CRM114-Status: UNSURE (   7.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [221.176.66.79 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Tang Bin <tangbin@cmss.chinamobile.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Because platform_get_irq() has dev_err(),so this place
should be removed.

Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
---
 drivers/perf/arm_spe_pmu.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/perf/arm_spe_pmu.c b/drivers/perf/arm_spe_pmu.c
index 4e4984a55..dd561880d 100644
--- a/drivers/perf/arm_spe_pmu.c
+++ b/drivers/perf/arm_spe_pmu.c
@@ -1133,10 +1133,8 @@ static int arm_spe_pmu_irq_probe(struct arm_spe_pmu *spe_pmu)
 	struct platform_device *pdev = spe_pmu->pdev;
 	int irq = platform_get_irq(pdev, 0);
 
-	if (irq < 0) {
-		dev_err(&pdev->dev, "failed to get IRQ (%d)\n", irq);
+	if (irq < 0)
 		return -ENXIO;
-	}
 
 	if (!irq_is_percpu(irq)) {
 		dev_err(&pdev->dev, "expected PPI but got SPI (%d)\n", irq);
-- 
2.20.1.windows.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

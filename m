Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3043C20119
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 10:12:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R999ku/bupXFlJphPPliQG67074ZpBhMZvHi7TenoGU=; b=n01XRYhe83QCW/
	TETDmSSTFH5ERylimekeLmNR1mluv5vaSwEoBktLKAyf0AUpVFhXcpuejJzeQWVaD3b5TTrq2HHpm
	hPIilWFpDu4yNMTmw/KCVfjSfIOAUucVNkekODOtNKtnJ3HEOEidpTkCLI/9lzoHnBOPrnBGl3lYm
	Fe6+Yvm38zp2KyxYWkrr8BhzCI+U703Y81MZfct7RjkVHfmtc32j7gyACZaTicM2brASRqC/ksUp+
	Lj7i0oftKehZcGoAJHlARXMUsjVf8y1k8oY3mT6OK6SHuRqGpZysFS1DYBEk07tu1aqCoYX705oMQ
	OIr/jmp/B0AL98s0S8wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRBVA-0000cE-0D; Thu, 16 May 2019 08:12:32 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRBU4-0007p9-CA; Thu, 16 May 2019 08:11:26 +0000
X-UUID: 90029308ecd2461a87e2f476e16efc0d-20190516
X-UUID: 90029308ecd2461a87e2f476e16efc0d-20190516
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chun-hung.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 834763790; Thu, 16 May 2019 00:11:17 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 01:11:16 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 16:11:13 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 16 May 2019 16:11:13 +0800
From: Chun-Hung Wu <chun-hung.wu@mediatek.com>
To: Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Lars-Peter Clausen <lars@metafoo.de>, Peter Meerwald-Stadler
 <pmeerw@pmeerw.net>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 3/4] iio: adc: mediatek: SET_LATE_SYSTEM_SLEEP_PM_OPS support
Date: Thu, 16 May 2019 16:10:46 +0800
Message-ID: <1557994247-16739-4-git-send-email-chun-hung.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557994247-16739-1-git-send-email-chun-hung.wu@mediatek.com>
References: <1557994247-16739-1-git-send-email-chun-hung.wu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: F9CC925050B55AC7B0452B4120ABC255673E25AD8C095D8DABCA74CE87BE3D7E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_011124_418171_9038EC5C 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-iio@vger.kernel.org, Chun-Hung Wu <chun-hung.wu@mediatek.com>,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 jg_poxu@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

  Move suspend/resume to late_suspend and
early_resume to gurantee users can use auxadc
driver at suspend/resume stage.

Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
---
 drivers/iio/adc/mt6577_auxadc.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/iio/adc/mt6577_auxadc.c b/drivers/iio/adc/mt6577_auxadc.c
index e1bdcc0..58d7cb2 100644
--- a/drivers/iio/adc/mt6577_auxadc.c
+++ b/drivers/iio/adc/mt6577_auxadc.c
@@ -326,9 +326,10 @@ static int mt6577_auxadc_remove(struct platform_device *pdev)
 	return 0;
 }
 
-static SIMPLE_DEV_PM_OPS(mt6577_auxadc_pm_ops,
-			 mt6577_auxadc_suspend,
-			 mt6577_auxadc_resume);
+static const struct dev_pm_ops mt6577_auxadc_pm_ops = {
+	SET_LATE_SYSTEM_SLEEP_PM_OPS(mt6577_auxadc_suspend,
+				     mt6577_auxadc_resume)
+};
 
 static const struct of_device_id mt6577_auxadc_of_match[] = {
 	{ .compatible = "mediatek,mt2701-auxadc", .data = &mt8173_compat},
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

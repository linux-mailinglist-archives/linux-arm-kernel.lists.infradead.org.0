Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 280C611E615
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 16:06:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CSsYk8o26L4QfpuQWyeLQlWyq3wnj8u946K0vGcaRGw=; b=LCcbIvNTqOkjN9
	0DDBJ0qdApbATusEpWO2h/HzRjXnuOlDNqmz8XDu3Rp1rlkPFmN4DE2plBdsJ2GPXOiu0tFdHunk0
	9bDcA6KIqIau1fkU0DZDggZZu7KUWcDry+WWJtVAgs8x0DeVmpbv4rzQxH6b2/LLvG5++JfYUkuae
	p0HA8aD1v3WZe9NgTAV1Cf4Cc3ynbRtQ0eiBUFVojF4ukzLTnY+jAQ+bhHVDFHfYXwtjF1kVuPu9I
	7mJZMLkVQ8yTkprwIUsGwv5XfXA6xOduYBsQbv5eI+Vz03GtNm3S48QKv4cQAfRbhxrUhP/XS6WOl
	qRowi4bM6EX1lznGEBCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifmWY-0008B4-MQ; Fri, 13 Dec 2019 15:06:34 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifmVe-0007Yd-Qm
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 15:05:41 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: oGwtiwfYvjjZREwj4sUA+zqOCDJsiGr6mTMDgf/guLFS7iQtfF1E8lv4yQo+jj9CZzN/rt1VQG
 sN2jYAElRxkItkzsoYd9LugIWwQlBjQVuxELGVGCxcGrJErh3HnPmvLjDrFuYP2uZnOInzSv3a
 7kr5IrYd5P+qtG9q6nFKcRfAetEpIVphd8S8TE582layuQi2RTgxpPhL7m/6fYalfd1y7w0urK
 ukHNG8SP2vk3uRNzV3S9hyZRt8XlpiFrfyIQnh6saJrjqOE1vlk1zuKdLAMTdxqLL8kHDguN40
 aLI=
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="60293567"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Dec 2019 08:05:35 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Dec 2019 08:05:34 -0700
Received: from m18063-ThinkPad-T460p.microchip.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 13 Dec 2019 08:05:30 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <sam@ravnborg.org>, <bbrezillon@kernel.org>, <airlied@linux.ie>,
 <daniel@ffwll.ch>, <nicolas.ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <ludovic.desroches@microchip.com>,
 <lee.jones@linaro.org>
Subject: [PATCH v2 6/6] Revert "drm: atmel-hlcdc: enable sys_clk during
 initalization."
Date: Fri, 13 Dec 2019 17:04:56 +0200
Message-ID: <1576249496-4849-7-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576249496-4849-1-git-send-email-claudiu.beznea@microchip.com>
References: <1576249496-4849-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_070538_890320_8C29C7B5 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sandeep Sheriker Mallikarjun <sandeepsheriker.mallikarjun@microchip.com>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit d2c755e66617620b729041c625a6396c81d1231c
("drm: atmel-hlcdc: enable sys_clk during initalization."). With
commit "drm: atmel-hlcdc: enable clock before configuring timing engine"
there is no need for this patch. Code is also simpler.

Cc: Sandeep Sheriker Mallikarjun <sandeepsheriker.mallikarjun@microchip.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---

Hi Sam,

I still kept this as a patch as I didn't got any answer from you at my
last email up to this moment.

If you think it is better to squash this one with patch 2/6 in this seris
let me know.

Thank you,
Claudiu Beznea

 drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c | 19 +------------------
 1 file changed, 1 insertion(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
index 8dc917a1270b..112aa5066cee 100644
--- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
+++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
@@ -721,18 +721,10 @@ static int atmel_hlcdc_dc_load(struct drm_device *dev)
 	dc->hlcdc = dev_get_drvdata(dev->dev->parent);
 	dev->dev_private = dc;
 
-	if (dc->desc->fixed_clksrc) {
-		ret = clk_prepare_enable(dc->hlcdc->sys_clk);
-		if (ret) {
-			dev_err(dev->dev, "failed to enable sys_clk\n");
-			goto err_destroy_wq;
-		}
-	}
-
 	ret = clk_prepare_enable(dc->hlcdc->periph_clk);
 	if (ret) {
 		dev_err(dev->dev, "failed to enable periph_clk\n");
-		goto err_sys_clk_disable;
+		goto err_destroy_wq;
 	}
 
 	pm_runtime_enable(dev->dev);
@@ -768,9 +760,6 @@ static int atmel_hlcdc_dc_load(struct drm_device *dev)
 err_periph_clk_disable:
 	pm_runtime_disable(dev->dev);
 	clk_disable_unprepare(dc->hlcdc->periph_clk);
-err_sys_clk_disable:
-	if (dc->desc->fixed_clksrc)
-		clk_disable_unprepare(dc->hlcdc->sys_clk);
 
 err_destroy_wq:
 	destroy_workqueue(dc->wq);
@@ -795,8 +784,6 @@ static void atmel_hlcdc_dc_unload(struct drm_device *dev)
 
 	pm_runtime_disable(dev->dev);
 	clk_disable_unprepare(dc->hlcdc->periph_clk);
-	if (dc->desc->fixed_clksrc)
-		clk_disable_unprepare(dc->hlcdc->sys_clk);
 	destroy_workqueue(dc->wq);
 }
 
@@ -910,8 +897,6 @@ static int atmel_hlcdc_dc_drm_suspend(struct device *dev)
 	regmap_read(regmap, ATMEL_HLCDC_IMR, &dc->suspend.imr);
 	regmap_write(regmap, ATMEL_HLCDC_IDR, dc->suspend.imr);
 	clk_disable_unprepare(dc->hlcdc->periph_clk);
-	if (dc->desc->fixed_clksrc)
-		clk_disable_unprepare(dc->hlcdc->sys_clk);
 
 	return 0;
 }
@@ -921,8 +906,6 @@ static int atmel_hlcdc_dc_drm_resume(struct device *dev)
 	struct drm_device *drm_dev = dev_get_drvdata(dev);
 	struct atmel_hlcdc_dc *dc = drm_dev->dev_private;
 
-	if (dc->desc->fixed_clksrc)
-		clk_prepare_enable(dc->hlcdc->sys_clk);
 	clk_prepare_enable(dc->hlcdc->periph_clk);
 	regmap_write(dc->hlcdc->regmap, ATMEL_HLCDC_IER, dc->suspend.imr);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

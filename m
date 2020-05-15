Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A361D4C5B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 13:17:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZMPDvRXnfxGP4rjsIz/jZTT6f25PwGKp4r3ryfOsltk=; b=RSS8mJVCsdoK40
	Eq2oeS2kdnA1Kje3S2KNYXK26w7S5rqdM7UsL0DLoU8+rq5aV+pzWRtKlPhx66U9n5BltB8jLnria
	N6sW50Y/yn1KNvqJ+mCCcKdotrJonDqeX3dhIqn9aOgiuFZDQ/X4h+c34kl/Hr13KwflkkCV/ZbZP
	sUOPN+xnT6mOL9H3TFhjwWGZaobEl5k6yjeHhs04Sa4HgGkGWHP9UOe9i2+WlHFuqM1H36mJmUESm
	Ymw7r5Z1ov3i8uv/D5NNDo49JIxsAYOnxibXjd6ebkXt0flBc71ty1INBoydlwBsfYy/QDgmB3poP
	2KtEwiDVRkIo7zRwCzOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZYKu-0005Uw-9K; Fri, 15 May 2020 11:17:04 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZYKM-0005H4-Vs
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 11:16:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589541390; x=1621077390;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=/40a+Xw95DGQQJ2+L1yejq9q/M1oXwbhYnFs602PHAg=;
 b=rac3qAEVKVX0x1qZHARvr7OO74v00zL6YC5FBE7c4vzbKY02yOpTjNGX
 2QVrMeMLBoLRDUgPuXITCuxpNVN49HMFJhvBN+utqP6WzyEg4rLt2pdg+
 EdYMZ2vws37xFJmVggAtvEhU4bgQPs7w7YpfhePQLjIKzzLijgugAPJiV
 PooGx2WKrr2bs+7zryWNCHliuYCZtrnjJmz+8YBA4+DNbQLKOhvwBfcs1
 XRNMYl0ANUUt7C5fiWRnFDPN+BSO4EJqW+y9h8fIhr3kZ8l+TGTEwyRiI
 DunKzGicvxqrRDz555yXLQY/GzCCZhSLDDt9rkqQQP8Rd8ruVJy+Yy9HT Q==;
IronPort-SDR: ZhHdvmBtstDBEEBJRD9Jbcrvs7hNd2Go3Q8JoBEOo3ZuAJJ5DGDu+8hCSDdkNMF7ZcFd15wgLs
 EVsr8Hj/staXk/mfe15ierBCoEiY7sTU9xIj+44a0+ZvNOViKajve5uLPwR6fJQrBOjniQ703N
 RMOLNPnfe/EsGNMyutsOfUmAFU30A/gb5/KX3YiT2lRLURx+8fmqxmT/PyPIaIAtJAentyHn0t
 Oyn0ryQi+3F9/ZtcRWNRLWnxHJFxzHb2R8QvlpMdgCTY+5e+8WqZDQlEFIEE6v6B+Lqm4sUM7c
 rE8=
X-IronPort-AV: E=Sophos;i="5.73,395,1583218800"; d="scan'208";a="75380490"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 May 2020 04:16:26 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 May 2020 04:16:26 -0700
Received: from cristi-P53.lan (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Fri, 15 May 2020 04:16:23 -0700
From: <cristian.birsan@microchip.com>
To: <balbi@kernel.org>, <gregkh@linuxfoundation.org>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-usb@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 1/7] usb: gadget: udc: atmel: use
 of_find_matching_node_and_match
Date: Fri, 15 May 2020 14:16:25 +0300
Message-ID: <20200515111631.31210-2-cristian.birsan@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200515111631.31210-1-cristian.birsan@microchip.com>
References: <20200515111631.31210-1-cristian.birsan@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_041631_077195_2C40EA6C 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Claudiu Beznea <claudiu.beznea@microchip.com>

Instead of trying to match every possible compatible use
of_find_matching_node_and_match() and pass the compatible array.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/usb/gadget/udc/atmel_usba_udc.c | 25 ++++++++++++++++++-------
 1 file changed, 18 insertions(+), 7 deletions(-)

diff --git a/drivers/usb/gadget/udc/atmel_usba_udc.c b/drivers/usb/gadget/udc/atmel_usba_udc.c
index 22200341c8ec..2b154085dc6a 100644
--- a/drivers/usb/gadget/udc/atmel_usba_udc.c
+++ b/drivers/usb/gadget/udc/atmel_usba_udc.c
@@ -2052,6 +2052,13 @@ static const struct of_device_id atmel_udc_dt_ids[] = {
 
 MODULE_DEVICE_TABLE(of, atmel_udc_dt_ids);
 
+static const struct of_device_id atmel_pmc_dt_ids[] = {
+	{ .compatible = "atmel,at91sam9g45-pmc" },
+	{ .compatible = "atmel,at91sam9rl-pmc" },
+	{ .compatible = "atmel,at91sam9x5-pmc" },
+	{ /* sentinel */ }
+};
+
 static struct usba_ep * atmel_udc_of_init(struct platform_device *pdev,
 						    struct usba_udc *udc)
 {
@@ -2067,13 +2074,17 @@ static struct usba_ep * atmel_udc_of_init(struct platform_device *pdev,
 		return ERR_PTR(-EINVAL);
 
 	udc->errata = match->data;
-	udc->pmc = syscon_regmap_lookup_by_compatible("atmel,at91sam9g45-pmc");
-	if (IS_ERR(udc->pmc))
-		udc->pmc = syscon_regmap_lookup_by_compatible("atmel,at91sam9rl-pmc");
-	if (IS_ERR(udc->pmc))
-		udc->pmc = syscon_regmap_lookup_by_compatible("atmel,at91sam9x5-pmc");
-	if (udc->errata && IS_ERR(udc->pmc))
-		return ERR_CAST(udc->pmc);
+	if (udc->errata) {
+		pp = of_find_matching_node_and_match(NULL, atmel_pmc_dt_ids,
+						     NULL);
+		if (!pp)
+			return ERR_PTR(-ENODEV);
+
+		udc->pmc = syscon_node_to_regmap(pp);
+		of_node_put(pp);
+		if (IS_ERR(udc->pmc))
+			return ERR_CAST(udc->pmc);
+	}
 
 	udc->num_ep = 0;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

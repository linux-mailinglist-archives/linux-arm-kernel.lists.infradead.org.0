Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06600190ABA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 11:22:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FSWmxwu9dbBZvp9jAtJ50T3fbTjoziq51bL5FBeELEg=; b=QE0SbFBxdve4d9
	hCz42OShxMsUvSz0RqrDeWQaBu/fTApvt1l4n7jJhhq9wDUq5X0mqK+W3ZvUijZYaTH4sWPjlbOB4
	xQLgJQuQpBpKco2IQr8BaApe3QP+eqaxHA9qUMX0dhox02FCzE1xjN178A+dOgTOZBSZ2ALlk0ZdR
	QvvcMi7bXzDN2DSXzihrmrkrF7SMeAhGijYfClPc2nygU6aC8KVXpYrDKprHXyrmDXkqVDWmpCxDk
	SBy/6EDBMie+f18KNryUVUwihxEix0AjwnLppGngf3NYqHWnXwkia9S5BANnKC0YYDaVfPPvzPk3O
	jEf1lwkAmG7lef31ZdoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGghV-00034f-Of; Tue, 24 Mar 2020 10:22:25 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGgft-0001s9-4Z
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 10:20:47 +0000
Received: by mail-wr1-x442.google.com with SMTP id d5so8341717wrn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 03:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KI52fHKBvtrGusYvw7Q2/R12M0oemVtKyr237b8MTzI=;
 b=HbnGU3ksWwKYaDYIFzK8ksR/SQ3onXKHrRVcznA3yWXtOExele27744AtZtENYylUE
 XB1eTwxK+uxLIsY4lUWbaiQFNNbL2xjGxqweWiHpMwD6qFrA/XwODfR5ZjsV3Sd70fqE
 zPkCCO2+5RHfajUT4DgFF/NadGCpAjNYpAf23vdcIg8M2eno9t59EcAUZPlN3NDYk8eT
 aTi/rWEhk70sT3a5+s8r5Cex/PZLYUKxH7UGPR2eSmaW1FmVroEJZ19QA4XiPpoWNihM
 /34ymlhMzhxe9mNCIQHrM+DXhoXZDCGXvL1a6zIM+dAwN0ggnsDSBUKCCg+SV7w477h0
 5cvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KI52fHKBvtrGusYvw7Q2/R12M0oemVtKyr237b8MTzI=;
 b=BMPy6iz0RBW07bkWTyvh7s54o9pdwAcFvkoc4/cwqYTu/X8JT07+NiHzx1p4VtdSOu
 P3d6X4SxIrZ7f7/3iK9qx23Qgpwsug6IydMxPUQ3/3LNu+1BCzvZfYuNTIKpx52xmUAn
 bKALd1xxjkHmDuOuBCnYgsLSVNg0R1iXZ7iOkOBgIeV47YSC98/Agd6iwMxbJ11dXj3u
 J3AbcXfPNZn7gJpiZ0LCEs56nHxHw2dWHDatveT20nUwGPKm08gYijLaKVDuoYEeDW8Z
 MY/VlhG7HxWRLolU5Rf7fvQpMgk+GBA5IF/l0g6GikVo9GdS6A59DqckLN2Km5PxAzuR
 cUCQ==
X-Gm-Message-State: ANhLgQ0eQxgxztqw7QrKAtakJGWHxIcpfiZ+dQTGPRQC6fSVvB3hXHae
 RJ/bdku3qPdijqMNb6RoJeJAMw==
X-Google-Smtp-Source: ADFU+vsBJo4JIByy6QwLcd6LZaesoFRObtwNkln++Z/CZwR3R4weo99RWZsyd59eYBY1tPqW5Q0MZA==
X-Received: by 2002:a05:6000:a:: with SMTP id
 h10mr8575345wrx.226.1585045243372; 
 Tue, 24 Mar 2020 03:20:43 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id h5sm2879527wro.83.2020.03.24.03.20.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 03:20:42 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: kishon@ti.com, balbi@kernel.org, khilman@baylibre.com,
 martin.blumenstingl@googlemail.com
Subject: [PATCH 04/13] usb: dwc3: meson-g12a: get the reset as shared
Date: Tue, 24 Mar 2020 11:20:21 +0100
Message-Id: <20200324102030.31000-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200324102030.31000-1-narmstrong@baylibre.com>
References: <20200324102030.31000-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_032045_225084_BD7C0703 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to support the Amlogic GXL/GXM SoCs, the reset line must
be handled as shared since also used by the PHYs.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/usb/dwc3/dwc3-meson-g12a.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/dwc3/dwc3-meson-g12a.c b/drivers/usb/dwc3/dwc3-meson-g12a.c
index f608ffb059b3..24a50dde685c 100644
--- a/drivers/usb/dwc3/dwc3-meson-g12a.c
+++ b/drivers/usb/dwc3/dwc3-meson-g12a.c
@@ -556,7 +556,7 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, priv);
 
-	priv->reset = devm_reset_control_get(dev, NULL);
+	priv->reset = devm_reset_control_get_shared(dev, NULL);
 	if (IS_ERR(priv->reset)) {
 		ret = PTR_ERR(priv->reset);
 		dev_err(dev, "failed to get device reset, err=%d\n", ret);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

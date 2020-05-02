Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98FC11C24F0
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 13:50:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PQqXQwnzaMxYT93PYi5agIYGcgNUXtdF+a5v/FzTEK8=; b=ebK3wbFtth8nca
	GbMIzNHbo9SBkjaKfOs//OnD9hOo9KmauL3KM4TuXpepGyjBtyRCkwWuiKHIp+7U/1UUGA51rLXxK
	hrtTsswmS6P3TZZ+pUGp6u3qeAzVNx4mAUlUonYKCqu/SugWlpgty4zBTCMmrXCtVk98ZeuDpqu/Q
	GkCzfEVCgiu9yLXg/ux7k1RRrYRgqd2uT9H+oGUxnnQKNkgIsPh+C9wsf6Sl26QOhWdZ/QTyrIAQ3
	w+62x83sp/GypnV1xBqANI/PIfCqLwsrEfm95hHldvcnh5CfxNTbSV/ygWhMlwXi5z+3Lwn/eRAUo
	fpd80GIzZ0piu3pkvsKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUqf2-0001Gu-85; Sat, 02 May 2020 11:50:24 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUqdH-0007gD-6I; Sat, 02 May 2020 11:48:36 +0000
Received: by mail-wr1-x442.google.com with SMTP id k1so14985637wrx.4;
 Sat, 02 May 2020 04:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n8Y8vyWaKjvq+2hEsWpjb9Kq65ykf9NzPsAFh4Ba51Q=;
 b=Qg8zpCQ1u60k5Adv5X4albNsxBd5cOJphyEaRw668QCuIQAcUO80mitHI84Wf+ezHu
 DCSUe4xWXO32INPx76D/UA3aaZXV+ZirOTfKbTwEuXsrVLwcaogx1MVqZCzOQTNuoGXm
 UJcGDkbipMc5NqcrzYpoJvCGS+c4HAOL6UhNNlq/jfpwMr10ukz+mVBfs5LsW83clJw7
 ZWocN0itCyqLfmUwCTZpHIJ79A80gIXZC/89GUaEHC//JvImGNYmlpI+UpgPvb9yvnzP
 8yO6fn9Tn06ISbl9VtWDLMx+yUK5ea3u5g9DuY1+BcnbLiyuGp4mc0QjNlOb1d2Ehza9
 fbsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n8Y8vyWaKjvq+2hEsWpjb9Kq65ykf9NzPsAFh4Ba51Q=;
 b=jJqnJvgDW5RNyY4p/aO/DiSo/lc1gqPMOBR7G4Gdm3s3WNQ85C1FIhVKV16yO37Uq0
 SwgQ6TRinRDkGScCE//v6IwWFfkwXgWk+ejFTdRZNprFIzeo/c1kMEh61cV4mzzPEEt1
 Cyh+8A7fwlhCmqo2yhICaBhRi/dK8jGJT2586AvOaYQW/P4Bmt3FjRFvROu90RJVfA2o
 NHt3mYDuhfBbgkhoFq7pv0otmjEyLWp1jLERjd0czqKoHkJy5fWlOAKsxBSrXnTj9Tes
 o9zYMMxwix5jtciWcZI8oR+MsWn5yEuMwpJOhRm+8H8NNJxGyfJvmdcsNiqlrL5Tjntp
 kyJA==
X-Gm-Message-State: AGi0PuYObNCmles2px2SY7PRGD59en8S1d8nToGiZznZWCfAs0meFtFa
 IceQTgUqheXSlDObc820FYo=
X-Google-Smtp-Source: APiQypJEGjjn2WBJ7BnD+n22PPH7FqjwGuI1I7UOjHzYKUERFtnsyH7o9OB5m4xWhzPPveuM14uX1g==
X-Received: by 2002:adf:e8c4:: with SMTP id k4mr8656076wrn.209.1588420113272; 
 Sat, 02 May 2020 04:48:33 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137142E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3714:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id s17sm3801599wmc.48.2020.05.02.04.48.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 May 2020 04:48:32 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: kishon@ti.com, robh+dt@kernel.org, vkoul@kernel.org,
 devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: [PATCH 6/6] phy: amlogic: meson8b-usb2: Add a compatible string for
 Meson8m2
Date: Sat,  2 May 2020 13:47:52 +0200
Message-Id: <20200502114752.1048500-7-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200502114752.1048500-1-martin.blumenstingl@googlemail.com>
References: <20200502114752.1048500-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_044835_250657_DB00859F 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 hexdump0815@googlemail.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, narmstrong@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 3.10 vendor kernel sets the ACA_ENABLE bit on Meson8b, Meson8m2 and
GXBB, but not on Meson8. Add a compatible string for Meson8m2 which also
sets that bit.
While here, also update the Kconfig text and MODULE_DESCRIPTION.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/phy/amlogic/Kconfig            | 2 +-
 drivers/phy/amlogic/phy-meson8b-usb2.c | 6 +++++-
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/amlogic/Kconfig b/drivers/phy/amlogic/Kconfig
index 3495b23af797..5ec53874d1ea 100644
--- a/drivers/phy/amlogic/Kconfig
+++ b/drivers/phy/amlogic/Kconfig
@@ -3,7 +3,7 @@
 # Phy drivers for Amlogic platforms
 #
 config PHY_MESON8B_USB2
-	tristate "Meson8, Meson8b and GXBB USB2 PHY driver"
+	tristate "Meson8, Meson8b, Meson8m2 and GXBB USB2 PHY driver"
 	default ARCH_MESON
 	depends on OF && (ARCH_MESON || COMPILE_TEST)
 	depends on USB_SUPPORT
diff --git a/drivers/phy/amlogic/phy-meson8b-usb2.c b/drivers/phy/amlogic/phy-meson8b-usb2.c
index 436dfa1a8a04..03c061dd5f0d 100644
--- a/drivers/phy/amlogic/phy-meson8b-usb2.c
+++ b/drivers/phy/amlogic/phy-meson8b-usb2.c
@@ -302,6 +302,10 @@ static const struct of_device_id phy_meson8b_usb2_of_match[] = {
 		.compatible = "amlogic,meson8b-usb2-phy",
 		.data = &phy_meson8b_usb2_match_data
 	},
+	{
+		.compatible = "amlogic,meson8m2-usb2-phy",
+		.data = &phy_meson8b_usb2_match_data
+	},
 	{
 		.compatible = "amlogic,meson-gxbb-usb2-phy",
 		.data = &phy_meson8b_usb2_match_data
@@ -320,5 +324,5 @@ static struct platform_driver phy_meson8b_usb2_driver = {
 module_platform_driver(phy_meson8b_usb2_driver);
 
 MODULE_AUTHOR("Martin Blumenstingl <martin.blumenstingl@googlemail.com>");
-MODULE_DESCRIPTION("Meson8, Meson8b and GXBB USB2 PHY driver");
+MODULE_DESCRIPTION("Meson8, Meson8b, Meson8m2 and GXBB USB2 PHY driver");
 MODULE_LICENSE("GPL");
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

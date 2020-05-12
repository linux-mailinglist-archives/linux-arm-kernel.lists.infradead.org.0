Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 262F81D0249
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 00:26:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HJi4X3Qlx0L4CaHMn+Mri9nqHeyPJouVuFOQ/4YKsm4=; b=SXQ3IOprsMMbvn
	OK3qq/UXIPBZoJ3f09hGHf056A/aMKK4/meBOJQXGFyGp5v6H7WWzyNXbCJ2GHrVMEW0cpiOENksD
	iz5WP9IkJnnC/mHJgdyq/iTsqAdkIoEPTo3k08EudpZrkB1/tOySjE47gPH562LNny6mBoFNL7jll
	6pMoiIQE8Igp7WfAmMbeOyRUdgUzYNmbjE57rBi9VPwKFsKIn2K7GtdE6suF5y9BHuECEt2Trv1Cv
	boWPWkSANWqVlhgJm3ArG+ct8BR7fYxiSOh44hWZX8BK1+yOVjiv0zZTdlXdtWwHtrJTFFZTN4zrG
	QwA8nF/yiQv/06QL+eBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYdMS-0007r7-W3; Tue, 12 May 2020 22:26:53 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYdKM-0003fQ-Jm; Tue, 12 May 2020 22:24:44 +0000
Received: by mail-wm1-x343.google.com with SMTP id g14so10386855wme.1;
 Tue, 12 May 2020 15:24:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=T6/lnxUNaPxPPXlTLJRj6AhR7vTkkb3EZ8aqBlM0OWk=;
 b=SrTd/ro7AvaEauxrrPTxDh3wvmrjWHigYFTwI6OCAchA0LTOoEpBuyhjdECOi3W5JP
 nloq0YQb4LVaFJ6VN6jMc4vp45mu2GK2NfcpiPSB7PZcjFY/G4TJ/29TgVI+riddVEoL
 zUHupnteXosHUlb6g5tBM3MRUBRaAsYsPgJw5YGIK6TJcOeGeHWH2noAhwAjEgJ7xuNp
 NNWp6qZDm9EDrFYn8eWry4sxi1E95y7tlM33Mvgvv9fYzK+5509XDCTKjRnTh53apiu2
 Uz9wc7CXgR42yew0ceWmexHuk4qJEcsX4qtzfW0GyiDsj0ePezsQiGlpEqBQz3rQxeQC
 ZpSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=T6/lnxUNaPxPPXlTLJRj6AhR7vTkkb3EZ8aqBlM0OWk=;
 b=eErfbnQ+0QxJmAserSkAvDjD2wtWmjANQloBMDXYxc6cFfMgJFbxT3ScL7aLacWdFq
 YNeyTpuw2zUrxxOFLMMH8jo20mTCTgm8hXGe7TUA5Oeuje190P2sIgusSARDy0VC7LvP
 6+b7a4I3Mk09ETNTE2Zo8jtMl/q0n/AVsetU4FkZWlxnZwHFjVSILc4B0gsuFnAnGh7o
 I/NJ+F77Q9ozMVYDPXs0bDdKe55E/KMoM67VKyH7hds34khFy0uzqHAOSQp6AUxk4/4Y
 I2souB7myZ1Qeb4Adcv0lpvcLUG4yBEfLEwzLL9s3iL3IS7Kfpw5EJ6YJrXJIDZ5y909
 Y08g==
X-Gm-Message-State: AGi0Pua+nxCYhIuWZ11/3LwFqljiRJzFyhcutDdE5eljMBJoikpNxkyn
 G70Ej7vmN9IyXiEl3fkQ520=
X-Google-Smtp-Source: APiQypIFFG9NZZdOzQj9vGlbbtC4ygVpYGhkLOO2LmO2sp/3GaDT2eT9UR+jUxCZfNfk8KIGsqyO7A==
X-Received: by 2002:a1c:f211:: with SMTP id s17mr43022273wmc.168.1589322280765; 
 Tue, 12 May 2020 15:24:40 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137132E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3713:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id b2sm21758758wrm.30.2020.05.12.15.24.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 15:24:40 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: kishon@ti.com, robh+dt@kernel.org, vkoul@kernel.org,
 devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: [PATCH v2 6/6] phy: amlogic: meson8b-usb2: Add a compatible string
 for Meson8m2
Date: Wed, 13 May 2020 00:24:24 +0200
Message-Id: <20200512222424.549351-7-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512222424.549351-1-martin.blumenstingl@googlemail.com>
References: <20200512222424.549351-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_152442_666052_18A466F9 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: narmstrong@baylibre.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Thomas Graichen <thomas.graichen@gmail.com>, hexdump0815@googlemail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 3.10 vendor kernel sets the ACA_ENABLE bit on Meson8b, Meson8m2 and
GXBB, but not on Meson8. Add a compatible string for Meson8m2 which also
sets that bit.
While here, also update the Kconfig text and MODULE_DESCRIPTION.

Tested-by: Thomas Graichen <thomas.graichen@gmail.com>
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

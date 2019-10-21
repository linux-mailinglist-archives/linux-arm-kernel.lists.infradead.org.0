Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B18DF2B8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 18:17:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sjPmoNtS0tic+wYi1Zc5RwzpBhMlMAefEx17hQcvfsc=; b=YnetFdR4Ie6+PmS0rHWlBlTJW1
	mLWMzO0ppa6FjxaCeR92cYbDCDgRa6Bzq3X9g+3b9kE1gZQingKdl390N01QooSYxcgQbvi2jyqS/
	Y87GbuPTUJf4KvVoEBAQRIJF18rk1hIw3vBFdYHvKoyJnuDBaeQbEuvZIoTyXU1X6GxcjkstjIgpy
	3vaSsXZ+FWPkj9LEcKQ7uFaxeQZXn0jAwctdiD8lizquXbk8OYUC3gZVhL0ndhh3crZnf29IX8YSH
	TrNfwouuY/ervfBl9e6Qmn9QMZRa2ZWMcvih8KmHCnj5WvfM+PzywfIoF8BSH7rKXR1z79TPWy8On
	RTurW/BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMaN7-0003nX-0x; Mon, 21 Oct 2019 16:17:29 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMaMv-0003n1-0m
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 16:17:18 +0000
Received: by mail-wm1-x343.google.com with SMTP id 3so13423258wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 09:17:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=lkDRxLx0e64Dw8F83EKAXaoP6GxpGN0qeMyvz3hwbCs=;
 b=NztH2lX/cIvVrXrCMiwfb5TW5vyGJtlgX/seuc3mVoXS+8ENIlD59Yhxxj/C7aH6nc
 D+l9KX/juO+goIqOHhPocDMBmP6S0JVCbSCWIABAUsLNlkQHw9ii0yFiJpKtKYPm8u/7
 VxSzHvKgHCei4sK4xixE4Ndh1b0yD4nfRgCS8xy9+a+zl9ZOM8DxmvVAixwpQaGhu8At
 uDqErRV911Yk4Q/tSfAeni6XtjJqhO18KQmOGl0FtMgK2lbDw4VYvWd0DXBCaV9O7wys
 qix7a+/+Gebgaqzv7lN9vZdHUw283LBYjW73y1J3olsct47xK4dec46+b/7LDAWCmZ0S
 22+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=lkDRxLx0e64Dw8F83EKAXaoP6GxpGN0qeMyvz3hwbCs=;
 b=nf/YlrjZQvd52Y+H95ECj7hy8PLNpG+ZlHGvoDILX33jVgJA6QE6dQ8Vwuk+Fb6h0a
 FJPeFGoM3DwVLJede9ASYWS8Ng/mWoJ2Nr4HTbnNwYyQiLOsGIt4UcyJoCjpKEgQcq3Z
 ++sfm3CgYqaxc9q4pA/gDWGLiOo7KG8ykzihpP77sbM9MvOFJEVmlFoqbxUV0XuruNkj
 FvzfEvyXnn6rWzDA3pOzU13z2fNLblS6DdaSfAoH28QeCHqwJ7ZJ1oo4JEPzj5+zIbGW
 qI7G2c2+IPi5ocWJFMV1kkNsHOMAy7Ckhmm+B3pfdyHq29kj7Px+Uqgy7q3M9Iu1hdNw
 ieIA==
X-Gm-Message-State: APjAAAWcILOMX5HN3ne5HkAOPcEFNb0XjSBB3XJUcAh8YYymyYdDDgfg
 qCisHkrKt8waDuKK7LXIGQU=
X-Google-Smtp-Source: APXvYqz2VNVLwqP8eX2RHxP4bsTLipg6R6lxPysdf+/BDn6HVwxksnvhAJe3roQx/CZZZfh0pceirg==
X-Received: by 2002:a05:600c:219:: with SMTP id
 25mr6595987wmi.174.1571674634775; 
 Mon, 21 Oct 2019 09:17:14 -0700 (PDT)
Received: from localhost ([194.105.145.90])
 by smtp.gmail.com with ESMTPSA id 79sm23848976wmb.7.2019.10.21.09.17.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 21 Oct 2019 09:17:14 -0700 (PDT)
From: Igor Opaniuk <igor.opaniuk@gmail.com>
To: linux-usb@vger.kernel.org
Subject: [PATCH v1 2/2] ARM: dts: colibri-imx6ull: add extcon for usbotg1
Date: Mon, 21 Oct 2019 19:16:54 +0300
Message-Id: <20191021161654.14353-2-igor.opaniuk@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021161654.14353-1-igor.opaniuk@gmail.com>
References: <20191021161654.14353-1-igor.opaniuk@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_091717_083894_13EB57B8 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (igor.opaniuk[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Igor Opaniuk <igor.opaniuk@toradex.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Stefan Agner <stefan.agner@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Igor Opaniuk <igor.opaniuk@toradex.com>

Add extcon usb gpio configuration for support dual roles for usbotg1.

USB host/gadget switching test (1. USB NIC emulation; 2. USB storage):

[   52.491957] ci_hdrc ci_hdrc.1: switching to gadget role
[   52.502911] mxs_phy 20c9000.usbphy: vbus is not valid
[   56.749160] using random self ethernet address
[   56.758637] using random host ethernet address
[   65.768968] usb0: HOST MAC 00:14:2d:ff:ff:fe
[   65.887980] usb0: MAC 00:14:2d:ff:ff:ff
[   66.294961] configfs-gadget gadget: high-speed config #1: c
[   78.741971] ci_hdrc ci_hdrc.1: switching to host role
[   78.747522] ci_hdrc ci_hdrc.1: EHCI Host Controller
[   78.790174] ci_hdrc ci_hdrc.1: new USB bus registered, assigned bus
number 2
[   78.868498] ci_hdrc ci_hdrc.1: USB 2.0 started, EHCI 1.00

Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>
---

 arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
index a78849fd2afa..988f1a800d5a 100644
--- a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
+++ b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
@@ -29,6 +29,14 @@
 		clock-frequency = <16000000>;
 	};
 
+	extcon_usbc_det: usbc_det {
+		compatible = "linux,extcon-usb-gpio";
+		debounce = <25>;
+		id-gpio = <&gpio5 2 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_snvs_usbc_det>;
+	};
+
 	panel: panel {
 		compatible = "edt,et057090dhu";
 		backlight = <&bl>;
@@ -150,6 +158,7 @@
 };
 
 &usbotg1 {
+	extcon = <&extcon_usbc_det &extcon_usbc_det>;
 	status = "okay";
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D583697834
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 13:44:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PDIipuaNwcFagl5e174+ifOUG/iLc0Ty2X/wkQYpupA=; b=cMKGuRW6Fw1N4B
	adTf50SwvCNX2q3qmWT0tnwegqs3Q0Oxjqh2OEXDh0rF03DFcMNa0sxnI4L1zWegLVZRD9jVxJVs9
	Z8kcTp+CSH10gDfP8U+72lplkqB8KaG+d2U/hjV7sWVVyZTrn5j4YsCfhrpJl8C16FmUqfOFvtKFf
	SFcby9SjZfESmGp+q282X/aJXF++PAzYh04uTtXZMw93ZmcuYAGocuIMxnxwMrADfKCvcacbJsPu/
	DTfh/Cs6vVRShHAW8bzZka+/H3+okU/aTnB5Av2p5LVDFMickM9eQYiQLKyaS1iM5wQz/Z0SM+iqh
	dwmtkIHFdUSU6ZZxQycg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0P2O-000376-1x; Wed, 21 Aug 2019 11:44:24 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0OzZ-0001JE-4R
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 11:41:34 +0000
Received: by mail-wm1-x341.google.com with SMTP id l2so1813769wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 04:41:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tKHSL2TvLdzeYTHakHcSzedmEttI2anacBGRuNcRBkU=;
 b=Qf+7k8hCbmdx30F6mqFUQm8AMdjK23pNz+MRa8MhFvVDygJXD7EaWUmdHhejqp8wct
 4+pLHdp5iw5KDRMZwuqkVAswEUWxofGDQzuGgpsquF+50kJQ1cGsy52QwHTJrbmPdLgB
 p6J6bIFj/E7cb4atsDOaHFqdfsF+MOBeAdZ1hdD/zl0/zSSvwRSCAgtZolAGbs49PaFV
 ewpZL/DUiR1uYLS6dG93Af1jwyqjqhWH15xmIcm7oTjVNZ5Z+14qsF6DjqQkOFawvPzm
 dwBN03rjf2OfX3Ur5nNvzjj3DcyWYil3SnIIk/2iOenEBrtl7I82aOMwHPr0LX+2AW+J
 J9tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tKHSL2TvLdzeYTHakHcSzedmEttI2anacBGRuNcRBkU=;
 b=niZn7i7XynE2IfEc5MEMO1Q6msNiiDbYSelCmfmfIB+42vpae5hs4otkoXBOy7MZn5
 wQrDNrTk4hdGnmaur/6OnsKrpnV61O/wIbS+7nhKBvaLhse+GbZINbC4haHebuK+OSGw
 W8oQni91VSN7O8e9NoWoP99IwUr5Cht3MAjZH4sqd/37jy2oQQoIUgcM9MwGfZ2TyQyt
 rxEY/zA/ssBqesEz4OGQ8lkUO+HL2Nicu+KLN2bq5d3Rar+lEwg/h1bOsiU2MdRvGuom
 UsOzQkyK/vypduChMf65Rh85+EBnux54WzhnIm4XphzW7FvlAP4spvKOMbBdk8X9YRYK
 9fHw==
X-Gm-Message-State: APjAAAWQMn6k0kW6FKV3rEySE0lug+4ZPizqlKgCEbpfadHqxkeuU5cR
 pm7i+qjfeKWK8PrrtdVSeA2DYg==
X-Google-Smtp-Source: APXvYqw4lJ4s62v8F8QFkE+24Nhj1T9LxC4dbp+rc3mOe7dCfo5AauJ9VNbYhuGEd5Xg9fgwIPl5Cw==
X-Received: by 2002:a1c:ca09:: with SMTP id a9mr5490244wmg.43.1566387687833;
 Wed, 21 Aug 2019 04:41:27 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id g12sm24049686wrv.9.2019.08.21.04.41.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 04:41:27 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com,
	ulf.hansson@linaro.org
Subject: [PATCH 5/5] arm64: dts: meson-sm1-sei610: add USB support
Date: Wed, 21 Aug 2019 13:41:21 +0200
Message-Id: <20190821114121.10430-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190821114121.10430-1-narmstrong@baylibre.com>
References: <20190821114121.10430-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_044129_177580_115C7BED 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the USB properties for the Amlogic SM1 Based SEI610 Board in order to
support the USB DRD Type-C port and the USB3 Type A port.

The USB DRD Type-C controller uses the ID signal to toggle the USB role
between the DWC3 Host controller and the DWC2 Device controller.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
index 66bd3bfbaf91..36ac2e4b970d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
@@ -321,3 +321,8 @@
 	pinctrl-0 = <&uart_ao_a_pins>;
 	pinctrl-names = "default";
 };
+
+&usb {
+	status = "okay";
+	dr_mode = "otg";
+};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

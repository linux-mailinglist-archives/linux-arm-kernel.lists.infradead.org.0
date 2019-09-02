Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76857A4EFF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 07:50:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XjM/jwdhfxdmHLoCPQW5J0NLVOCOkDbO6JrADlN+EgE=; b=rzeskneeq8OcRO
	UpyD30JqRDVUo1qRAOTL55pq/bo5Qa1bHXaGpbzOF4KWfxyvQbjzlf6vrxdVMGOMF5SccXXFtVvnR
	GBglYcuT5U3BcHuuqV3rCiis8TvficnUxvXjiJe3gtKHhPjw9RAhdrRBUY7Wgp30AioMwAfA/z7zu
	fIX/Kp6emTjeY5kwGAaGP2rch1mTm2DnvGFUDy8L0yQWFs9n20kmUYKAE5ROGDHXY8kI8/ggdUPcF
	srgSMY0tl+5n7PL1FJ8CZymgEPG2QPy5Z9OQqCbz84lvQat1XXEW6wtYPUAd6icExfvHy6bmo7bRD
	T9RHMuud4VIXvmexzWoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4fEk-0002qX-3V; Mon, 02 Sep 2019 05:50:46 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4fE0-0001I8-Tz; Mon, 02 Sep 2019 05:50:02 +0000
Received: by mail-pf1-x443.google.com with SMTP id q5so518132pfg.13;
 Sun, 01 Sep 2019 22:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bEt/v03msRhcSdb84WAU8NHWudPBzPmtzl8y/Hh3kS4=;
 b=WMJhAxPoJN8DisxWl5waf30CVRgh8kXpifzL/ZQZvj1CU37xonIlh4EjK8nqXOgdru
 4UOSWWA40MXJ7llJBClZ+d/IdMWlXLpjY1Al7ROmfHu+NTQqXcek8AoEPmfUdsSVrX5Q
 QRLYuwRoHzo8cDyTfn9ojZ5xuOHDrY4pnH8VEA1/lQ0C8xYyuoBNdXLtAY85scCMFfij
 M53oi19xU0GthorbJYhBabIsArXAA9CQUuftZ+CyfDUEj5GIZx98URVtCXFaepwRgMhA
 R1LZljKZ//WCeqs575PuMzJaSb5mjzHRtcOo/ZUALQJ24bP/pdqEzsXd1O+eb1/iyBlZ
 ACdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bEt/v03msRhcSdb84WAU8NHWudPBzPmtzl8y/Hh3kS4=;
 b=DcqDhYT+ntgmwRe3u+f7xGRlHJiGJCx/BursCB+xyLofEnHp2yPAiXGjBQm8kG9S1x
 N9VNj2SuL4SVvGRWjdvom7QdU2t1BLw3X/3YDcL18irz5RG9J3l5F6Zc1U0aI1rK80tZ
 0o2TVhF71fmgy1ZtP3M5G21Zb9fZFo9MbbeU5D9MrEf/CXY6VfbRisHeug1xl7AR1JXl
 +DAg9sUFFZyj6bhmmuKlaNvcqjJbum7COqQJ2/zW1XVNEUHJqY1IIHIUA0QTZ9vh6piQ
 sAzq0trYXzryq82OkFRRYUqKA1HTWiUIveUkRC9bu3a9wy1BAWwHVyQxynJtrhxt4j0d
 CCwQ==
X-Gm-Message-State: APjAAAU1Gv8/sZbK+/of1NTVcgfrHWIsJO+bYXNHF4KUTDafWfn5c1VA
 igqJdyNOnzfPfjD4C4sOSsk=
X-Google-Smtp-Source: APXvYqxAONevxOs+Hkw8NzwlLEpAGF1KjUE5QTW87zosAlr+KlXZG8qaFyXXXByHEzhUij/y1LvOtQ==
X-Received: by 2002:a62:6801:: with SMTP id d1mr31832332pfc.117.1567403400103; 
 Sun, 01 Sep 2019 22:50:00 -0700 (PDT)
Received: from localhost.localdomain ([45.114.62.203])
 by smtp.gmail.com with ESMTPSA id 136sm16533912pfz.123.2019.09.01.22.49.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Sep 2019 22:49:59 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>
Subject: [PATCHv4-next 2/3] arm64: dts: meson: odroid-c2: Add missing linking
 regulator to usb bus
Date: Mon,  2 Sep 2019 05:49:34 +0000
Message-Id: <20190902054935.4899-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190902054935.4899-1-linux.amoon@gmail.com>
References: <20190902054935.4899-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_225001_229529_7A1D96F2 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add missing linking regulator node to usb bus for power usb devices.

Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
Re-base on linux-next
Added Ack from Martin.

Changes from previous patch
[1] https://lore.kernel.org/patchwork/patch/1031243/
split the changes and add the comments to power source
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
index 0cb5831d9daf..d4c8b896dd26 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
@@ -36,8 +36,15 @@
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
 
+		/*
+		 * signal name from schematics: PWREN
+		 */
 		gpio = <&gpio_ao GPIOAO_5 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
+		/*
+		 * signal name from sehematics: USB_POWER
+		 */
+		vin-supply = <&p5v0>;
 	};
 
 	leds {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

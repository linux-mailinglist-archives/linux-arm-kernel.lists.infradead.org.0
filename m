Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1482AB83B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 14:34:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LomMvM//AtBcKP1Zxwe+YhO/+DYjVhTPFEWlj54PaA4=; b=NouD9BT2XtoBIl
	+CPaNXlT8wXERxKKwhi73CwaBSPjSDzvzrG5TP+OaZqO96s0kzqCkIF3H8r/+sl313Oh6oFJ2yYS7
	5lhucCmV+ggsnV/KPSsyB8oBWsSdHbobALxM4CIiF764Kjuh5BEV7aNNgc0EH8pa8Tg1dOMpHQs2D
	5xJEgKA7GhGcJUiz71datB9+dR1JlkvNBMVEoUhbPjwsPeBvMwrmKIBVDE1SO/Ozbmwgj4F9kfC7D
	KL07fsve9QbyUQ+SjYBbhIfaqybdj76iLcWXzWpnIvrUX3k77uzca9/YQRDPyG+aOzof6RSgqFufw
	008YWdmm6ir93JWdoaQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6DR3-000275-KY; Fri, 06 Sep 2019 12:33:53 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6DQh-0001lv-AJ; Fri, 06 Sep 2019 12:33:33 +0000
Received: by mail-pf1-x444.google.com with SMTP id q5so4361839pfg.13;
 Fri, 06 Sep 2019 05:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XL1ecQdL6XPXwXmH0af6w6z5EAVN9fbcG5PWEOAOqeY=;
 b=O12Uv9X9eemdfbjlXdCH2RTvg+MPXjGz7vY/Gqhp9Vj6RUSWZ07sdHYmuQR8ZvgWFs
 VyKcVO1orqcRK9nyqvKzbZq5RGYpAxNtMgJbLa6CM1Ilx+S0oAEyvnSr3zJSaH+i96pu
 VOB4HBsJA+fXKbKhjPwRisv4UQFwFhd20dFfyEdwminLOg5nMmvQMsDOXDa7Wm7+dMf1
 Oz89BWwmy1YqxRSz034Wn8dVYdLSPFdh5djemm0EzoFNpsJ+rHMDQSejhkgCbKw7HZdj
 KpAeKb0mbfxTdUwKa0xjxkIy0ovq1u0rY+2gGwEgT6awyEb27GFDTn7F2Dq5IgBZZpBY
 L8iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XL1ecQdL6XPXwXmH0af6w6z5EAVN9fbcG5PWEOAOqeY=;
 b=ujRgqAm+KL1vChNvHd8Yc6G4sGIH6vNKI4XAEl3sEEjTFk/xYn/TGW97y27iVGC9Li
 +9kBOQgLCaF3u/6FFfKC+BcUaB/WIwTjRG7yBSGRL4LdD2hONuM2u3UBILjQd11favPU
 aqOt3GpbPe+KJ3/Bry61lB5gZosAHa3bBWfBPu9x208JnSW/OtLtz30jlYaidppalKO6
 U5Fq8yT7vm3u5NZauPR/8pn1TtrI0dHnGoERNCirBs6IXVXKYrGi8CR9IKxnkLzfR9DD
 nNnKi2ekzW2zrzAhmgL+IrcOKEp961mwrTH6DJPuWoLwPKZ18emMudkGze90se6wBxIA
 WYzg==
X-Gm-Message-State: APjAAAVjXMpZkrx27TdAMFwwaGIhgucvx1gT5QB6n1QJmchBdMfH7eB/
 Mu8ILGIEqI3SBIMXP4MUp3g=
X-Google-Smtp-Source: APXvYqxYnVrJx8RQe8BwVimz0PHJn0+JCbOvLTf90TebAgJeKUBRjRR9eIXxqaR93YpHo+orEUkpSg==
X-Received: by 2002:a63:534d:: with SMTP id t13mr7774981pgl.313.1567773210032; 
 Fri, 06 Sep 2019 05:33:30 -0700 (PDT)
Received: from localhost.localdomain ([45.114.62.203])
 by smtp.gmail.com with ESMTPSA id h70sm4752933pgc.36.2019.09.06.05.33.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Sep 2019 05:33:29 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>
Subject: [PATCHv3-next 3/3] arm64: dts: meson: odroid-c2: Add missing
 regulator linked to HDMI supply
Date: Fri,  6 Sep 2019 12:32:59 +0000
Message-Id: <20190906123259.351-4-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190906123259.351-1-linux.amoon@gmail.com>
References: <20190906123259.351-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_053331_464865_A41690E8 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As per schematics HDMI_P5V0 is supplied by P5V0 so add missing link.

Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
Changes from previous
Patchv1
- As per Martin's suggestion added the HDMI_P5V0 fix regulator node.
Patchv2
- Added Matrin's and Neil's Reviewed-by.
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
index 5624ff034659..6ae9fafe4244 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
@@ -66,6 +66,15 @@
 		regulator-always-on;
 	};
 
+	hdmi_p5v0: regulator-hdmi_p5v0 {
+		compatible = "regulator-fixed";
+		regulator-name = "HDMI_P5V0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		/* AP2331SA-7 */
+		vin-supply = <&p5v0>;
+	};
+
 	tflash_vdd: regulator-tflash_vdd {
 		compatible = "regulator-fixed";
 
@@ -220,6 +229,7 @@
 	status = "okay";
 	pinctrl-0 = <&hdmi_hpd_pins>, <&hdmi_i2c_pins>;
 	pinctrl-names = "default";
+	hdmi-supply = <&hdmi_p5v0>;
 };
 
 &hdmi_tx_tmds_port {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

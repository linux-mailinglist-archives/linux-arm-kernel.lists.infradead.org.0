Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 341B2A0B6E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 22:28:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wxNW9rmBqTEuSZcu/TvoV4Ep9Wo5V1fs/XCDLL4vNoc=; b=IiZ+5BgLXgVGn2
	lGCjV8JhDHPfyVcPwheMA3NsMrojKq61cv24E2/GD71+Cl8T5RcpAGQwYCGhHjkoh+v+iFx9fJzvV
	/qc6pkRISdBabE9VAg+kz9CGH3cOWkJjJxOsTlhrXE6t6ZUK87b6SJgd2IzdeBBeIEV9zqu5ixYOd
	cHLMHBgOkzimh5yusdOXR8jg9dgXBymOeVPO/T/gDkKehYOYM1KD8zd4ahoAs1+Ko+7tawB0kYIus
	x636ROdg5g0mKmJJB3ZeDPTKbLk/sM40AejZ9VpNrDP/KlSrymWqRQjFc1peiZcpcbKbZWMEHrbYL
	RZPbYnmgqXhgg4aZwfWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i34YJ-0000yT-Qt; Wed, 28 Aug 2019 20:28:24 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i34Xd-0000Rk-V0; Wed, 28 Aug 2019 20:27:43 +0000
Received: by mail-pf1-x444.google.com with SMTP id w2so518621pfi.3;
 Wed, 28 Aug 2019 13:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H3TaHXh40u3n0F6bWhwXE55sOEX1gdGCs8//Mjl/cgg=;
 b=pxXRp+dcAPOvuhrpBRPj5rojusM/4Vly9II1NcRAZGMd7ZusoIKA+YW6WSJQxQBcoF
 uAKGIOYaR8sm7NuchZcMQfS9fJGG0Qne5p2jRa1oZRpTSLu/BzMWQeLfBusjDeZYu9Cw
 3AYd5oZ3K4sy/FIqt1RpvROQ547qCJbZ9kIa1WwQIj82hGsg1dw6u3hscx6SqrWeKKuf
 Gw5+fQMtg3RshRohp4Aq5Gc2MySfbU0TdjUf6nZyalzleND/LJAXg0thhg/3bGVCK6Uc
 2hRBMlZtBc+6HxqiIf/xXfAZNOy3334VN5VL9joc+W3hz5p9VfFGO9VMTY7mNI2Dhb3Z
 C62g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H3TaHXh40u3n0F6bWhwXE55sOEX1gdGCs8//Mjl/cgg=;
 b=KlMiaRweONl+exSc9hvxN3eUl2nlvCVZLd/ABefvi+YLW0G+mwbS2X+6Y28jpk2uFc
 R63Khgcb20xSQMsQU0qQuReA4ZnnkzTn+rrSusK2rpw5IzHyoQWYpD3C5mhFIpCQ+H3T
 VId4Y4h77THFGsf9STdqa7tPxHXjf0Z3uZ4XVE2Nl7gEcRCZyXG0prLuaxpcegt2doXB
 zw9V/SvjUFvFYTALLh9Oso6ljN/JghqoRCzrpYSGHyejPvJkq3vHnGdBb83dGjD+1oPs
 0VW5hbdWN+Ty0C2o1QucPVW7VUakdnkq0c2RzFXhKes9fD6urZtQdBd27erXtkcQk2jL
 eWNw==
X-Gm-Message-State: APjAAAV+wIX2x92GHfgvDT20lU8WnnnlZVjmd2C3IuPtL1lcKuT3Fc5v
 cnA5/gxPqPgD/0uAdCHFi8E=
X-Google-Smtp-Source: APXvYqwqw9qfMbfRLhRue8n6CaEGwwbgj25iyHQoNwY/e/7uyTMd0ancltVyPHK2aj7xm/j3Lbz0zg==
X-Received: by 2002:a17:90a:5d98:: with SMTP id
 t24mr6082984pji.94.1567024061115; 
 Wed, 28 Aug 2019 13:27:41 -0700 (PDT)
Received: from localhost.localdomain ([103.51.74.111])
 by smtp.gmail.com with ESMTPSA id g2sm253373pfq.88.2019.08.28.13.27.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 13:27:40 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>
Subject: [PATCHv1 2/3] arm64: dts: meson: odroid-c2: Add missing regulator
 linked to VDDIO_AO3V3 regulator
Date: Wed, 28 Aug 2019 20:27:22 +0000
Message-Id: <20190828202723.1145-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190828202723.1145-1-linux.amoon@gmail.com>
References: <20190828202723.1145-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_132742_003109_3CE95116 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As per shematics TFLASH_VDD, TF_IO, VCC3V3 fixed regulator output which
is supplied by VDDIO_AO3V3.

Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
index 98e742bf44c1..a078a1ee5004 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
@@ -67,17 +67,19 @@
 	};
 
 	tflash_vdd: regulator-tflash_vdd {
-		/*
-		 * signal name from schematics: TFLASH_VDD_EN
-		 */
 		compatible = "regulator-fixed";
 
 		regulator-name = "TFLASH_VDD";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 
+		/*
+		 * signal name from schematics: TFLASH_VDD_EN
+		 */
 		gpio = <&gpio GPIOY_12 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
+		/* U16 RT9179GB */
+		vin-supply = <&vddio_ao3v3>;
 	};
 
 	tf_io: gpio-regulator-tf_io {
@@ -95,6 +97,8 @@
 
 		states = <3300000 0
 			  1800000 1>;
+		/* U12/U13 RT9179GB */
+		vin-supply = <&vddio_ao3v3>;
 	};
 
 	vcc1v8: regulator-vcc1v8 {
@@ -102,6 +106,9 @@
 		regulator-name = "VCC1V8";
 		regulator-min-microvolt = <1800000>;
 		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+		/* U18 RT9179GB */
+		vin-supply = <&vddio_ao3v3>;
 	};
 
 	vddio_ao1v8: regulator-vddio-ao1v8 {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

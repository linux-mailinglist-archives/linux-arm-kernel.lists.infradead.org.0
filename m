Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C233C2DE6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 09:39:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n5oGd6GnTE9jAVsMa2jDtKPQx0XAzTK/YC9QQC0WzuI=; b=I4zjjA7vuEHwEC
	Jb37/XU3LEjir7TX0ivPJzpMjZGPFnIau/IW9Ke4kjtICRvlV6e+en5lKQpHkb5tQXPIL6GPeyLec
	jnkdHtoMJKIZ9OFz1T6qssYNz/ovujlzpTFXqV9IMeIC0y+db+E1CWQI/DudVVXKSUSlQ8M886N95
	xDJvJTo65i8M2dkKWl7DRTWeiHFkbE8fpRfULhWhoOIaWwyMPFQsHO7I8JxEJiTp2Z4UIrWsbeL3H
	UYtmG/fJiGSiVpGrgWOrjb6EvAJZ3/mawQatq5bAzI9jIV/wWQV1ZDdExVQtMrckrFgCRe3ufFrIi
	S+CYFidx5gtQHkrWUjog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFCkz-0001pO-A6; Tue, 01 Oct 2019 07:39:37 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFCkj-0001kf-Fe; Tue, 01 Oct 2019 07:39:22 +0000
Received: by mail-pf1-x441.google.com with SMTP id q7so7292461pfh.8;
 Tue, 01 Oct 2019 00:39:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vQloSqq1S1f6ce47ZLYZIYgNVEPsLkyayY9R9KD8bAM=;
 b=q/7FT9kKIawKa1EBPyh1LsnnoopEuNjbwgs50LHVEtRTpkYEPn+9BY0bzXafTZpvt8
 7m5gedVizYhbr7JZWT/WLie/T6VeRToFKhclltU1miC65fzVRkVwwjcn6Mlt+OJZxbCQ
 E6H2AX4Ttq1IVO020AZUAoBzfqhZQZycalnchZEHpX0RP+L1fiV28FQfBV/JGJXp9Rrl
 QODr3fvLDrrdXeY4lchqjXs3cnrcS526xFwyfUFlTY07fZYGVu0Ro2EkL6+oRkPeQ6L0
 znX93JEiCeKqzZm2BovvM4mHaVsLZlr4BuA4+6n8GRBGzSWolVLR9zBIINHuOus03u1n
 VUUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vQloSqq1S1f6ce47ZLYZIYgNVEPsLkyayY9R9KD8bAM=;
 b=Ir1+GRZSljW5BzcaOQ+U1QpVb1FVdv8eY2oE9cd60tXQriEFqoiXpHV8hdRvCXCljR
 eBmGBye8Dw89lXdYjjLsAWQfjE8wucV3TLrhcNeSVVp4fRMuQjx5cYLLoJmAnWCdZEYq
 /8DY2+x8doRrxRwNWGL0plbPO6e9PHRtwFkLAx5tAAbSyDwFZJogSpEJgYVII7BLCFBN
 rGXP60Hovth3S/kAoseo55mHd8V+W4YxesufafKoi1BCKEuRzfjhZOCxAfCyCob78Nut
 kM/H9Zij9c0poxIkUAcT4xe/YrzJPv+EJUpIyRH01PLUTgLD8Sgf6HvrhCRjf5j5TU8p
 0sFw==
X-Gm-Message-State: APjAAAVcDqpN9JZicKp3LyrzJQvaIdgskBd0L8vvDOjF62QPW+O7Gyjw
 mrOF0m0lkGGL5Johjv/SHYU=
X-Google-Smtp-Source: APXvYqxBMtMsHNzBojXilm1cDMZW20T1tAm6GRhg+JhAzVY7k5dkLHYhRFuRz12q5hw6dx24DkuiPg==
X-Received: by 2002:a63:4749:: with SMTP id w9mr28794659pgk.153.1569915560688; 
 Tue, 01 Oct 2019 00:39:20 -0700 (PDT)
Received: from localhost.localdomain ([103.51.74.191])
 by smtp.gmail.com with ESMTPSA id g19sm23133024pgm.63.2019.10.01.00.39.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 00:39:20 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>
Subject: [PATCHv3 RESEND-next 1/3] arm64: dts: meson: odroid-c2: Add missing
 regulator linked to P5V0 regulator
Date: Tue,  1 Oct 2019 07:38:59 +0000
Message-Id: <20191001073901.372-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191001073901.372-1-linux.amoon@gmail.com>
References: <20191001073901.372-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_003921_530782_595CEBD3 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [103.51.74.191 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As per schematics VDDIO_AO18, VDDIO_AO3V3/VDD3V3 DDR3_1V5/DDR_VDDC:
fixed regulator output which is supplied by P5V0.

Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
Changes from previous.
patchv1.
- drop the rename and linking vcc3v3 regulator node.
- fix the typo spelling.
patchv2.
- change the vddc_ddr node name to ddr3_1v5 as per Martin's suggestion
- Added Matrin's and Neil's Reviewed-by.
---
 .../boot/dts/amlogic/meson-gxbb-odroidc2.dts  | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
index e739f10f9442..5adecdf3b175 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
@@ -111,6 +111,36 @@
 		regulator-max-microvolt = <3300000>;
 	};
 
+	vddio_ao1v8: regulator-vddio-ao1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "VDDIO_AO1V8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+		/* U17 RT9179GB */
+		vin-supply = <&p5v0>;
+	};
+
+	vddio_ao3v3: regulator-vddio-ao3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "VDDIO_AO3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		/* U11 MP2161GJ-C499 */
+		vin-supply = <&p5v0>;
+	};
+
+	ddr3_1v5: regulator-ddr3_1v5 {
+		compatible = "regulator-fixed";
+		regulator-name = "DDR3_1V5";
+		regulator-min-microvolt = <1500000>;
+		regulator-max-microvolt = <1500000>;
+		regulator-always-on;
+		/* U15 MP2161GJ-C499 */
+		vin-supply = <&p5v0>;
+	};
+
 	emmc_pwrseq: emmc-pwrseq {
 		compatible = "mmc-pwrseq-emmc";
 		reset-gpios = <&gpio BOOT_9 GPIO_ACTIVE_LOW>;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

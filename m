Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7912BA03C0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 15:52:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ee1sT5F3Rd81CahufZydEG61PddtxawHsGZajqYK1Gw=; b=GV3+NR9MYwLV1F
	RKUfEAqVqEudCm0WpEPFbYfk797HNu2958A5Xz6+41OaHHOt/W2wVhWiun8EF7cjFhVdeKFZc/aWY
	5kjpqfJofMc7zb3urxoh4seK0MUJX/Ils5MxfkHehCuPfRB1l/hgMI25Fvytm1CKmTMzj99+UaKLu
	duKWG4Bu1lzKW2noCX0aNzVZczdZ8fp/MdZGg2Cg6qjnXmTnSj8Gm1Bf1RzGUsChSiNrs5BjHWmuB
	DgFl93TZeJ0oL4ujdoT6d4by7LvLGSGwHjETnuLhyy4S3IHyrD5aTm1b8PNmgv6RoGViyXRwp+e3C
	4sFXJPKqg7IkW1RWTURg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2yNH-00089e-Tw; Wed, 28 Aug 2019 13:52:36 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2yN8-00089E-3W
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 13:52:27 +0000
Received: by mail-lj1-x243.google.com with SMTP id u15so2670652ljl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 06:52:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ayALL3LMbMoVxrUHMO+WrqD6ib90Fw2a/5PK1PmVhs0=;
 b=foh5FkH4ZuL/RddNZ90l3iYKzgFL7V/ukrVnrTdBOT3C25dqHeNeNNPPrdqMsnIPyj
 ac6KqqOKYXuJwcC+36YblFed9r0RcCKopyo7Ah16RkQFG8/X1YDyLSJbRk7vPUl2AMOH
 hT0ZspAxGG5910vUmeN7gABcaaB/31cPWPtERlZWcO7iX60rzxI4mXd6EJWiXSpZy+eh
 cSKkoT2bPQLqf8ventGF1tDyIkNwsVwhVfeZXqF9CDwY4oVUV/7Ukf7Ht28eAmlJrFhD
 GYQ962RHWkOgBzb3uBzx75wm1l8k4iBMFJ0hoGEq3r+YnaXI5Nkk55sBZG88X94EVmIG
 QsCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ayALL3LMbMoVxrUHMO+WrqD6ib90Fw2a/5PK1PmVhs0=;
 b=DjDvAdx2lDuDQsu/IkJvt6+XRu2/J7K/56ZF+bxH2Y5rwDMu6KGUBoAmAtkelQhwQX
 vR5sdZdIr1ATzB/XgazlK9xKPg4ZPrZSfCMx7wrNnbp6UjoA717BKBjjnQVLNvFwaZ2Q
 r/uLvVUkF0rfk8z6D9HiblHHTdbl9q23j8Jm6SX4CUE39Ah44WbM4X7jyD5AdJshRMT9
 4q4AlRZ+YmKyO1ZAg0ygUz6AtZ4vumiHIrY1+vUxnaYZwa7sE1eYZqfJ1VryZJvK5OzH
 2kyAcspAryVmDDYrBFTwre2Y2zz40+n9X1haf3WpCp8PZWyL9ArXMDx85c4kJlrLC0cW
 orzQ==
X-Gm-Message-State: APjAAAUdbmXhFKaVKOlW5fieyBqUiuKq6PmoeaMh5vr43QAaSBNVD3CI
 a0eln0lSCSKd1dKXV4lynXF4QACsZ7M=
X-Google-Smtp-Source: APXvYqwa6Zfr7TgG85dohSQcItkcMQuuqY2PXSoTv02oFSNW/ziRnVpiymiQy3B/ScKdvA7fZMynVg==
X-Received: by 2002:a2e:8658:: with SMTP id i24mr894039ljj.188.1567000343873; 
 Wed, 28 Aug 2019 06:52:23 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id f19sm854709lfk.43.2019.08.28.06.52.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 06:52:22 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org, Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH 1/2] ARM: dts: ux500: Fix up the thermal nodes
Date: Wed, 28 Aug 2019 15:52:17 +0200
Message-Id: <20190828135218.7307-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_065226_154695_476131B3 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The thermal driver for the DB8500 was never properly converted
to device tree, the node should definitely be activated for
all board variants so move this down into the main SoC
DTSI, and default on.

Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/ste-dbx5x0.dtsi  | 22 +++++++++++++++++++++-
 arch/arm/boot/dts/ste-snowball.dts | 29 -----------------------------
 2 files changed, 21 insertions(+), 30 deletions(-)

diff --git a/arch/arm/boot/dts/ste-dbx5x0.dtsi b/arch/arm/boot/dts/ste-dbx5x0.dtsi
index b1a31134f860..7953eea7c486 100644
--- a/arch/arm/boot/dts/ste-dbx5x0.dtsi
+++ b/arch/arm/boot/dts/ste-dbx5x0.dtsi
@@ -505,10 +505,30 @@
 			thermal@801573c0 {
 				compatible = "stericsson,db8500-thermal";
 				reg = <0x801573c0 0x40>;
+				interrupt-parent = <&prcmu>;
 				interrupts = <21 IRQ_TYPE_LEVEL_HIGH>,
 					     <22 IRQ_TYPE_LEVEL_HIGH>;
 				interrupt-names = "IRQ_HOTMON_LOW", "IRQ_HOTMON_HIGH";
-				status = "disabled";
+				num-trips = <4>;
+
+				trip0-temp = <70000>;
+				trip0-type = "active";
+				trip0-cdev-num = <1>;
+				trip0-cdev-name0 = "thermal-cpufreq-0";
+
+				trip1-temp = <75000>;
+				trip1-type = "active";
+				trip1-cdev-num = <1>;
+				trip1-cdev-name0 = "thermal-cpufreq-0";
+
+				trip2-temp = <80000>;
+				trip2-type = "active";
+				trip2-cdev-num = <1>;
+				trip2-cdev-name0 = "thermal-cpufreq-0";
+
+				trip3-temp = <85000>;
+				trip3-type = "critical";
+				trip3-cdev-num = <0>;
 			};
 
 			db8500-prcmu-regulators {
diff --git a/arch/arm/boot/dts/ste-snowball.dts b/arch/arm/boot/dts/ste-snowball.dts
index 3428290644ba..064e8abec954 100644
--- a/arch/arm/boot/dts/ste-snowball.dts
+++ b/arch/arm/boot/dts/ste-snowball.dts
@@ -376,40 +376,11 @@
 			pinctrl-0 = <&ssp0_snowball_mode>;
 		};
 
-		cpufreq-cooling {
-			status = "okay";
-		};
-
 		prcmu@80157000 {
 			cpufreq {
 				status = "okay";
 			};
 
-			thermal@801573c0 {
-				num-trips = <4>;
-
-				trip0-temp = <70000>;
-				trip0-type = "active";
-				trip0-cdev-num = <1>;
-				trip0-cdev-name0 = "thermal-cpufreq-0";
-
-				trip1-temp = <75000>;
-				trip1-type = "active";
-				trip1-cdev-num = <1>;
-				trip1-cdev-name0 = "thermal-cpufreq-0";
-
-				trip2-temp = <80000>;
-				trip2-type = "active";
-				trip2-cdev-num = <1>;
-				trip2-cdev-name0 = "thermal-cpufreq-0";
-
-				trip3-temp = <85000>;
-				trip3-type = "critical";
-				trip3-cdev-num = <0>;
-
-				status = "okay";
-			};
-
 			ab8500 {
 				ab8500-gpio {
 					/*
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

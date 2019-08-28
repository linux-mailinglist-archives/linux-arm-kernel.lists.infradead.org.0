Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1D6A0B6A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 22:28:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TcaSMsm91EOVO2aRfY1ZJW7wK2GwLbriMxBvdvchx2k=; b=J/k+xT9v6BujzT
	TUIrwclpX8GnfFIWl66YMv/ZD88ysZ7KnfbtUuDUZi+cB2k8lfA2ct1sg3rWcuUT06KXwQF/dg/99
	0Jp7z/ytbuhO9CFZFTJ3/8xkp4hCsZ89eoRJyE+MpRp2gT0HZNAkSKp/Y6YmuqbJGHkrt0QXU55Bc
	zcUZdKXiLpSTYMUeAE2FfAnDwzaX9QqrCRvnzBPHei2fwqAM+IpUwXPVHBtQxobNMn41ABV2dbt+n
	0m81WF6gLudyPeALI2hGAlsJznaVhWT7V1obFd//kzDloH5hJ09xSSx5fCSn7hsBXR/iEQDYbc28e
	52lejyNAe5/035smWt2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i34Y2-0000ff-5P; Wed, 28 Aug 2019 20:28:06 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i34Xa-0000Nr-On; Wed, 28 Aug 2019 20:27:40 +0000
Received: by mail-pf1-x441.google.com with SMTP id c81so492931pfc.11;
 Wed, 28 Aug 2019 13:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=j1pl7hKHvoRN9rKZ44OFvuHqn1oOaD+2L3N6f/r4iwo=;
 b=bwTmL3UFS/3ZHo2sB29Zs6EIFhpyS4XPne89/9dyM+rewUVwIhbpFFHv+5Hzj96cGU
 kqsxKPvxSE6UXpg1xk6PQ3oGOoq2tf97SMwCDgzEMhffbyQEAfBUcDLvB+N5SJrCbtPX
 J3kX560Q9sEC5574UjhBr5agzBW6kkKkBXh8BkthKW2pLVkPDmHeeuigzN5l+xqbdtr4
 qVaivr0uFagenYzoSOtDE/Oz+G8qfvWDZeB78DpPerJMwwfEoSxPhcUXM4tDle8qDB0F
 juQ9tLSoPMo+ifHQzm1HRVvogmThCRswBu43ADIwufvbK7dR42euG5SXvf8UVAJPs6X3
 BehQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=j1pl7hKHvoRN9rKZ44OFvuHqn1oOaD+2L3N6f/r4iwo=;
 b=sLeBqS2049slvkarXYg/+U5AwcPRjNRzWJXFcLCdCT+baJWd1XnGDd2O1PSn9V62uK
 j6JypYOfDIizdn/1UTUWNWKWo/XyxH0QbaUdPTlQGmskq0zV4mK3W8Dklvi3zXuu1/d5
 5DIEtAPLPGzCSE3IBbFqVwhEMvzO186+Mk/1Rkmc7fd4MzJ65lHB1PVxgOdMFg1Lx5xy
 PIizvDyToB6JpGnZ6ncaoOjM342qHPHuiVn8HAoGwrzgwqjHEH7YTA8v2PWbqxuKZsiq
 GrXMPxXMxmqbuA6U7BzoE2Qw1slQqKLT3uFRhNt4v6+3RLrAUuscnggh/RAW5UpHjgma
 6mbg==
X-Gm-Message-State: APjAAAXmJtHLveVsaGeTNJZXg4d3JHu9qBrrDGX1f483y/iL0eULc65Y
 Z6bfmHy7D8AF7pR50BgF77E=
X-Google-Smtp-Source: APXvYqzMIFDEdoAuL1ig04OF0ieGs/x4bz10vDEIipXOU7KSUPo5K4JME5xcSl3J2TTzgdk/CXa/9g==
X-Received: by 2002:a17:90a:17c4:: with SMTP id
 q62mr5951116pja.135.1567024058007; 
 Wed, 28 Aug 2019 13:27:38 -0700 (PDT)
Received: from localhost.localdomain ([103.51.74.111])
 by smtp.gmail.com with ESMTPSA id g2sm253373pfq.88.2019.08.28.13.27.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 13:27:37 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>
Subject: [PATCHv1 1/3] arm64: dts: meson: odroid-c2: Add missing regulator
 linked to P5V0 regulator
Date: Wed, 28 Aug 2019 20:27:21 +0000
Message-Id: <20190828202723.1145-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190828202723.1145-1-linux.amoon@gmail.com>
References: <20190828202723.1145-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_132739_006744_5826CA87 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

As per shematics VDDIO_AO18, VDDIO_AO3V3/VDD3V3 DDR3_1V5/DDR_VDDC:
fixed regulator output which is supplied by P5V0.

Rename vcc3v3 regulator node to vddio_ao3v3 as per shematics.

Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 .../boot/dts/amlogic/meson-gxbb-odroidc2.dts  | 29 +++++++++++++++++--
 1 file changed, 26 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
index 792698a60a12..98e742bf44c1 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
@@ -104,11 +104,34 @@
 		regulator-max-microvolt = <1800000>;
 	};
 
-	vcc3v3: regulator-vcc3v3 {
+	vddio_ao1v8: regulator-vddio-ao1v8 {
 		compatible = "regulator-fixed";
-		regulator-name = "VCC3V3";
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
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		/* U11 MP2161GJ-C499 */
+		vin-supply = <&p5v0>;
+	};
+
+	vddc_ddr: regulator-vddc-ddr {
+		compatible = "regulator-fixed";
+		regulator-name = "DDR_VDDC";
+		regulator-min-microvolt = <1500000>;
+		regulator-max-microvolt = <1500000>;
+		regulator-always-on;
+		/* U15 MP2161GJ-C499 */
+		vin-supply = <&p5v0>;
 	};
 
 	emmc_pwrseq: emmc-pwrseq {
@@ -301,7 +324,7 @@
 	mmc-hs200-1_8v;
 
 	mmc-pwrseq = <&emmc_pwrseq>;
-	vmmc-supply = <&vcc3v3>;
+	vmmc-supply = <&vddio_ao3v3>;
 	vqmmc-supply = <&vcc1v8>;
 };
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

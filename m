Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00191184362
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 10:12:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZpeKbTCzcgrVneomcYP4eHz4aBZ9AvBveeM9yfTa3HI=; b=pegRrndsWrxoiC
	Ctd6V7UY54j1osooRwqoIRb8yNM0o6SBjAMtj6G6DtpNwTYABlexa3Ju+DosP+TyxypMxLIJU64aa
	WYXTJzkhXTdw0GrQG1IbLIwlPLzu+ilNcifr34wqucfLlHGlu68G/u4+XviPX6XNAgJEFpuNvorEl
	nbURx3shlPHuwRLZNpC0zNm+qEWd4VYFxY3bEZrvoGTYMrLNGuGpsqDg1dr57DPnnrnKay6/07oGz
	MHGJQ7xhg6GuXSCvnll8Ao7sgpO3C44dQobwolE/R77jgLi85iduSrMxdDBkxRHmBebAy2EO9LdAV
	R+uC5NjHrCtpTHdobm3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgMN-0001FD-Mo; Fri, 13 Mar 2020 09:12:03 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgHp-0003pR-Nq
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 09:07:24 +0000
Received: by mail-wr1-x442.google.com with SMTP id f3so4059346wrw.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 02:07:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2HPMaT81MXCeebofnnf7zx0HVEbfvu9bFZLYLQmZDe4=;
 b=VeEpgcp6B7SCz97YksAWPlVAixQ9a1T2llnI8xmaAIqQWVuisecj1ExtzzyvhDYKNM
 zONGsxO4cTO0O891qd52BsaYjV8Tmc7P9OohTp3ZwOgF6r7cNP30MDODqLy7LYxXv+fU
 7WXw1rNmICnU4w1n4D6DQehhwBxR1iY5opur9vb4TsE4EDo/6CdWZJC/SAGZouNj+sco
 pKnfvceozF9c3esMmpUoPEZ1pJd65YVC4NUPxt1AxCX38ntIT/cSckmi5bALe3qluDxI
 TWRhDZH1lW5Hvh/aOwYr0xFdxxcVXyBIxu2ds74vHim4/9hR/vYZri672YWGRfqKZ1jj
 WU2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2HPMaT81MXCeebofnnf7zx0HVEbfvu9bFZLYLQmZDe4=;
 b=HMnYazCFt19dubBOVQurhPNTctVhlCvUICx6/7OW6LeDxF04KQLZausm7H1m8UdO4A
 mwBN1M8Nh5V9WTb4Skyh82mDlMhTJge69c1dd89KZ2LwKcSOMIdnrpMfegVUau2c9T0L
 siu6F0iBieyVuCmlSy4FzPXe0nYjuTFDfoqVWATIL2kosSTfaPUEcY4EVbSqLmglJM3h
 NCa3h4gBVSdnFY1iHVf4YTo1CW+8HAc/keCHlCk457OBMH8eMNmt6O7rDoooXz+VcMXr
 g+28DoPZn51hXkZrtcqILGzXawXSg5Tx9E8AjsX7HodtwuEbTw2VV3/D2C0honELNtXy
 5pvw==
X-Gm-Message-State: ANhLgQ2IkqbYfDDw5MBBlZ9HHQ9Q7PGCEAks/P7wQFmEpXyaNsX6Cuhp
 C57iDlgQpHc9AHrS8xlyLzG//q4s++YXcw==
X-Google-Smtp-Source: ADFU+vtCUP2jexc1cRHOBRmdco0djB5phQgI4eSon4Q+TxQ5jXY0QSBxqsTqU+wd5RHjgAaSyI3+6A==
X-Received: by 2002:adf:9f48:: with SMTP id f8mr16528447wrg.199.1584090439399; 
 Fri, 13 Mar 2020 02:07:19 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id i1sm61872399wrs.18.2020.03.13.02.07.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 02:07:18 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 2/4] arm64: dts: meson-g12: add the SPIFC nodes
Date: Fri, 13 Mar 2020 10:07:11 +0100
Message-Id: <20200313090713.15147-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200313090713.15147-1-narmstrong@baylibre.com>
References: <20200313090713.15147-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_020721_958292_24E6A0D6 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the controller and pinctrl nodes to enable the SPI Flash Controller
on the Amlogic G12A and compatible SoCs.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../boot/dts/amlogic/meson-g12-common.dtsi    | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index d09efb86ec33..56a9f8eadf01 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -593,6 +593,17 @@
 						};
 					};
 
+					nor_pins: nor {
+						mux {
+							groups = "nor_d",
+							       "nor_q",
+							       "nor_c",
+							       "nor_cs";
+							function = "nor";
+							bias-disable;
+						};
+					};
+
 					pdm_din0_a_pins: pdm-din0-a {
 						mux {
 							groups = "pdm_din0_a";
@@ -2071,6 +2082,15 @@
 				amlogic,channel-interrupts = <64 65 66 67 68 69 70 71>;
 			};
 
+			spifc: spi@14000 {
+				compatible = "amlogic,meson-gxbb-spifc";
+				status = "disabled";
+				reg = <0x0 0x14000 0x0 0x80>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				clocks = <&clkc CLKID_CLK81>;
+			};
+
 			pwm_ef: pwm@19000 {
 				compatible = "amlogic,meson-g12a-ee-pwm";
 				reg = <0x0 0x19000 0x0 0x20>;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

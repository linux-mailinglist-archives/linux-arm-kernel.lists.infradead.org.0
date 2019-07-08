Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4663F6274C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 19:34:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/TeZTG/DzsiAZVoHdIY42zWVWFChDT4nxQYP+B6ejec=; b=FA0hqCwPPaZLfV
	lDIW1SCLCLlBxGg3wUX85XajuryBBXReazM1bQ6LS7g7C8ZhspYabVEoHqj3NZGqkEvKGNt0HBtYm
	3QeqkNw/r+Pk3Xve5Itj+2vyHGhUVzGWCdRWS+vMRReeAD7udjjMShA0O3kvB53RTnDSZprkgD+60
	Z1bubQCMw0n/KFsc5Nr4kKxoxOMeU46FjrLpMsntx5aDNRKeyE2xacGXo38ecKq5XAbp5VdgEim0W
	FYxvdPPg8toU0adl7dcp7kuRA3zXWBWmIlQ/MVSMFoyaLbsyuhYTI+AAfvrPbqXm8SrvNMFZYKnTY
	XF8Qwlz9eAeXMbOCjW2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkXX9-0004jZ-VO; Mon, 08 Jul 2019 17:34:36 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkXWR-0004L9-Rg; Mon, 08 Jul 2019 17:33:54 +0000
Received: by mail-wr1-x442.google.com with SMTP id g17so7923283wrr.5;
 Mon, 08 Jul 2019 10:33:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=86nG6aLjB0rQfTa1JeKBqtUNM26fhH8P2gspJ7zF79c=;
 b=S91Bo/iSQVilNEvDQZty21Czz8Xy6eSTLPIR5zKd1Rg3rP5WbxMvS/DJDOeyE/XVXW
 aHFHQjmdXwcK50Y4+jYXBYtJ1flCIXrr+hv3K83zh+T0ClE87unGP8Ase+6yhaoUxRkc
 NlXxB3Zlj5WCpM1b4n+Xrtzxp+0iAxSUa0Pos9bi6RDwo4CpGBfpNcsTpFuaXO9Wy0Xz
 OAmlBOT46F1pTnKUqTgqvOXEsiR2D1zso66KT8sXen593NvAguABVNshKJlE8cfbANZF
 D1iCIKKTJGv1/q0Knl1k9F3MhpY3FCEVKgaw4jtpS2fge1SVLP3Un54aAmOdwfnvWhgG
 zvpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=86nG6aLjB0rQfTa1JeKBqtUNM26fhH8P2gspJ7zF79c=;
 b=I7RehD1PAZPVI7wE6uSVQbPv3A+a0OYtf+3hAO+GXTBgMONVv3jrf+Q2d2+VFF0irl
 N3COYe5OMDp7W+FXVfhpvRWTl3SsXqRklhyBI34bEM3WgPTLQuMbf0kMaqmDtz0AN13U
 JuikQ8gb7AHPSvNpNosRIQ/ugLYqpROtA0lBIrgd5AS1uvIttMFdCEd6Eg4JgNHQfva3
 F42+W2g/LWzsyxfgbXgYFocSkufGvHttyljxNamtONN5B3MrO80DFJG8rt8ruq3oqaWv
 aJ/QdH/ohyq9K6SiyC7KPStHgli6iMhyhYg9pHcKaurHVkQfgi3raqA3M/zaVBrm9gP3
 4aWQ==
X-Gm-Message-State: APjAAAUty/5jEa31cVyAvZwz5gpnfvSw2JFRHRVPMpyVrV6aVFps/Cbl
 EGnR3+A/GeiK0UCryVWa8JN6GkZz
X-Google-Smtp-Source: APXvYqyw4e6GErWNnFPJZiRpLoMeZMMHruQUP6TKeaX/SOIK6VvvXaEFtgy43V9iJD0S5KCpV+zQhw==
X-Received: by 2002:adf:e947:: with SMTP id m7mr20530156wrn.123.1562607226315; 
 Mon, 08 Jul 2019 10:33:46 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133D62000D8A33B20A298F2F2.dip0.t-ipconnect.de.
 [2003:f1:33d6:2000:d8a3:3b20:a298:f2f2])
 by smtp.googlemail.com with ESMTPSA id s3sm222975wmh.27.2019.07.08.10.33.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 10:33:45 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
 linux-mmc@vger.kernel.org, robh+dt@kernel.org, ulf.hansson@linaro.org,
 jianxin.pan@amlogic.com
Subject: [PATCH RFC v1 1/2] dt-bindings: mmc: Document the Amlogic Meson SDHC
 MMC host controller
Date: Mon,  8 Jul 2019 19:33:29 +0200
Message-Id: <20190708173330.13217-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190708173330.13217-1-martin.blumenstingl@googlemail.com>
References: <20190708173330.13217-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_103351_894171_166D11AE 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: mark.rutland@arm.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This documents the devicetree bindings for the SDHC MMC host controller
found in Meson6, Meson8, Meson8b and Meson8m2 SoCs. It can use a
bus-width of 1/4/8-bit and it supports eMMC spec 4.4x/4.5x including
HS200 mode (up to 100MHz clock).

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../bindings/mmc/amlogic,meson-mx-sdhc.txt    | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdhc.txt

diff --git a/Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdhc.txt b/Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdhc.txt
new file mode 100644
index 000000000000..afe14210030c
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdhc.txt
@@ -0,0 +1,34 @@
+* Amlogic Meson6, Meson8, Meson8b and Meson8m2 SDHC controller
+
+The SDHC MMC host controller on Amlogic SoCs provides an eMMC and MMC
+card interface with 1/4/8-bit bus width.
+It supports eMMC spec 4.4x/4.5x including HS200 (up to 100MHz clock).
+
+This file documents the properties in addition to those available in
+the MMC core bindings, documented by mmc.txt.
+
+Required properties:
+ - compatible : must be one of
+	- "amlogic,meson8-sdhc"
+	- "amlogic,meson8b-sdhc"
+	- "amlogic,meson8m2-sdhc"
+	preceded by the generic "amlogic,meson-mx-sdhc"
+ - reg : register base address and size
+ - interrupts : SDHC controller interrupt
+ - clocks : phandle to clock providers
+ - clock-names : "pclk", "clkin0", "clkin1", "clkin2" and "clkin3"
+		 ("pclk" is the module gate clock, and clkin are
+		  the inputs to the internal clock mux)
+
+Examples:
+	mmc@8e00 {
+		compatible = "amlogic,meson8-sdhc", "amlogic,meson-mx-sdhc";
+		reg = <0x8e00 0x42>;
+		interrupts = <GIC_SPI 78 IRQ_TYPE_EDGE_RISING>;
+		clocks = <&clkc CLKID_SDHC>,
+			<&clkc CLKID_XTAL>,
+			<&clkc CLKID_FCLK_DIV4>,
+			<&clkc CLKID_FCLK_DIV3>,
+			<&clkc CLKID_FCLK_DIV5>;
+		clock-names = "pclk", "clkin0", "clkin1", "clkin2", "clkin3";
+	};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

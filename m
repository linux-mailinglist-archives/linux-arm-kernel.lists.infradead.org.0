Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB42C1F97DD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 15:05:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/5sieGmnR+bfPLZN2xhwRHKZrbA05R2mi/gNiMPJ9t4=; b=W6bTjbaE7nD8wE
	tZ4vzAmf0VYgVWKJXqAU/NRCYK0Shr50+mrEnsUA5PjwNP3ucNCxwQ56CIz5F/MHpzopOL/tcsVKD
	5HXyrCj1lo20NkY5631XjaRIPLLLmv2I5ZDvPVG9fbHO4v7RVG8TKdimcK7ZApd3ZDPkTzBE8q/Mr
	v6LfyQ9PE/u0UR7PDTTcMC9kpZhWHRW7i4vfhWSArfC9XuItRKOWcyViDqVUUk8vZCaSsshucYiXJ
	6K9tJ2SCScO8Bmy+jSL+i6vQNJxw3pzrxhme227Svi7WXuTyjaeVPIudQN/sGGEdIv8WZ0zOwF4nf
	cY8m+Iawr3J1PM4BEN3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkond-0002E3-Tp; Mon, 15 Jun 2020 13:05:17 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkonI-0002DT-RR
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 13:04:58 +0000
Received: by mail-wr1-x435.google.com with SMTP id t18so17058140wru.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 06:04:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kynetics-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xGnsrUoVOZBXJ5xWuUjcUkSKUeGXoNVTCOwqDvT4FJM=;
 b=Yz1AY4Xm2PX4fmylnCSynNbDi5nrFVCSdQsIH2aiqiDYSkgiZnecyZpZwQNZpksdV2
 c7VBDnDUAteERJ7oS6HTSrHQ2GYtuDYSPprHk0TkMEHCkEPid0EUk36Py9M38A1g/SWd
 9Aj4d62t2zAtaiVvKqWef28MHtUF3BNC7Mk/fFXRezJ3WBiriFz6+YPH5E54D5CXzJa+
 DVFXVBmy+swiz9FwBEtPz3ZT3ZpZMysJ5X46nLC2y/ChxSHt8s8FN82Zfms0T0A9yF2T
 a4b/CKxLv+OtVwNo9RUIqbIZg4jWxP6gLlyv+gdU6a/QH2CZFtQgpchIk+fv36QUJV3X
 38NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xGnsrUoVOZBXJ5xWuUjcUkSKUeGXoNVTCOwqDvT4FJM=;
 b=sHZq9MP7SA0U/77Aeu9wWRDmq9dwaTPeNFOTFkQzpdWwDqNBJ+E5RJL5Z625T9AKht
 /Xtdjfes5Fdz3Shw5HMVmbKwpwR8wCe5CaoWwAD6Z+4PhkHP9R9hSxI1AWahARAGTB6F
 aGOkHe4EgpspfcSjMWJNAQoHXIBrOnpTZjOdfz/5Fk2VdWo7vuMoa1fjhk9wJ5EdNYLA
 B8vqUoEjndz+raVl+nCu5HnL1xA+I/TyI+87c0Jea/mzpZNHU28KCtO4Ib/pYhPXrDDJ
 8H03hutaSZdoei8CabEHX4OVXDXB+LlKoU/uWJLIcWwC05T+i5ziukQpTFRf4Tby+IDZ
 N5bA==
X-Gm-Message-State: AOAM530W39JW4EkYPnTO6SKw8R9mx18CkDuCTBwWHpInW6+jzJ0uufgU
 prm08Npvjlyg0GUSLkWOKjL2rw==
X-Google-Smtp-Source: ABdhPJyCbA4P7k40uO6mt2bOu07HU/fYBKq+e7S7CG+VE5FlaW3M581dKgwaQOXyEbfX2cDE+gWybA==
X-Received: by 2002:a5d:6305:: with SMTP id i5mr28032503wru.268.1592226294967; 
 Mon, 15 Jun 2020 06:04:54 -0700 (PDT)
Received: from localhost.lan (mob-37-176-61-186.net.vodafone.it.
 [37.176.61.186])
 by smtp.gmail.com with ESMTPSA id s132sm23900345wmf.12.2020.06.15.06.04.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 06:04:54 -0700 (PDT)
From: Diego Rondini <diego.rondini@kynetics.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: [PATCH v2 2/2] ARM: dts: orange-pi-zero-plus2: add leds configuration
Date: Mon, 15 Jun 2020 15:02:25 +0200
Message-Id: <20200615130223.34464-2-diego.rondini@kynetics.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200615130223.34464-1-diego.rondini@kynetics.com>
References: <20200615130223.34464-1-diego.rondini@kynetics.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_060456_892132_2A70D7BE 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:435 listed in]
 [list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, Diego Rondini <diego.rondini@kynetics.com>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add pwr and status leds configuration and turn on pwr led by default for Orange
Pi Zero Plus 2 (both H3 and H5 variants).

Signed-off-by: Diego Rondini <diego.rondini@kynetics.com>
---
v2:
- sorted node alphabetically
- fixed underscore in led names
- removed extra empty line
---
 .../arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts | 15 +++++++++++++++
 .../allwinner/sun50i-h5-orangepi-zero-plus2.dts   | 15 +++++++++++++++
 2 files changed, 30 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts b/arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts
index cbe32b975c5fe..251bbab7d7073 100644
--- a/arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts
+++ b/arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts
@@ -70,6 +70,21 @@ hdmi_con_in: endpoint {
 		};
 	};
 
+	leds {
+		compatible = "gpio-leds";
+
+		pwr {
+			label = "orangepi:green:pwr";
+			gpios = <&r_pio 0 10 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+		};
+
+		status {
+			label = "orangepi:red:status";
+			gpios = <&pio 0 17 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
 	reg_vcc3v3: vcc3v3 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3";
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts
index e67733d133bb4..de19e68eb84e0 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts
@@ -30,6 +30,21 @@ hdmi_con_in: endpoint {
 		};
 	};
 
+	leds {
+		compatible = "gpio-leds";
+
+		pwr {
+			label = "orangepi:green:pwr";
+			gpios = <&r_pio 0 10 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+		};
+
+		status {
+			label = "orangepi:red:status";
+			gpios = <&pio 0 17 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
 	reg_vcc3v3: vcc3v3 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3";
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

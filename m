Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F96245BD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 03:46:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yU4itUBqus90MfSs4OqWTcBCiBeY/FICsYk9/326phQ=; b=CX22KPdBAZbHDX
	QmNvuASDeo2zOjtSemD0LT3j3IxWGlN+9gilqyJkiA/Oi1+6SSKdEfM5XL6qlon3Ms4+6APz+YI2O
	dtaMXpA1q0MrWxSAO6ZGtlgQEGX17Nk+EcJ22GddDHBCQh5qTdaQvUbjGDGLKcUQxi2wG2B/3czbg
	3O3VxZpYVqGECLyOEfn1HjOTDxsNZQxSNbyKjUJn48lLYGTDzubF/kM76vwHSFXRnV3cCVvD7Nv5p
	C6FiJd/dJWdWkBmFuhMKS1BrYGdudznMEYvzT4CQRJ5O9ZEmrmcpT0E4Ed3PZEQp2XmwGKHpeCrdK
	YRIKpqbSyJLmm76sxd5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hStqp-0002hJ-3S; Tue, 21 May 2019 01:45:59 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hStpt-0000ea-Jl
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 01:45:10 +0000
Received: by mail-lf1-x143.google.com with SMTP id x132so11770903lfd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 18:45:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IXEjhnEWvk1GkVebRbENUUkO4HvDR+Z/g2aak/3J6k4=;
 b=XixPL6V8DpbEM4E43otXAEis49lrI3W76u6A7sW7YHhk6r1gOd4EtbF2jaly5mVp5a
 zQTjjaMp97XBhbVZICo0doo7vVItxTLl1GPT7Ps2KCInGvcOSukd37MdaZpNuEb2GZxo
 o8fArfjPhqq+2pbFDvz2WSauofM6exIUPac92g0wDvcoSZdqkJbtAKDKII3gkjDTX1db
 AcMhPiCvnHmnRc3crgEGEbkpsx1Rxg2j8mQ7ChsgIAMpqrotwQlQo8KVeD/+1pUffmud
 DHh0cAU4nXqjW9sAdRD0p1PeoDD1gbOpoeWZZH1g8qQvgcSBWgb0QsXwyjDR3diTNiHU
 hjMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IXEjhnEWvk1GkVebRbENUUkO4HvDR+Z/g2aak/3J6k4=;
 b=H5GSHjYN/Yz1L16aAVYWD0MZkL+RvUH80Wpxcbo2jo0ltSa2gggBOgdfLclNqDG93p
 C7c2iBgFLNpYhKqSA/4x+RXFC3gwAdAE6kb0PYGuOhMVvNDLdwMIrfc3hxr/1Jvgp/GK
 bG77IiQsvtUYM1p6b5EBNm8QAdCVNigPAGwgilcHegHsMpW780DMRPsCqA+JSPAekSeM
 4SetJVRW3NbMYCg3785j/a98S+TP3aKqxKkJGEqvf28we224BNB0gtA45XWVq5ytJjV4
 LiiXuQ3Z28eP2HBzZTXTE9NRiw4bu+IY51l0nXn00sH4nVbjclvVOe0/5hqftMzYOa3A
 Epsg==
X-Gm-Message-State: APjAAAXnKRaPq77sLHGe5WOmD0cTDOZA00naQW/PzNcBNmd3rBmLDEeD
 8BFY1jBLxtteDL64MUZOjPYohTKAFRk=
X-Google-Smtp-Source: APXvYqx5GVKx9HYSOb6SXVP4EvPZ4iJgBy2h4CQfSDXAFVtUF65iDpJcXK/GszTTrE7dfCcNxmibQg==
X-Received: by 2002:ac2:44b3:: with SMTP id c19mr8403252lfm.132.1558403099098; 
 Mon, 20 May 2019 18:44:59 -0700 (PDT)
Received: from localhost.localdomain
 (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id z11sm4232194ljb.68.2019.05.20.18.44.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 18:44:58 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/4] ARM: dts: realview: specify AFS partition
Date: Tue, 21 May 2019 03:42:22 +0200
Message-Id: <20190521014230.18463-6-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190521014230.18463-1-linus.walleij@linaro.org>
References: <20190521014230.18463-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_184502_283862_3B39C45D 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This activates the AFS partition parsing on the RealView
family.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/arm-realview-eb.dtsi    | 6 ++++++
 arch/arm/boot/dts/arm-realview-pb1176.dts | 6 ++++++
 arch/arm/boot/dts/arm-realview-pb11mp.dts | 6 ++++++
 arch/arm/boot/dts/arm-realview-pbx.dtsi   | 6 ++++++
 4 files changed, 24 insertions(+)

diff --git a/arch/arm/boot/dts/arm-realview-eb.dtsi b/arch/arm/boot/dts/arm-realview-eb.dtsi
index 610506723ea5..fe0207b88053 100644
--- a/arch/arm/boot/dts/arm-realview-eb.dtsi
+++ b/arch/arm/boot/dts/arm-realview-eb.dtsi
@@ -119,6 +119,9 @@
 		compatible = "arm,versatile-flash", "cfi-flash";
 		reg = <0x40000000 0x04000000>;
 		bank-width = <4>;
+		partitions {
+			compatible = "arm,arm-firmware-suite";
+		};
 	};
 
 	flash1@44000000 {
@@ -126,6 +129,9 @@
 		compatible = "arm,versatile-flash", "cfi-flash";
 		reg = <0x44000000 0x04000000>;
 		bank-width = <4>;
+		partitions {
+			compatible = "arm,arm-firmware-suite";
+		};
 	};
 
 	/* SMSC LAN91C111 ethernet with PHY and EEPROM */
diff --git a/arch/arm/boot/dts/arm-realview-pb1176.dts b/arch/arm/boot/dts/arm-realview-pb1176.dts
index cbbb8878daa3..2625ce66f8e7 100644
--- a/arch/arm/boot/dts/arm-realview-pb1176.dts
+++ b/arch/arm/boot/dts/arm-realview-pb1176.dts
@@ -120,12 +120,18 @@
 		compatible = "arm,versatile-flash", "cfi-flash";
 		reg = <0x30000000 0x4000000>;
 		bank-width = <4>;
+		partitions {
+			compatible = "arm,arm-firmware-suite";
+		};
 	};
 
 	fpga_flash@38000000 {
 		compatible = "arm,versatile-flash", "cfi-flash";
 		reg = <0x38000000 0x800000>;
 		bank-width = <4>;
+		partitions {
+			compatible = "arm,arm-firmware-suite";
+		};
 	};
 
 	/*
diff --git a/arch/arm/boot/dts/arm-realview-pb11mp.dts b/arch/arm/boot/dts/arm-realview-pb11mp.dts
index 2015619ca22c..c69cf7ddbe61 100644
--- a/arch/arm/boot/dts/arm-realview-pb11mp.dts
+++ b/arch/arm/boot/dts/arm-realview-pb11mp.dts
@@ -235,6 +235,9 @@
 		compatible = "arm,versatile-flash", "cfi-flash";
 		reg = <0x40000000 0x04000000>;
 		bank-width = <4>;
+		partitions {
+			compatible = "arm,arm-firmware-suite";
+		};
 	};
 
 	flash1@44000000 {
@@ -242,6 +245,9 @@
 		compatible = "arm,versatile-flash", "cfi-flash";
 		reg = <0x44000000 0x04000000>;
 		bank-width = <4>;
+		partitions {
+			compatible = "arm,arm-firmware-suite";
+		};
 	};
 
 	bridge {
diff --git a/arch/arm/boot/dts/arm-realview-pbx.dtsi b/arch/arm/boot/dts/arm-realview-pbx.dtsi
index a81e9c282432..09f3f544f3a7 100644
--- a/arch/arm/boot/dts/arm-realview-pbx.dtsi
+++ b/arch/arm/boot/dts/arm-realview-pbx.dtsi
@@ -134,6 +134,9 @@
 		compatible = "arm,versatile-flash", "cfi-flash";
 		reg = <0x40000000 0x04000000>;
 		bank-width = <4>;
+		partitions {
+			compatible = "arm,arm-firmware-suite";
+		};
 	};
 
 	flash1@44000000 {
@@ -141,6 +144,9 @@
 		compatible = "arm,versatile-flash", "cfi-flash";
 		reg = <0x44000000 0x04000000>;
 		bank-width = <4>;
+		partitions {
+			compatible = "arm,arm-firmware-suite";
+		};
 	};
 
 	/* SMSC 9118 ethernet with PHY and EEPROM */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

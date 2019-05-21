Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADDFA245CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 03:56:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yU4itUBqus90MfSs4OqWTcBCiBeY/FICsYk9/326phQ=; b=nQm22x9rRbqw00
	yTjx10DZTOWdx+3nvIT4iD01CtD1P2Z9BFtF25dzXvvv93n2vfGrC/RowWZDPxnv0M3hsq/3cGXnX
	FdE2seG7sLK7ymN//idrRsLUVUZ7/meamf9Wp7XFBKzeiueocWAAlzSsQI0NoANZhfIMQKoCeFcS1
	KHrd9C6LAWpy0rM3vttgZF9FD+tVz7nS+N2hG7Tw9b7X5tsykZG/NyvGwS6mGi4xWzuFYNE6LV+ZQ
	xTt5iKMRhEnuqRgHi3t9b/u2atgD7rcS+yCZ4yxfKkcsFsOtI16WcvzKgBxR6lU3OlvaJMzsbB9IM
	n/70fphHLGTEW74nsG7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSu17-0006ms-BN; Tue, 21 May 2019 01:56:37 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSu0p-0006Zc-VV
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 01:56:21 +0000
Received: by mail-lj1-x242.google.com with SMTP id z5so14274713lji.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 18:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IXEjhnEWvk1GkVebRbENUUkO4HvDR+Z/g2aak/3J6k4=;
 b=eQ2DkI45VEPLUZtrCNRSePRmfWuMq3X3ztnOCo92VNcnUDd/luOmkgowJvlGXU3gF7
 8qz7ijXyjkSnJvIDyaS86zNOOy5afe7FEzZ8N4quvFRB3ZkGodvDYytnkuHPIxEPj65s
 tyFDK4CNWqVRZU7o2Owek7AK90N+oCzeOLEyn+E8KfUkxWUUhY+XgVtZlgsbtbvDrqG5
 CySlRUJKUJbU0qnesKQbrEL3CRveuCUQ7lLnkqqIiY730qWCDGMSxQ2pjSUsgxDIRc+O
 u9A+x4WA59Ge4OZFkmMnKXyQpGNwSpIxZbJfaUnfRfG1xmfVQyowQ1FF+2X91OqUWrGv
 efFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IXEjhnEWvk1GkVebRbENUUkO4HvDR+Z/g2aak/3J6k4=;
 b=NcY/jJG8ud16TqdiPAiViJuJYiAsvdQmufVQOA5rYeYp1uZULBMf8PB7jDp9MU4PAm
 6pPZ8R5e1UwPvlILk/1UNCbtllezZwpyD4e9rF+x8NuCc5zxFB/NYRm25Wl1ILcWKrWN
 gQadlKADMhkXjtH1sX6TXxxY4iQI7i8kXncovyaFsWfww4VFAgxsk1FTtcHOfwS3BUaJ
 jJW88Z0sU5ojgaPNQC2jt7WrvL0CU03ujfTDc4UAjPh7aBt0Q/jRFv9JZ9RRmNZ4HujK
 pxpl92uSX+tRYjnJM6IXSKyqnNcfRMFC5rKwAdg4Mk6Z876g8rVsoapLh6P5JPYWtuaa
 Mqsw==
X-Gm-Message-State: APjAAAXtmxvMJz9k4vS7ExnHm5sba3HFXojOSz6u9wOjXlDO4x4xrZHi
 ogUmCQG+h6wLTWtBlzJN4JrdYznnEWw=
X-Google-Smtp-Source: APXvYqyOs35pZHox3wG40tW3ekjx5F1H2JumNuMdbwBd3SyKAXSIMuXsQIJk3vU2RJ/Av+U+GUKLNA==
X-Received: by 2002:a2e:88ce:: with SMTP id a14mr3169892ljk.122.1558403778043; 
 Mon, 20 May 2019 18:56:18 -0700 (PDT)
Received: from localhost.localdomain
 (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id i74sm4415508lfg.78.2019.05.20.18.56.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 18:56:17 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/4] ARM: dts: realview: specify AFS partition
Date: Tue, 21 May 2019 03:45:36 +0200
Message-Id: <20190521014537.19238-3-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190521014537.19238-1-linus.walleij@linaro.org>
References: <20190521014537.19238-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_185620_010171_1B453F87 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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

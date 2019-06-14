Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C58DC46D0C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 01:57:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qAWximCBsQzyvu6RuOZ/DmR4p7Grb3grNPs5VpTzKzg=; b=XpRr8DJSnE2qtG
	Edd0sTiR7E8MULbMYZ5pdmsHQRL11KPKSz2Igo64CYA1+Ndih8dzRFxSv6pY7VJi+x8dqTreTy0Zp
	fFw+IRWAE4IgXhelr17g6XdHWGa8aeeFa3Ge9MokWhxpqYSeS9Rw8+AWFekmRWQxEbhmm8LXX+u4u
	8WkTWvBC2rYBdCStj5HsY3+iMN8cx0czicqRPpbNqy20Er3FOyvbVjZjPsa8QHk2O2X2HLmirXQud
	uxYlyoJg3fJ0Ntwyk3FE7uIxx7RNckM9SLvD53/R5qA7yZL99WKJtHy8ZwimaGSvuEcpiAMnEyxk8
	mli3PMlhqvbXEhCDlt5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbw4l-0003lg-1U; Fri, 14 Jun 2019 23:57:43 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbw4T-0003lG-93
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 23:57:26 +0000
Received: by mail-pf1-x444.google.com with SMTP id a186so2311102pfa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 16:57:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Q98iyrGWjD0YwRuDYJj8GlFuZI5lhh67IlCxLlcXVmA=;
 b=az4+ReQKjM03dCR9+sthGLa8hV6BEVyYvuQMen+YsB1zbfPZOFNzYKf0GShH4ZCZS+
 P/UQ2GFUHlXbGsNrgtUtha8IXW6yFHeO8kYRq5l4M5Tf3VnsRhKP6t41roofEg183KwJ
 qcVI7Yy/HA05K+92MFGmlZ++5Ei8RYEH7xK5m8rR7k0JYd+OBiQb4gKw2teTgZhNG4gC
 d1JoH2zx9Se0ucEanJre1Xly3wEkE+654I4uDeGthvjNv3PsoI7DtjGzNUn28+Ca4fBW
 ymnKkrmJNHjOMHXuyzVMEh9mHo3eZusiyJd+JGS7RFwyFeGOgS9ayIUTlv2td2c8QwTR
 G2jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q98iyrGWjD0YwRuDYJj8GlFuZI5lhh67IlCxLlcXVmA=;
 b=JsGELTCDhihKQ/QCaWBOJUfkyfCBxxIFxBykl/PsIo+tKARnY3rGdJUNj3tYCywunH
 I4Y4P/c9wqMPQpcvNDRlEezApf1+MnCYwhDA+8Rc5pYPGtuOISSLlZdb9FcubSLPNnYn
 csXSJUgjn7dj21ejx9DGhQJhZI1J/2/ikNCQd6sF4+Ur0us46c/hvvj50WTeHcQsJtms
 iry/dP5fcbR8vYoD0Ek0y45rNKGYzvxHD7zdjU6j7ui5QtJxB8P0j7UVP8kMcMxkRqov
 eYtbrblRbLl7aRGdD0eznar+9WhMy8PTvvBaBRTxb3B+YakSg5t9R5m84NAnKcAsKGNf
 AzNQ==
X-Gm-Message-State: APjAAAVmCE0Fi3cfizIskvp0fZiVcz4pBQ50nkH1jjU8hpggslpwaulx
 EKxmdFDrDq8DGQF2sG+EzfI=
X-Google-Smtp-Source: APXvYqxO5LbnNpF6nCUM1ozAuY8tYMdG9Okq6hVZoCa6Hp0axEd8QmubSP09VeQeaaXyZ4HpN9e32w==
X-Received: by 2002:a62:ee05:: with SMTP id e5mr99169656pfi.117.1560556644477; 
 Fri, 14 Jun 2019 16:57:24 -0700 (PDT)
Received: from localhost.localdomain ([162.251.69.147])
 by smtp.gmail.com with ESMTPSA id z13sm3777831pfa.123.2019.06.14.16.57.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 16:57:23 -0700 (PDT)
From: Joseph Kogut <joseph.kogut@gmail.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, kgene@kernel.org, krzk@kernel.org
Subject: [PATCH v2 2/2] arm: dts: add ARM Mali GPU node for Odroid XU3
Date: Fri, 14 Jun 2019 16:57:19 -0700
Message-Id: <20190614235719.8134-1-joseph.kogut@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190614203144.3850-2-joseph.kogut@gmail.com>
References: <20190614203144.3850-2-joseph.kogut@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_165725_316407_4540DCB3 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
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
 provider (joseph.kogut[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Joseph Kogut <joseph.kogut@gmail.com>, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add device tree node for mali gpu on Odroid XU3 SoCs.

Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
---

Changes v1 -> v2:
- Use interrupt name ordering from binding doc
- Specify a single clock for GPU node
- Add gpu opp table
- Fix warnings from IRQ_TYPE_NONE

 .../boot/dts/exynos5422-odroidxu3-common.dtsi | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi b/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
index 93a48f2dda49..b8a4246e3b37 100644
--- a/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
+++ b/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
@@ -48,6 +48,32 @@
 		cooling-levels = <0 130 170 230>;
 	};

+	gpu: gpu@11800000 {
+		compatible = "samsung,exynos-mali", "arm,mali-t628";
+		reg = <0x11800000 0x5000>;
+		interrupts = <GIC_SPI 219 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 74  IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "job", "mmu", "gpu";
+		clocks = <&clock CLK_G3D>;
+		mali-supply = <&buck4_reg>;
+		operating-points-v2 = <&gpu_opp_table>;
+	};
+
+	gpu_opp_table: gpu-opp-table {
+		compatible = "operating-points-v2";
+
+		opp-177000000 {
+			opp-hz = /bits/ 64 <117000000>;
+			opp-microvolt = <812500>;
+		};
+
+		opp-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <1150000>;
+		};
+	};
+
 	thermal-zones {
 		cpu0_thermal: cpu0-thermal {
 			thermal-sensors = <&tmu_cpu0 0>;
--
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

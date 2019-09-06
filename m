Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC20DABFC5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 20:47:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gGhwqGVpSq6iLl0Zg0w8ho7Cv+xz5xVVXpHQfbBXgPk=; b=dCGyJw/nboeFWd
	VMT/7vGVYUtoZuHT4blZgH2jE15Gxp7Yxifr4ND1+o3NT+tmuKkl5AC50y6EZ86ZSP/GX20zCBxl1
	igcWudsnbGhl79k+/6iXOnLgE16VAnsBa9TLd25KF+mAtHzRjfqfWnR94GgxtTYV+OcjMSBWrhBHk
	Em1jevDnltwfFazuCDUY/jWmHodSygVMqvKli+1lfzgyJuraOHsdbR+qZ35AV1B6Jx9EnPX139VJP
	v/gGTywLhTIRS3A8j+tVqDWeWY2jc/XJbNuQbly5Rc2yCRreUzUg+WT0OWL1B5HeNf74TgbubRDJJ
	CnLX/j304iVLGmTayFtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6JGW-0006HT-KS; Fri, 06 Sep 2019 18:47:24 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6JFM-0005As-2k
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 18:46:13 +0000
Received: by mail-wr1-x443.google.com with SMTP id g7so7639364wrx.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 11:46:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6gfPZRpIljPhV4Y76bqDwXphABtlmbrLYPaesl3pjCI=;
 b=ZhrFxoH/Go/p9mDemMia8OkzNhnhOPc3pjz+NcsRC2j4y/b2FxlHEx4JI6pFQy0591
 5dKC6539twpYGEEBLEixpHsXoY3A9qmMkHplxGPCYrps8CgvQNI0OwcF8f9GdHF72+HS
 4yDE06GGnbURNVBeChjpzi5N+D6lFsH4LobskCrGZ2NTTEXsELEuxBBeGPI5Um6IWuc/
 YCbM76t3XLK0cDZcGgRKd2h1JxU038SSQKQBuJAceVR+tTAAvsXVfkRIczqqGy5HptOu
 7RaTRWVYWuewASFlg3+W/7rRkSmk2Y5TcmjmddP2D3iO3Cl+H0S+GLhQYHWHAdPtn9lD
 G4wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6gfPZRpIljPhV4Y76bqDwXphABtlmbrLYPaesl3pjCI=;
 b=mi0UfbhjEva2U9sGGlsdseOj6eh3ctAXltFi4LzNa/6a9jMggL8gEXhIDP+GKzd082
 bkrq5c+PILP4NXuPU9ghHAjivhBOxfsdvuQ4wsOE9kopR6MQfovn7XjHr/E4Q3njw3df
 k0d9K2znCk7hm0Ho66p9AhA+Ax3l2GrlAige4miCKXM78qM4HxT6i9E4zzlnQ36jCXsP
 hRwn03Gecvh6f8mkD2547JI48V0f1DwbCyJ87ic5MX8mkfmqNP6tFjvo9BpZfNQzMOCy
 LpJdM+plw+/6mlkUeOuBpqSgbmays67l/Cn2DyR1f+b4+pHfvx2ssxgUQ04cixuM9eH9
 Guug==
X-Gm-Message-State: APjAAAV808Hm0UTDA/9tNY0Dz+Cr8qIX1QK8GYgITkvzs6oxORJlqLWl
 SHOsOHxN7tn7hYHmiMMaqME=
X-Google-Smtp-Source: APXvYqw3NjoNTVeM2qHMyiFQjvaRW2FdN8p50r5ozVUMwrqRJxmmaB+S5AyuSL/MHK/u6B6fQEleuA==
X-Received: by 2002:adf:e30e:: with SMTP id b14mr8399491wrj.168.1567795570676; 
 Fri, 06 Sep 2019 11:46:10 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id j1sm8677577wrg.24.2019.09.06.11.46.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Sep 2019 11:46:10 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, linux@armlinux.org.uk,
 mark.rutland@arm.com, mripard@kernel.org, robh+dt@kernel.org, wens@csie.org
Subject: [PATCH 5/9] ARM: dts: sun8i: h3: Add Crypto Engine node
Date: Fri,  6 Sep 2019 20:45:47 +0200
Message-Id: <20190906184551.17858-6-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
References: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_114612_230970_BB7828C0 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Crypto Engine is a hardware cryptographic accelerator that supports
many algorithms.
It could be found on most Allwinner SoCs.

This patch enables the Crypto Engine on the Allwinner H3 SoC Device-tree.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm/boot/dts/sun8i-h3.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-h3.dtsi b/arch/arm/boot/dts/sun8i-h3.dtsi
index e37c30e811d3..873abe1b279b 100644
--- a/arch/arm/boot/dts/sun8i-h3.dtsi
+++ b/arch/arm/boot/dts/sun8i-h3.dtsi
@@ -153,6 +153,17 @@
 			allwinner,sram = <&ve_sram 1>;
 		};
 
+		crypto: crypto@1c15000 {
+			compatible = "allwinner,sun8i-h3-crypto";
+			reg = <0x01c15000 0x1000>;
+			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "ce_ns";
+			resets = <&ccu RST_BUS_CE>;
+			reset-names = "ahb";
+			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>;
+			clock-names = "ahb", "mod";
+		};
+
 		mali: gpu@1c40000 {
 			compatible = "allwinner,sun8i-h3-mali", "arm,mali-400";
 			reg = <0x01c40000 0x10000>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

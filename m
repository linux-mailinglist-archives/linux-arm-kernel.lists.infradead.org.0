Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F68AABFD1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 20:47:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4/pNSm0dMpGVrSRLQLsGiyeeEj7HocyQ/A5achPN61w=; b=rW0gVvGjrY4W/G
	ZcTrKRtV/BOrACvoIaXlbr8d9a0rX3UnOG4oQ4ZihRS5oxs4JdN/isAB3p8ezZOuFqDd1tRcrcktV
	xHHuav+euO9PE6EORMCm1CLh9vbaWieHw6I4gCYpbwYYGSbUk4U1WBEhdAVIIFLYWfZmYqZwMGlJd
	QTMgp7Ixp7b4x/wtNvldprdnTCQsNXCh7tUE/65ZI9M13n19PHndhlBv5taOkHnWq7+GRzpEA05nG
	anzqC7FnXE/M3cRFaJGdWDbMO+965aP18mJFova2x0OSJRShtbr5/OP81GymeC/GRYWL6PeSX1Dlc
	PKXaZteQwBncWeF+09/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6JH0-0006q6-OG; Fri, 06 Sep 2019 18:47:54 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6JFO-0005Eq-KW
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 18:46:15 +0000
Received: by mail-wr1-x444.google.com with SMTP id q17so2864775wrx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 11:46:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8QtDLRptoE0CXvLgWwD97LTRuIDfzhWBaIHIlaUJgmo=;
 b=ep9HDZiCfuH8kRXERj63g91rhrUuOyjEtVhLHhk3QU7BOoV9SqhsZwanleSEly4oOJ
 w7Y3pMfAcOu2q5O1TSb6zwebqf/VygYEk0FnMQzBbayl/y+4F9NoAROZEWG9wYTzecab
 ILeNav7qAoyi8Jlr3+aGknSZpYk8aUkjUZkykfwVW9yawNu4C8/RAX9hVgKUn8OrniEM
 2OTJYpZwtnU2xUlqymmZrxVpBu9NYIJz1BIM2mTokFhR0nMnFaT6/yT0ebWuINPczJO1
 218A/xVTZ9dWS0qUzRQXYOO8cYk2BfhUhq6b/t8T/mvl1h/bRNy+5ecEIK13j8qkQ4c0
 +s1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8QtDLRptoE0CXvLgWwD97LTRuIDfzhWBaIHIlaUJgmo=;
 b=l0kU0COExxJ3OqHVYTBuOqMO9QC9HOH/Z11Akadr+sGCK7g4AytDDQ+wuNkt14XF15
 P5p5ZWDp4tCdd5AZr5WzDCt+fnbe1c+GF2b4QjomZ90OXGrW5arbei5vuFeG688r44l/
 X/evjOWNtQjCcTCZcV6waE9JkxbzB1HRZ2/S0jot7p4D4UklZobaHUYYGsU+r7mAIk5o
 G2VgA6pv+FFQuj+CXWKFKCBJALISotus8NTFlop/vRteCT3zwHCsOiZGipsHEAwgXQF0
 sAtVmZiARu2nOic6Hhs4U5D8a2GkbyYWC6vUDaNsN6ibBLFPm66huZIGDlBoyRdoWdXL
 VvQg==
X-Gm-Message-State: APjAAAWuF31FrbREr0Nqofcp4/4eMlSuOGfUt03PF3RUbWydvPmUGGjp
 T2ecEFINevJB8wIksQxhAGE=
X-Google-Smtp-Source: APXvYqx6NlZ/z+8VM/lYa3eo4+OsBuha3D3in2/3qbeTJ1A8BpcmX87Ghu+Ha7n2Ik0Ln+e88LowVA==
X-Received: by 2002:adf:db8e:: with SMTP id u14mr1800226wri.50.1567795573543; 
 Fri, 06 Sep 2019 11:46:13 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id j1sm8677577wrg.24.2019.09.06.11.46.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Sep 2019 11:46:12 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, linux@armlinux.org.uk,
 mark.rutland@arm.com, mripard@kernel.org, robh+dt@kernel.org, wens@csie.org
Subject: [PATCH 7/9] ARM64: dts: allwinner: sun50i: Add crypto engine node on
 H5
Date: Fri,  6 Sep 2019 20:45:49 +0200
Message-Id: <20190906184551.17858-8-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
References: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_114614_714271_C5C4A737 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

This patch enables the Crypto Engine on the Allwinner H5 SoC Device-tree.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
index f002a496d7cb..174fb3dcb3f7 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
@@ -127,6 +127,17 @@
 			allwinner,sram = <&ve_sram 1>;
 		};
 
+		crypto: crypto@1c15000 {
+			compatible = "allwinner,sun50i-h5-crypto";
+			reg = <0x01c15000 0x1000>;
+			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "ce_ns";
+			resets = <&ccu RST_BUS_CE>;
+			reset-names = "ahb";
+			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>;
+			clock-names = "ahb", "mod";
+		};
+
 		mali: gpu@1e80000 {
 			compatible = "allwinner,sun50i-h5-mali", "arm,mali-450";
 			reg = <0x01e80000 0x30000>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

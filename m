Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A51CABFC2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 20:47:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5TbNUFfT3dSJyHn6M7smXKWQeW3jRRpqHdmYUwaYIi4=; b=Va3ghaZugsvIhC
	wxSslfVwrYHpOz53+lMMDEN/OV21odELRUINv4r74rS+AyTsY4CCpIKCfCUIwT/dM4BCZHEsxp69r
	vqTU1LsL5l60bWgRkGhIbnkYW0ZA/iWnKnlN7OhhuGO/shvS8CLuARSxOYpSEtSeMU2NhWMWy+U8h
	wr7HyEtJiHXidTeLZ8gQJgv8DYwBTWjVz6Aj+argIJzzi9CBOfBElC5hek0eblDG/3KNBpZt5rWys
	AdoTUJEz0RtkEk3ij5CYgYaEJ8ezA6dg6O36ByGzlmMfzUy5m0qpjwMoHP6rIokCdC1b817EK6vBY
	CJDbiU25/bOKWeWVMl1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6JGI-00062j-KT; Fri, 06 Sep 2019 18:47:10 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6JFK-00059r-PT
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 18:46:12 +0000
Received: by mail-wr1-x444.google.com with SMTP id u16so7632873wrr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 11:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xU1lxAstjQUR72wZ/J0MWjQAlXMs9ML/BZPoCjnCEo0=;
 b=QL30LEzcYGE52tClH7qDSUb8rdbuplxJVHHskcftGAV0S6j3DeS2KHQNHuWtYJp5Sb
 hXGerX01T65u+PFpqv0CH6/t9MQpbNd1qCWZdD5PE3ir5Eoy6IcVgqs/KRa3cGbl5w5S
 xdLu216r67or4h0XUxQZuyEy38Gy9E9Hbu5d/8VSRGG6/aTUg5aVEiiheI8qhCmt7C6o
 VW0jsr2hgYyUEAAgk4Gm6RnWV47lWY9Tp9zVXQ4qet/NwZZskfp7HE4q2QzqXKT8/aDO
 68ZZMMuhHYLzwJvDrJzggQzkJAeztA7oL5btV9AW0EbepEkzFfx+Df+6hj0sKcj3pk7n
 xuGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xU1lxAstjQUR72wZ/J0MWjQAlXMs9ML/BZPoCjnCEo0=;
 b=S1UiyuTcxu4Uxe0XS6Qx9bwZBc68zgA/FdgZYT3ce2u9TsoawDF9cU7baS8IdFQU5M
 uhQg8TSypCnlZWfzuk2Mk3l6a3r0lUJZJcNeSs1SsKAzGW+i040YW5YMURSXFhjk24vN
 WFCqgFYcrjao2fhFwQFLmb4Qelqh5689nHLn4gHuUskZphdmifkYi6h5vQRaN4I/9w9r
 yyTYprKRHj2rVLNE5DPZ8HAfWGjXmhY4eTePTI0dzxhgWZjbsC9yit+DRC7F+tTQkG1w
 k60f2w7dYFdxVLeCd4lSt5WqCGlV4A+pQTKGLQQKDdQnnnNAVhN34VxmC52QEELeIMMe
 HrHQ==
X-Gm-Message-State: APjAAAWrsJmM2FfvFggMwcbprS0DfBKovAIjNVmKEgjM6yKQFUYKxmWf
 Ps0f1aoARf+ok/N2jbX53+8=
X-Google-Smtp-Source: APXvYqwDs4Nh97WeZFVLe8CNTzlwOhTt4GnK72gpsm66rGYD7SOIVos0xjrZSIonRTHM0uwsDW3Vdg==
X-Received: by 2002:adf:dbce:: with SMTP id e14mr8938109wrj.56.1567795569299; 
 Fri, 06 Sep 2019 11:46:09 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id j1sm8677577wrg.24.2019.09.06.11.46.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Sep 2019 11:46:08 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, linux@armlinux.org.uk,
 mark.rutland@arm.com, mripard@kernel.org, robh+dt@kernel.org, wens@csie.org
Subject: [PATCH 4/9] ARM: dts: sun8i: r40: add crypto engine node
Date: Fri,  6 Sep 2019 20:45:46 +0200
Message-Id: <20190906184551.17858-5-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
References: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_114611_040386_8415F1FD 
X-CRM114-Status: GOOD (  11.83  )
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

The Crypto Engine is a hardware cryptographic offloader that supports
many algorithms.
It could be found on most Allwinner SoCs.

This patch enables the Crypto Engine on the Allwinner R40 SoC Device-tree.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm/boot/dts/sun8i-r40.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index bde068111b85..7eb649cea163 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -266,6 +266,17 @@
 			#phy-cells = <1>;
 		};
 
+		crypto: crypto-engine@1c15000 {
+			compatible = "allwinner,sun8i-r40-crypto";
+			reg = <0x01c15000 0x1000>;
+			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>;
+			clock-names = "ahb", "mod";
+			resets = <&ccu RST_BUS_CE>;
+			reset-names = "ahb";
+			status = "okay";
+		};
+
 		ehci1: usb@1c19000 {
 			compatible = "allwinner,sun8i-r40-ehci", "generic-ehci";
 			reg = <0x01c19000 0x100>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

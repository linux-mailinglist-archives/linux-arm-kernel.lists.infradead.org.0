Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D52E53FA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 20:53:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=emtgBcCGq81yljmrmwMiXLq4sjj2i2rCYbZy06F9kLc=; b=n5R17UJsV5hKcm
	9/eGieYDLtI/V4ZeQt298WlqxfnQXZUZKAUdgEDB+/ibl7JA0aAMVSqu94tqLnkX9y426V8hrCtTr
	NE6x7RXZeTR9rlK7mLLDsNCpg+IpKH8RViuMBHOLFzC/+f+UtpjBpA6AQecrHbS1rdZ958PFf4/Ol
	iVcjF1WNqlSaZ9JldLxFWk9NLf5R6Z7fMo0PLWzIOGo3ntUr4ypEbj8XWEAl8cYGN/arbgqEaTwvo
	8683GEeTqA1yMYK+QtabVmpTD+6AfN+S67CqqgyZUU7DX/ZFVnfTXykFZqRf54MZngTYTzECthdHc
	kbI1A8sHZNi5I8sQV4Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO4ho-000683-MD; Fri, 25 Oct 2019 18:53:00 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO4gU-0005BB-3G
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 18:51:40 +0000
Received: by mail-wm1-x342.google.com with SMTP id r141so3037381wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 11:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KGIesSOkGwApOOGAHM3QK9LBzsdCUeL5VgZ/hmT4hUE=;
 b=TTLBq6NzJND6uythkPOsimx2qWJ7DMULExibFcNOgQWbcW69NIJNz/Zd5EAUfhoS6B
 E2z/IT4ilfKnetfuBDXXmmIoSvjqWeWo/1OSrV9PvPQA8wh+0YKJZ8vutfc8AxE4fD1t
 rqtKB8EshoYKYPUGt9p6i0gQl2FYA5R6jukLSfiFQnDgPYjAMLOLF+1YBseLOP1Wkp0i
 BEv7DgUrz7wqhn6MsGgZ5pY85pc88tujKIDxtoM7SFuVBxkl5jQpdkD2OKE8dV72JuUg
 4MZq2szS214OMD19ifPgd2SeQgdRnBsCaGO/cIHYs+YlX/sjVN5tRCMHnkMfq84WdHGY
 tAjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KGIesSOkGwApOOGAHM3QK9LBzsdCUeL5VgZ/hmT4hUE=;
 b=iQdnVEfN4hBWC1yy+gjbIaO/EcBgt575CtOznXWVocYyDwGxdDm9Rp85WyO/TN5Lb8
 KT6ErGQvpxGbtXk9JN1eJu5KjVfhlCWge6Ap+g9+KJwoBtxoYG2TPCvGTWXc4+b4afFv
 c+biHrMkOOi/453cD47SJJe53Y+ifi7uJ+KVQ+Zkz+X/d8J+V+bVcB3i64EmtiZyF3dV
 tMEW1ViUHBkRzf4or2iPXGlZUOPHPiqrzAiA7xsUgzWw9RV6lKrgX9eZSaFh1gndSITh
 8HZdSdxv2VPvpbS7Yv5PAGIkwhch9ZG1kptgITnagsvMF4wOmHdCM4Qq5hN6yEu8VKZo
 41jQ==
X-Gm-Message-State: APjAAAWCLeZyVDQsIzbBSseEgb0wRtPAM6jN9333ABMRAVZZEfSCxG+g
 glbUEfDH18vHx94dm8E52mk+KE4E
X-Google-Smtp-Source: APXvYqxDRsHU/WrPkh4yTXfAT1FOirDWF/0Tj/sFEhqwQGBDLAVkLi7VgtoybQ85lECKmR5+LYyBeQ==
X-Received: by 2002:a7b:ce84:: with SMTP id q4mr4528137wmj.36.1572029496587;
 Fri, 25 Oct 2019 11:51:36 -0700 (PDT)
Received: from Red.localdomain (lfbn-1-7036-79.w90-116.abo.wanadoo.fr.
 [90.116.209.79])
 by smtp.googlemail.com with ESMTPSA id l22sm4821683wrb.45.2019.10.25.11.51.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 11:51:36 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mark.rutland@arm.com,
 mripard@kernel.org, p.zabel@pengutronix.de, robh+dt@kernel.org,
 wens@csie.org
Subject: [PATCH v3 3/4] ARM: dts: sun8i: a83t: Add Security System node
Date: Fri, 25 Oct 2019 20:51:27 +0200
Message-Id: <20191025185128.24068-4-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191025185128.24068-1-clabbe.montjoie@gmail.com>
References: <20191025185128.24068-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_115138_225693_75E55C05 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The Security System is a hardware cryptographic accelerator that support
AES/MD5/SHA1/DES/3DES/PRNG/RSA algorithms.
It could be found on Allwinner SoC A80 and A83T

This patch adds it on the Allwinner A83T SoC Device-tree.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm/boot/dts/sun8i-a83t.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-a83t.dtsi b/arch/arm/boot/dts/sun8i-a83t.dtsi
index 74bb053cf23c..53c38deb8a08 100644
--- a/arch/arm/boot/dts/sun8i-a83t.dtsi
+++ b/arch/arm/boot/dts/sun8i-a83t.dtsi
@@ -583,6 +583,15 @@
 			reg = <0x1c14000 0x400>;
 		};
 
+		crypto: crypto@1c15000 {
+			compatible = "allwinner,sun8i-a83t-crypto";
+			reg = <0x01c15000 0x1000>;
+			interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
+			resets = <&ccu RST_BUS_SS>;
+			clocks = <&ccu CLK_BUS_SS>, <&ccu CLK_SS>;
+			clock-names = "bus", "mod";
+		};
+
 		usb_otg: usb@1c19000 {
 			compatible = "allwinner,sun8i-a83t-musb",
 				     "allwinner,sun8i-a33-musb";
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8E9E23F4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 22:06:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n5UMOiyfRxHP+S4WQEFmtoV335W1AFZ993zyZq4BgKw=; b=CovKIdGyRa99X5
	AiTWegIUkUnsb1D6bFeChsSallvXAU1FUjmkRJwH9PCML8mwLJhxaMWZyoq85a5SVy1bU7AJ753pI
	ASLfzawCFy6F120xSymsWtDTZv6S1m6l9iUwlpk8O/WOCEoyhg6QF2ZjyP1e41aj46eemcpBAXJgD
	E5tXr2zpOPBCl5Co6Duk5tmZQqxOEbhpYkS6I+EHUkkSxWb+kQDxOlfTesIFgyv4DFP1cnsVhsfjD
	gRLp60xm6Es12dXAgMMjoOaF8LHgJoHiRKpjHOHwWrb/BM42W6KRJzmK5uCXOuY7VUsG89RTPZ2oI
	LDu5hxsVGfh/79AM7uyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNMtz-0001rF-Gt; Wed, 23 Oct 2019 20:06:39 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNMsn-00014e-Re
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 20:05:28 +0000
Received: by mail-wm1-x341.google.com with SMTP id q13so285249wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 13:05:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GJDCD24q8FHHhxNDtUAkpzQYbJaDZYgAmYeaRlxpr/w=;
 b=s8w8MapV69e3JsWasZOEMLauPJUZ8ZSM+v9jnGTDDI31XjLwQOwKBrePOfFPYh4Cvv
 OwmVFPMOd6BpDQI62gWj3a2hHruR4h89ss00zC84daPgX24frMWhE4RgFb6zIf1Qq3kR
 aiomojMuYZ77H3Lb6G9HRuzPqBPiIln1Wi3arN9PBsSiHdkh7f9wYV0oYa10suiqvD+Y
 swmGbGi0XDkN8pcoKy165+2CQxRrb2so3NrTdfQVJ4rFwdPfZdoBx0mJkdCZKdM2DMjW
 iVf0PGfCXNjSCO7hE5rk+qH/VyXVC/OBftun22MFEDRbycKIqyDb8W8ohbCOGcjMaBCp
 T6nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GJDCD24q8FHHhxNDtUAkpzQYbJaDZYgAmYeaRlxpr/w=;
 b=lz3maLCY4qPF7Kn4DZXAMfAK32ctnahlOWJoJiqrwR4pOkNY9sacIHNniG8J+05TBG
 je4s2grfPqCle9R8C8rzx2vMZnZ9YyUYFbBMYDwTCcilfuLKCwhMqQTSj7hjtILEKMbi
 R6Pp6xPAfuwSS5RPPyCRspNKrt6yAsPLyA3HUSZECzenwYunr6iw4XXEc+G8YvTqb2oq
 ptLpFgExlLMvlKQx6jLABKySDlqL3al14JdZCqXZgb5m1MhwdHzG9zhBHfaJkuIDJLLJ
 OHvV2o/wUrxr2SEWrBOeCKZngWe2bbt5YVLeCSIOnx7iRd19FbuLRkPqMF6ke2Bf2TlE
 Vajw==
X-Gm-Message-State: APjAAAXE6e1GVmQDILiJfQhzcOa3vt/Bjz86ladOI/wyAAFo8FXj0a5g
 EgLTKDm0G8go9pMrwqIqNpo=
X-Google-Smtp-Source: APXvYqxifD0MWUorcByZal/Q4NJtrT54ymEOxMv/k+um0yY0z376Cq0+AbYZswrg3oCBLKHyUhAC2Q==
X-Received: by 2002:a1c:f210:: with SMTP id s16mr1372636wmc.24.1571861124415; 
 Wed, 23 Oct 2019 13:05:24 -0700 (PDT)
Received: from Red.localdomain (lfbn-1-7036-79.w90-116.abo.wanadoo.fr.
 [90.116.209.79])
 by smtp.googlemail.com with ESMTPSA id b5sm177555wmj.18.2019.10.23.13.05.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 13:05:23 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v6 04/11] ARM: dts: sun8i: R40: add crypto engine node
Date: Wed, 23 Oct 2019 22:05:06 +0200
Message-Id: <20191023200513.22630-5-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191023200513.22630-1-clabbe.montjoie@gmail.com>
References: <20191023200513.22630-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_130526_050414_21BE5A65 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 arch/arm/boot/dts/sun8i-r40.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index c9c2688db66d..421dfbbfd7ee 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -266,6 +266,15 @@
 			#phy-cells = <1>;
 		};
 
+		crypto: crypto@1c15000 {
+			compatible = "allwinner,sun8i-r40-crypto";
+			reg = <0x01c15000 0x1000>;
+			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>;
+			clock-names = "bus", "mod";
+			resets = <&ccu RST_BUS_CE>;
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

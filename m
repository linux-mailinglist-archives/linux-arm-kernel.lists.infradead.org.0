Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CC4FC934
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 15:49:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/5c33J73KSPHxNIJSKCoc9oTfJbXHSU63MAdzwGiWg=; b=KOqtdQxFgy/IZY
	dgZx2Z49b00h0X61zxFZgVFYCsqxcZ3nkxwdjNhhWllF54MTHYwU7XwUerfoIf+/z+Dviih2SNH0x
	ODZW4ghFLf92LYt4x5lWsKI4TikoevwhImsKdNkO0zcM3jL2ECdvkVnJuriUatUfxu5asQQiursoj
	CevK81Glq9vTXpbbsK7NvCUUvoTObGcaCda/MlGwJBh24J8/OvPTyG3xaaCoSo781MO7730tfrc0H
	3cXgEIQWCbKhwPkhilFy2rtZ/r491i04E+9R6w4yG227E2L0zeUu9W5lhNhj3jW4KER/1rrkAqaSw
	s0XuyA8su2Kw1kZ8qFkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVGQn-0001tp-EE; Thu, 14 Nov 2019 14:49:09 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVGQE-0001VN-Db
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 14:48:35 +0000
Received: by mail-wm1-x342.google.com with SMTP id 8so6210228wmo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 06:48:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ggk/mvnlQ8Jt4FcutNAyCyRhydpHaULB3AS25CsNBLk=;
 b=Os9bzdSg8XJne/XanYWGrKRoigS1FkiDzKmNjJ4IhWXIRhZ+Yqc2Es3G9k4Fxs1Dz3
 GpXSy7NM5gL18ExW9ugW+WGGSm5wZIO/qxRRpxRBTExh1phz2aMozmOIS1sVGzER7hNb
 cDeztSQTwxWaBFBdueT2PmqbJvPbI7RL2Vg2PZVgCuSe1Q1KrNfuRZWp4N4P2/ZBO/Ab
 +zatx/g77SSn0ltVMgRBt+nkncmovSIJSp/rfub0qpA9zQRCV8VoMZf+FNIHKtDE5GFe
 XUz25dd2fXQ3tEVNWhMjHlcLafgdnyffFpIWEKj3MBt1a5hyvAUvOdTRPe+t3PR0XMHL
 VeGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ggk/mvnlQ8Jt4FcutNAyCyRhydpHaULB3AS25CsNBLk=;
 b=fqvyOUla74uCY21gFG8JjCRkTWQygR8VlozhNfKX7BM4UcNCs24cmctcaGljDaOWOA
 cG+Uuj7/mMvuJvSIRrIXzeW2z8MknyZgYZvFSJsw31Wsh/n/WvFrANTNiLXc6xEd5C8h
 3BgcD9N2QIB0s+C7rQq/1IkewLK9ovrteMUdm8qHV/wu0wLo7vJz8fk8f/wFvs4rf077
 Hy+r+J+QJowLFtzGbgh5RimompRPDyBT6Cc+CvL2hm7D+NYzlV0Lo4qlvKjDzSf+nvDJ
 TS/h8ziospqFlJfquX6MR2dOr0Ald0qdgl2ADfsCv5JLrEr4bhVUsydFa8GWUx1LfWq3
 Uj2w==
X-Gm-Message-State: APjAAAXBztbG4ZOVfRsMDMCz6Hht5cjh9O8gLYWxA7jOOPWU8vOmZAMX
 dJh5ac3JqoGYCeJ/TwpWlKg=
X-Google-Smtp-Source: APXvYqxDRQ9TrW0gvpev6smmX5yzgSdLocWJ9OZ8fPvJlZ7ZOgn1OoUyW7Mqe0RPXBhADmvAM1tbIw==
X-Received: by 2002:a1c:96d5:: with SMTP id y204mr7999297wmd.63.1573742913360; 
 Thu, 14 Nov 2019 06:48:33 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id v9sm7153223wrs.95.2019.11.14.06.48.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 06:48:32 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mark.rutland@arm.com,
 mripard@kernel.org, robh+dt@kernel.org, wens@csie.org
Subject: [PATCH 2/3] ARM: dts: sun8i: a33: add the new SecuritySystem
 compatible
Date: Thu, 14 Nov 2019 15:48:11 +0100
Message-Id: <20191114144812.22747-3-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191114144812.22747-1-clabbe.montjoie@gmail.com>
References: <20191114144812.22747-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_064834_454239_67E2298F 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the new A33 SecuritySystem compatible to the crypto node.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm/boot/dts/sun8i-a33.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/sun8i-a33.dtsi b/arch/arm/boot/dts/sun8i-a33.dtsi
index 1532a0e59af4..5680fa1de102 100644
--- a/arch/arm/boot/dts/sun8i-a33.dtsi
+++ b/arch/arm/boot/dts/sun8i-a33.dtsi
@@ -215,7 +215,8 @@
 		};
 
 		crypto: crypto-engine@1c15000 {
-			compatible = "allwinner,sun4i-a10-crypto";
+			compatible = "allwinner,sun8i-a33-crypto",
+				     "allwinner,sun4i-a10-crypto";
 			reg = <0x01c15000 0x1000>;
 			interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&ccu CLK_BUS_SS>, <&ccu CLK_SS>;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

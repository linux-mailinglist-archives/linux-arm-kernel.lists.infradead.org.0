Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4112E103EA1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 16:30:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lTqGK8YZbnTAMJ6APmqFfJcfq450DNS0+BuFXQdcZZs=; b=ff622zxs0Stk6f
	pKs74IFu2JczN1ZCbe4OEqY1/q2evd36U+2vEFmPEMwWUwWmEfZYOZ3rXgCbJJ0knB0Xg6K4r7YU7
	ajVUDkUvYNud5k0g+JL0miwcPBykIx9ax68950xxTgYcuoyWiGgdqCs4JDQrpIcVWNFV+uY8nHOFN
	vgfBmuQ8bJQLC5BETxSHCmREnTBsmGv1j11+pSlWKvex8Ne0bbJDFW/6OzhNtL7GMlCnJeb+flVR2
	cT/MUlXtZhndx4QaC2yim3WX+bWvOak2bJWvFwZ0zu3ews+qqT+s/kgXrkpFcdgkTWAqynGxNKFFb
	rlZQAMVe/DYbE7GFlkew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXRvR-0001iW-As; Wed, 20 Nov 2019 15:29:49 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXRuL-0000IB-DF
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 15:28:42 +0000
Received: by mail-wr1-x444.google.com with SMTP id i12so232160wrn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 07:28:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tB1mv0iagpasqt+ubXAygnT8VXICt+ouOxxy8t0xYvs=;
 b=uPAKdeb/DWgZDZtC6f1PbTauQGenxGV5fSTMcND1isct3YzemSRgAdB0N7jA5+V38h
 FhBHk3Tnhh1VFhkdWaArFcpR/RZrp2LZLBOhqIc1g/lXD+Tk7Coz5alp6WrhjPinO6eW
 pzCkQBNl8uLpO9zS9oy6XSZPEPhPIlLZPOp4Sy7/kglTXhqpjsDLnyAiny1bQR/2T5LA
 +/IzB2HPY4qOPar2lXMazEgUOads0pzUss8YpdjjM5sr43uAhV1olQeOBd5GG4md35KA
 cu6Q0iEhewBs7u+M7oNmof+HM42XkgLLmaZ510VC79sVkXbnoBxi+ALe6DxCqKGlgEtK
 yjyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tB1mv0iagpasqt+ubXAygnT8VXICt+ouOxxy8t0xYvs=;
 b=QIRgdEez8HTLL5ZAOFmNTmAPdw95zOxrXFrNjkHb+um8l7G2AEaoXFCWqeKbRiOdrF
 lUV5hRdoQN6Coy7K/4Jw0+n01ME+OhgEcy23QAaFyok2okBgvreLhNnLtM1CQ4VaGmgg
 44JBib1lF9XQ+ExVtzXSWmEQqwBz0UZOta01Ugnoi7GKqM3upldxozlwBPS+SxbDDb7/
 iiJVZBsjXl9ZXwsDXZl2CatJv1m8mh6omydB+ruXKcqHAgs1YjIi6kk/y49MSoqbrdck
 mxWuCDQvuzK3ZVsooEDw0kRw+Ed/II9ANf4eGRO8pJnBoeF8GNDsc0dtBZ+MuU6XOCeP
 15+A==
X-Gm-Message-State: APjAAAXL3rl3Aak4zwTT7Vqwx8IHq5lgNPn9VSEgTXFnB0CSHQUJC7mo
 +0trmjiBXnHtPg3DyhuifqQ=
X-Google-Smtp-Source: APXvYqzRCrNiWv3WJ4S0PHDL3ahCsxIQu72pLjaCVPEGuCu8yR5dYNXuP35CTbFHByY0P1rBekgHEg==
X-Received: by 2002:a5d:6cb0:: with SMTP id a16mr4316101wra.194.1574263719888; 
 Wed, 20 Nov 2019 07:28:39 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id w4sm31797881wrs.1.2019.11.20.07.28.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 07:28:39 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mark.rutland@arm.com,
 mripard@kernel.org, robh+dt@kernel.org, wens@csie.org
Subject: [PATCH v2 2/3] ARM: dts: sun8i: a33: add the new SS compatible
Date: Wed, 20 Nov 2019 16:28:32 +0100
Message-Id: <20191120152833.20443-3-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191120152833.20443-1-clabbe.montjoie@gmail.com>
References: <20191120152833.20443-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_072841_477847_6548E4D7 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Add the new A33 SS compatible to the crypto node.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm/boot/dts/sun8i-a33.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/sun8i-a33.dtsi b/arch/arm/boot/dts/sun8i-a33.dtsi
index 1532a0e59af4..a2c37adacf77 100644
--- a/arch/arm/boot/dts/sun8i-a33.dtsi
+++ b/arch/arm/boot/dts/sun8i-a33.dtsi
@@ -215,7 +215,7 @@
 		};
 
 		crypto: crypto-engine@1c15000 {
-			compatible = "allwinner,sun4i-a10-crypto";
+			compatible = "allwinner,sun8i-a33-crypto";
 			reg = <0x01c15000 0x1000>;
 			interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&ccu CLK_BUS_SS>, <&ccu CLK_SS>;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

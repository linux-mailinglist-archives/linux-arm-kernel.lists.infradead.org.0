Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37DAE49133
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 22:19:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nT23oXe+EvTh025pVjYMcd4rGVRfEaLlr9fQw2woAHg=; b=UbS
	Rr0IBvGc8FNj/3LMHBvCpQmHikDm6/leo5XJ/xEzYQtPJ547tAfL+kfHe4ATCjkP1KQhFxN90VQ0r
	HK82TSTxikO6m+0bFKSdZYfaawuFPITPmWx9K2k/C9+/AP8SDrF02l3aQ4Dk4sTh8SOYTP86mUaG1
	yvN9p8mW3mz2ZErDTmpBozHsnEiNiSm1yqBDJwwqzphgWJdrfhQCfGypQMfOXd1lmFalPvOnHmAAq
	dp7IBKO2MU2zFJn9wCtAWcmNCKgR3e6V3SnPPfda0AAzc0ZDMriJwJZnXKd62ktWcpo+zA3vA410j
	xh1vJpUNMUATUyPnWKNtJWQArq0D2Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcy5q-0003bv-8t; Mon, 17 Jun 2019 20:19:06 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcy5e-0003bW-NE
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 20:18:55 +0000
Received: by mail-pf1-x441.google.com with SMTP id 19so6275585pfa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 13:18:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=rLIp2me5jZU1SNsGntPYn8e5/jApcYy2rM3bOxsRgHU=;
 b=Ou1Qv2C5wWRuORI60MzpGmPHAeCCdfaZVktWNZc2c7fSp7OvtS1jY6IznzraXf1Bb1
 RqXJ4HSEYP39Ontf/BM70otllMTdzUydEwKEVNtnd976UYJoCfgYFrpvqhojnhTcZL68
 FsznHjtay7S2jtWwDu5UiAPx0ensImFt/BNxz2cfeBKSBgojZylJ4jBot90MoPfdols2
 3WZeyqcYkhNrxK44/bUcprBG+ZXqER1ap4CH7S2s1vvxpTW8tvWzp1N/TrDnUhl0GKFe
 xPZBptaqbJ2sz4X8XC9i4xav98mpOO2bghbiHdArGIxomCFbS58mBWrctO3uTURxYz87
 VAOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=rLIp2me5jZU1SNsGntPYn8e5/jApcYy2rM3bOxsRgHU=;
 b=aHKdUi+IUUbr+gQRE6ej/Lu9iiGVFlhclJDeZDEoTgtnCBG4Iq/54r9tTDs3oI37yB
 g9kRehPvaRCRshB697w+13jYMU+Bb+vJmeKuDQyuhhkwuKkRFuhBgRd8Bu9SrC+MpwsG
 EboGZrY0RXw+Dck66atX8Rr0PXgutMJ2mBTxK5T1p7kCt4uRljypxbTCeppUa6vTl/dT
 gvmZZsXE1TJYABEv1We4oERqLsyWOsNoyo94IxtS/Q+a1rUg59PD0+QMX9s7D2iHYmBq
 m88JOU0pOx81Qyr50FFeJcqlcCN5t1nyxxG9zuB3utaIaLnam62QZEWCLPepKWRSRzmk
 ErSw==
X-Gm-Message-State: APjAAAV8sn27BES+b8zX4Buj88o7ACHS2QcctFIHzF6PHUltP/p3x3lA
 6qfPjF0O0DTKsdy1ybLSj0g=
X-Google-Smtp-Source: APXvYqwVGzetBeRPDEU3UPBFTb4D0Rbgg5eyrtulEO9VoINtcmRqBzlMZ0z/f4I3ERYpLSK1x35EuQ==
X-Received: by 2002:aa7:9aaf:: with SMTP id x15mr64420337pfi.214.1560802712814; 
 Mon, 17 Jun 2019 13:18:32 -0700 (PDT)
Received: from localhost.localdomain (KD118155013174.ppp-bb.dion.ne.jp.
 [118.155.13.174])
 by smtp.gmail.com with ESMTPSA id 11sm11965953pfo.19.2019.06.17.13.18.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 17 Jun 2019 13:18:31 -0700 (PDT)
From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH/RFT] arm64: dts: renesas: r8a77995: Fix register range of
 display node
Date: Tue, 18 Jun 2019 05:18:16 +0900
Message-Id: <1560802696-19042-1-git-send-email-ykaneko0929@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_131854_763513_3688DDCD 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ykaneko0929[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (ykaneko0929[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Magnus Damm <magnus.damm@gmail.com>, Simon Horman <horms@verge.net.au>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since the R8A77995 SoC uses DU{0,1}, the range from the base address to
the 0x4000 address is used.
This patch fixed it.

Fixes: 18f1a773e3f9 ("arm64: dts: renesas: r8a77995: add DU support")

Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
---

This patch is based on the devel branch of Simon Horman's renesas tree.

 arch/arm64/boot/dts/renesas/r8a77995.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a77995.dtsi b/arch/arm64/boot/dts/renesas/r8a77995.dtsi
index 0a344eb..0567b36 100644
--- a/arch/arm64/boot/dts/renesas/r8a77995.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77995.dtsi
@@ -995,7 +995,7 @@
 
 		du: display@feb00000 {
 			compatible = "renesas,du-r8a77995";
-			reg = <0 0xfeb00000 0 0x80000>;
+			reg = <0 0xfeb00000 0 0x40000>;
 			interrupts = <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cpg CPG_MOD 724>,
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

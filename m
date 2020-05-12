Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A7E1D0149
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 23:52:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BWgbhmq4c9nICej4OyNFNzNTYqwyxgNtDLzoydwuIco=; b=kHBwf1FCnVCbeX
	EdkCxehq3dEjoTqrLAkYN4+bp9aZMOzx/I8PmXgkVpYqgTUXt+Fl+eme3J1Vh6hoQ5Ehdtsv+85ZJ
	+HtHcGqn0+OIwPrpYxgS79D1Ft+dueqlUnoAtTcwXAXNzIhhYpTtsBcA73A2MQvOE7JWoB492hbjI
	Bl53GX4EORSqRLrouqNLEA4QE7L3uuHYqecpjL9bd6zrWPns0i79geG/KCPUYZyAxP1l99Xkm4xV0
	Glv3g6ePImXWGFEnoLqe/2D2l2j9OTvImIiqvYk6YERfX0I/xFRJg4ok+RJJX0sAOGHawAy9gfUdW
	ieqtDloNU+3lmzMQzS6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYcos-0007Pz-Ht; Tue, 12 May 2020 21:52:10 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYcog-0007Ng-Ge; Tue, 12 May 2020 21:52:00 +0000
Received: by mail-wm1-x343.google.com with SMTP id g12so25714200wmh.3;
 Tue, 12 May 2020 14:51:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ML06J9nAXnrGfb8Sw/sNjsFqqfba47oOWTFdhQokhaE=;
 b=sqqdAXK6AKL3cbZ99XKBs8vbhtAITOFn3FP5urm5A9+m+E3vBxCyHzDePpPHKg5vjj
 LKHfYxs290ihRp1p84MmSSxnUVV+ubgjKVy09HRPONVXw0pyP2WdpBV9fuMZJQ6eh4Nb
 LNH67EVYxVFhj36nWZNsIAr4MZUM4VCo45Ypo+0r/hjTilR1SzePTzQQ+oG9lLx+Bxyj
 7A8pjPfgVM/UuTmXTFVyqFug0Fsz7pvFsKcr766wVUk2+i3mCLqXYuCxyFH8CKCdJ+Xg
 CVDq61GKy/MdOLe54IBiKfX/yfXceGudA3Bmz2MbI7+HQk7Dz1MSCMhukgmoc1n6zJ/e
 A/HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ML06J9nAXnrGfb8Sw/sNjsFqqfba47oOWTFdhQokhaE=;
 b=om9dTEoEedO9PL8fhlaFp0H7Lsu1qczc6k1uzqgQIWLGwNfV28nE4FWtsMUVeZYZUS
 aNJSJtmrPVhG2Qya8z1sr5v61LEUv+6KF/n/s80yu/F84cziEnNTDzI4FelzAj6+AaLW
 LODSH/I6G26qw/g74XzxI9XqNdIKRdXhzldHLOxwFPQGfagrbBTh9aMWFO1/BgtIM2BI
 cK0IuoxJgZnKcPBGFznZn2QUOdlk8+TNoCwcgNr3PL2jsgWgW/PtJpXW6JnYhD9o0S7A
 QIc5J4QFqH7PL9pSMTFyyU7o+3qkFL98fLA/SvsCMdipZJJS0dbc92WcA49wThuDOHBW
 Q5VQ==
X-Gm-Message-State: AGi0PuaNyQe7rh2njJlREeA7Chdm9vwC3rcc/yglT7+SE4ZQlJMAGhf3
 k3owhTPMRYuBvAspNx6YyBxxCtZv
X-Google-Smtp-Source: APiQypKHylusgy6f8u/ZP6adCO9GAkIUbJCRnspiKCYLMh1Hp4j9DPjXr8tdjOS9U6uh8sjsjGYg1A==
X-Received: by 2002:a1c:4d18:: with SMTP id o24mr37244079wmh.141.1589320316956; 
 Tue, 12 May 2020 14:51:56 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137132E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3713:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id d9sm9154234wmd.10.2020.05.12.14.51.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 14:51:56 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH 1/2] ARM: dts: meson: Add the Ethernet "timing-adjustment"
 clock
Date: Tue, 12 May 2020 23:51:47 +0200
Message-Id: <20200512215148.540322-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512215148.540322-1-martin.blumenstingl@googlemail.com>
References: <20200512215148.540322-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_145159_182813_20C159FC 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>, andrew@lunn.ch,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the "timing-adjusment" clock now that we now that this is connected
to the PRG_ETHERNET registers. It is used internally to generate the
RGMII RX delay no the MAC side (if needed).

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson8b.dtsi  | 5 +++--
 arch/arm/boot/dts/meson8m2.dtsi | 5 +++--
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/meson8b.dtsi b/arch/arm/boot/dts/meson8b.dtsi
index e34b039b9357..ba36168b9c1b 100644
--- a/arch/arm/boot/dts/meson8b.dtsi
+++ b/arch/arm/boot/dts/meson8b.dtsi
@@ -425,8 +425,9 @@ &ethmac {
 
 	clocks = <&clkc CLKID_ETH>,
 		 <&clkc CLKID_MPLL2>,
-		 <&clkc CLKID_MPLL2>;
-	clock-names = "stmmaceth", "clkin0", "clkin1";
+		 <&clkc CLKID_MPLL2>,
+		 <&clkc CLKID_FCLK_DIV2>;
+	clock-names = "stmmaceth", "clkin0", "clkin1", "timing-adjustment";
 	rx-fifo-depth = <4096>;
 	tx-fifo-depth = <2048>;
 
diff --git a/arch/arm/boot/dts/meson8m2.dtsi b/arch/arm/boot/dts/meson8m2.dtsi
index 5bde7f502007..96b37d5e9afd 100644
--- a/arch/arm/boot/dts/meson8m2.dtsi
+++ b/arch/arm/boot/dts/meson8m2.dtsi
@@ -30,8 +30,9 @@ &ethmac {
 		0xc1108140 0x8>;
 	clocks = <&clkc CLKID_ETH>,
 		 <&clkc CLKID_MPLL2>,
-		 <&clkc CLKID_MPLL2>;
-	clock-names = "stmmaceth", "clkin0", "clkin1";
+		 <&clkc CLKID_MPLL2>,
+		 <&clkc CLKID_FCLK_DIV2>;
+	clock-names = "stmmaceth", "clkin0", "clkin1", "timing-adjustment";
 	resets = <&reset RESET_ETHERNET>;
 	reset-names = "stmmaceth";
 };
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

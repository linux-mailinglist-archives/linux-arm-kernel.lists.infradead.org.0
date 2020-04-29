Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 137771BE87B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 22:20:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BWgbhmq4c9nICej4OyNFNzNTYqwyxgNtDLzoydwuIco=; b=RiU/St+Tpeo2hd
	kVNe5teDXko2prh/uCPB0NldTB63EfYgCSu4Thv78DdwZLRbTFKTcRQ8vE1/s+uJ5ArDSh0dM0V0L
	7fPlZ4zrpbGkzshn8gJB21JXIobpyujpOCJ3igYXlexHirzMSopVjv0LjDpTcfxN47dGTtVUwTm1x
	EwF7Cy7ptKEhrrO0l9br8lv+MCWnpmZU5VmxCen458wHdgC810Zr16WmaAyCnGemyBqDTXEOmcqk5
	N3qAN2klyZz1vnn/tyFKZxAI+tngWNo2IOudzKQFd7UCuaBcqO79knmFIxII6uBK3MgXHzNpeMCSR
	JvGdmLDvgZivDQYMSx7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtCE-0003gX-6W; Wed, 29 Apr 2020 20:20:42 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTt92-00075O-Uf; Wed, 29 Apr 2020 20:17:27 +0000
Received: by mail-wr1-x442.google.com with SMTP id x18so4129811wrq.2;
 Wed, 29 Apr 2020 13:17:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ML06J9nAXnrGfb8Sw/sNjsFqqfba47oOWTFdhQokhaE=;
 b=I6xBJ2SgUjpuRy8PYgy88Vghn+35By2xz7BMjry77ASag5aKvIV0Qmf2JES6q8lIqX
 joPBLtr3A7Ztb/TQSlS0ammJAasQdIgPRAH9n6KVnbv8Dg+5MLX9ei/DI5o+4YgsLvjQ
 e0l//7Tok7gTPJYBjWFNKCwMX2VAfyYxxsbHmoCF2dWyNperl9l1u2w4O+Rqxi2v21P/
 vUDnGMSfqpvBfQ37f+oiepTpjsxV47f5ElwXR8L9zEMP2XwFpS4HgevSrzEs/DkOjxZ7
 1Q99zESKfDfl/IUuTPxbjD4lipMhJEsIj3HMKV83VbQbSl9DuCSGCXMrJ+SpJ2VeKacU
 ymSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ML06J9nAXnrGfb8Sw/sNjsFqqfba47oOWTFdhQokhaE=;
 b=uWUkGgXq6ZGN+2jYsfKZKXIv783OPGMmpY6h0fcLOwt3p/y/kQeszjDEQqj4HCuGC9
 8VeVlC7EP8EhKGvLG/iBuLvaSxUWrW3djtNf6nNedQjvYGUTvmKl9icLn+c/rk215QSA
 6NU0glxjCvIPtZF7kNVtUdPidUizFjxOMSBklTcA9tpluSbpo3VPaJU96otRy6DeyhUu
 OE1P0kORAlCG3VG6sV35xuwvxMyjlJMkryVDQH7jPv7mo7YEHhgIt0uyOW2jWgKWq2Cj
 IUR/T5+5xH7Kaon6Udh0fOaEJy1Yde1T4ydyMz6mRgdUdHxePgh0iCVCSk6P7MAlIEJ5
 iYrg==
X-Gm-Message-State: AGi0Puae0FYF+tG4u/WOibP54fGrDg1V5KtlJCEv2noimw4a3LY7sS8H
 5FfjxVe8cf+LyOKJ1kc78ak=
X-Google-Smtp-Source: APiQypL/Ts+PnYJmzQA093RS5PL9mTk8d7JdiY46vyorm6USMdg0g2olx5OKhnYkn4+1TCd7ozkkOQ==
X-Received: by 2002:adf:84c1:: with SMTP id 59mr41790968wrg.350.1588191443643; 
 Wed, 29 Apr 2020 13:17:23 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137142E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3714:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id q143sm9923623wme.31.2020.04.29.13.17.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 13:17:23 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: robh+dt@kernel.org, andrew@lunn.ch, f.fainelli@gmail.com,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH DO NOT MERGE v2 10/11] ARM: dts: meson: Add the Ethernet
 "timing-adjustment" clock
Date: Wed, 29 Apr 2020 22:16:43 +0200
Message-Id: <20200429201644.1144546-11-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200429201644.1144546-1-martin.blumenstingl@googlemail.com>
References: <20200429201644.1144546-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_131725_356869_88F0FE6C 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
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
Cc: jianxin.pan@amlogic.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
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

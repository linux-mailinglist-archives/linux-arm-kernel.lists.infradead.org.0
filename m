Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDCFFC4011
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 20:42:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S8cGteMcDz19/uL0lr0aBS/fVkdrKxG8LmYSFO0avfk=; b=ZBzJQkJR6IfukQ
	rvvXGXWlr/2fy9N+5kZNaHcH2P0TFLy3d5U8vYsaJG20ob7Ioe0ldLOllDf7ju3HorWTdjv1FcpdQ
	iESExKnKY1jr2OyfrC3xJ1w9wr20ppFtCBmL4jTLFZNfMSSS9ileQPSh+K7TqSoKmQUuc0rAA3X/7
	O6igrnQPi+1d8O9fjgeL2so1u4lpOfb/uww6sWuLUQTGs86zqXd8M5D9wQkx3jNYS1QrWzW2Db1wd
	UMBT/nLjuQRGf+U7vbW0glq2/eWQoI4JLBr7m5N1/ZcLeC79ufis6e84JjJT5orgmoUSfjG4AXECd
	prm96Wfc383IL3/V7ivQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFN6s-0006rM-Be; Tue, 01 Oct 2019 18:42:54 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFN5v-000665-60
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 18:41:58 +0000
Received: by mail-wr1-x441.google.com with SMTP id h7so16768259wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 11:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=N64UCPhRuRaa6HAihdDNhQwAdS9v1yZICEy8f66AWK8=;
 b=O1xmlx6C9EC5XBbxeoVyiJrS3gGf4f1W/RN3tQijnQjE2kuLHnZmgZrp4GyCFlBdnS
 K9YbKIvSMj947VSwn+gLwunCBZPhpP2GHeAlMViF0UqcwR0XWCYi3N5R06Nv46Ue6JHR
 GnwbW+f7VMgFs6Ybai2Q5VYSd5juCmJD4lq7F+3iG1J/ouDRnjPHDNGrubtu0WwU7Lkm
 8lc6fS+GhY5WrLL5e4Ot4PDOCgFD4Zc980Z4i7nM8R4zY8P82vp+MMC+HxBNTQz3ysHL
 GTCBT1avmdW2sfSgI1tX+zb12tLPwJ8pnaXzx1YQXAYEormP2goCYcwadRuZptinhUfD
 +Tpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=N64UCPhRuRaa6HAihdDNhQwAdS9v1yZICEy8f66AWK8=;
 b=mWbZJLtyxKK5H5/ApzVBMPNDrf9L3CPjWoI34l8YXfi5LDTqPGJ511VbxHy1uFMsA4
 V5dZF7v3xxUajhFfEs2+inEp+VJlygHOr0UZhn4fkFR5/D0mzNI4V6TJ1Gdf0ci28Wov
 SbLKGLtlFPhTFV3gOOzqXiVslKdc1/2e/Fo0LZkfWiu6+Lm6I60Gk/m/e4Y5FOwgDYjG
 oQlBHnnOiQmUXdZ4DIApTjows9jzuJ7FWxWC05AKReQFgzPSQsj1UMVktH4DfjG9/w/9
 yXLi5DGmXudqMbfRG8sAN6ECfZXcoIAGI/jzafbN6nbIsamWHlM7+0IJuurbCF58UbXS
 ft3w==
X-Gm-Message-State: APjAAAUH5IRzYs1fEh0VMOomnYQMbRXrcbyC/sEvfYyeIUj7cOgUNo4E
 SkGt2a6F+SvEJ0bQNwy3r4A=
X-Google-Smtp-Source: APXvYqwCAdWn4qYRUxI8Stf7vpraZaX/Lp7SJyicaKIlgZSgnjPijNSfN13cYxo7ZID8gKwUhGUCgA==
X-Received: by 2002:a5d:40d2:: with SMTP id b18mr18262783wrq.4.1569955313682; 
 Tue, 01 Oct 2019 11:41:53 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id n8sm6788987wma.7.2019.10.01.11.41.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 01 Oct 2019 11:41:53 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v2 04/11] ARM: dts: sun8i: R40: add crypto engine node
Date: Tue,  1 Oct 2019 20:41:34 +0200
Message-Id: <20191001184141.27956-5-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191001184141.27956-1-clabbe.montjoie@gmail.com>
References: <20191001184141.27956-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_114155_291014_DC317A29 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 arch/arm/boot/dts/sun8i-r40.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index bde068111b85..1fc3297a55ec 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -266,6 +266,16 @@
 			#phy-cells = <1>;
 		};
 
+		crypto: crypto-engine@1c15000 {
+			compatible = "allwinner,sun8i-r40-crypto";
+			reg = <0x01c15000 0x1000>;
+			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>;
+			clock-names = "bus", "mod";
+			resets = <&ccu RST_BUS_CE>;
+			reset-names = "bus";
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

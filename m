Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0875DD929F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 15:34:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zxWS13M3swUfpNLcLYV6n1aYYek+v1uEyJhRS7rS72Y=; b=tnwFxHyIKiqoeK
	YF+DhRnM4Xkv25oodLDJUGo8MtzGVaheutQBlCQBMgpGmLehXvosGWr7aaHeiuQakXKnLYBl33nkq
	iFUJmXjfa9Hz/GFBxvisgsjvq/SH7IAE/EMScuILOH0PXP80RR95hK3OSsUXLRpMTCbJLigMQKKlF
	WFFBdli9rdPDfWNVAdBL2DS1+QNyriXSNXMEZgwmYr/7PnuAkuKJpYCM0GlN8RlRXVwVp6AQ/dG/C
	Z0PTl0zpxyKFWrwAxRfsc9/F8bJXO52xX7MF0eDh1SZqfTwAKjmgiXv1QPJ8R2d+n+gKZT88oS1xS
	esHGNbZe/r6VoJ4LL9vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKjS4-0003Lu-6k; Wed, 16 Oct 2019 13:34:56 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKjR6-0002f3-Pg
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 13:33:58 +0000
Received: by mail-wr1-x441.google.com with SMTP id j11so28113119wrp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 06:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dpe0zCbR3c1VkH/n1U/vOC6ekNORqcDkTSfYoQ4laf4=;
 b=vfOKhkD/B4LEg6089Khw6AZt10guS5PRPkM3bMi0lgUqnTMUx0pI1R8LsienxZEMm2
 E05kaPmoQtQvR2H7jKVnidLwW3Vejkt1ELE9yb6dTGA2vAXYEYNry0LWvHFcAA0NMpOv
 k9G0Md+1zn8hR7VVE4Uz7lwin5Z9FyvKKqdFUOnLGNqjbls1aQdFZSeEunuMxh26BU81
 QtFKBERwt2fYrJOFrRPVY3TP6wi6aJ4kvsqpXHpYY4+AV4mzKPJkNxdtZSnIoibCMRuB
 E5ylZ26gQET4N1EgAmHkHImIdXAjm+dZYd0rRiSNOvxBD/pevTw0thJR010OqXlc0IAd
 tDtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dpe0zCbR3c1VkH/n1U/vOC6ekNORqcDkTSfYoQ4laf4=;
 b=TS6+e7j9gi47vgjvVevo1jjEZpdQqWRT81qvcasvAEwN459xn+AHIdy7SziyRZ9GoV
 6FQjX9WsiZV5Oe/75ocVsG5i+mHzIjTzH4KvZG+9MmSVUiDXiNYhQA3pL6ebKk8P/V+v
 Li/JWogLwRbyQtQSMpdUHtbNefAe6cRNdXES6f99/aZV9kcftK5gjDZVZ0GEyQyzPxJ+
 6tdwhujsiFnPCk05g5wQfIhXCg4me1D1Fv3pHw/6MTvcvf5gAQ8AxK337ZxPOoofwQe0
 gGa4s9w1qnE3rb/Uqa9QLop5lebmanP6FE68M9D2haWX+FeB3QzYNZI66/yZc3YwAhkI
 gjuA==
X-Gm-Message-State: APjAAAUcWy4G3VgjBaTHvYPKmho0O9nQed7NwcZ+kc+P0bZmFHNoGZtL
 z0ditAofHgHpllCBDIEzoms=
X-Google-Smtp-Source: APXvYqxz+OWi0tp3OSsbB23tWAXSlMcqgwlRvvpcPVUGZGYuP9JlM3ADHjooxy1QYXOvh/7QHnqaEQ==
X-Received: by 2002:a5d:5011:: with SMTP id e17mr2790378wrt.160.1571232835526; 
 Wed, 16 Oct 2019 06:33:55 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id h17sm3139998wme.6.2019.10.16.06.33.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 06:33:54 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mark.rutland@arm.com,
 mripard@kernel.org, robh+dt@kernel.org, wens@csie.org
Subject: [PATCH 4/4] ARM: dts: sun9i: a80: Add Security System node
Date: Wed, 16 Oct 2019 15:33:45 +0200
Message-Id: <20191016133345.9076-5-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191016133345.9076-1-clabbe.montjoie@gmail.com>
References: <20191016133345.9076-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_063356_849129_07096FFE 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

This patchs the node for sun8i-ss which is availlable on the A80.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm/boot/dts/sun9i-a80.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/sun9i-a80.dtsi b/arch/arm/boot/dts/sun9i-a80.dtsi
index b9b6fb00be28..d7498a1a158e 100644
--- a/arch/arm/boot/dts/sun9i-a80.dtsi
+++ b/arch/arm/boot/dts/sun9i-a80.dtsi
@@ -457,6 +457,16 @@
 			reg = <0x01700000 0x100>;
 		};
 
+		crypto: crypto@1c02000 {
+			compatible = "allwinner,sun9i-a80-crypto";
+			reg = <0x01c02000 0x1000>;
+			interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
+			resets = <&ccu RST_BUS_SS>;
+			reset-names = "bus";
+			clocks = <&ccu CLK_BUS_SS>, <&ccu CLK_SS>;
+			clock-names = "bus", "mod";
+		};
+
 		mmc0: mmc@1c0f000 {
 			compatible = "allwinner,sun9i-a80-mmc";
 			reg = <0x01c0f000 0x1000>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

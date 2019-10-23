Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B6CE23FC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 22:07:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e18W4+dUqEFxkc73Xo1lO+u+Dg/pgYsTKLbOk8kb6N8=; b=ecenJVI+/Ra4XH
	I6W5X0QCnaSyFTt52W1Qudz8FYwCFcPgXXpg7P2jPRYmcvuAhJ6axOkWLHteeOgysMk3e66p0o/tN
	Ec3VWU8tYdCCyIxKZnpWNTiFQP7Jyfpa6cal8yz7H7Df5JTRujxXe4XITFqaACz+9RgjsZLTJWvo+
	NazKKspSXdU1Cwom6Am1yN6dFwgFlE2OcQ9lNfgBYoq0uzdrt5rUItX14Hs03I6CFmdPOaBlSeExM
	x4GANPQFjX0ausUevwQsHrqbrBjzS52YWK2WMGj5TR+XrFHB0iOZrpZjuKamm7Lcm5aqFS9ERaxyb
	1aAE2D22dokiUUaZR7lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNMuw-0003AG-8z; Wed, 23 Oct 2019 20:07:38 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNMsr-000176-3C
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 20:05:30 +0000
Received: by mail-wm1-x341.google.com with SMTP id q130so60794wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 13:05:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sqDLE8eOD/jzuEBYGSJJdfRbfHzmSxgCPCd3m6sI5BM=;
 b=tsIat0PtYMzoaRXAbHNswipgHePXIEf+lasJhy3OOouU5mO+Ga3jYHl6h58jX1eoc5
 i0QzCsw2HjI3m7KzimnttZo4pRMU9dd8FYXb7hOg/pkafULQC9Na2qcLMCGftIbCKmgj
 eFTTGDphdvClIaULuHcN9XmyoGadqhrCsOByzbGRTaSmKL5cyo3J/IWeCIj+sld+wgj9
 zHfcSSApN0TuxKAX1GbuA6ziHX8SMPqt2ZxZdUTpfGEuWq5U3TKAIs1c5tlxV6iBeahL
 Xaa4CHdAE6N4nLwEV2IGc4woC7Jc9m7essZb0hYKwPA4Altg2daouplymEyFdhAbeRXs
 SZfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sqDLE8eOD/jzuEBYGSJJdfRbfHzmSxgCPCd3m6sI5BM=;
 b=PS/gtqQM0AownAEGkyxdeXDRUEXFMkhyVtZoCu2ScalNUNYYgwIAoV8o1UV7UL5H/p
 iTWmAbQXpgGin6Bep9YJV7K803bPvo9AyZ94f1LJJSea/Y/LSZWMeCeuMLA1Q3HYewhc
 9UHNqdLZGcYARHHhVJwctuXxypqDhthDVOQUd8o5QQ2IC69lwiXDebHjOesX0GYKZ1m6
 4MQpfNBcNEUKSt9YDBVYQ71fhBTUL5GgyZzLtylUR+mw5fOJAKiXqVgqFksIkTN+3/wv
 OjUC54rFnvrkp4wxg5hX3MFMai5iKt18yPm+k8aq6MOQhuMgbbkISwNzVfwy+o8kD/Ni
 hEJA==
X-Gm-Message-State: APjAAAXuT5rfBLPh2LPuPMdJY8nJk2/18EOvyUhCxQudDZRi4JS+qffK
 /qJsEJ3LD0jKkTmaJAU2McI=
X-Google-Smtp-Source: APXvYqwaZdkK3aFXO5FFDfTfzQdT9wrOBX3zxe6K/YcD8KqslRVP1eHe6lTMhnBHFTZxM3T4SF0/nw==
X-Received: by 2002:a1c:544e:: with SMTP id p14mr1440486wmi.17.1571861127405; 
 Wed, 23 Oct 2019 13:05:27 -0700 (PDT)
Received: from Red.localdomain (lfbn-1-7036-79.w90-116.abo.wanadoo.fr.
 [90.116.209.79])
 by smtp.googlemail.com with ESMTPSA id b5sm177555wmj.18.2019.10.23.13.05.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 13:05:26 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v6 06/11] ARM64: dts: allwinner: sun50i: Add Crypto Engine
 node on A64
Date: Wed, 23 Oct 2019 22:05:08 +0200
Message-Id: <20191023200513.22630-7-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191023200513.22630-1-clabbe.montjoie@gmail.com>
References: <20191023200513.22630-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_130529_159538_25582096 
X-CRM114-Status: GOOD (  10.57  )
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

The Crypto Engine is a hardware cryptographic accelerator that supports
many algorithms.
It could be found on most Allwinner SoCs.

This patch enables the Crypto Engine on the Allwinner A64 SoC Device-tree.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 70f4cce6be43..0287d8458675 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -478,6 +478,15 @@
 			reg = <0x1c14000 0x400>;
 		};
 
+		crypto: crypto@1c15000 {
+			compatible = "allwinner,sun50i-a64-crypto";
+			reg = <0x01c15000 0x1000>;
+			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>;
+			clock-names = "bus", "mod";
+			resets = <&ccu RST_BUS_CE>;
+		};
+
 		usb_otg: usb@1c19000 {
 			compatible = "allwinner,sun8i-a33-musb";
 			reg = <0x01c19000 0x0400>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

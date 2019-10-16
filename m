Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3A7D94DF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 17:03:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e18W4+dUqEFxkc73Xo1lO+u+Dg/pgYsTKLbOk8kb6N8=; b=WBdF8W5wQzT1F6
	BpFYXYNZ9LGxS4wsJIneZ4ZjkiP7E6YKOecq0gHrQ1sKo4QhTShgzPQKsVckv1faofoAHDKrFza2O
	3rJ++L2ijoDgpXbWAJUASNGb2ncb3zManfoAwqOMcqGRhnM2aboGAkfhycvbbF0f7YIOZgDdNFFub
	OcFsucGWUK2jc7JdOZzaxANzbotZF9bpGHDncaf8rGkkG+2ZZggZ+092v0zDKBBRXuiF9VhxbFZd6
	MlWlqlrDzYpU6bAbb+IKgVIkFDzpNHJwpbBPRGEezwyHbB4a7rOdEkB/6HPM4Zg0jouG3e/PsP1JW
	3dFFehKH3grKaIh3Abew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKkq8-0001tE-Nx; Wed, 16 Oct 2019 15:03:52 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKko7-0000CJ-2V
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 15:01:48 +0000
Received: by mail-wm1-x343.google.com with SMTP id f22so3154543wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 08:01:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sqDLE8eOD/jzuEBYGSJJdfRbfHzmSxgCPCd3m6sI5BM=;
 b=cjg9323SurCwWio8T/pGXDYiVsreN9rB5zKJVur3no4xha6wBi0wvXU8//WTDGMa1y
 d9VZz0KBD9S8vHPVYQEKmkW01hMrH/AK5pZ9nwHCh8OKVhaxyTA/xhKdAJEkXA94FiEY
 4IYTEouFFeLFTbXrFZ35N19PnCRiYx9GoQawl2zQmso9BZg5kofykWUdrcfSaHavqi/V
 JeiFFl+rkc3tiGTgFRVA+xipw30HCI2itAlcBj6dujsTOmKERbZupJ+yqkGsqF8VfO/y
 NlcTlFmAqoIM5a2Ps6FQrbB8YTuBQ6OVHRujv8lHDqhRTFUusKDth8FKIXbTNpQJUZqP
 lcdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sqDLE8eOD/jzuEBYGSJJdfRbfHzmSxgCPCd3m6sI5BM=;
 b=TJa9lEDOu2RXWBB2FgZDzh8tHE39RZ2G6/G3wRraoj6l75FKFLWSHvGfAIyAIii5Kz
 tuScLzwRSsfNHslvHkUke7+DNglEC8LMMGwBkRBonkQ3SpFI65fpZH55v67t75/xbzLT
 5U+ypHGa6DqMRH9EzedwqCmZHGLuePruVT4mTRdKEYG18gjCnX7zBxYcvBvJo3T91XRq
 RA837TQq8pLOlOnOJhgIbZRBOfFOt+TuFTDQ4OTccPevpBwOlD6kf0yReKY1eaMOaZ9O
 RHHfT/3H8fMt1aN5TbAdQmw0DtpAUJM2WatGgAcT6DgIO4Z/ZMydquWkRcGiNpEXjkOX
 j7yA==
X-Gm-Message-State: APjAAAXdSNziihhTT91q+1hOtms2meAehwKFoLW1T2WRX/c2CPi1uXPo
 POk1fznqx3pU3O5sRHrY0vo=
X-Google-Smtp-Source: APXvYqy8plqMN+WHFzRhYYAzRQ39/G5VYthflTU0EHmCjp5zdMxiJ1K646rdp5ZDlsyo2ZtYR4nW0w==
X-Received: by 2002:a7b:cd83:: with SMTP id y3mr4184454wmj.150.1571238105430; 
 Wed, 16 Oct 2019 08:01:45 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id r18sm3215437wme.48.2019.10.16.08.01.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 08:01:44 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v5 06/11] ARM64: dts: allwinner: sun50i: Add Crypto Engine
 node on A64
Date: Wed, 16 Oct 2019 17:01:26 +0200
Message-Id: <20191016150131.15430-7-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191016150131.15430-1-clabbe.montjoie@gmail.com>
References: <20191016150131.15430-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_080147_125440_7B7919CC 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
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

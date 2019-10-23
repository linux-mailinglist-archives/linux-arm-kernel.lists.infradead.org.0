Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B82AE2418
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 22:11:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FzXq+rUiRx8cRYtDrOPKY2D6nKi7e0ddqCoslkHwHGU=; b=QYCpNbQc38vzS/
	i1IlmRq6O12l5DV3EoaP7cZcuRXGYgeYjTFuh7Ca8SpOY9eA7l2cS+1Jt1bzkZAn/6dCE6bvgtT6C
	DaEbJsMsjHbo85Mv+KYHy0sB+62vcYTCR+3VVkKPVDBOiiu8De2C/59w0lU3DC6V3D3VbysBxI+lu
	IMqTzPlMBGPUgVe7EB62lt2Af0sJa5aBdzKkPp74rfBByVYHSs+G9WZsEscVHQLlwSPsDks1op7/W
	YxfEXeZJhi+6P5sZmUaOqDsHRoklXRofN9L8w62V6BfYMPx0TJMKXnH+5G1H50P5rTX6k1R4MXsQp
	42wvti6yizCg7kSIQ05Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNMyL-0006bv-6O; Wed, 23 Oct 2019 20:11:09 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNMxd-0006AQ-N1
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 20:10:27 +0000
Received: by mail-wr1-x441.google.com with SMTP id s1so14706883wro.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 13:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EVcGe0jhVemfS4F9ZaDSPVCJM3kLwDEzlwrCz/1Vhro=;
 b=EB5jMS0HCXV/O9fqfDaEVsb4bq3hdr5B049ewpRUOWDfnPe1UTPTnZUwyhiswHn7GT
 cfQLb/7CnZMg/o2EVAyVlgxw1O5G84mHnkVpnQ4juU9KsIYHtcLDb1HrYx3VyqYd6Br6
 DC7DDFFTD2cISFn4jEX4w7Pf1QjLJBSFE5nL2KKBPxptObUusMmf/b5z4/1n6nG7wQRZ
 D7EmtQJ8fzzvQxKdyFF98sJHcnxE2L3FK6swZaTrI4CoGh8B1LFnmnX//Kdq0SHie+rR
 JAUeruRD9POjKOJVv2tuk5xiTbK+kGZevL3LVzw8VLVNrGs+N7jalEtxe8t7HPI6j+3f
 DT+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EVcGe0jhVemfS4F9ZaDSPVCJM3kLwDEzlwrCz/1Vhro=;
 b=sOhXIN6Hq0ZJ8kdZE71zh/P7XDTSzXbB60w1K8xtB6X3yEZhtI+iklZpBDkB/7dYqB
 XASVWwnkFlUUfd51IkvYd7q3xzjuyWeL0yY3+c5xbSv2zU/a6xtCFRe42KlnowVAULo8
 OxXAdoSN25GhkFD2jssuOsnGFvcSSmmyEbTXUYRn2HTRQ+19SAkZ4gP4o74/VArooGA1
 s+iAu38z8QwEguDAtEjJ1au5oskPJd481pdUzgQFnFm7Iy+FcrBgH/MT5jV25PIAUvRT
 6cEQJxRhJbJJCUbj0HIA9VbqmUVbsnqz5IQRtTutwbBiGFkhUBoioKZFpxj4SqGmpk77
 GKsQ==
X-Gm-Message-State: APjAAAWufpiHcuqpdq43EMzgBQieOfz7a35S4Xkz0rmLIZKtZz669Kj6
 4+CJqsbp50ukUAoo9hXWNrY=
X-Google-Smtp-Source: APXvYqxXRr01gLUky9ikT60t1Fi0fbsD4kiaOTYDWZyPb3tFWAxn+F8I6U2dAgQddtCWq57qxr0MjQ==
X-Received: by 2002:a5d:4285:: with SMTP id k5mr434899wrq.344.1571861424257;
 Wed, 23 Oct 2019 13:10:24 -0700 (PDT)
Received: from Red.localdomain (lfbn-1-7036-79.w90-116.abo.wanadoo.fr.
 [90.116.209.79])
 by smtp.googlemail.com with ESMTPSA id h17sm277261wmb.33.2019.10.23.13.10.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 13:10:23 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mark.rutland@arm.com,
 mripard@kernel.org, robh+dt@kernel.org, wens@csie.org
Subject: [PATCH v2 3/4] ARM: dts: sun8i: a83t: Add Security System node
Date: Wed, 23 Oct 2019 22:10:15 +0200
Message-Id: <20191023201016.26195-4-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191023201016.26195-1-clabbe.montjoie@gmail.com>
References: <20191023201016.26195-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_131025_803064_B385F4A9 
X-CRM114-Status: GOOD (  12.98  )
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

The Security System is a hardware cryptographic accelerator that support
AES/MD5/SHA1/DES/3DES/PRNG/RSA algorithms.
It could be found on Allwinner SoC A80 and A83T

This patch add it on the Allwinner A83T SoC Device-tree.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm/boot/dts/sun8i-a83t.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-a83t.dtsi b/arch/arm/boot/dts/sun8i-a83t.dtsi
index 74bb053cf23c..0a6e9d92277c 100644
--- a/arch/arm/boot/dts/sun8i-a83t.dtsi
+++ b/arch/arm/boot/dts/sun8i-a83t.dtsi
@@ -583,6 +583,16 @@
 			reg = <0x1c14000 0x400>;
 		};
 
+		crypto: crypto@1c15000 {
+			compatible = "allwinner,sun8i-a83t-crypto";
+			reg = <0x01c15000 0x1000>;
+			interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
+			resets = <&ccu RST_BUS_SS>;
+			reset-names = "bus";
+			clocks = <&ccu CLK_BUS_SS>, <&ccu CLK_SS>;
+			clock-names = "bus", "mod";
+		};
+
 		usb_otg: usb@1c19000 {
 			compatible = "allwinner,sun8i-a83t-musb",
 				     "allwinner,sun8i-a33-musb";
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

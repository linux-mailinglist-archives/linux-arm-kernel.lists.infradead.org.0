Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA32BD929E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 15:34:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FzXq+rUiRx8cRYtDrOPKY2D6nKi7e0ddqCoslkHwHGU=; b=XC01+fYCqMAzwn
	d8VZli0OEGT4/+tLzkWMpRqH64q59jDi9owzyMUmDlHGNzzuOOmV89iGZiIm5KE/4PthDu1rSkVzb
	PoGOy/0ah3zAMJcrpLushD8X1cwqcgruy/JmOPFnNkp07jML0KJM2XQatcPVLwtVRqwW2gna50ttR
	qSzdUPiFXZoAmjq+vi/Cu42N6eK+ai5AO+0btFRrDm1MNQ4g2V7VmI8LxYGfWxWP7A7szZrKIlI+A
	VUf993o452RSpx4z0TPBPWmmWGPK++jhSCjAfKY+qvC+tmGDttEzkFboD3/r/AtMvoiKDrsGBOe6S
	u+SNupi2Q9QrAlWyhZvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKjRo-00037E-PI; Wed, 16 Oct 2019 13:34:40 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKjR6-0002dH-Vk
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 13:33:58 +0000
Received: by mail-wm1-x344.google.com with SMTP id b24so2782718wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 06:33:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EVcGe0jhVemfS4F9ZaDSPVCJM3kLwDEzlwrCz/1Vhro=;
 b=BIg43a4PhnBN6aknYztJwMUcTY0MIAypkizEN//oN9dYCn9Fx6o5uPghISks+nlsiu
 iE9DOdnWOfzw95aUaB5vapQZO80vx49X6l6WLFhQzzo32sUYrutfl4b3xGaL+tbsAgt4
 c97yMteO5mTKnQbKtSqGkCnt1luJ4QtJrEbCx8uyxAUISzAT/P2CK9mP75qZtZZUqeuk
 94Mrm1MF8ac8ZC3XOMOZaeXaF9UjYAIuTkoRpKsa3O1c1b0+VJCch0E3Q5HkDXoOJslO
 RID3HC3Q/LqApR514VY+AQv564qkiUmq+JLCqib4mQXe+YbVvRPh9ppdOw+7TrZ7tZ3I
 neVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EVcGe0jhVemfS4F9ZaDSPVCJM3kLwDEzlwrCz/1Vhro=;
 b=hV4Uy0WT02aFFkxF9xeesaYrWWw8SNvn6TxWDTYHydH+B3EE8H7x818kbgbNpn/O1D
 obn7m0ccCLfS00deLJDbUzlo46murDHdpzoAZ4Sw0rEMwUTOaGHz65thewXpDl7ZORjW
 BCIEIQwXpfklSN32NCwxwR8OWoA6clNDFH17WrJ5/PS4C5Zjx2D3YGEvcfZswPmWENfy
 Fl31WWzTikycIEJP4rk0dCUlXy4YVqOZC9rVAQs54/8msVOKbhRvVMbF46cmDfqcpkRj
 BXN6u3t8NKhsigz0DghKu9efZe9gFjaid6lCYgW07GoraqGFkWkSsQxvL949x4MkVUPd
 ntqQ==
X-Gm-Message-State: APjAAAUGvMjeC5f/5v8qUrJISUzTUf8pyrIIToiE2nu5vC0KzvBxGh03
 h/UEAxIgLEYHZ/yDWy8rH6r2q3Ih
X-Google-Smtp-Source: APXvYqwGL6jmkbSgelGmHpLhCjNcVPYnOVsZM87fvj53cE9tOmTuLcQx6uR26uBy9cXoYbg1C35K1A==
X-Received: by 2002:a05:600c:1088:: with SMTP id
 e8mr3526355wmd.27.1571232834229; 
 Wed, 16 Oct 2019 06:33:54 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id h17sm3139998wme.6.2019.10.16.06.33.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 06:33:53 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mark.rutland@arm.com,
 mripard@kernel.org, robh+dt@kernel.org, wens@csie.org
Subject: [PATCH 3/4] ARM: dts: sun8i: a83t: Add Security System node
Date: Wed, 16 Oct 2019 15:33:44 +0200
Message-Id: <20191016133345.9076-4-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191016133345.9076-1-clabbe.montjoie@gmail.com>
References: <20191016133345.9076-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_063357_138535_436833C6 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CA4ABFD0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 20:47:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=13S5traMNS3ahTKs/1Fy/HJmeCn/+x7kkEmR7Q7wXWw=; b=fyqA0Buapd5FFt
	8mGVSm36QeCnpSZuqdmvs/WrNbLjIhI5U6cVHKdPxHQKafKlgRoMhdeslWJZKcJdt6qa+C6qISmzB
	ssK2ZNdc+VSsUjs+rI4a9MURJWoBUbdY21dPAk17nVnqnqXEA/6WpysB863b1tN8byEMgm5ncDfwd
	3Si3oYwMcWknktYLjqvccyQ2CEXokXEZc7lJsyuYs3mXzstR4s6jGC3vZ0CXqL6O5FJZu0uZLnvBK
	1+zSNok2GYAFc6tTKxW5m3FnGBpIu+DU4hCNZyp8TmTnrgnGtsL7QQIcOwbxB9iBhYOdAztCkP+DL
	8PfMqCG7wJHCwWqDcZTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6JGj-0006WD-Rp; Fri, 06 Sep 2019 18:47:38 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6JFN-0005Cw-HH
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 18:46:15 +0000
Received: by mail-wr1-x441.google.com with SMTP id q17so2864732wrx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 11:46:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H7B3pdgueaTQoEx/oPVjB5PBvNleh5XGxboZw228Zx0=;
 b=fXAj/oFnSdb6IabmspTKjVarmJg8RHtLu3Ax/i7LLanXPSfUnht0o0jIOlQIkQNPvi
 hnKTdLMkqBNr3Kc8/50ClePJkB/Mdfe7bfoEVM0zoUEGcgpVUe0qLuWslAw32wGZoFoi
 ssQBgtefefxHpKJ7YypkI4UU2OHlU6J4HCF4F6pwvy6Ckft/tS4BmY0fxXlbkVrngXGe
 faiadrmAN43x0lessYdYqObgKhb5QoYZEDdXCYhdSo29kRPVveu1UEZxCDmVE9YzzvvW
 KELGFrgDBHtl4TcZCZniYtJz6wQ99NCSKb93+szw6Jv3an9pNddMt2usjMcZJIOwlSCV
 imUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H7B3pdgueaTQoEx/oPVjB5PBvNleh5XGxboZw228Zx0=;
 b=Rjho78nhq2qDINebYW8fXbxjxoW9+wMHIGaRDBmiXDDDGsGbHZMy582w5VesXnjc3C
 JJVu8t0lC9ecilkD4+QlLyWFtjsruzwlAbaPrz/BQ/bcjnOJPZAobXt7tWKFOb9rBybt
 NbfwS0cXLikDe41QVzsh+9kUfJiQCbQLmaRDOWU+Frsp8RQbcYbieG/CIqivbJv3gHhD
 rTVuRW7CIU/LVOKbxMFOxeNv68g8Zu+okFqmFfLGQQMkHLnLdsh2M8Dz8VklN0tEBMA8
 kuxaC8VGkQsmoGShGTE3f88V73kWhc5DCUBYixbso7/tXVxcCRpVZ26uVw2pFFdBHuP2
 BTsQ==
X-Gm-Message-State: APjAAAUPoxIZm/y/ZC/JVaHIOHfuq1JNQF29ow6Hj1b5rLCVgzQenK5O
 /Vzvc7oTqJyptd1GrmBe6Qg=
X-Google-Smtp-Source: APXvYqyqzdUc2jNRTwd83hy+NRUGUlKAEAYXdsuFtAFSvYJ9Z0R/bbQ7sN+U0gRd1Os/fJyeLxpM5A==
X-Received: by 2002:a5d:6504:: with SMTP id x4mr8443567wru.227.1567795572094; 
 Fri, 06 Sep 2019 11:46:12 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id j1sm8677577wrg.24.2019.09.06.11.46.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Sep 2019 11:46:11 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, linux@armlinux.org.uk,
 mark.rutland@arm.com, mripard@kernel.org, robh+dt@kernel.org, wens@csie.org
Subject: [PATCH 6/9] ARM64: dts: allwinner: sun50i: Add Crypto Engine node on
 A64
Date: Fri,  6 Sep 2019 20:45:48 +0200
Message-Id: <20190906184551.17858-7-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
References: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_114613_615155_6E496504 
X-CRM114-Status: GOOD (  11.25  )
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The Crypto Engine is a hardware cryptographic accelerator that supports
many algorithms.
It could be found on most Allwinner SoCs.

This patch enables the Crypto Engine on the Allwinner A64 SoC Device-tree.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 69128a6dfc46..c9e30d462ab1 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -487,6 +487,17 @@
 			reg = <0x1c14000 0x400>;
 		};
 
+		crypto: crypto@1c15000 {
+			compatible = "allwinner,sun50i-a64-crypto";
+			reg = <0x01c15000 0x1000>;
+			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "ce_ns";
+			resets = <&ccu RST_BUS_CE>;
+			reset-names = "ahb";
+			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>;
+			clock-names = "ahb", "mod";
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

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E19B328
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 11:55:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rp441jXptPCcdy4i+bLU7DK8g2iDsvGe+ZgWcKgLTWc=; b=DOWgXZi6gI7Yjs
	HChJc1z2DNuFWXKrpkUa8vFFl+lvNaExsuNFKUcaSdHYmUOM2NnvrRejqLeeDkbYZ3l4agG9/7yd7
	86stKbmZ3EV7rXfFjdqTDm1pnInmqpBtL86fRsUSHBFzEnPtYJWrq6ZZvM6TMT3/WjRkjR8d6rR+W
	W1AsTlBLwOEbFDhvH1CedD4AwGvWg3nEkGQsK6ZPiAhVUpq42/1rGo3rF6yupCj73LKMQxbk+BRc5
	os1/sC99ZGY/vcdRerjshlcds2uFgcluedNF+E+clf+DPP02TZXuqEtZktJoMnKIHUdGGgbeGxmND
	/3rtE+86WnNg7LrN1rJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKK33-0007Vo-Ms; Sat, 27 Apr 2019 09:55:09 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKK2s-0007V4-Jt
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Apr 2019 09:55:00 +0000
Received: by mail-lj1-x241.google.com with SMTP id s7so2419836ljh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 27 Apr 2019 02:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0wI3RVs96c8qUeherWaTFSQO10Qk8HYHENFgl5e8n24=;
 b=CtcqemVkQMGes8Y/ccLDILIV3F99uP3b6DmWSRmmGvxWX7hG4iAW4aUT/N+tem8sHK
 CEg1TkJbsslf8wrzuwREbVVolsFm69fsLx5bOPcLWnDmATOKicP0Wn49Uo4+pkWFaCdd
 YZM7hfbIc+nbpBOaW2n/XU9vqmpuYTCoixsSQZN9yBYJ75yyzx5VpOokYEBsbwBYAsLp
 THTLSYQbZgLVA/X9unIoKG1YOJ06LZ5UEiHW0UNJ1iI5GJxSfwWAP/qRPkq6OIHpQMQL
 ZoBCh3qEJjICWrRmsZgTbAcbvHBaGWHUJRBpW+KIbk0MT6U8E/HJh/l+s/YKg+b/hyl4
 lglA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0wI3RVs96c8qUeherWaTFSQO10Qk8HYHENFgl5e8n24=;
 b=f/q3qLMYHiNepnxCdk/ptC+vsw7MDuPLkkQ9xZaEnkkWlxKPFDMXWSumUNV0br4U4/
 k4NNmSg7jcLAkUo7gTFn0rZhbl+wC5SI4j5WAwNZc+oypFkaViujdPeVi8q3DOHvUNGi
 4HCSJFwyPUqFydDjJTM/Wtq1jzPewNXGIfM3tu2DG6aNUKxgEwVxy6OGoZnNvWTRL5j8
 4uqLvo3AO/ObTcr4BLOmBBZNEaXahx36Rf8LgK0ZyViBKRK7CdYDhZZpYilRECWXiXXu
 lUfpz+rlSfN3q1Bc+2GKmsAB9at21Z6kSpS3MszWy0rk6cuYAnbzd69jyOKQGuQL8YrL
 8XRw==
X-Gm-Message-State: APjAAAX0kY++/SdjjLB0GP2GW1gGhsRSsS/RPppFRJbHUsE7/gQdLjOn
 MxXFc/BDx6D+D954vMbXfnJ3Zw==
X-Google-Smtp-Source: APXvYqwHCPmiDOf8n7a07YvLH9fyHJP29k+XyLFBqQLQXkcgbcIqdwzYDNz2PRsSP4ut42uLDdPkxA==
X-Received: by 2002:a2e:9ec3:: with SMTP id h3mr27690701ljk.131.1556358895062; 
 Sat, 27 Apr 2019 02:54:55 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id w8sm6197041lfn.95.2019.04.27.02.54.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 27 Apr 2019 02:54:53 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: arm@kernel.org
Subject: [PATCH] ARM: dts: gemini: Indent DIR-685 partition table
Date: Sat, 27 Apr 2019 11:54:51 +0200
Message-Id: <20190427095451.5170-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_025458_664359_97E27EC3 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It is discouraged to have OF partitions as subnodes directly
under the device, create a "partitions" subnode and put the
partitions inside it.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Hi Arm SoC folks:
Please apply this directly for v5.2 on the appropriate DTS
branch. I do not plan any more Gemini DTS changes for this
kernel cycle so a single patch is simplest.
---
 arch/arm/boot/dts/gemini-dlink-dir-685.dts | 82 ++++++++++++----------
 1 file changed, 44 insertions(+), 38 deletions(-)

diff --git a/arch/arm/boot/dts/gemini-dlink-dir-685.dts b/arch/arm/boot/dts/gemini-dlink-dir-685.dts
index 592111c8d6fd..cfbfbc91a1e1 100644
--- a/arch/arm/boot/dts/gemini-dlink-dir-685.dts
+++ b/arch/arm/boot/dts/gemini-dlink-dir-685.dts
@@ -267,44 +267,50 @@
 			/* 32MB of flash */
 			reg = <0x30000000 0x02000000>;
 
-			/*
-			 * This "RedBoot" is the Storlink derivative.
-			 */
-			partition@0 {
-				label = "RedBoot";
-				reg = <0x00000000 0x00040000>;
-				read-only;
-			};
-			/*
-			 * This firmware image contains the kernel catenated
-			 * with the squashfs root filesystem. For some reason
-			 * this is called "upgrade" on the vendor system.
-			 */
-			partition@40000 {
-				label = "upgrade";
-				reg = <0x00040000 0x01f40000>;
-				read-only;
-			};
-			/* RGDB, Residental Gateway Database? */
-			partition@1f80000 {
-				label = "rgdb";
-				reg = <0x01f80000 0x00040000>;
-				read-only;
-			};
-			/*
-			 * This partition contains MAC addresses for WAN,
-			 * WLAN and LAN, and the country code (for wireless
-			 * I guess).
-			 */
-			partition@1fc0000 {
-				label = "nvram";
-				reg = <0x01fc0000 0x00020000>;
-				read-only;
-			};
-			partition@1fe0000 {
-				label = "LangPack";
-				reg = <0x01fe0000 0x00020000>;
-				read-only;
+			partitions {
+				compatible = "fixed-partitions";
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				/*
+				 * This "RedBoot" is the Storlink derivative.
+				 */
+				partition@0 {
+					label = "RedBoot";
+					reg = <0x00000000 0x00040000>;
+					read-only;
+				};
+				/*
+				 * This firmware image contains the kernel catenated
+				 * with the squashfs root filesystem. For some reason
+				 * this is called "upgrade" on the vendor system.
+				 */
+				partition@40000 {
+					label = "upgrade";
+					reg = <0x00040000 0x01f40000>;
+					read-only;
+				};
+				/* RGDB, Residental Gateway Database? */
+				partition@1f80000 {
+					label = "rgdb";
+					reg = <0x01f80000 0x00040000>;
+					read-only;
+				};
+				/*
+				 * This partition contains MAC addresses for WAN,
+				 * WLAN and LAN, and the country code (for wireless
+				 * I guess).
+				 */
+				partition@1fc0000 {
+					label = "nvram";
+					reg = <0x01fc0000 0x00020000>;
+					read-only;
+				};
+				partition@1fe0000 {
+					label = "LangPack";
+					reg = <0x01fe0000 0x00020000>;
+					read-only;
+				};
 			};
 		};
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

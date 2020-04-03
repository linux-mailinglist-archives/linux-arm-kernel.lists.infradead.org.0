Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B83C819CE49
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 03:44:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lAc6xb4tggTnYP6DxrZMe5Z7sqhehW4V3Ksm+lsQCnI=; b=sHMnAHbjBE4ZXsMDJbLfISN/6t
	p+HOy0ug27CHcXKTqUz+bqtOWYWEJU7d5r4sHRO47JCuQ8f+gT+2iwaxMSmJi7Mc0rsH+ru7YnUJR
	1xDOx5TakDJeOY9LH8nvEIbE3Xv8eyRBVkDSERgFP+KvI7aRZRFiiZEfFEe/Tt/JhjJf3dWYBRaNy
	FkfziTF7fBM/cAZZNbGhxGaL2v3+AqH19iSoyyoAlomQEd6ziBpNd0aCC3zinFeKIPPAGQ+PyOp4I
	/67AsCiMDSOsJdNaW6+mLzcbyCJ5towNi5yQOV3LdQJfDlkyxzdf4a0mjoamioVWF/ttvdVC8QFzp
	/nGdN4QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKBNY-0002qB-5g; Fri, 03 Apr 2020 01:44:16 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKBN8-0002gV-VX
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 01:43:52 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 03 Apr 2020 10:43:49 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id EE99218009F;
 Fri,  3 Apr 2020 10:43:49 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Fri, 3 Apr 2020 10:43:49 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 8B97E1A01BB;
 Fri,  3 Apr 2020 10:43:49 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 3/5] ARM: dts: uniphier: Add ethernet aliases
Date: Fri,  3 Apr 2020 10:43:05 +0900
Message-Id: <1585878187-8131-4-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585878187-8131-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1585878187-8131-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_184351_161322_CA4B8755 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Jassi Brar <jaswinder.singh@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add an 'aliases' property for ethernet device.

U-boot performs a fix-up of the MAC address and will overwrite the values
from the Linux devicetree for aliased ethernet device. The MAC address can
be inherited from u-boot by adding aliases of ethernet devices.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 arch/arm/boot/dts/uniphier-ld6b-ref.dts    | 1 +
 arch/arm/boot/dts/uniphier-pro4-ace.dts    | 1 +
 arch/arm/boot/dts/uniphier-pro4-ref.dts    | 1 +
 arch/arm/boot/dts/uniphier-pro4-sanji.dts  | 1 +
 arch/arm/boot/dts/uniphier-pxs2-gentil.dts | 1 +
 arch/arm/boot/dts/uniphier-pxs2-vodka.dts  | 1 +
 6 files changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/uniphier-ld6b-ref.dts b/arch/arm/boot/dts/uniphier-ld6b-ref.dts
index 60994b6..079cadc 100644
--- a/arch/arm/boot/dts/uniphier-ld6b-ref.dts
+++ b/arch/arm/boot/dts/uniphier-ld6b-ref.dts
@@ -29,6 +29,7 @@
 		i2c4 = &i2c4;
 		i2c5 = &i2c5;
 		i2c6 = &i2c6;
+		ethernet0 = &eth;
 	};
 
 	memory@80000000 {
diff --git a/arch/arm/boot/dts/uniphier-pro4-ace.dts b/arch/arm/boot/dts/uniphier-pro4-ace.dts
index 92cc48d..64246fa 100644
--- a/arch/arm/boot/dts/uniphier-pro4-ace.dts
+++ b/arch/arm/boot/dts/uniphier-pro4-ace.dts
@@ -26,6 +26,7 @@
 		i2c3 = &i2c3;
 		i2c5 = &i2c5;
 		i2c6 = &i2c6;
+		ethernet0 = &eth;
 	};
 
 	memory@80000000 {
diff --git a/arch/arm/boot/dts/uniphier-pro4-ref.dts b/arch/arm/boot/dts/uniphier-pro4-ref.dts
index 854f2eb..181442c 100644
--- a/arch/arm/boot/dts/uniphier-pro4-ref.dts
+++ b/arch/arm/boot/dts/uniphier-pro4-ref.dts
@@ -29,6 +29,7 @@
 		i2c3 = &i2c3;
 		i2c5 = &i2c5;
 		i2c6 = &i2c6;
+		ethernet0 = &eth;
 	};
 
 	memory@80000000 {
diff --git a/arch/arm/boot/dts/uniphier-pro4-sanji.dts b/arch/arm/boot/dts/uniphier-pro4-sanji.dts
index dda1a2f..5396556 100644
--- a/arch/arm/boot/dts/uniphier-pro4-sanji.dts
+++ b/arch/arm/boot/dts/uniphier-pro4-sanji.dts
@@ -25,6 +25,7 @@
 		i2c3 = &i2c3;
 		i2c5 = &i2c5;
 		i2c6 = &i2c6;
+		ethernet0 = &eth;
 	};
 
 	memory@80000000 {
diff --git a/arch/arm/boot/dts/uniphier-pxs2-gentil.dts b/arch/arm/boot/dts/uniphier-pxs2-gentil.dts
index e27fd4f..8e9ac57 100644
--- a/arch/arm/boot/dts/uniphier-pxs2-gentil.dts
+++ b/arch/arm/boot/dts/uniphier-pxs2-gentil.dts
@@ -26,6 +26,7 @@
 		i2c4 = &i2c4;
 		i2c5 = &i2c5;
 		i2c6 = &i2c6;
+		ethernet0 = &eth;
 	};
 
 	memory@80000000 {
diff --git a/arch/arm/boot/dts/uniphier-pxs2-vodka.dts b/arch/arm/boot/dts/uniphier-pxs2-vodka.dts
index 23fe42b..8eacc7b 100644
--- a/arch/arm/boot/dts/uniphier-pxs2-vodka.dts
+++ b/arch/arm/boot/dts/uniphier-pxs2-vodka.dts
@@ -24,6 +24,7 @@
 		i2c4 = &i2c4;
 		i2c5 = &i2c5;
 		i2c6 = &i2c6;
+		ethernet0 = &eth;
 	};
 
 	memory@80000000 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

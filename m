Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EAF19CE46
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 03:44:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OjXzyaPj+dgoLmK8uxV4mir1Ezk9oNhGXqvjb3yA3r4=; b=mCcWb5h11VxwkJg8RVVXOZzKZ4
	C56KKbVWVWTDIgxAom+oqGWuEX7d10nTcYiWOBp/NUg5mzNxz10OrbJyGDBHUXiIVPRKhBw5NFuqs
	25ey8qeL8LwLvM603dhJvyDOZmQSt2oK6uHJBoU4nbjYPtnBfz+lOX8nm4fi/VcdOGoPfCtxBxDv0
	qhBegOTU1OaUEw1VWBo/yhC5uJAh1mjw+kvIl9EWfdZVMCJFVsLKNpDwywB2+uWOpJhHH100bDhl9
	mL87V0RRVEt0OSQdDwfqpo5rOS3/NTat6Z9WkO0fjnWw6D9kMq5sIuDtrFUhRpgH7XE3QCJq7Xklq
	upVsykNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKBNI-0002iF-OF; Fri, 03 Apr 2020 01:44:00 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKBN8-0002gQ-FL
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 01:43:52 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 03 Apr 2020 10:43:48 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id A48CB18009F;
 Fri,  3 Apr 2020 10:43:48 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Fri, 3 Apr 2020 10:43:48 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id EF27C1A01BB;
 Fri,  3 Apr 2020 10:43:47 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 1/5] ARM: dts: uniphier: Add XDMAC node
Date: Fri,  3 Apr 2020 10:43:03 +0900
Message-Id: <1585878187-8131-2-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585878187-8131-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1585878187-8131-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_184350_641974_94519060 
X-CRM114-Status: GOOD (  15.29  )
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

Add external DMA controller support implemented in UniPhier SoCs.
This supports for Pro4, Pro5 and PXs2.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 arch/arm/boot/dts/uniphier-pro4.dtsi | 8 ++++++++
 arch/arm/boot/dts/uniphier-pro5.dtsi | 8 ++++++++
 arch/arm/boot/dts/uniphier-pxs2.dtsi | 8 ++++++++
 3 files changed, 24 insertions(+)

diff --git a/arch/arm/boot/dts/uniphier-pro4.dtsi b/arch/arm/boot/dts/uniphier-pro4.dtsi
index 1c866f0..45b73f9 100644
--- a/arch/arm/boot/dts/uniphier-pro4.dtsi
+++ b/arch/arm/boot/dts/uniphier-pro4.dtsi
@@ -426,6 +426,14 @@
 			};
 		};
 
+		xdmac: dma-controller@5fc10000 {
+			compatible = "socionext,uniphier-xdmac";
+			reg = <0x5fc10000 0x5300>;
+			interrupts = <0 188 4>;
+			dma-channels = <16>;
+			#dma-cells = <2>;
+		};
+
 		aidet: interrupt-controller@5fc20000 {
 			compatible = "socionext,uniphier-pro4-aidet";
 			reg = <0x5fc20000 0x200>;
diff --git a/arch/arm/boot/dts/uniphier-pro5.dtsi b/arch/arm/boot/dts/uniphier-pro5.dtsi
index 8f1ae09..4a388d1 100644
--- a/arch/arm/boot/dts/uniphier-pro5.dtsi
+++ b/arch/arm/boot/dts/uniphier-pro5.dtsi
@@ -408,6 +408,14 @@
 			};
 		};
 
+		xdmac: dma-controller@5fc10000 {
+			compatible = "socionext,uniphier-xdmac";
+			reg = <0x5fc10000 0x5300>;
+			interrupts = <0 188 4>;
+			dma-channels = <16>;
+			#dma-cells = <2>;
+		};
+
 		aidet: interrupt-controller@5fc20000 {
 			compatible = "socionext,uniphier-pro5-aidet";
 			reg = <0x5fc20000 0x200>;
diff --git a/arch/arm/boot/dts/uniphier-pxs2.dtsi b/arch/arm/boot/dts/uniphier-pxs2.dtsi
index 2f2a249..e36f0df 100644
--- a/arch/arm/boot/dts/uniphier-pxs2.dtsi
+++ b/arch/arm/boot/dts/uniphier-pxs2.dtsi
@@ -508,6 +508,14 @@
 			};
 		};
 
+		xdmac: dma-controller@5fc10000 {
+			compatible = "socionext,uniphier-xdmac";
+			reg = <0x5fc10000 0x5300>;
+			interrupts = <0 188 4>;
+			dma-channels = <16>;
+			#dma-cells = <2>;
+		};
+
 		aidet: interrupt-controller@5fc20000 {
 			compatible = "socionext,uniphier-pxs2-aidet";
 			reg = <0x5fc20000 0x200>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5368158064
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 18:02:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZixptUwunWyP062APfUEHsdu0NFJxD242KxflWOwqBk=; b=FLi3XRVYKZ3dVbIArts5HwX6oZ
	oojYfOHxInQ3R9OApP4CQoJ2TiHBPPI9yTYq2kTUckT+YC0pE4V/TywaOuOOL3XsvcGE2L7Q8j/K/
	8FGKogJh8PMD7fxy3oyf22d4dC0Ytu7ny8I+vzlSE9na5+iR9c4uxGDUkbMz0dq7WRFJ6pL6Qc1pf
	5JeDCHmUnedq0ii8O7v2RFMkKEWdWPdelRKmSkKQtKlT9CTWjEE224y3Ewmwdjc/FceaGFc0BxPrU
	2TiRcwEQUuI396+ijN96Ne7rLkFxpmTc2Hu8OVI8xp9qWpB/Q/SdgpCVYQxYKzehQOGJpgt6NNLjJ
	O6u6yvUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1CRq-0006gn-Lf; Mon, 10 Feb 2020 17:02:14 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1CRW-0006XW-IQ
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 17:01:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id E5191AE5C;
 Mon, 10 Feb 2020 17:01:46 +0000 (UTC)
From: Nikolay Borisov <nborisov@suse.com>
To: bjorn.andersson@linaro.org
Subject: [PATCH 3/3] dt-bindings: hwlock: Document A64 hwspinlock bindings
Date: Mon, 10 Feb 2020 19:01:43 +0200
Message-Id: <20200210170143.20007-4-nborisov@suse.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200210170143.20007-1-nborisov@suse.com>
References: <20200210170143.20007-1-nborisov@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_090154_960589_AF211B7C 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Nikolay Borisov <nborisov@suse.com>, linux-arm-kernel@lists.infradead.org,
 mripard@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add binding for the hwspinlock found on Allwinner A64 SoC.

Signed-off-by: Nikolay Borisov <nborisov@suse.com>
---
 .../bindings/hwlock/sunxi-hwspinlock.txt      | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwlock/sunxi-hwspinlock.txt

diff --git a/Documentation/devicetree/bindings/hwlock/sunxi-hwspinlock.txt b/Documentation/devicetree/bindings/hwlock/sunxi-hwspinlock.txt
new file mode 100644
index 000000000000..af1fbf8fc9f0
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwlock/sunxi-hwspinlock.txt
@@ -0,0 +1,27 @@
+Allwinner HwSpinlock for A64 SoC
+=========================================
+
+Required properties:
+- compatible:		Should be "allwinner,sun50i-a64-hwspinlock"
+- reg:			Contains the hwspinlock module register address space
+			(base address and length)
+- resets:  phandle to the reset control for the hwspinlock
+- clocks:  phandle to the clock feeding the hwspinlock
+- #hwlock-cells:	Should be 1. The A64 hwspinlock users will use a
+			0-indexed relative hwlock number as the argument
+			specifier value for requesting a specific hwspinlock
+			within a hwspinlock bank.
+
+Please look at the generic hwlock binding for usage information for consumers,
+"Documentation/devicetree/bindings/hwlock/hwlock.txt"
+
+Example:
+
+1. Allwinner A64
+hwspinlock: spinlock@1c18000 {
+	compatible = "allwinner,sun50i-a64-hwspinlock";
+	reg = <0x01c18000 0x1000>;
+	clocks = <&ccu CLK_BUS_SPINLOCK>;
+	resets = <&ccu RST_BUS_SPINLOCK>;
+	#hwlock-cells = <1>;
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 400A71BADE8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 21:30:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DJ7anIT5/Ycu3Tv3SFcBWZCNNkOTxDbxfTfu2Na80U4=; b=NMr
	uLIbZQUJs7WhW78+HVLVlSIBI5Yy1gD6c4nUbPHQ512vg7HnzTMXN1KZLXN6GpcWeJENJY2vkJoPZ
	99pH9DkRh9RZYFHKvjtYD2VNpadWDEf9onA9dCVTjFYK0p5idHhlkJDiayjOwMvyesApWpAgMJdQ4
	OG0RwJm7apvkjjIL6csMtSF0dvyYiKhDaJ/ID+PbhmR5jHySkxkZC9Od6jfK13K8AYfau6JkHWwF+
	mwm1IBuASgtceW8eeAS2hVzUgNoAF7eMiPq/7R4qgDQDtcdaIeAdtVXSnmmivmetucRazsFJtJhU6
	NNcrsD7GWOg3UMDYFUuRa2oGfPxFy3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9S3-0007eo-NG; Mon, 27 Apr 2020 19:29:59 +0000
Received: from andre.telenet-ops.be ([2a02:1800:120:4::f00:15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9Rr-0007d6-LZ
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 19:29:49 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:d03f:8af3:4e83:6587])
 by andre.telenet-ops.be with bizsmtp
 id XvVZ2200527aUyk01vVZQ8; Mon, 27 Apr 2020 21:29:37 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jT9Rd-0007ml-4w; Mon, 27 Apr 2020 21:29:33 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jT9Rd-0007Xx-2T; Mon, 27 Apr 2020 21:29:33 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>,
 Chris Brandt <chris.brandt@renesas.com>
Subject: [PATCH] ARM: dts: r7s9210: Remove bogus clock-names from OSTM nodes
Date: Mon, 27 Apr 2020 21:29:32 +0200
Message-Id: <20200427192932.28967-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_122947_850468_C7ABDB8B 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:15 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Usually it does not hurt to add "clock-names" properties, even if the
(pre-json-schema) DT bindings do not mention them.

However, the actual clock names for the OS Timer nodes are not fixed,
but contain the indices of the consumer instances.  Hence they cannot
easily be used by a driver, without scanning for all possible indices.

Remove them, as the OSTM DT bindings do not specify clock-names anyway.

Fixes: bbbcd02b82552907 ("ARM: dts: r7s9210: Initial SoC device tree")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
To be queued in renesas-fixes for v5.7, to avoid the json-schema OSTM DT
bindings conversion introducing a regression.
---
 arch/arm/boot/dts/r7s9210.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/boot/dts/r7s9210.dtsi b/arch/arm/boot/dts/r7s9210.dtsi
index 72b79770e336a79e..cace4380749711d7 100644
--- a/arch/arm/boot/dts/r7s9210.dtsi
+++ b/arch/arm/boot/dts/r7s9210.dtsi
@@ -304,7 +304,6 @@
 			reg = <0xe803b000 0x30>;
 			interrupts = <GIC_SPI 56 IRQ_TYPE_EDGE_RISING>;
 			clocks = <&cpg CPG_MOD 36>;
-			clock-names = "ostm0";
 			power-domains = <&cpg>;
 			status = "disabled";
 		};
@@ -314,7 +313,6 @@
 			reg = <0xe803c000 0x30>;
 			interrupts = <GIC_SPI 57 IRQ_TYPE_EDGE_RISING>;
 			clocks = <&cpg CPG_MOD 35>;
-			clock-names = "ostm1";
 			power-domains = <&cpg>;
 			status = "disabled";
 		};
@@ -324,7 +322,6 @@
 			reg = <0xe803d000 0x30>;
 			interrupts = <GIC_SPI 58 IRQ_TYPE_EDGE_RISING>;
 			clocks = <&cpg CPG_MOD 34>;
-			clock-names = "ostm2";
 			power-domains = <&cpg>;
 			status = "disabled";
 		};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

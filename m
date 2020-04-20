Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B5A1B06A5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 12:31:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ruiw9dHoIFKafeGqTJ+rCuuVqxkyoH6+FuLaylw9qyI=; b=U0Kv59Oo6POqh7
	PhvSCH0H1KaGQo43mi+xMhRM+dpDBllYxfSfdiycLyBXYQMUcGtUBt0faoYy8iOz8hoDjmfWNfJsu
	GJwiy1i+BBrqjIhXdnO/VmZyJEgnxlK1h22G866jIahRywKYGk7Z2ecF8RUr/wwP0/sWUoE6PBFnD
	5dSWuqfqheBlBsjGsuv1Hx7lKV/rpgajvOv47d5vmOWi+3y55wuwqmT+bzFXOP2bF7ozpXJsmsOaK
	Mf2HQshN1JSZMjVtU1DIGIMw//rpJN+YMdh7zs4qnxNkWdsbgolXG64UM3rdFzVheVH/5X0pL0vnS
	dZFWjz0Hh6Li/PdUTgbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQTiB-0002EB-98; Mon, 20 Apr 2020 10:31:35 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQThu-0002D9-S6
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 10:31:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1587378677; bh=/yBEOQg36NmTB26lwG9esRHwBVVu8AY1wtn2VnP7cZU=;
 h=From:To:Cc:Subject:Date:From;
 b=NwqsVU23pOZdrdNtM/TxIjsLxRszSZsNu4I7tPd1CyESi2GXRZ7Vm6ZPODjjvUgB7
 RRbLUbxzbXyQ393pRruYQbWBecGl/oapIgYDj1OIGfMZUIanelMIPI69Ze1dSYNncU
 EGnTh2JZncF1SA7sTFOkc/O6pB215RLpFG6ow1dw=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com
Subject: [PATCH] arm64: dts: allwinner: sun50i-a64: Add missing
 address/size-cells
Date: Mon, 20 Apr 2020 12:31:13 +0200
Message-Id: <20200420103113.577969-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_033119_077568_59C4A7D5 
X-CRM114-Status: UNSURE (   6.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ondrej Jirman <megous@megous.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The binding specifies #address-cells and #size-cells should be present.
Without them present, dtc issues a warning because default for
#address-cells seems to be <2>:

arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1108.4-52:
  Warning (dma_ranges_format):
    /soc/dram-controller@1c62000:dma-ranges:
    "dma-ranges" property has invalid length (12 bytes)
    (parent #address-cells == 1, child #address-cells == 2,
    #size-cells == 1)

mbus #address-cells should be 1.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index cca4261089aa..61698094f450 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -1105,6 +1105,8 @@ mbus: dram-controller@1c62000 {
 			compatible = "allwinner,sun50i-a64-mbus";
 			reg = <0x01c62000 0x1000>;
 			clocks = <&ccu 112>;
+			#address-cells = <1>;
+			#size-cells = <1>;
 			dma-ranges = <0x00000000 0x40000000 0xc0000000>;
 			#interconnect-cells = <1>;
 		};
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

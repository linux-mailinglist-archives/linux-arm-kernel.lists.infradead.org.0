Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE8F95524
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 05:25:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6i73nN3mdhrLnU+qGXZih4DcCruurlyhlydFSwFVKP4=; b=boU7Sx/zPUPbZw
	7W6WXLPxD3mkt1QpholPYZLBw+D2/CHqNbEskqxu7hgGkoXimhWFRM1edP5FdiwmHly7oks4qtUNJ
	5diO09HVj3DRAkVBvbaWmkp8GwI/YIaLjyiNLhUVlmndCChrl8KJFvYVL84OdJvNTLVWQ/trDd4xa
	rjdV8PdYVoW5rflXOgBcqnjQ6KhCsvgOTtfm/S52LcEw34uOTnAJeYTuAoHtarCD9I8gFldwksQs0
	fO/bPcRFwiuN9wADT3AeFHmBiFGfsH31qQy2LV1Yi6unxEBnaFWz065sjbwc2LM+I1CXc5nyuXF1e
	143QQyaAPu/p9cnbCrHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzulm-0004Tb-43; Tue, 20 Aug 2019 03:25:14 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzuju-00033n-3w
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 03:23:19 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 8D1CE3543;
 Mon, 19 Aug 2019 23:23:15 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 19 Aug 2019 23:23:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=iCw2E9iDZfqG+
 Z2bVssCxeMbPHJOSeD2lC6j+oVPq7Q=; b=Ahk34iBTRFhvUNc+u/aId0W4Pn5iy
 jQAadr5amH8prlgKl45cq2h480YE1ty9GuExZDKv/gVET6pY4oF5AKsyZLR1GFHN
 U1sV16d7TTk1W5wf6NPmoLVqgggKElXRMuRrMkFliCWJd96zUHFEW4p+8JKZHjyy
 myg165rGJAgyerNvVfjK45Nh/j0bD6bSeXpJjmKW1POTlG/2obvCyRSL6Lvu06OR
 SO7PRVKIeytWnEDAWiKh1cxNIhkzJ/iyZj7N5ElFTXkL0lhV0Sq+UziA0dXVTx4P
 tUT3t/37NRl+AmeiwWFYKpQc8EI12VvZOabuqlvBwzQCcHZhx8m+j+++Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=iCw2E9iDZfqG+Z2bVssCxeMbPHJOSeD2lC6j+oVPq7Q=; b=ljXfDEV0
 NGHC/hwrcenaEp9QvLzUyFu9PBoiRZ6HozmatnCCmUJ2hio6xrRtCIFxcWoN1Qn1
 bndt0UgeyhfANSJ5yFI8P+JVpubo/o6Xh8dL5g90HPcTonxSCCeDA3VxvMxnXuf9
 WlqqDGnX46EkXcVKu5tNbo52GTjQyl/dnGCu+wACH/qUk++8/yYt+EpLOmglc5yM
 fNCmX8bXfmGbyhvmHWdozJUg6ffE4zvda4spY8sZC4wf56Duw7aQv4z5sLeCHOg+
 +mWR8E68Xq3V8FaeVFgPE/QyDCF5G6zrY3EGPXbyV0QxQ3FkjRv/6kbuSNmJSTPH
 vKm3LH9Y42Eh2g==
X-ME-Sender: <xms:o2dbXak-3cSu5-vreBbf84dwAPYvnJsDvOvfnGiNwg8dXDDQUQFYcA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudegtddgjeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghm
 uhgvlhesshhhohhllhgrnhgurdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:o2dbXZl30ZkMcZipw20NzrHnxf5FTWxScCwzeMQeaDgIMpT9tQSsqg>
 <xmx:o2dbXXOIIYKknhQW7qrAmr5cGG4ep5r3k_bkPV0-8MQ62Ash-djQgQ>
 <xmx:o2dbXY5sdQaEWCoIhXEgszGkFYrMlsv-wz2Vruh3q5JEPM7Aen3TUA>
 <xmx:o2dbXV_AmF4RBV00_b-qm7P1CurEBQqINyiZFPkFMP1ItMWkDrknqA>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 6725680060;
 Mon, 19 Aug 2019 23:23:14 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Corentin Labbe <clabbe.montjoie@gmail.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH v4 05/10] ARM: dts: sunxi: a80: Add msgbox node
Date: Mon, 19 Aug 2019 22:23:06 -0500
Message-Id: <20190820032311.6506-6-samuel@sholland.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190820032311.6506-1-samuel@sholland.org>
References: <20190820032311.6506-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_202318_307938_4A622919 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, Samuel Holland <samuel@sholland.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The A80 SoC contains a message box that can be used to send messages and
interrupts back and forth between the ARM application CPUs and the ARISC
coprocessor. Add a device tree node for it.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm/boot/dts/sun9i-a80.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/sun9i-a80.dtsi b/arch/arm/boot/dts/sun9i-a80.dtsi
index c34d505c7efe..844a265dbd0e 100644
--- a/arch/arm/boot/dts/sun9i-a80.dtsi
+++ b/arch/arm/boot/dts/sun9i-a80.dtsi
@@ -318,6 +318,16 @@
 			};
 		};
 
+		msgbox: mailbox@803000 {
+			compatible = "allwinner,sun9i-a80-msgbox",
+				     "allwinner,sun6i-a31-msgbox";
+			reg = <0x00803000 0x1000>;
+			clocks = <&ccu CLK_BUS_MSGBOX>;
+			resets = <&ccu RST_BUS_MSGBOX>;
+			interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <1>;
+		};
+
 		gmac: ethernet@830000 {
 			compatible = "allwinner,sun7i-a20-gmac";
 			reg = <0x00830000 0x1054>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

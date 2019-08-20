Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 486F295525
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 05:25:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d9X3ztE+9emM43fGKx0g3IWxiLXWnthDxOhGF34tFXc=; b=NcPk7yPDYTUBgs
	ywiDk0WezcbyLZO2In9FqHWvcDgURgRKRlzZ5tDmE6gOmPtkHh5eq7YwDq2AGNB9gNVyMyd0HhOq1
	rtr7q2CFSPCl1ySv52YERQ4Vo4HCjDPpezqgxNUDd0XX+VHPyIx/Nl+ko6uA9eoHcwyLc/s6mjGJQ
	G2z+2JpK9chzREOgrziVVjeUSyplXEpPR++EhW7JpBcL1XjvX8psm7pFJGUFeyx4qFp3s62dTJ6/1
	KGvv8X1Obu+/ztZnRHQARXLt6JX+LgF7jf5B8nAlsC8cugtkVlOZqIlGxdfwqwOJ14aGYK8TlxKhd
	MTe0w93GgnSGhcjPL+Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzum1-0005uD-QF; Tue, 20 Aug 2019 03:25:29 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzuju-00033u-9O
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 03:23:20 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 21154353B;
 Mon, 19 Aug 2019 23:23:17 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 19 Aug 2019 23:23:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=tuQrtgFJDi3rt
 CNY0leoagNnY3nRZhaV8CR1RVhP8Us=; b=Z8aZcK0SJgG/NtWJbKYt+qm7Qv678
 1Eeyx5gaERmKy5h2LBrjUvrupf0bei0vU8QWrG5zCuPbUa3nn7JlfPkOq32/RRXC
 yN15Rax5hzLPPUJR1TghNvQTY2UnvhSXrPdBRnYyk1e1nNUYxCof3qIV5ymbv10D
 yWjCdBMWbr0HuLIowuPcMLX1Kfw9Epc2vC7swwnifLziKx+lw2YY/s3b51YmfAw3
 LdJuX/6dh//3G3S7sXOvGEXc7STmMUu+7HMuOG94QazJXg/yumvGscPpaHrPXaaQ
 dpbOH3kPVNz4hL892rS0oZXTlXIDDxVugkIOGP0pIe7ykjA4khDgAV4Sw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=tuQrtgFJDi3rtCNY0leoagNnY3nRZhaV8CR1RVhP8Us=; b=QDO+YqPO
 Sfx49dsLnLF5BjC+D1DX+hEnKlJrTlj+s4FH5v3nnwGKPpuiVt5tPRRFq7pbE1gL
 E9LlYqvwr02+niw6y6xBA0Xcyt1yuwLvAK4hRaRHCnScCYUOMU66AUXsmT9E+C+h
 fkzV8iHdcDkbBOLMcKdrHz0kkwnwEHCCvpr/WbzZDL1LKCx6hBxBHpJABXWgbf03
 zgfh7hqRzDed2mQe1aZHnqzmDEzp07y9NBO8xSz89WCHJsUnKxI/FSRo0514unH4
 vPQMfBjPzoa8pi6+L/JMZ5vKbPZ7DLwW56LYYl2hdQwa2oYIDUTibKoG8B7Z32UC
 0B3JJCwesajCFg==
X-ME-Sender: <xms:pGdbXQclp1vZhL71xEx3Rv8xlY-iOmPixbEJyyxX0VPOaG110QciTQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudegtddgjeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghm
 uhgvlhesshhhohhllhgrnhgurdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:pGdbXapopq4fR-pX4tTT1yzDNsniU2EDfEG1E__v0zztSCFob9I-Mg>
 <xmx:pGdbXR-8iKtlhjBaerDfuZ_ldQvsQlZF-IB1u8ZJ8rkTJOeQuQ9VPg>
 <xmx:pGdbXWfCRZdnqvPIWNppYQROL6BcVmVEGq2cGGN5_EuKqz29HLNjsw>
 <xmx:pWdbXbPQgCL-orUsTGZIMFS-9pV-uQAjXQfegQs1lE9p8fXftCx6qA>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1F0098005B;
 Mon, 19 Aug 2019 23:23:16 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Corentin Labbe <clabbe.montjoie@gmail.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH v4 07/10] ARM: dts: sunxi: h3/h5: Add msgbox node
Date: Mon, 19 Aug 2019 22:23:08 -0500
Message-Id: <20190820032311.6506-8-samuel@sholland.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190820032311.6506-1-samuel@sholland.org>
References: <20190820032311.6506-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_202318_464881_9D5988C7 
X-CRM114-Status: GOOD (  10.31  )
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

The H3 and H5 SoCs contain a message box that can be used to send
messages and interrupts back and forth between the ARM application CPUs
and the ARISC coprocessor. Add a device tree node for it.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm/boot/dts/sunxi-h3-h5.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/sunxi-h3-h5.dtsi b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
index 224e105a994a..f25876a8021a 100644
--- a/arch/arm/boot/dts/sunxi-h3-h5.dtsi
+++ b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
@@ -232,6 +232,16 @@
 			reg = <0x1c14000 0x400>;
 		};
 
+		msgbox: mailbox@1c17000 {
+			compatible = "allwinner,sun8i-h3-msgbox",
+				     "allwinner,sun6i-a31-msgbox";
+			reg = <0x01c17000 0x1000>;
+			clocks = <&ccu CLK_BUS_MSGBOX>;
+			resets = <&ccu RST_BUS_MSGBOX>;
+			interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <1>;
+		};
+
 		usb_otg: usb@1c19000 {
 			compatible = "allwinner,sun8i-h3-musb";
 			reg = <0x01c19000 0x400>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

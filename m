Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7107C138AAB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 06:21:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9zbYxawGI98v3Nc2uOwxBvdMK39QJePzlFpCdkgFOWw=; b=tWPNrUul+gzkMo
	njRUZkz5JrabWv5+8mT+a4ci/rckj1fVaPR5Be1QV83EoxtqwNgDGiTWl6+hAioW6x5TnfGb0Y9To
	fNHd2oICCzmPNzb02An4s1eV+JnVbp7YWs95rrOd/qBgeIJRtDt0uH+xhPhnBhKBi67L1D7pf7r5d
	WzJSN5amZDnzQjqwlMwSODsBeR10t6I6MKHXhnizPcZvAsWNtdUWgsdFSzzz02oXJNB84jg25sQis
	0M10daA4c3DwlVEmOSESsDHwODu6GuW9ExbmPB7CeUwKvWSDsZ0ht+WbCyAie4LiaYHf6nVkdfM46
	glMgMiBknpwqf8SN1oew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqs9x-0006DC-Rz; Mon, 13 Jan 2020 05:21:05 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqs7w-0003YA-If
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 05:19:02 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 5854E6126;
 Mon, 13 Jan 2020 00:18:57 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Mon, 13 Jan 2020 00:18:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=XV5JCk435bYmn
 5TtUbjEpZov0Q3bQjAnZltxpekEahY=; b=hNr8Q1LNpNeh0s3i6pRfY3tsFJ9iV
 raZ9mth82VU9MIcFxldKNAz2QdioG8J1gQeRjTofoZoSHXa3JgAr1xyiMLzLtPaK
 Xhu2/4vhUVbw2hE+1L0+FC1IGessg7iz7BKgdqdqrY3BjQlIJ0ljf2TVU1XuHTb+
 RtCltQw7H/R2G6lI2B/S7hvNic0hN4ggomQFvOurgvSnlV/SNEijoDeaGNrSuptK
 ApDKNcI6pLIufczWuLyCmQSUSmF4ZUwl+ObvsS57Xz/sTiZ5gPLQVUIbmR1Dfypx
 n7LD2AtuwreHVB98IgFuwIpMcDnI4efGWBv29rRqdC43mTFh4dTgt/Aew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=XV5JCk435bYmn5TtUbjEpZov0Q3bQjAnZltxpekEahY=; b=bsQJNFtU
 vwE4oln5VhixFgIn+ruOIbrwf0X0U5DNjnducNmdOUflrsqLkYf4rLfX1mFxnrHy
 8v0ETX3jmemY3K27b4KK24cL7TuTJKA5doXvHRFpXeZTLsC8+bYzp8A1XVN6Ta0B
 8/g9/UYfAW4E4gz88Lo4DDKA53iHN0AnJHYTHa+Y2w2XD2l7O4vPTd+0B54EL2o4
 th66VMf8ONUcahh26szr0KtTUwwnz4tK4Gzj1KI5CsZ1en++xKeSrAwT+n9EsOhJ
 ct9kHGeFBUy+9FbndwbHZgWQi/iY7bttmaUhaByicN62fyewVG051bxUgNkJ5WPm
 qWiDc32euh/jsQ==
X-ME-Sender: <xms:v_0bXqZsX9-7kffH0thdks1oFizVvEudQvLpd64i-6dset7oyKoXAg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdeiledgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghm
 uhgvlhesshhhohhllhgrnhgurdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:v_0bXihbpQ4jJYtnumDai_VJJ0yZV2LTrQhIl1dVwcFrvQaOIz76dA>
 <xmx:v_0bXn6X_wFJIMQJm6MLp-KxZQhUUAXPf1EpUlPgEL2UkjLNV2XzEA>
 <xmx:v_0bXir9YpvgYU3rcJZ0bMz8RpGIIxkVqZAuUmGAgs23xvymYnwTzw>
 <xmx:wf0bXl8WLqsCMlEAa-VYi4qkehKy1bwGOB9oxTdlFUlZlTZQsDVzKw>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0E8A43060840;
 Mon, 13 Jan 2020 00:18:55 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Ondrej Jirman <megous@megous.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH v6 5/6] arm64: dts: allwinner: a64: Add msgbox node
Date: Sun, 12 Jan 2020 23:18:51 -0600
Message-Id: <20200113051852.15996-6-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200113051852.15996-1-samuel@sholland.org>
References: <20200113051852.15996-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_211900_757370_2ED843A3 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The A64 SoC contains a message box that can be used to send messages and
interrupts back and forth between the ARM application CPUs and the ARISC
coprocessor. Add a device tree node for it.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 0287d8458675..690f0a7d9cfa 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -487,6 +487,16 @@
 			resets = <&ccu RST_BUS_CE>;
 		};
 
+		msgbox: mailbox@1c17000 {
+			compatible = "allwinner,sun50i-a64-msgbox",
+				     "allwinner,sun6i-a31-msgbox";
+			reg = <0x01c17000 0x1000>;
+			clocks = <&ccu CLK_BUS_MSGBOX>;
+			resets = <&ccu RST_BUS_MSGBOX>;
+			interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <1>;
+		};
+
 		usb_otg: usb@1c19000 {
 			compatible = "allwinner,sun8i-a33-musb";
 			reg = <0x01c19000 0x0400>;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

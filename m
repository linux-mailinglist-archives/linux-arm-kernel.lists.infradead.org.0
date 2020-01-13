Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 005AC138A97
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 06:19:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BDUxvCPlMXAtC99rbzQac27mguoA0lTZeQpziniiXW4=; b=CXPrFQTKkIifRJ
	OF6d599ZZN9NaC+763O4MAnS6oD0QxCK1OW+FVyvrQhMUj/NzelAPhzWTdwGi9kX4AeTncYbYkLeG
	XTFEqLeMxX9mF7QCpNVX4QU+Uiz7k1u2plJsEsWDfS1p5GrvFXD+hvG0Qggxd8un7i6NnYuXR2l1z
	5lZnSSjYEIUf7pWBFFyylWdJVzbS1waArEhATmUFfSd1a/fQ+9bBaL6gQ59kSQKze+6hvZexRtz8Y
	7mfbo7B6qCrCqIbMkygk8O68wdPp9fT/B5yMak8jLArGQ8IldlpLKqhJCOr/1ch/iCRLkfKzY+w3C
	nc5VSOTJD7VVST/aCGxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqs8D-0003ZK-F5; Mon, 13 Jan 2020 05:19:17 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqs7u-0003Ws-AT
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 05:18:59 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 4F2825DBD;
 Mon, 13 Jan 2020 00:18:57 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Mon, 13 Jan 2020 00:18:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=MFjG2zqyZNPA/
 ontFOTVLnbZ3yC/TQY/D7CEVP8rFPs=; b=YX/Zp8UksbWaQP5t7jZas6m5cJjmA
 9QiMsTcSD42o2BY3GoM96HU1/idbkRNj7cwMKmW1tJsVnlh7g0uAN4RAPOVkqtOC
 w0+ZuAF0+cCjiBzSHWwnGOulePHyUOp29TY04SNhVqpfX4elU71fCnw0rKMBp/eT
 tXfM951zPty9faZuSKQMKk2vxdjFUChT+XOYSTeMpVo2s+zC0KzIu3fekaqS8zc5
 24yH43FszshuqEZVlFVOfFDUKM7ZhdnlCI4L7gBfSZJXHKaYIzRDjyGv4Jzb1k88
 DvcZKk4HBY4A8BjiadpqWOdaiyLSD3jQmwfIKdhHFVrv1FlZ1JltRj10Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=MFjG2zqyZNPA/ontFOTVLnbZ3yC/TQY/D7CEVP8rFPs=; b=jQm0Xuo6
 P8iDb35VesAMHng8mPKoYBCXIRy4fnbKDvWU8oehy6KkyMOcKCSabqrclJLeRgPF
 0YBN/qL4EMB4b+fCsl+qKmXmAyCYUnQ1ne/mDMyC3gibdqzia/uL5F6McRcN1PaB
 93Q9YqjEVWCWsPRuOPTaoojHohsZLIzjIxsnDAipRFfER2pBZ2ErVRqYf2LqWXCs
 EIpBQkm0WSbdz7edArfCo9uy8fh6QsnJQAltG2UkTjQpZMz5vCEYUsR6CAy1OC0N
 2IPCCOwrV7csk3YEH8aQf8o0MLdkb1W7yfSVP4GDJf16uUJ5WU5pJTz8XpjFY2Sk
 LKWVq2u6tszBKw==
X-ME-Sender: <xms:wP0bXuUt8SInIMKdtBQs3zr_HKD3tcx8XBzSSXsgHvP1QUTrUMStfQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdeiledgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghm
 uhgvlhesshhhohhllhgrnhgurdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:wP0bXgnom00mvM2sqKvoVQgCZTcFRm0vksW6AlTibHc3ZuikR2EpfA>
 <xmx:wP0bXgDYbggA8LwcAoW9m_hvR01TE7ejo5naA8uXupO28p0Zrcgdug>
 <xmx:wP0bXgdBHHUAb8rBoqvPbjH5y8kUNMI1pfXdjhQ0yEjNAdLOcYPx2A>
 <xmx:wf0bXoZzyvSjwzBkF4jHgpUwYbfVIzG54Z9lnNM7vjIr_6D8hTsfMA>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8BC773060783;
 Mon, 13 Jan 2020 00:18:55 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Ondrej Jirman <megous@megous.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH v6 6/6] arm64: dts: allwinner: h6: Add msgbox node
Date: Sun, 12 Jan 2020 23:18:52 -0600
Message-Id: <20200113051852.15996-7-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200113051852.15996-1-samuel@sholland.org>
References: <20200113051852.15996-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_211858_515067_1F6F4DD1 
X-CRM114-Status: GOOD (  11.30  )
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

The H6 SoC contains a message box that can be used to send messages and
interrupts back and forth between the ARM application CPUs and the ARISC
coprocessor. Add a device tree node for it.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index 29824081b43b..8dc6ba71a901 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -230,6 +230,16 @@
 			#dma-cells = <1>;
 		};
 
+		msgbox: mailbox@3003000 {
+			compatible = "allwinner,sun50i-h6-msgbox",
+				     "allwinner,sun6i-a31-msgbox";
+			reg = <0x03003000 0x1000>;
+			clocks = <&ccu CLK_BUS_MSGBOX>;
+			resets = <&ccu RST_BUS_MSGBOX>;
+			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <1>;
+		};
+
 		sid: efuse@3006000 {
 			compatible = "allwinner,sun50i-h6-sid";
 			reg = <0x03006000 0x400>;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

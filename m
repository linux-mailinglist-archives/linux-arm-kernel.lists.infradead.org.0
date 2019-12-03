Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4E110FD32
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 13:06:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1YbRRypzgfk2IhMVqJfPjMVHZ36a80svaf3UhYS7M1I=; b=mFdgtm3GXSGcsD
	dF0bu/qZ3cS6Odel2S1Q+oXotODmF6hh7mywPTYdss0X1WG2vgbj1M2Sxdol03nch/QA+C0ZhP2IK
	xiKci13Ldd200NCnQgk9BB8uR5uKBCrmGd6Bjd5OJ4Cvfg99MvTw3bF0nPq7xqbt77/vJZ7zF6YQK
	waiqOwRX5nCgxmPEwQPAQYGTNUSsFOTSGP10Sa+oMxoK09KnQmLCMyCRm8uutUI9MVMvZsTsGv9OH
	nQ0f4ByTQ23bGVmnke0hIL3PpYBDvQpHgjnfurNC+4ymvC0kf1OSFIk/bPjkKQy+5lsDlA773yg1l
	XpyrfvlGzIdBKHeLNcPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6wK-0004XK-NB; Tue, 03 Dec 2019 12:06:00 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6tn-00016P-Bn
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 12:03:28 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 8DB13223F7;
 Tue,  3 Dec 2019 07:03:22 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 03 Dec 2019 07:03:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=Gipm7m4Tc0Hwk
 IsIKnuKaGFXgVbJL2mzXRy4PtSExJI=; b=HoCUb2TWOTVibuL05Jm1oaRGlSGtg
 anpaCsVMsx3JjzSnZf9vAWQyatpWsS4IHPOwWKVQ9v+gm6hizuq/6BTC5MGEJ49b
 HH1LVCTQCQPTGlTUYd6sFUv3ZncIb2RbB2LkfD+dmNyAeA5LOacJ5dMBo27YHSj/
 R9I2k3rOjgQuEbEg4MSo8sCxkoaML0rW10KqydX3ccbhcNHiK0xlW7LOaYaeoVtr
 Db4II82AFBcnoQzUGoRarsD+9gA32klz6ogodIJNsIvsLXmHI0LtNLLOKzupVNp6
 ZjLOygeD4JANhlX34YF4dtbGfzAryB3qDZHusaRDHVtbz2YA1I7te09Ow==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=Gipm7m4Tc0HwkIsIKnuKaGFXgVbJL2mzXRy4PtSExJI=; b=wqHg7fkM
 +LAArarWwgpH3wAUwS/iy0YCbbx0QbNLfc7AxWD6pF+zOlGg/I6ehJXnLBkuoyL6
 RSQ7sl5nyho5xe38zSHRA52atiHeUXGz8PWEVIUn5RW2f/7u56bQrCpN5bxlSUsb
 ffKa/8O4nP4ZC3j6/rtCMin0LkKoTaG2/BLbeaTj+MHNitoDluM0/jieTuOlR3P6
 B2tr6L8w7vaNoV5bv3QQmTKEkP0s01s13X6Eu1u2AajGLFxw+f7cyG2MSM50ppid
 qL/zBPXlNWFxO3lNTrRFkqxtClblHDo831qU5qiiQyd19wCgjyvcgCKb8XLq9g2+
 XK6533wK5j8Hpw==
X-ME-Sender: <xms:Ck_mXVdxgy51DcjeMGXlPKit4e9E0zpPRl7YWmqaypJL1N5lDJ_OQQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejjedgfeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecukfhppeduudekrddvuddurdelvddrudefnecurfgrrhgrmhepmh
 grihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihii
 vgeple
X-ME-Proxy: <xmx:Ck_mXSzs0qyhOIWNMF1_j8MuLqmkiwnQAlibFb7X0Kid_oU1hX2SJA>
 <xmx:Ck_mXZW9glxsbglXYM0PMp0lHirRkDayCZNaPHOtB8bKxkoIi247ZQ>
 <xmx:Ck_mXcYl367aqQf7g1AfrDTW8ojElgyfL3V56LOETuINIGJdkNQkxw>
 <xmx:Ck_mXXc-6VWjTAP4rq4qSUuV8jIoYSdBmvbwFMVpEiCBvrdIO3Sg3g>
Received: from mistburn.lan (unknown [118.211.92.13])
 by mail.messagingengine.com (Postfix) with ESMTPA id 035D130600EA;
 Tue,  3 Dec 2019 07:03:18 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 10/14] ARM: dts: aspeed: Cleanup lpc-ctrl and snoop regs
Date: Tue,  3 Dec 2019 22:34:11 +1030
Message-Id: <c7b124576dc133cc03119507e472dec18c048438.1575369656.git-series.andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.08e3a6c95159f017b753d0f240086d1a7923758b.1575369656.git-series.andrew@aj.id.au>
References: <cover.08e3a6c95159f017b753d0f240086d1a7923758b.1575369656.git-series.andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_040323_560004_A7AD5DA3 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the following warning:

    arch/arm/boot/dts/aspeed-g5.dtsi:409.27-414.8: Warning (unique_unit_address): /ahb/apb/lpc@1e789000/lpc-host@80/lpc-ctrl@0: duplicate unit-address (also used in node /ahb/apb/lpc@1e789000/lpc-host@80/lpc-snoop@0)

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
Reviewed-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/boot/dts/aspeed-g4.dtsi | 6 +++---
 arch/arm/boot/dts/aspeed-g5.dtsi | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-g4.dtsi b/arch/arm/boot/dts/aspeed-g4.dtsi
index 46c0891aac5a..e1d4af06c217 100644
--- a/arch/arm/boot/dts/aspeed-g4.dtsi
+++ b/arch/arm/boot/dts/aspeed-g4.dtsi
@@ -346,14 +346,14 @@
 
 					lpc_ctrl: lpc-ctrl@0 {
 						compatible = "aspeed,ast2400-lpc-ctrl";
-						reg = <0x0 0x80>;
+						reg = <0x0 0x10>;
 						clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
 						status = "disabled";
 					};
 
-					lpc_snoop: lpc-snoop@0 {
+					lpc_snoop: lpc-snoop@10 {
 						compatible = "aspeed,ast2400-lpc-snoop";
-						reg = <0x0 0x80>;
+						reg = <0x10 0x8>;
 						interrupts = <8>;
 						status = "disabled";
 					};
diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
index 5757d3f0e947..013d1f98ecf1 100644
--- a/arch/arm/boot/dts/aspeed-g5.dtsi
+++ b/arch/arm/boot/dts/aspeed-g5.dtsi
@@ -458,14 +458,14 @@
 
 					lpc_ctrl: lpc-ctrl@0 {
 						compatible = "aspeed,ast2500-lpc-ctrl";
-						reg = <0x0 0x80>;
+						reg = <0x0 0x10>;
 						clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
 						status = "disabled";
 					};
 
-					lpc_snoop: lpc-snoop@0 {
+					lpc_snoop: lpc-snoop@10 {
 						compatible = "aspeed,ast2500-lpc-snoop";
-						reg = <0x0 0x80>;
+						reg = <0x10 0x8>;
 						interrupts = <8>;
 						status = "disabled";
 					};
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

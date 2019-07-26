Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD7875E93
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 07:43:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IQc5K9wx7FA1puyngAW4YRi1yMuUzn8rsAEgdz53cRo=; b=f3Q8jd4mYxD+xJ
	57HE/JptSVFEeh1Yp70h4U75iZrPiBhSBM/4NnJrSy2WV5AsLsRh8ZFU+hI/xxj1b3EtWEN6bsQ6B
	6EnCrbONDnSsm8tPenjrxXekqnkaRhBntq0rZCpYfckUEFJMUA39ZqWq5BaBGwqJ46aobZf59tbwS
	mdFlljh9YhF8eIakk1G1C0hd34ZeXHbhu5POSMQWD/CmE4ttJ6swG2Nd0taTXqYV7yQn7Q5tOV+U+
	4tXUt0bOBGQpADDNyppSEGOA1pxRylj6+DVgtNS5tnTiiziGVboYVNYUeNAk1I1IC3i30yNHKHp72
	C0mge71j0vKeY91GXiIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqt1B-0005rr-KP; Fri, 26 Jul 2019 05:43:49 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqsxz-0003vh-H8
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 05:40:36 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id D42AB22131;
 Fri, 26 Jul 2019 01:40:30 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 26 Jul 2019 01:40:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=Sz5g0+Dl2yQ1i
 F6zWdflObP+DugVbiRkNpKSed5kVRQ=; b=M3HqskOp669nEECYO+2mMlQLHS0at
 8mGJjd3E2rx1RXUnz/ZLOuzO92TnBRsgC3WgySQKfv/6lHfLU0iasmyer4dTphQZ
 fGjlkdWRXQnpE984mAYs7xMXjP8AAyMIzrNthugvem1RsxJ5YeHlpyic7QxJ68Jd
 Ku6DCBLYkx6V76YAxx85uxhaLc4ZNngG/D4kfN1FTe5ZrLBE601qCRyWqITNLvFz
 S58npquHNCDphz+3rEHhVqDuzpS38JU8VitVtLVkHu6RB/W8GeFP6x3oU+3MSGIf
 RefH5rBlcOmozt74qe+dsHjn0w9ekDT+i5++Ik0CwP8M7bSWRCttlOBkw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=Sz5g0+Dl2yQ1iF6zWdflObP+DugVbiRkNpKSed5kVRQ=; b=gQ50PelC
 FRIo7RxYhk8WqEpbdthcrQczqKm4kC3tMoi+dbpoFksjNul329FMbymPdBmrHYqP
 DgEdGk2fEBU60OS7IZxKmGnRUh+L1bt549fMcMZx/DXNR9VIQftJKrjXNFUnUVrL
 zm17dRtqSMtcGOjD1HwD56reRFKp8b+L53nRq/nMRFcxpr7wgaFuRHFztRXdPmkO
 TgX07EbViZ0mUa1IQ9uHpIj1w+r65YOG1lEbFJ8QW/g4oGeA/RmOjEBz970Rmiet
 nXyDwcB1uHNap9LKXTQRWPqHjE2ZEs1JPIaEFNM1qKRjahi/+1eHk/o+Sa3x2Til
 K0GoxSklQIIz8g==
X-ME-Sender: <xms:TpI6XRONu7akzQ89w22D7UhdiCVFTo-CKmTtCW7ZUGK0_rQ6gLqa1w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrkeefgdeljecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucfkphepvddtvddrkedurddukedrfedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgep
 je
X-ME-Proxy: <xmx:TpI6XWtvaP5vkzUO0x0DgE_ZXPurQ9HOUQHpkU57bmlCF-lhX9dGRw>
 <xmx:TpI6XdItkjrYbTUkJ4XEt7t_GlhXDfe2_vOORuLIS-hQOkVvbNTLNg>
 <xmx:TpI6XVPf_psBKf-WqiMAixAfjlFg4AjFuHxo_ZLhAx_6kNzKeNe0Gw>
 <xmx:TpI6XWC_C2q7edRFFvq41OnZO4cBMZesLTnbsvqP1tuS19jzN7T4iA>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id D9D43380076;
 Fri, 26 Jul 2019 01:40:27 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 08/17] ARM: dts: aspeed: Cleanup lpc-ctrl and snoop regs
Date: Fri, 26 Jul 2019 15:09:50 +0930
Message-Id: <20190726053959.2003-9-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726053959.2003-1-andrew@aj.id.au>
References: <20190726053959.2003-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_224035_250765_8BE57254 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, joel@jms.id.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the following warning:

    arch/arm/boot/dts/aspeed-g5.dtsi:409.27-414.8: Warning (unique_unit_address): /ahb/apb/lpc@1e789000/lpc-host@80/lpc-ctrl@0: duplicate unit-address (also used in node /ahb/apb/lpc@1e789000/lpc-host@80/lpc-snoop@0)

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 arch/arm/boot/dts/aspeed-g4.dtsi | 6 +++---
 arch/arm/boot/dts/aspeed-g5.dtsi | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-g4.dtsi b/arch/arm/boot/dts/aspeed-g4.dtsi
index dd4b0b15afcf..ed78020f6269 100644
--- a/arch/arm/boot/dts/aspeed-g4.dtsi
+++ b/arch/arm/boot/dts/aspeed-g4.dtsi
@@ -296,14 +296,14 @@
 
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
index 3b4af88f9b80..a8a593dd2240 100644
--- a/arch/arm/boot/dts/aspeed-g5.dtsi
+++ b/arch/arm/boot/dts/aspeed-g5.dtsi
@@ -408,14 +408,14 @@
 
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

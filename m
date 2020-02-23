Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FAC21695C2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 05:09:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U2kPzfg3Dd7hYQ4VZ/D2IJ3uHyT0Kd27cjbsFvjIWHE=; b=aKIumvwAzuv+Xb
	J0Q8eqTJ6foVPMawEiqrbpfn+8G92TK9bMOSUDVrxHpvFnntwhD8ob1bHy7pgrhi2bZUG5xAJW89A
	F+RIOJl5/qRLAycAwcSFzgWrz4tsY8URK+4qXlIN5Ru49LVbgt/OW9wDh7FYgvm2Ij/bK+IGDxGLy
	0vAJoWsuUT0/6Tk0ivB4vRMdR10yFI0ILAmkAJ7ip9bEQxBj3TR59CAmtz302WQu2rRtSatxQWO5e
	pboWOUSFlXBBkMMlIkakMPjxqmfYW+/auxuoX54LZYmUOkg3ROEfjVatFPPFZ9DrhXPlZktjjVrpk
	0n/0elo9VTnKBZb9HcbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5iaP-0001P1-9u; Sun, 23 Feb 2020 04:09:45 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5iZd-0000tG-JO
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 04:08:59 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 0622C6BF0;
 Sat, 22 Feb 2020 23:08:57 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sat, 22 Feb 2020 23:08:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=1aX1QXFPhrSqm
 3Yw9wbaw0rJCUrA9D9ZrNmngaeZs2w=; b=gEX0s357WGak5Rd6Re1wmzqVq4tP6
 ev2/tuTQK+/I7fUEHru9TqZ6oZmHYSNNUVemgdbB61wYhGpFsY1gpda9o44PGEr/
 7K0qSRiT1FQiNcayDFUy7q4MUunwcdSiErg2ylL3hgrBK/+VkvHDzBDfMO9A7ZEl
 qnfOWofZO3xXJnT5rnkwXWyRl9SN4O9vk34JQ4LUdCRzYWxMNoER1w04Kh0gi911
 /5WRZq/zpAn/6VVNjAr6iMqje0HuR5cWC1/5glDtKSuzlJvm/mQA9SrZxHudcuXW
 nAF4Zxxxnqjx7axf6lZd9RQ0AyR6PRrDXZnJB1/1sQlvZToMDKlY3n3bQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=1aX1QXFPhrSqm3Yw9wbaw0rJCUrA9D9ZrNmngaeZs2w=; b=iUhBAIkv
 +mVYBWgHHEQgRcthmQ67w42jzN95Hl/vZLZ7Yzbj0R1sL3w8oXHtoo4aTU7mmZ2U
 fqIU0/nYFIaLclAlBkta7bDYVK8DbPSzDpCUb8NSh3ib7H7C58XjYaxYgE9ribAb
 32g/V79Oi6P3orz0Snqea/43ql4r10mlXQhARsm1H0QD7rWS4kaYkSRvltde9nWP
 QdJ5s9TY/6pDsSlvMVBnR+6878YB3fyh6yycJr/eE0mSn8ogd7sxR5jnuLvXenv3
 ci3qVKG0mvsqG4PPGQYMcB9taKFqYQYXbWRzAYREt+I9Sozdnh+n5dJ2hB1Q16wq
 EbborSOagQ1KXA==
X-ME-Sender: <xms:2PpRXgc2Fxmm_3G3NrSQUVSbkIOYZIXB8hGf0kobNDvu-fw0It38-g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrkeejgdeigecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedunecurfgrrhgr
 mhepmhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:2PpRXmdABQuihZs0q02VHvdYrgGMjThKUXqtfETJlKg0JZ-fZDXkTA>
 <xmx:2PpRXsjit9ttxX1PxKvp0O6QHziguZIlBPj6FZTG-D2vzrqhrIA6ZA>
 <xmx:2PpRXqRIalIG6MCR62RCrcraPd1PxDZOXUiWZHd3JKHNA4KbVBj1sQ>
 <xmx:2fpRXuYlc2rR8XVY0sLmqu9pdTgbxJTYcZ0s7wwURIH6_YEuSXz3Ng>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 52DCC328005E;
 Sat, 22 Feb 2020 23:08:56 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Jassi Brar <jassisinghbrar@gmail.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v7 4/6] ARM: dts: sunxi: h3/h5: Add msgbox node
Date: Sat, 22 Feb 2020 22:08:51 -0600
Message-Id: <20200223040853.2658-5-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200223040853.2658-1-samuel@sholland.org>
References: <20200223040853.2658-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_200857_775737_33E27AC7 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ondrej Jirman <megous@megous.com>,
 devicetree@vger.kernel.org, Samuel Holland <samuel@sholland.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
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
index 5e9c3060aa08..effae97593b7 100644
--- a/arch/arm/boot/dts/sunxi-h3-h5.dtsi
+++ b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
@@ -239,6 +239,16 @@ ths_calibration: thermal-sensor-calibration@34 {
 			};
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
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34BDC1695C3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 05:10:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ucUxFa8PsR9nZqWMg+xO41OBVsAzHAX0Sp9usHwYzXg=; b=i8/v6F0PZJ3+c3
	qLJP2BMcOLfFvESHqQEn9Exb4EBs2CFhChvx2OfHamFvdASdcoCFSLgliVPR2yyoaHzLJb3OT5zJv
	Nn5UgolW5IXFlj4Uq515iXanNXeOfSi6gW9OBykpfAtz2VYx/UBsAIUUHkuG6NHY8A78Z14aBr8l6
	yFAnpRlUR2rdVy42OV/54qFsHZZsnAkQqNLNf5iUgcFihFtWFYQgc/USJCV48r1S4OdJsKBMeoc5B
	/v/bNkmQ+ntfYxfmikCGSka33ZNkGUgJ1utBk2GfxsaW/2H8tMlTGyIgVRGT2V5QqzG4zy/bdLYhw
	QABxG25e6GyuHA/FMLqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5iaf-0001aL-Aj; Sun, 23 Feb 2020 04:10:01 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5iZc-0000sW-W9
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 04:08:59 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 5C9066BAF;
 Sat, 22 Feb 2020 23:08:56 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sat, 22 Feb 2020 23:08:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=1fk3i2ClaxdX2
 eU49K7tz0VJPn9jPZZckBW1lekbOSw=; b=e56Uo1uJqzMwdtD1kJVo81LGzVr6C
 YXxXfHfIXjB1Kg14i7eASZisJRM9AFuYZddFiI/Y1IYaf/BUgFsi2Z1gKTTXVE+5
 QPyAkwX+e1Sqw7J5r7gLrpXN98Vd5nqg2Di9U6F7yyY19ZM/19KHRKezFJXKcP9m
 ZLWn8EzH7jdPjTv+VIsH88g3QN681H/JOKGEXuvXkU5UrvUiThuVfsqQDPNvI8eT
 YqvJ6hfPIpLnEwosC6hiJ4/5UGA8epmcvSTOCz2wKcL8XrcxNDnyrFBp2PfEP1yy
 8YB3HIizmGBUoVDI8Ilal0PBkMRDfNstBKgRp6Gk858a22Evm4+tqzJHg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=1fk3i2ClaxdX2eU49K7tz0VJPn9jPZZckBW1lekbOSw=; b=Qj4ADG+u
 h57PIkB7VKOUc7akOReEHEi/GgNu5w5vM9Zsb/s9QQHCFS6GmXNYXn29Ax+AWrTo
 mO0N/8h6fC24nS+IfyPzO19/w2Z/k2XIvDRoEOTiAmTdXQetp5Tu1de2PgUloNel
 cCD+ZBiBdT9g/d8jWcj6hucPtxZzUCWQm3KPuYJNqZvm2kHRq25ph8ZNHmYD6oGi
 Hc9H9+IPaLjNAuPrCeDFVrEpr+HbF2Wo5PaVRKu6rvbjDV6YKxv3pOZevbe7Tuds
 rUXppjTHXrH6roJBjIBrIg4gRk/o7Hf+rGn3k0uSa/DDwAw4eS6CPPgZct9VI2EE
 EA5hV58goDTqWw==
X-ME-Sender: <xms:2PpRXhj7rCGz5DFPrgXlQGapsYMHKTkDolpd0ZqoRByCxgYA-XYHZA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrkeejgdeigecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedunecurfgrrhgr
 mhepmhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:2PpRXh3kj8fRDQVJXVY01touArKTklrt15fw8irZtWd4kbYuNumMNQ>
 <xmx:2PpRXsdnQ3jbwBDoLJjZ5_BD4rhuwDbhHi1zSeBQbIGLsuWV-hxldw>
 <xmx:2PpRXvw2EjRxT_69KxDLAdxt2-yXTl2318fzHurhjnExONq66gqaYw>
 <xmx:2PpRXugx0Kd3Gzxf87sDn49i_NaUZjlx58VcObKja7rwMuynVE8Sew>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id BE71E328005A;
 Sat, 22 Feb 2020 23:08:55 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Jassi Brar <jassisinghbrar@gmail.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v7 3/6] ARM: dts: sunxi: a83t: Add msgbox node
Date: Sat, 22 Feb 2020 22:08:50 -0600
Message-Id: <20200223040853.2658-4-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200223040853.2658-1-samuel@sholland.org>
References: <20200223040853.2658-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_200857_186006_B231B146 
X-CRM114-Status: GOOD (  10.42  )
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

The A83T SoC contains a message box that can be used to send messages
and interrupts back and forth between the ARM application CPUs and the
ARISC coprocessor. Add a device tree node for it.

Tested-by: Ondrej Jirman <megous@megous.com>
Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm/boot/dts/sun8i-a83t.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-a83t.dtsi b/arch/arm/boot/dts/sun8i-a83t.dtsi
index 74ac7ee9383c..cdec59eebff4 100644
--- a/arch/arm/boot/dts/sun8i-a83t.dtsi
+++ b/arch/arm/boot/dts/sun8i-a83t.dtsi
@@ -599,6 +599,16 @@ crypto: crypto@1c15000 {
 			clock-names = "bus", "mod";
 		};
 
+		msgbox: mailbox@1c17000 {
+			compatible = "allwinner,sun8i-a83t-msgbox",
+				     "allwinner,sun6i-a31-msgbox";
+			reg = <0x01c17000 0x1000>;
+			clocks = <&ccu CLK_BUS_MSGBOX>;
+			resets = <&ccu RST_BUS_MSGBOX>;
+			interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <1>;
+		};
+
 		usb_otg: usb@1c19000 {
 			compatible = "allwinner,sun8i-a83t-musb",
 				     "allwinner,sun8i-a33-musb";
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

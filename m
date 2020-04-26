Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E67A1B918C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 18:12:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Xs5lQX/0Hoqkqb1c8qutRR83XRxY4Lg+0AX17kZetE4=; b=MHEKKvYssD4amz
	ajoVHf1hDKuuvOQJtkrJ7Q4swgonKeelsbKUfTuuAy43atvYVABqsb85ILAe91CP3iqvlEGbwNYGT
	ZBOy8WuBQ/xFB2znltQ8DkBk0D3ovGUbTBvdK5byO2IPwv3Ik496bP6IKYzB66Dbspef4zOEDFBwx
	IpDvGJ7CD4g7TndRD9T2WEe9bGDlGXPJVtN7cx1x41/UCBs+MsAJJAg1whbQ7NNs7jIwYSC0eP4Gm
	OM0U9MACFm8PPITj3mF0XxjHRCOUvvtPCxEUa7u6D3iJtaV8g/NVkGU+qus0HZSEiIK7SIHXngvYg
	dw+pghmE0H8tAMR+wU0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSjtC-0000Mu-3Q; Sun, 26 Apr 2020 16:12:18 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSjt1-0000Kf-Nq
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 16:12:09 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id E5B8C5C00D3;
 Sun, 26 Apr 2020 12:12:00 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Sun, 26 Apr 2020 12:12:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=DstDy5l5rdsJcISzdP+t1d2X6d
 9z/JjBvqVJ7i0o2xw=; b=LWezrIImXKV5NwJ6YSYinDnl9kcK1aYg0DBdgxB3mN
 PP9CMayJ6NF1TOgIdc0MW0n75595w3H91aK1sQygeodISKszD8lTD//r5UoyiozP
 aVz84eTEMR+9aEMFPNoiJZdHaWatsJXS6GzEc9AJ6ASi/0bCiGM244fcV2RpqpSQ
 0xSQWY264Oywd1iR1vQ/BoWUu/2L9ZM4ML67Wfrs+JpNnQV0UCUohczExLPQieoj
 PPxYMKD+JRb8VkOZbxIhtbF9pU0MDK/adjBq9VA34dIhJFQzrUxcADWMnCi5i0Y/
 K1P9f2k4Ve2YumQtWw7quQA4OrkPz8Zg4NX+zWqk1n5w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=DstDy5l5rdsJcISzd
 P+t1d2X6d9z/JjBvqVJ7i0o2xw=; b=KZ6D79+YC8NS6f5MTQmDTWis+kzyY42Q9
 /271i3tc3M+/XcvYGzVxSZ75kTKiDnRshnLRr3Tr4uNmreq8B4DMZgZJjNSXh4q9
 tRHvm5/xNK7ipiFPKMxBxe8lr5d8Zi5v5Kl3ZZd5RSCJ9nSQIEswBao8ZlOQwQ4L
 o9z1uCrxu89WmhwpxSWXij8fXMeGo7/GKhv6XoNKP3umXylybv85kDOj0TBrUrXb
 0kWmKn0bGQPzKYzAQXiezJz3htZ1X0JE3G7lNqO79/TRBEcE0DIriC5Sv7kOXdYB
 vBuIpcyH5Ry+NBxtYOY+Uqrhf3v9MhSqr7o+6IAMoSZDPIdzVfJCw==
X-ME-Sender: <xms:zLKlXvGduu1BG4f0Y_p6zO24-N9Xaugjvwkmb0DkiUVMBXXGZIj-mw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrheejgdellecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghlucfj
 ohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppeejtd
 drudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhep
 mhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:zLKlXjnPZpJwS3sGVc6St_4U7QIo6lkTTlzyi5gRTyljjlaEaSDvuw>
 <xmx:zLKlXl3whgDWeGBB9fIQWcpipHr8cuTPU47aDjOb6Uq89A_UJ9ZBqA>
 <xmx:zLKlXpzFf1pQe2ouGRLgLarcesc0MLdNdL3bkRuEZYw0-usa-Ja56Q>
 <xmx:0LKlXp362ElMk5nDw4AFv8e_1VLp3xq5rR1obrK3b-MedR9XLT7XyA>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 780AD3280060;
 Sun, 26 Apr 2020 12:11:56 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2] arm64: dts: allwinner: a64: Remove unused SPDIF sound card
Date: Sun, 26 Apr 2020 11:16:05 -0500
Message-Id: <20200426161605.52121-1-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_091207_919394_C868F416 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Samuel Holland <samuel@sholland.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As of v5.7-rc2, Linux now prints the following message at boot:

  [   33.848525] platform sound_spdif: deferred probe pending

This is because sound_spdif is waiting on its CPU DAI &spdif to probe,
but &spdif is disabled in the device tree.

Exposure of the SPDIF pin is board-specific functionality, so the sound
card and codec DAI belong in the individual board DTS, not the SoC DTSI.
In fact, no in-tree A64 board DTS enables &spdif, so let's remove the
card and DAI entirely.

This reverts commit 78e071370a86473f25923e03b51cbbadacf8be0f.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---

Changes since v1:
 - Remove the node instead of disabling it
 - Also remove the codec DAI

---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 18 ------------------
 1 file changed, 18 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 31143fe64d91..c26cc1fcaffd 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -154,24 +154,6 @@ link_codec: simple-audio-card,codec {
 		};
 	};
 
-	sound_spdif {
-		compatible = "simple-audio-card";
-		simple-audio-card,name = "On-board SPDIF";
-
-		simple-audio-card,cpu {
-			sound-dai = <&spdif>;
-		};
-
-		simple-audio-card,codec {
-			sound-dai = <&spdif_out>;
-		};
-	};
-
-	spdif_out: spdif-out {
-		#sound-dai-cells = <0>;
-		compatible = "linux,spdif-dit";
-	};
-
 	timer {
 		compatible = "arm,armv8-timer";
 		allwinner,erratum-unknown1;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

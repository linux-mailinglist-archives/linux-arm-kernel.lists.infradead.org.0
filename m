Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D47F141F0F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 17:32:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rHw7GhBJ6FX+dCcvTXmBVxpB0kCE3nTuiJTjFo3ZYrU=; b=q6ltPulzMapGXH
	IIJ/YKkQZeIV0hgFpF/LZW6LK9cTgDNjmjKcxdq7qI7RkDCxKBhUHkbS7GG/Dp/bhvjPKKQNHS/wL
	w4l0vnaR54onw2Hc6zZ8wnCioQuc5jP+SIDSbrkpBpcRul0if0jn9i7m548TcBAvzPmqM2EbO4hqW
	BI+9nBuPHKus3CVZPVNLV71FmhWKmrxQMrDZhzGofG0sCtu2ckO97VQDNrEI73pE3SROQQ/EzysHS
	9KKH1a09Ou6x4lfmfSuxVeynNGyERWlyrBauT7wAD2XEbuBCxj895r5GFRoAWNb+S6yjjJbwbFfR1
	v+c18okvj5Qs6LurX23w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itDUN-0005Gk-PK; Sun, 19 Jan 2020 16:31:51 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itDTl-000550-Qy
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 16:31:17 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id D1FA621B01;
 Sun, 19 Jan 2020 11:31:05 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sun, 19 Jan 2020 11:31:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=jRXBQP1pUsdOzqmTPi7i0GNzpz
 hk8MjLKuWSz3BrgbE=; b=Ss9nHyKUmmUdUVZnkh9KSqKaovOToU/w0XpUd3ioEI
 lSQSVTwho0JumsjMAJBNXXu6z2exAg6iqFi/LbaKQQScXHgpQD0TP1266j1tGj1l
 9beo5IzZzWJ+QifEb0mq6Fsr0VMPKip65U+AnZXxlFOUKnah2JipW8+2X90bKKAE
 xDGWdbrIhupvwwvKFaE4KN09daKEZbXrZh61oYUkTekgNX1FAlKHHGCOXlt58gD4
 VMtmAFsqMwl3nOcAqngxcD41kPDaU3etB4WbbSK7xFxWhI5Q7xr+fkyHDAHUwWQW
 U28yAArEV0yiJCbjWHDfqJFrSAGulNrDpVzCLN7MF2cA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=jRXBQP1pUsdOzqmTP
 i7i0GNzpzhk8MjLKuWSz3BrgbE=; b=XP5LRL0rkqT5A7Jca0CA9sb6eLXmxpHj6
 kFWKD75gDttAJg78qybWCkM+kN0LJEubLLBkSaCdxrH2kNoEk+FWzNYpiwkXONxm
 CcVj3fc2IHLkjLbRb+BZQgJbJprza9t9R3QdwIKyC7QrLapqQVmOyLnoem2/iXNr
 6H/3BriaOxsiseJaM/Ik/MCF7AhyB4aEd7IosUGFA2LpLNAHsTSEczhwJ9Ct1pu4
 k05Y7pXTKJWbl+TqmFJ2Mfxr+xAO9GNGiECtS+bKD8eueX0UfukSzipzN8diR2KY
 LR2DakDDvZadiBmVAkYHqFGozvSx7cMTeNC0QNqJy+m7gFFcSzBdw==
X-ME-Sender: <xms:SYQkXu2t0pTzPsonGpgvAuYrrkNDmvx5NylXBsTbWHumwxL_3AKuqg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudefgdekkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghlucfj
 ohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppeejtd
 drudefhedrudegkedrudehudenucfrrghrrghmpehmrghilhhfrhhomhepshgrmhhuvghl
 sehshhholhhlrghnugdrohhrghenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:SYQkXgYqnKPPGE0gWQUtLWPv_j9pZCpeu0xDSYzFRpoXHJs5j9OfXg>
 <xmx:SYQkXt0CEB2peFOny9G6B6r-BuTha3uMTywm0_kdeRM5UE3mOWDwBw>
 <xmx:SYQkXrKLxCt89pyW-bO6WtV27OUzeVTkaEFrnIjrAnGjTlNlR8c6_Q>
 <xmx:SYQkXusNyWmbW4FH4AHsaEbbbAUtuY1I8swgnQB50VHJHhZxZ4JdUg>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id CE0978005B;
 Sun, 19 Jan 2020 11:31:04 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 1/9] arm64: dts: allwinner: Enable button wakeup on Orange Pi
 PC2
Date: Sun, 19 Jan 2020 10:30:56 -0600
Message-Id: <20200119163104.13274-1-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_083114_169664_6E19C70D 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Samuel Holland <samuel@sholland.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Orange Pi PC2 features a GPIO button. As the button is connected to
Port L (pin PL3), it can be used as a wakeup source. Enable this.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts
index 70b5f0998421..c4f89c312f42 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts
@@ -61,6 +61,7 @@
 			label = "sw4";
 			linux,code = <BTN_0>;
 			gpios = <&r_pio 0 3 GPIO_ACTIVE_LOW>;
+			wakeup-source;
 		};
 	};
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

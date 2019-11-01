Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E65EC377
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 14:04:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gxpuWZOkZQjdv0pG5RWhlKohypxF9+fw4JWS5N2YTFQ=; b=mE+qBDr9uz9xOc
	8a1ozTJBTJorS9cIFuC4xNPoRSKpFCOV/rsnXlOtQKk/MHjrpyed9PacymtI+MzJke0LU0JPOfWGy
	3HMlL5BJLRLQ44i6zGNfLRnCKdb2d71ePqJgGxaFDVBp16zNMvwvUh08mhOc1O7S6Ey/4G2DqCo3g
	A+GA682ZQ5se85KfzBlVfmmE0S07zYK8qfMdU4GqKZ9tnlexS08IiLEvi5U5u8DQT9V7EbtMpyJNG
	gXOISUscjN0GIM2ZhLqEnhvEXC1lrdup/bKALa1JvMtg86SYEDOp0x37XH+VXtTUGCW3hLK3lcHxQ
	xPav4fnKwDe/gKtFLPuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQWbc-0006vM-JP; Fri, 01 Nov 2019 13:04:44 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQWbR-0006tL-FR
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 13:04:38 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id C9A446513;
 Fri,  1 Nov 2019 09:04:28 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 01 Nov 2019 09:04:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=OWDdF6s+jzlPgOMqvmLS468zno
 /eltSiLa0LMby6g6c=; b=barSgaN4jnqgzq1sYG+SsfDHBJsI1AYPnhNumMq5B7
 aWP3t29WpD288bMiP6I8JBl7oGhK/om3mVPUMSQ2yLXSWDO4XAcuTCtT2gLPZCDJ
 OgCdnHflNnChAFAlBO3P9TQjZbVAnxmESIbhj7d1Z41HCMGLWXkw9ipYzwXWq0BR
 bPyGI6xciG5xZWSQjSIo448O61J5HmlrCTdFwZkxcevSN2/2/a/r4MtEi0Vvki9X
 AJLo0y5VKPW49lFtShKfuuhzgdTlZaHTniQzKC1YNWG+G1tZQ9MTqcUoIiPixSYd
 6GPnURoubagiycST/lHKolWXUZFdhFVvXoY3nTqgydkw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=OWDdF6s+jzlPgOMqv
 mLS468zno/eltSiLa0LMby6g6c=; b=sFOj4k8ejreOr3dl3PkG8KMn/gpvA2dS0
 OuhINH8ZMjXGBd4cd3ewzuqPesJ7smFZwqIN3gezqilJ6ooobuXVaf91/hV1BZ3M
 3gIxSR1Tg+s+22XBOxwtUVQEprJE9bDjiTHbxMUft8PGwWTjeSbtQV0CwfBZoFy1
 5aR0S4GK+VDs8NMXSc+L5bd6dJVOZq0oAQ5ZKWQ46KosIsUif7ZLoef1rEQYh/3d
 +y2voSvDI3jlcOxHkeVSnyK+0tNZ/Iym4q2XHbVFXxxOsCLQlxn3ITRUjTLBF+xN
 OdHDb+na6Xm1zAsFXhEyhgVG3Bex89IvW1F7eJwSnOD1Sibjd57Zw==
X-ME-Sender: <xms:Wy28XWu8UQGrzsQ9Bo-I6t5HmR_jufzWsoth1HMFybdscrViw7tpww>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedruddtjedggeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhn
 ohdrthgvtghhqeenucfkphepledtrdekledrieekrdejieenucfrrghrrghmpehmrghilh
 hfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthhenucevlhhushhtvghrufhiiigv
 pedt
X-ME-Proxy: <xmx:Wy28Xdz_shjnmvi2yeR0RKbngKZUOzgqJ8IPTmWPiQtfANb3MjHK9Q>
 <xmx:Wy28XQf2uRlTMwpbSXNpuvTU4k-9ISIkctBA3pHw10o6tDkRor-HOw>
 <xmx:Wy28XeIg2WCaQnpfC5bN28SXZlhngCVNbCCDqqgdb8G17YFAN14xqA>
 <xmx:XC28XYzmLDrnwPEtJs1YtluG1Tk93dfezKlaKXKi77vk8plBwEIsGA>
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7C45380064;
 Fri,  1 Nov 2019 09:04:27 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>,
	Maxime Ripard <mripard@kernel.org>
Subject: [PATCH] arm64: dts: allwinner: h6: Remove useless reset name
Date: Fri,  1 Nov 2019 12:56:29 +0100
Message-Id: <20191101115629.253930-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_060433_876171_A069C0B6 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
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
Cc: Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The TCON TOP node in the H6 DTSI has a reset name that isn't described in
the binding. Remove it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index 5d7ab540b950..67c887855c29 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -628,7 +628,6 @@
 				      "tcon-tv0";
 			clock-output-names = "tcon-top-tv0";
 			resets = <&ccu RST_BUS_TCON_TOP>;
-			reset-names = "rst";
 			#clock-cells = <1>;
 
 			ports {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

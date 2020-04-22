Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B732F1B35F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 06:11:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oOCQqgczppydP89TJ5dfUtuXsULZrJBF19r16VoFO2Y=; b=gM9gtHnK1LfIar
	SR4gfmxX41K6alB6LwXVvRJWVa9LRpNXNRYCJ5SCmWD+sG9LvVmvUTt68cERAExY/E3PFp+/k6bOn
	U2wCi8R61iGMn1WsLgMVCYOFGGSy4qeOKyiUWLZ7h71mtCPNE0DFBBaz6/piantW/lCyPTZpcC6O4
	wv+l+OzzxuBjRLkkRqqSlCu0WYvUhpZoFbLH/0VFZGk+K4lndUVfXbUQawVmSK8msBRLecWULqOft
	XyVXltLbFqjkLIlJt7BJ+Zt/aEZn5gbCHW+Sm9yQxRYwPHw+oTp7euSqwt7rZHe33krpKS7ZORpU/
	K0L3iCK/aSozCbh3F6ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR6jR-0000Wq-Ko; Wed, 22 Apr 2020 04:11:29 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR6jH-0000WC-4o
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 04:11:20 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 4CB7D5C011D;
 Wed, 22 Apr 2020 00:11:18 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Wed, 22 Apr 2020 00:11:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=F1dj2Jw3YDEgFV7WpVHDIIKM8X
 ojVODpM5ZQVusEuJM=; b=MXYvLLEwShFV7Dm5T/etH8ddYFj7Rzkh6OZFhNMgCq
 LVC7aVazTJhWfaIWGrgE4yyMA+cZEH9GO5xiBQmVYcBGbJNONh37rwp7edlihMnV
 AGnZaycj22wMsimVKiNBN2GJQp/cVOy0FR/p2XFg9IIzMytq3wPvTW9HMu/6yLVd
 0yI7b6DDnSjyoe/NyegEOpLaCE4PvFAHfqyD2yGtY4odM6dYmcl2bX2xXwc7v7IC
 9p03Ypw+dKZ3Wiwg274J+je4nZ16f5Mh69iJE0aDjT3wSJ0YCBlk2KZO/XVT8ND3
 /NySffPG2VvjNa925/VSnokPHri0gkofc3pdAWb/IhzQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=F1dj2Jw3YDEgFV7Wp
 VHDIIKM8XojVODpM5ZQVusEuJM=; b=I6/lLaf6mN8ViDw9W6zmLNRPTP2Q7dBzW
 O6vE0TjGDKeXifaidQVvkcn/gNr7l72X7Cp2Q2UDGScoLbfeqAMdaJz0ys+5VIMM
 NA2jL0SKpSJZM4UDH9IMdsshomiOt3+MzsdNDOZnBxjmvaENaMZrE8+Sl7enDaJi
 Js+gYZ3N7x0A7jtfRL45077iLACz+ZKOpE4s8oH6SXwcIKntcR8xpNB0KSVbwgBy
 pdVW228l5Hn7hxjy8hW3yBqBYu84bYws9Rpjm6/+1IY7LJeo3+NcXQIK8lmcLtiQ
 yiP8sw8qdmprHy8I4mCM5T7vcNR0MTdSdWl5i/s4ZSOgBYtCDxgqw==
X-ME-Sender: <xms:5cOfXjAJUL0XNAkUOsRMfHSSZYhZmCVEDnDBIMCoZJtvm6MzklxdDA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrgeeigdejlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghlucfj
 ohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppeejtd
 drudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhep
 mhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:5cOfXl32P132cVkl3p8G-YSPyd-dNlCGnZEITP4g0bN8QSoRbpxCFg>
 <xmx:5cOfXhV9Tv7UVJ6_TU_WEwAEdP5It6mnWG5rTjxSu_cAKR6gjVenmg>
 <xmx:5cOfXnm_uym1zKcNPPvObexA2m2AMC2QiS3txZa94y2myED_qTCbgA>
 <xmx:5sOfXiYwIMKOhNpq-bw3eff8wf1T5dUZUrDfKhLjgow9PquBK5NoJw>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4FE5A3065CBF;
 Wed, 22 Apr 2020 00:11:17 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH] arm64: dts: allwinner: a64: Disable SPDIF by default
Date: Tue, 21 Apr 2020 23:15:02 -0500
Message-Id: <20200422041502.7497-1-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_211119_322141_7911AB84 
X-CRM114-Status: UNSURE (   7.53  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Samuel Holland <samuel@sholland.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As of v5.7-rc2, Linux now prints the following message at boot:

  [   33.848525] platform sound_spdif: deferred probe pending

This is because &sound_spdif is waiting on its DAI link component
&spdif to probe, but &spdif is disabled in the DTS. Disable the
audio card as well to match.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 6f8c30d89b9b..6c233ff031c6 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -169,6 +169,7 @@ link0_codec: codec {
 	sound_spdif {
 		compatible = "simple-audio-card";
 		simple-audio-card,name = "On-board SPDIF";
+		status = "disabled";
 
 		simple-audio-card,cpu {
 			sound-dai = <&spdif>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

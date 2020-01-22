Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F842145482
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 13:44:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xn1iWsHU+oSBoW1kt2tmvwnUeLuPBJ8XoFtlJgn9A/Q=; b=Iv3z+U68Cap0Mm
	l0SisUOkDFKOwgrY1qkuHDST457Ez3Rx6F4Knu51kNqKmufzrfR5zhqda06DTXmv3py0r6uq/WCi/
	6nW8DT7lM73x1lLv91wsLvIGkZGufrJW5s/LHk0tA/QpYxnaBLuh5PRQeTd4k1JRccxrgXAChD7yz
	q5uYgObdUju0W/AcYN8qHHtBpWxPY+nnJlwee315NZf5I0ktSh4sCH7Uzib3Av8pMfWRs1Lr9NL70
	jEXffl0+NrmdcM1+w+CDu6m2YQFfPHAmzOp0wFtPKIMSukZf5oMjD7DeYTT4jYffopWcMPk+QyMxN
	EMzNyfaLSWCKsYA6C5cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuFN4-0007r0-Rw; Wed, 22 Jan 2020 12:44:34 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuFMv-0007ow-MY
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 12:44:27 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id EAE79220A7;
 Wed, 22 Jan 2020 07:44:18 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Wed, 22 Jan 2020 07:44:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=fmwpTx6jswx4kvnYxowEmIfQd9
 MqmpuQXCivarwrIOU=; b=TK7Swu1g57HGuOJ3XeY2yFLXpgnYBZSP8L53rhcVrg
 v/Ui/A1cFNzNxnH+I3MF9KUzhHsbZc64n8xpEtcSatOOG1NK5S4SHs+5yVHiHTOa
 F4SKyIcnYvauhdljL+4zTV4T3LiEH1seGKgfuHVYOys/kxNBkNepWV0KsXiMwn7G
 ZX4w9+fm9A61wtz1sIkRXrqEpFwhQKj9Q/99Z+/49Ym2FOEGao03yqYtEUPfY4ZF
 Wx9YBF+cY7d+iKWHwuQDXh4YhbH9HghS1tQbLq7D4fi6u8XRFJpCV7ye3qMW/7vw
 74BHLtBLNleYLbZPq6UC2+7e4exbXbEohCN6UabQeV2w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=fmwpTx6jswx4kvnYx
 owEmIfQd9MqmpuQXCivarwrIOU=; b=hyJOoqRPpLaP2EQw/Wa6oCBAgXsBy6wNW
 AfTGz+/LRs1wMaIaSJh9HdV8ELAomAvC9UNBAcbmOPLlNL3NFNNx8TVniwG8kuRs
 zXmu+GUX0Y9p4xHty4l10Y0aJVeJXDvO+hW+aK52GMMMIm+h/l99O7VLk10ju3WY
 2DsuMpLG66BNW4dW7pyPS+X1UjfL3hE2t4yi/iPJTuuDzyVAtz5NTVgm7eXj3+JJ
 MI6X1+ilDPSPaebNvE0wYd5hHq+uUnSYXr0CvhKQjLla8YWKEy/KnqOYMUY16n6C
 44OZVBKcH/He80XTbnIdnR139RfsJ340TLYKQ1e433QVbuNOcCZjg==
X-ME-Sender: <xms:oUMoXnk0YthgklaU7_OPAPfenBFx7NYnr_Gn09AUViprpBD422JEPQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrvddtgdegtdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucft
 ihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrdekle
 drieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:oUMoXuqM0jifKtzLNqzFtQCXn3h-iOJJUk4cvaerv1d-AkTac0vDDQ>
 <xmx:oUMoXr2LFRwO54xoDD0Hn3_kPK_kqGGWXhyLEzO0BVNzsr38Z7mLjQ>
 <xmx:oUMoXpaqZonSrySMbDJCYc7duUBG_ypqIHu8ww_WE7W4Tx5PxEm7Mw>
 <xmx:okMoXuN6-QcMNjtAVak5BFSV0pOCphbcsEtl2UDMmic5ClCXkx8Brg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 54C0D3280062;
 Wed, 22 Jan 2020 07:44:17 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Joerg Roedel <joro@8bytes.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH 0/3] iommu: Add Allwinner H6 IOMMU driver
Date: Wed, 22 Jan 2020 13:44:06 +0100
Message-Id: <cover.b2a9e1507135d81e726fcbb65137665a7f0ab74f.1579696927.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_044425_940028_7AB7157F 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, iommu@lists.linux-foundation.org,
 Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Here's a series adding support for the IOMMU introduced in the Allwinner
H6. The driver from Allwinner hints at more SoCs using it in the future
(with more masters), so we can bet on that IOMMU becoming pretty much
standard in new SoCs from Allwinner.

One thing I wasn't really sure about was how to expose the statistics
reported by the IOMMU PMU (TLB hit rates, latencies, and so on). The
Allwinner driver exposes them through custom sysfs files, while they would
be best represented through perf I guess? Anyway, I'm planning to support
them later on.

Let me know what you think,
Maxime

Maxime Ripard (3):
  dt-bindings: iommu: Add Allwinner H6 IOMMU bindings
  iommu: Add Allwinner H6 IOMMU driver
  arm64: dts: allwinner: h6: Add IOMMU

 Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml |   61 ++++-
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi                           |   11 +-
 drivers/iommu/Kconfig                                                  |   10 +-
 drivers/iommu/Makefile                                                 |    1 +-
 drivers/iommu/sun50i-iommu.c                                           | 1126 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 5 files changed, 1209 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml
 create mode 100644 drivers/iommu/sun50i-iommu.c

base-commit: e42617b825f8073569da76dc4510bfa019b1c35a
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

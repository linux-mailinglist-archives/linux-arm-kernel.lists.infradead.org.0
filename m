Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 772FF83E7A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 02:38:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yuMxvCu7OFT5BLbv5iCpgbUS9nnW/tSnlTf0qXu8Ofo=; b=O1NuDSGnrQDq3S
	gC9NTW3qdQNdCXHHd1DFFla+XBTxm/kBu3AkYeITs8upZ8p2up1CV40SNyeoZ9y351uSlJGYhOgh2
	QkdldvQNC8joORolcKieuPU16ONi9cGQe6Cf6bGqMRCU93h9m9LONkklmJ8bI86fqW1p6qT54gvgG
	1tRDm0as8Y6QbabyLRDclFAvIkKfHFutimoXirvU5c7LJyqqEqXNB+JlnVUfpM3ak47pBGz/UE1Aq
	zUQ62q0HeVI4mdSiwH/4imgzuSYmv7IEIVnKkXiKuBe6LjVe79my4jdZEZXaPQWAB5YkbTujBA9eR
	mFm81L1GVXKMyU5flT3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv9y3-0000hv-QL; Wed, 07 Aug 2019 00:38:16 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv9xo-0000hJ-Fm
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 00:38:01 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 49ECD2556;
 Tue,  6 Aug 2019 20:37:59 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 06 Aug 2019 20:37:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=tekQgJr6qSz/+W1IqdMF+U0YgF
 ytbV3UNOGCshAhIFA=; b=gA9Vvp238GgD8WvNh25Nh2WviEvR1tSf9vt8SHsPqf
 mvc978ohwcSe1/MCsLGoHMOYn2gAqnXB3SgsoeiCJqQKO/GblrLvWG+sM5pJslZI
 MshuJhEUP7oYrPiB9HPUhIiD9xPnmaIAiwbvboQyLxKnDzbuhgQexTha5UG85azV
 X4ZHqu2+r6qFY+c7B7AcouV92CqeoP59lssxb3sxscKf4Sb6nnc3vygKyRbV25W6
 k6ITIO0w2LLI1PGALHlJa57Iwd1VIIDROLN6CnyDGV5dIBtPvd3Kjf0R1ZSoMZE/
 akrPl0wt8nWSDLCqERfBeDMP6GoZCBPtCoyVmtn5d3cQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=tekQgJr6qSz/+W1Iq
 dMF+U0YgFytbV3UNOGCshAhIFA=; b=aI2yeZNL3PoeqQMek0jjjEKn9QrhPGipC
 HleCz3UDIMsddxW6TVI6nXUOxrwf76aG1/vp4fu9chL1PS7ICkx9CugGadgFPdFt
 pPNkkg+asTnpeHEEKkNXU4D/F+bfd6LPaIUexwThyoVsGep9DC9q7XSDXjful/Qx
 /TJCffMba9MYviuS/g8EWHYGao2eRaIBOAFq8iZNaFrn0k3kaJ7Qk3P1bCpmBB4K
 Vd2OnlG+/ZL3f1euoFNfyVIBLRgLZhwckN6qeb3lum599tj29KZtMo99n0GOn62L
 VyPrkrsA0em3egkPkqjhJbwpND61ae/u4M6OTTQCWh7pFpa08ypfg==
X-ME-Sender: <xms:ZR1KXQIykwBpiZFpp4cttIbn79GQw1b-2q7WCIXxw6Oa5rRVaEuv7A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudduuddgfeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegrjhdr
 ihgurdgruheqnecuffhomhgrihhnpehoiihlrggsshdrohhrghenucfkphepvddtvddrke
 durddukedrfedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhi
 ugdrrghunecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:ZR1KXWKOdCyo2cKMurfo1BBUwnPDZIXIxCyuKxTOcesAPbUjO1Kaxg>
 <xmx:ZR1KXbgUpXe76vTrxh_1h5dbZMx9VqLP3bzJW-uM7dhudkxE9UB2Hg>
 <xmx:ZR1KXQMz-a2FKn5GOJsmH_6fPUScfTeYNpoqHWal1kHpTFdtMJlKlQ>
 <xmx:Zx1KXUxsN6qDKRIvMqZEyrfQloS3h44v7IJDO7k_MgmKxaeMMuBCuA>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 15E4F38008E;
 Tue,  6 Aug 2019 20:37:53 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-mmc@vger.kernel.org
Subject: [PATCH v5 0/2] mmc: Add support for the ASPEED SD controller
Date: Wed,  7 Aug 2019 10:06:27 +0930
Message-Id: <20190807003629.2974-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_173800_599201_65A96048 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 ryanchen.aspeed@gmail.com, adrian.hunter@intel.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

v5 of the ASPEED SDHCI patches fixes an error-path cleanup issue pointed out by
Adrian.

v4 can be found here:

http://patchwork.ozlabs.org/cover/1141949/

Please review!

Andrew

Andrew Jeffery (2):
  dt-bindings: mmc: Document Aspeed SD controller
  mmc: Add support for the ASPEED SD controller

 .../devicetree/bindings/mmc/aspeed,sdhci.yaml | 105 ++++++
 drivers/mmc/host/Kconfig                      |  12 +
 drivers/mmc/host/Makefile                     |   1 +
 drivers/mmc/host/sdhci-of-aspeed.c            | 332 ++++++++++++++++++
 4 files changed, 450 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
 create mode 100644 drivers/mmc/host/sdhci-of-aspeed.c

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

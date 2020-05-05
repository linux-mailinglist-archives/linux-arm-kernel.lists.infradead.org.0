Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA061C52AC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 12:10:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Mpxvqif6RsqufRdzbUhQBW8jp6umlP6Ib/HnxE2L0vo=; b=nNTH8hJCZDWkif
	htBU8w4R5C0w5Hr6uMbAh/+j4ofnHVUHWgss7gTYNKqtU0rYD/PBWEu2BeHiiEykyBWpHs4qbIrsS
	r4bpVhnqPXsITIsr8Ppk4VJHOx51uEMpnV/UCk3NPhUo/dZAe7hL5NkKktqUVKOOzU20X61dw+Qdo
	NBZkhPNN0Spjn0TkHGUdYXWaeu9KkRJ1H8J0MrpPoEEQAB/AyhbPwlpXzZ1k3L7e95zS+tpYErFOn
	ccyh7nkEsdpEYsPH53fELRPPZPHKziafG2Jkxj0VQS77yn3iu4a7A34yo3NpMCrGV8Lgd7Or4e7Jo
	OHD1LppPARPfqQ/zowFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVuXF-0005pf-MY; Tue, 05 May 2020 10:10:45 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVuWF-0002mw-KM
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 10:09:46 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 403235C00F0;
 Tue,  5 May 2020 06:09:40 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 05 May 2020 06:09:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=sqWvtyC3J90S0Z1L+sUBcl2FyI
 lVrX1gjpJJsojN7CU=; b=ZZGh5MnHyAsBjrATihvWyiXuatnkx9Q902qebeCMWj
 bPagP6ViNmSSEpjVyDl4dqe9wCCuhJX77M4GrtfLVj3CSYSquSI/wu09DNq2l+6Y
 EW1NdnFMwv4L5XO1RNdl08/Ydrb+CLnWqb4vTwUP1oGK6Crn5a0DWrnBI5d7LwBi
 VQ2vce+MaqACpRlhufoX9adMXRdbP897DldFXk9K4cO/yH194TkTU+XR67RXiMi9
 gh7dlsK66G7kkhM+zoraTEjvqJ0QCAohGuZhjlOFusQCGOgeabEvKszyDk3lshNc
 Vz3YOPw3gjEbNoAj4yxbHBUhyKZRv294A5cK4m/Fh/hA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=sqWvtyC3J90S0Z1L+
 sUBcl2FyIlVrX1gjpJJsojN7CU=; b=pubwQPmFoNTcmqtrJbtlTb7F3nRAPi96D
 7JPhrrJ2iRuXb0600Hu63p20VWjR9kVZDoZkwJYC26EqRfk4X7982gXZw0xqaT7N
 tTo+tnndUcEWwpZVvaZmSbP3IxdXlhC6YjzMf6I8NAnoRZuMHsQBuLbL9dEYWzcs
 /beCe4LYII50pyJfiGWqsNf3SQMq2zj2iG2pYiObKMJBKt5+2buiUckSajIPR69o
 P2NZWFdvDm6eG/Wep9rkDDZiT6flA2Gu50i4a0HnMrFFWUfrAgZ1dzG7jE+Onv+J
 rj4JwM/H0llDbFBTO6imhAdWFTwjW3hKAEgXjK6iKSZtWgLBWlnag==
X-ME-Sender: <xms:YjuxXjqxVM0XsIc9M9cv_wPdSK4IhFiQKd47o-It_yUvaDKubKK47Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrjeeigddvfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucft
 ihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtthgvrh
 hnpeejffehuddvvddvlefhgeelleffgfeijedvhefgieejtdeiueetjeetfeeukeejgeen
 ucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrh
 grmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:YjuxXsb2pIVHiw2esUC5gL_zyfsgb-PMys3ZuBhKST-bmwlrGldw5w>
 <xmx:YjuxXkzt-qV_SE8upgRfbQowVyaWF1SFBJd3MHSxtOR8ByU7pynpkA>
 <xmx:YjuxXi9G-5s7Hb6X2JTLljlM3bBSRSo_0QpKR6n36YXBtTXTNzHURw>
 <xmx:ZDuxXmP_pEJyNXtprJ13xRM1SmcjOOAqq9RLfgj0-9Is_LdsogKshg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5CB84328005D;
 Tue,  5 May 2020 06:09:38 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Joerg Roedel <joro@8bytes.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v3 0/5] iommu: Add Allwinner H6 IOMMU driver
Date: Tue,  5 May 2020 12:09:29 +0200
Message-Id: <cover.70f96f9afd2e04161ebece593ae6cd7e17eca41b.1588673353.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_030944_132289_FE9CAA59 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Changes from v2:
  - Rebased on 5.7
  - Add dt bindings patch
  - Allow the identity domain to be allocated
  - Add an unlikely to the check on whether a PTE already exists in map
  - Remove locking and adjust the PT installation to use an atomic
    operation instead
  - Switch to iotlb_sync / flush_iotlb_all callback instead of flushing by
    ourselves.

Changes from v1:
  - Add a patch to configure the IOMMU on the virtual DRM device
  - Rework the domain allocation / freeing
  - Remove the runtime_pm handling to power up the device and rely on
    refcounting
  - use map gfp argument for kmem cache allocation
  - Removed unused macros
  - Switched from BIT(0) to 1 for the page table entry valid flag to make
    it more obvious that it's over multiple bits.
  - Switch to module_initcall
  - Make accesses to the fwspec more consistant
  - Removed dev_info logs
  - Reworked invalidation / flushing
  - Allow for compilation with COMPILE_TEST

Maxime Ripard (5):
  dt-bindings: iommu: Add Allwinner H6 IOMMU bindings
  dt-bindings: display: sun8i-mixer: Allow for an iommu property
  iommu: Add Allwinner H6 IOMMU driver
  arm64: dts: allwinner: h6: Add IOMMU
  drm/sun4i: mixer: Call of_dma_configure if there's an IOMMU

 Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml |    3 +-
 Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml        |   61 ++++-
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi                                  |   10 +-
 drivers/gpu/drm/sun4i/sun8i_mixer.c                                           |   13 +-
 drivers/iommu/Kconfig                                                         |    9 +-
 drivers/iommu/Makefile                                                        |    1 +-
 drivers/iommu/sun50i-iommu.c                                                  | 1065 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 7 files changed, 1162 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml
 create mode 100644 drivers/iommu/sun50i-iommu.c

base-commit: 8f3d9f354286745c751374f5f1fcafee6b3f3136
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

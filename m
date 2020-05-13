Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7FA1D1713
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:07:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JxdFZSsWQlel8pSdnWeJU5gxE4+T1YAukNoGWYiB4E4=; b=D8D84UNXJbXexd
	m7RDv/JkBtKVOWtkEyZpnJaPiA8aZjOD3iSLmf0rpZiMosgru3EgxcllIXRYtv2mCxUOM/v9JfhT0
	KrSf9Qq3VIgHkt7a3E0yv4GIthqssz6PyM7uu8ACQLiKHkeZjxJE3rIJNwZzbIlMqTDZjJ7i+mcND
	7VGyBnI0+jPipSlqdYIllUSjhECVoJvuGuH5DpjRfL9QJkzB0dRLFJO59IjjOmyCiLof6XV93UrFq
	07geFjyEAH5akGyfK6cQ9mXMW/P6UCsMBgQJmmzf7+tZklm+7Adf9hwb6MdsejcQ12qHzrprYt51h
	gu1+T42sDOYUG5A7ZZIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYs30-0004vv-O0; Wed, 13 May 2020 14:07:46 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYs2j-0004vX-28
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:07:30 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 354205C01A4;
 Wed, 13 May 2020 10:07:28 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 13 May 2020 10:07:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=lKdeG/SS5K17qzibBRTuO63YA/
 4VCH6EVTjUZm7Nekk=; b=oQs+HaW0z7SPEUSTpSgGWKSx49idmw59YLaFuTT2Uq
 876Wox/otMTgoBMIUjfDxbSWEHtp8IAVhp2XZBnJSugDsWXM4V57b63xbxRhkfPD
 j90/QZKBJWQ3uub0n7tnmQ2Xn0bll59FnbwLVkXsPrpHKLCr4ZU/Q6FGm8ctajZc
 NbKeaKj1HNgrhFG2uveEtD++WJNEMiRRzJlQNZFtOIp6KFSQ076qhXkvfpRKd76k
 3GNcx9TzCYtwU0qV01ijTzfzXWqLwawsta9RoF3w7LrU9rKRhxmbQcdIYCMhaVkd
 qm5W0VAs7yN4c9VYjBmjyAKsdjD2ZsB9DRW14UcaXGdw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=lKdeG/SS5K17qzibB
 RTuO63YA/4VCH6EVTjUZm7Nekk=; b=JoHC7/tmMCJpkMUFyme90FikR6GScx/v2
 BtZACc47bi3oS+lp8b9e9UFpDlfK3o1l9uaf0QqVR8yX7BOed65Qdkb6WIL59CBM
 8LOCN5WFJ6ssYiqfgA2vx9IePdfEUvoM4jD04byqpcqKs6L3bRhg77JvKChNQKXI
 F2T14ot9jzxCkUFGMU12SKtvacAwmu5nK/aBxlJba20gbY131dXF1VHH9Oc0QxqN
 OWJTcd5lJQeq1HYQEm24RR2qvFKXkwZVymykOP94jT2m0GlQZWP2l2oCybxwhgQO
 FLy+4fzW8KfaBd4Jn2O5t6Ohgq7bv3b6O5LvpPfZxu1PfotPdocYw==
X-ME-Sender: <xms:H_-7XqgUcAvKaT0Q8C2fawAX_l80x6X8r8X_LmFnuwtr_39RSZo6oA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrleeggdejvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucft
 ihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtthgvrh
 hnpeejffehuddvvddvlefhgeelleffgfeijedvhefgieejtdeiueetjeetfeeukeejgeen
 ucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrh
 grmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:H_-7XrDXHZSboH3oszh-T19XWEjPYwYMHUuTs7jcPczYqwlnfWonXA>
 <xmx:H_-7XiFOHU7LhGZZWuxdh1W1QFv8-uPmDyxtRe62YGJ5Bb_hMYS3fA>
 <xmx:H_-7XjRW-3__U6yI1vJ-4pyF0vJXDacXO5GwRIc5N38DddK3gf8x3g>
 <xmx:IP-7XunzK8-NcvXjT1qiwP1OsIYUdfKWMJSpg9e58Yp05IHy-lsWrg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id B2FA83280059;
 Wed, 13 May 2020 10:07:26 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Joerg Roedel <joro@8bytes.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v4 0/5] iommu: Add Allwinner H6 IOMMU driver
Date: Wed, 13 May 2020 16:07:19 +0200
Message-Id: <cover.b27dedd61e008ffcf55a028ccddda3bb4d21dfc8.1589378833.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_070729_238082_081EC1AA 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.29 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Patches 1 and 3 should go through the IOMMU tree, 2 and 5 through drm-misc
and 4 through arm-soc.

Let me know what you think,
Maxime

Changes from v3:
  - Rebased on next
  - Removed PTW flush on map / unmap
  - Added Rob's reviewed-by

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
 drivers/iommu/sun50i-iommu.c                                                  | 1027 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 7 files changed, 1124 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml
 create mode 100644 drivers/iommu/sun50i-iommu.c

base-commit: e098d7762d602be640c53565ceca342f81e55ad2
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

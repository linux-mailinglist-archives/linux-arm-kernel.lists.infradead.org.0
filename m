Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A77659EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 17:04:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XIHjVjsl9FlgE9G4J6H5qu49EBX2MiRhNdIiMu84YoI=; b=K26OcEJhtyFODS
	qZxdUMdropL1rfpvNXb4HVpO9lTuQhD41I3OSd7whS7ZS4ED6+XHcjwdhTSLbpRNcEobNDqSCXaG7
	0LtS9YyWj9Vs84MNcpiyfwkmFoT0IhUmDsJ3UCLyOTJlSeELUWRnYl6awmSSJ5T4cJonlBrzCOTgQ
	+OvEfdCRd4ZBZJwWCEtZssAjB+FwluBugjbYaimUvFmU/aARDOWd7jA5ADKRSnLVsR2fCb7UCE2iW
	0FkE/s7hMLxmMNny1nczvK+4huvyV0B9s6k1NBfTPVwclZnKWtyLxpilJgkQUxU3CvIn63KWomwiH
	eBkJ/97OP753sg7spJRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlacQ-0004Nz-Q5; Thu, 11 Jul 2019 15:04:22 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlac3-0004HU-44
 for linux-arm-kernel@bombadil.infradead.org; Thu, 11 Jul 2019 15:03:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z+rdqGtrDP2gNH3YuGneigtYCKwONXwI1ZywEJuPT2Q=; b=C/kX/eoZlwmvlUn1YwOTcKFKhK
 z2ztisgabCR/vVP41mBx54R5e/FWPtOPPA7Wf7SPo9w+BpjQqBwuaHrn6cRnJQVAf0NqPnWAjLODQ
 8BicirH0ItUi7shm6L6P698PEHI2VrUzBVuP6Xzgbds12jNWiOf8E6oPC7noKQxR9X5r3Mq60XoJQ
 7/ebL4yCY/Kn4Kfvd2nUQ0BNCNj+i5A3xOsPkuEuUQfw2Y5XX8ZZaKIzVeOxzSYIdhQg3dbYf5fv1
 5+xKMyfRkXcGWj2Q3bUd6LZM5ucpM+18tNnbVBOSRuVKaNEeCKPO3Bw1YnwG7fZnxuoMxaBq5wPBC
 sdMyOM6g==;
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlac0-0004dM-8i
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 15:03:57 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id B75B84000B;
 Thu, 11 Jul 2019 15:03:06 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org
Subject: [PATCH v2 0/4]  Add system mmu support for Armada-806
Date: Thu, 11 Jul 2019 17:02:38 +0200
Message-Id: <20190711150242.25290-1-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Andrew Lunn <andrew@lunn.ch>, Antoine Tenart <antoine.tenart@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Will Deacon <will.deacon@arm.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>, Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?UTF-8?q?Miqu=C3=A8l=20Raynal?= <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

last year a first version of this series was submitted to add support
for IOMMU for AP806, including workaround for accessing ARM SMMU 64bit
registers[1].

For the record, AP-806 can't access SMMU registers with 64bit width,
this patches split the readq/writeq for 32bit access, due to erratanum
#582743.

Based on the feedback from Robin Murphy, I also add code ensuring that
we won't try to use AArch64 format with 32 bits acces.

It was also discussed to not use compatible but propertu to support
this workaround. I agree to make this change if needed, but for now I
would like to have a feedback on the current code to know if it is
acceptable if there is still potential issue.

The series was tested on a vanilla v5.1 kernel, and without the
series, an USB stick was not detected under QEMU whereas with this
series it worked as expected.

Greogry

[1]: https://lkml.org/lkml/2018/10/15/373

Gregory CLEMENT (1):
  arm64: dts: marvell: armada-ap806: add smmu support

Hanna Hawa (3):
  iommu/arm-smmu: Introduce wrapper for writeq/readq
  iommu/arm-smmu: Workaround for Marvell Armada-AP806 SoC erratum
    #582743
  dt-bindings: iommu/arm,smmu: add compatible string for Marvell

 Documentation/arm64/silicon-errata.txt        |  2 +
 .../devicetree/bindings/iommu/arm,smmu.txt    |  1 +
 arch/arm64/boot/dts/marvell/armada-ap806.dtsi | 17 +++++
 drivers/iommu/arm-smmu.c                      | 74 ++++++++++++++++---
 4 files changed, 83 insertions(+), 11 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

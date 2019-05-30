Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C96712FD9B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 16:22:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/d9mBVScVG24aQxAXZA5s1NloHmADuGmrSfZPfm0phM=; b=i7/
	tzVAGpJaAiHsGJ15wHNPaqs4zKWqAuoz/0SOIG/o+pdWluwLsHiYJXV66pQOX2lXvjOht1IvOa30F
	XtQrbTgyW+BC8HGAP2g5lxELQZMibjhEwzxKQ6srueB53O1804F+pGOz/JBF8FctPsQ/glSumon2B
	BaeSlAo6OE1VipTf2MSzq1pcKyGAKEFc0Gx6+lvwdqi+bNQyHXxThnnY3EGHwiPh88G6vJTG+kLao
	RRymiqV6QTEt3QlxVxchj7wGy2AcVFzfdzaZFqRBzHCfSPHwB3jDZyLuzzSMh/DlCL9niQySx+3pi
	F7oSrQo35ATpEJ9sIPWpb9cK3NIDC1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWLx3-0007rs-Af; Thu, 30 May 2019 14:22:41 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWLuP-0003th-FF
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 14:19:59 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 85AE61A064E;
 Thu, 30 May 2019 16:19:53 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 790631A0179;
 Thu, 30 May 2019 16:19:53 +0200 (CEST)
Received: from fsr-ub1864-101.ea.freescale.net
 (fsr-ub1864-101.ea.freescale.net [10.171.82.13])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id E3D262026B;
 Thu, 30 May 2019 16:19:52 +0200 (CEST)
From: laurentiu.tudor@nxp.com
To: netdev@vger.kernel.org, madalin.bucur@nxp.com, roy.pledge@nxp.com,
 camelia.groza@nxp.com, leoyang.li@nxp.com
Subject: [PATCH v3 0/6] Prerequisites for NXP LS104xA SMMU enablement
Date: Thu, 30 May 2019 17:19:45 +0300
Message-Id: <20190530141951.6704-1-laurentiu.tudor@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_071957_736468_1EF3B1B6 
X-CRM114-Status: UNSURE (   7.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, Joakim.Tjernlund@infinera.com,
 iommu@lists.linux-foundation.org, linuxppc-dev@lists.ozlabs.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Laurentiu Tudor <laurentiu.tudor@nxp.com>

This patch series contains several fixes in preparation for SMMU
support on NXP LS1043A and LS1046A chips. Once these get picked up,
I'll submit the actual SMMU enablement patches consisting in the
required device tree changes.

This patch series contains only part of the previously submitted one,
(including also the device tree changes) available here:

 https://patchwork.kernel.org/cover/10634443/

There are a couple of changes/fixes since then:
 - for consistency, renamed mmu node to smmu
 - new patch page aligning the sizes of the qbman reserved memory
 - rebased on 5.1.0-rc2

Depends on this pull request:

 http://lists.infradead.org/pipermail/linux-arm-kernel/2019-May/653554.html

Changes in v3:
 - cache iommu domain in driver's private data
 - rebased on v5.2.0-rc2
 - rework to get rid of #ifdef spaghetti (David)

Changes in v2:
 - dropped patches dealing with mapping reserved memory in iommu
 - changed logic for qman portal probe status (Leo)
 - moved "#ifdef CONFIG_PAMU" in header file (Leo)
 - rebased on v5.1.0-rc5

Laurentiu Tudor (6):
  fsl/fman: don't touch liodn base regs reserved on non-PAMU SoCs
  fsl/fman: add API to get the device behind a fman port
  dpaa_eth: defer probing after qbman
  dpaa_eth: base dma mappings on the fman rx port
  dpaa_eth: fix iova handling for contiguous frames
  dpaa_eth: fix iova handling for sg frames

 .../net/ethernet/freescale/dpaa/dpaa_eth.c    | 131 ++++++++++++------
 .../net/ethernet/freescale/dpaa/dpaa_eth.h    |   2 +
 drivers/net/ethernet/freescale/fman/fman.c    |   6 +-
 .../net/ethernet/freescale/fman/fman_port.c   |  14 ++
 .../net/ethernet/freescale/fman/fman_port.h   |   2 +
 5 files changed, 108 insertions(+), 47 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

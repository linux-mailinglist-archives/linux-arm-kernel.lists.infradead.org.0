Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B510A92655
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 16:17:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y+UyuqptbLg4b5ESEK4+RMiAf9H1ObF605zjhQKuaLI=; b=pGIVY1lFSkeICA
	BGL5+0bN4846+loKnIw6jvcOo34vgT7SqWYik+e53tS20OMSLOO455tcZPV1pv0fcOuqyLJmN3JCx
	3DXfX7JCFFJTfvqtKSEpiJKcfVH15P7NpgViLASg0cBw5Di79iPCsq50IQlEnXYjgDO5K1ER2vAmA
	g84bR3iwAMeTWbEaxnfMHKiWqCbcq0mxQdkjj0pPt4eo8j24uwffOEEw5jhoNdlWMHHG/4pE/lOBc
	u0LYFd6SsnC9Y6P4vJUu4V71kfF23MxiESqgzWMk1QDrQsUxaANE6fJ/tW/86pk1KuBAG3vp73qRU
	neuHzMirV1UuNifzeH6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hziTL-0004JB-Ef; Mon, 19 Aug 2019 14:17:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hziT4-0004Co-IJ
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 14:17:08 +0000
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com
 [70.114.128.244])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9CBC6206BB;
 Mon, 19 Aug 2019 14:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566224226;
 bh=mPy5kEkLZQBhxEYoTw6Su++3T5FhQmPawdvmqZzoXWI=;
 h=From:To:Cc:Subject:Date:From;
 b=tPMYFKQ+rcY7BO0k61082YjtkVn2CDlTC8oKuABQfHr5sqWYaiCMg19OrqUzj46lH
 wVeJUsrCFlEC5hDMgPnXtlKH9U4LXlDS2D3oTsIOZ1G4t7GuIJ550m2HUnrj8MKLer
 tNDBeA/Py1pDczr0CAvBzIKdOXCezM+qy+br3+nw=
From: Dinh Nguyen <dinguyen@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL 1/2] SoCFPGA DTS updates for v5.4
Date: Mon, 19 Aug 2019 09:16:58 -0500
Message-Id: <20190819141659.26414-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_071706_627677_EBBCD7A4 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: dinguyen@kernel.org, soc@kernel.org, arm@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd, Kevin, and Olof:

Please pull in these SoCFPGA DTS updates for v5.4.

Thanks,
Dinh

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/dinguyen/linux.git tags/socfpga_dts_updates_for_v5.4

for you to fetch changes up to d8c1ccac448fd21a3753517a34ee0164c28ac786:

  ARM: dts: socfpga: add missing reset-names for dma (2019-07-30 09:09:31 -0500)

----------------------------------------------------------------
SoCFPGA DTS updates for v5.4
- Add reset properties for various peripherals
	- QSPI OCP and DMA on Arria10
	- DMA on Agilex/Stratix10
- Update NAND controller bindings to match driver update
- Add NAND controller to Stratix10
- VINING FPGA board fixups
	- Update button mapping
	- Adjust GMAC1 clock and TXD skew settings
- Add missing reset-names for dma controller

----------------------------------------------------------------
Dinh Nguyen (5):
      ARM: dts: socfpga: add the QSPI OCP reset property on arria10
      ARM: dts: socfpga: add reset properties for DMA
      arm64: dts: agilex/stratix10: Add reset properties for DMA
      arm64: dts: stratix10: Add NAND device node
      ARM: dts: socfpga: add missing reset-names for dma

Marek Vasut (2):
      ARM: dts: socfpga: Fix up button mapping on VINING FPGA
      ARM: dts: socfpga: Adjust GMAC1 clock and TXD lines skew on VINING FPGA

Masahiro Yamada (1):
      ARM: dts: socfpga: update to new Denali NAND binding

 arch/arm/boot/dts/socfpga.dtsi                     |  3 ++-
 arch/arm/boot/dts/socfpga_arria10.dtsi             |  7 +++--
 arch/arm/boot/dts/socfpga_arria10_socdk_nand.dts   | 20 ++++++++++-----
 arch/arm/boot/dts/socfpga_cyclone5_vining_fpga.dts | 30 +++++++++++++++++-----
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi  | 18 +++++++++++++
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi      |  2 ++
 6 files changed, 63 insertions(+), 17 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

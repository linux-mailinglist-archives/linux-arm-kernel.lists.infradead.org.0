Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B89E100E92
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 23:06:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h9Z0FqeXNtEGSLlRjJGLSd7HblUBC7DrxXkB9tSsP0g=; b=P84UijZzWDreEN
	2ZGGLx5p0e7WZk2MuZ9rLlOiWY3PJzTxN1QxDdvRSw7KH3LKaVH6dygFdfV05TbCZbGcw+SGISl7F
	dkZaVvG2oxFx2hoZLQbinsegugkwDF3JlvtfksnFNS372msGFLiznZDDsbsvN5/SUFl4dlivhnEJZ
	qWJABkZ5SDqBo6sUbj97qaZ7kyOVAimniXnYmWlqPAWneh/u4h6PoLcdCpXdO7Y977/6fcrUyyZ9K
	aBoP8N2YWD1yFDxfDwYFzWXyOEUaDcrxSZjzJKbSsxOczgIpiZ0JJIWTbPz+E4V//ALChvdO2IK13
	CL/kKDlrimo6j0O25ACQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWp9x-00087j-4U; Mon, 18 Nov 2019 22:06:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWp9n-000813-0W
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 22:06:04 +0000
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com
 [70.114.128.244])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 805FC22309;
 Mon, 18 Nov 2019 22:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574114760;
 bh=qZiiUrxIWFxrl1OBEIah0j8QKbu3RgHXzpcndqkf00Q=;
 h=From:To:Cc:Subject:Date:From;
 b=oy2Q5PkNbuZBSjds21gyCpzP5pP4FxU755+R9bEixpf2rffD8iwj4Pd2pq3f53G1q
 CVU+8uNQSjKCPgvK/JdRFQ/F7OdDkQ3viKR/aElgiHMCIkH3DscXxOdih7gTJq9ryb
 eb3QtzNFdzNBQXjxQXfCMl6oGmSF22FWgwSx9qMQ=
From: Dinh Nguyen <dinguyen@kernel.org>
To: soc@kernel.org
Subject: [GIT PULL] SoCFPGA DTS updates for v5.5, part 2
Date: Mon, 18 Nov 2019 16:05:59 -0600
Message-Id: <20191118220559.16623-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_140603_090746_A25B3EE1 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dinguyen@kernel.org, arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd, Kevin, and Olof:

Please pull in these additional SoCFPGA DTS updates for v5.5.

Thanks,
Dinh

The following changes since commit aa74337ee73df5de3cb6c920100d01c3d95346cc:

  arm64: dts: agilex: add service layer, fpga manager and fpga region (2019-10-21 22:49:09 -0500)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/dinguyen/linux.git tags/socfpga_dts_updates_for_v5.5_part2

for you to fetch changes up to 2f804ba7aa9ee086f3222a3ccd2b3618c7f8712b:

  arm64: dts: agilex: Add SysMgr to Ethernet nodes (2019-11-18 15:51:50 -0600)

----------------------------------------------------------------
SoCFPGA DTS updates for v5.5, part 2
- Add NAND support for both Agilex and Stratix10 boards
- Agilex
	- Add FPGA manager and Service Layer support
	- Add EDAC support
	- Add System manager
	- Add System manager property to ethernet nodes

----------------------------------------------------------------
Dinh Nguyen (2):
      arm64: dts: agilex: add NAND IP to base dts
      arm64: dts: add NAND board files for Stratix10 and Agilex

Thor Thayer (3):
      arm64: dts: agilex: Add EDAC Device Tree
      arm64: dts: agilex: Add SysMgr compatible
      arm64: dts: agilex: Add SysMgr to Ethernet nodes

 arch/arm64/boot/dts/altera/Makefile                |   3 +-
 .../dts/altera/socfpga_stratix10_socdk_nand.dts    | 223 +++++++++++++++++++++
 arch/arm64/boot/dts/intel/Makefile                 |   3 +-
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi      |  76 ++++++-
 .../boot/dts/intel/socfpga_agilex_socdk_nand.dts   | 135 +++++++++++++
 5 files changed, 437 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
 create mode 100644 arch/arm64/boot/dts/intel/socfpga_agilex_socdk_nand.dts

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

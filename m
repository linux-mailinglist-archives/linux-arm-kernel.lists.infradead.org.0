Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E421389D3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 04:41:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HiQ9Om3TofXOEdPb3P9qsSG1NDkHgrYiagNFxEozK8k=; b=asaMKKldQUQgnt+i69ItuJn4Mn
	9MCx8GMjhpHqDKEq8q0AlsFkpBXEhtDY85ZcjKV5Ne8SzM0JHb0mGSLuHl8SehQzGQ4hycrZPhMkq
	rd/fgFQq70a93ZPO0QXtCHlyJOPXmtoGE/Fcy1dII4lGxWuRau7SSqg1e6R9QlYT01KvIOlbafu+T
	dEKOCEWB6AiYt1IyF+o6U1g9NslKys2K9kKP8EjJdsGK+PcDdZKRP8tCpJfBNffgif69HNU5WZVbn
	ZN3FoNCH+MXns9QcL4TQzsVP3CCFA937vNR9bOb30NIqQyjDWGwaiMKtj3JWbAkazRt11Gginagja
	fHe3F6Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqqb7-0002eE-4b; Mon, 13 Jan 2020 03:41:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqqaj-0002Xx-EK
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 03:40:38 +0000
Received: from localhost (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F1290222D9;
 Mon, 13 Jan 2020 03:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578886837;
 bh=EUeePAeG/mYTMvXQxeWkd+i8flc9SNcQQxhofZeZAqQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=C4P8t6gcJzXocfFXdonQteRBzh8/pJk7kHKea9m1AvtqZqQdyleyopsnr3nZuGhSJ
 vlWcELalTyECul7Xobigw/w+3awaNSCAHI9XZKP2E58zWQPHlP2t88TtpqddYlkvM9
 Furi/TfMC6ShSCVpx/1bXAPbaKVg9mHj6qzxfjnQ=
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org,
	arm@kernel.org
Subject: [GIT PULL 2/6] i.MX SoC changes for 5.6
Date: Mon, 13 Jan 2020 11:40:02 +0800
Message-Id: <20200113034006.17430-2-shawnguo@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200113034006.17430-1-shawnguo@kernel.org>
References: <20200113034006.17430-1-shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_194037_503515_02F449A5 
X-CRM114-Status: GOOD (  11.29  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Shawn Guo <shawnguo@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Li Yang <leoyang.li@nxp.com>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

To resolve a conflict on arch/arm/mach-imx/cpu.c, this pull request is
based on tag imx-fixes-5.5, which has been merged.  Please consider to
pull, thanks!

Shawn


The following changes since commit 7947e3238b64c00c396e6f5738f94c4d653bc6a2:

  ARM: imx: Fix boot crash if ocotp is not found (2019-12-12 10:44:28 +0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-soc-5.6

for you to fetch changes up to c74067a0f776c1d695a713a4388c3b6a094ee40a:

  ARM: imx: only select ARM_ERRATA_814220 for ARMv7-A (2020-01-09 18:48:35 +0800)

----------------------------------------------------------------
i.MX SoC changes for 5.6:

 - Add support for reading serial number from OCOTP on i.MX7ULP.
 - A patch from Anson to enable ARM_ERRATA_814220 for i.MX6UL & i.MX7D,
   and a fixup patch from Arnd to select the option only for ARMv7-A.

----------------------------------------------------------------
Anson Huang (2):
      ARM: imx: Add i.MX7ULP SoC serial number support
      ARM: imx: Enable ARM_ERRATA_814220 for i.MX6UL and i.MX7D

Arnd Bergmann (1):
      ARM: imx: only select ARM_ERRATA_814220 for ARMv7-A

 arch/arm/mach-imx/Kconfig |  2 ++
 arch/arm/mach-imx/cpu.c   | 30 +++++++++++++++++++++++++-----
 2 files changed, 27 insertions(+), 5 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

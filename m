Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B89161DD0C8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 17:07:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6wMjxaoYP8YJKsXBpiVqN7Uc33rvEqgqc1iILyzxWgo=; b=MXIhP2R1xGEsa4
	uFTeyEAqwlMxZpskXCQNXN8FJMujrxN4E3B6vT4sHFoOaa42HyI8ahx1jFEgvdLv23jUX7hASFAo0
	et39qkOatTBOxVyuN9n0jIQpKwhIUHc9xWAKeGTOTFhzhqX2QrZZMWcjt8vB/Pn9x68Z2Ki2s2ZPe
	RZNUeosjq5Jgqwewwq57Ga9LONMfEjxB2z1HhP+OFk1RTfp4KtVwBEgV4GPtuxd5xK1IsprU3uh2r
	Sb9BHPX72NvU+tjerrFyZrBSfK4x+jURgv3VLj4MBC1uGcOj85xYx3Vp/AUebHW3Psm/nI5oPE8dd
	rkFm4pk2slFhr5gkHuTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbmnK-0001sG-Rv; Thu, 21 May 2020 15:07:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbmnA-0001rn-QU
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 15:07:29 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F12702072C;
 Thu, 21 May 2020 15:07:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590073648;
 bh=twDYYYr8EabDvomx3ak0Tx7O3O3Z8FxeEqKp1Wfiksk=;
 h=Date:From:List-Id:To:Cc:Subject:From;
 b=VVSIiMLfpDsxxGIzF8AQ+nctW4NjFzLDq7XRvBG94GYxl00NVcxlAuSJelthJeoMJ
 BA6OMRr5nQbrW9F3/3i9bifFCgrz+juN2d0MPHLXj6kRn8Hblltt75OnPfwyzH0mrW
 nI7ICaW3wHvhYyENB4ZfxGcPAen4fW6jHdNpUBec=
Date: Thu, 21 May 2020 23:07:21 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org, arm@kernel.org
Subject: [GIT PULL] i.MX fixes for 5.7, round 2
Message-ID: <20200521150719.GB24084@dragon>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_080728_875194_EAB39486 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 1248c86fd6391c63da947718bbd43686fa95185f:

  arm64: dts: freescale: imx8mp: update input_val for AUDIOMIX_BIT_STREAM (2020-04-29 11:30:32 +0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-fixes-5.7-2

for you to fetch changes up to 665e7c73a7724a393b4ec92d1ae1e029925ef2b7:

  ARM: dts/imx6q-bx50v3: Set display interface clock parents (2020-05-20 10:48:02 +0800)

----------------------------------------------------------------
i.MX fixes for 5.7, round 2:

One imx6q-bx50v3 device tree change to fix an issue, attempting atomic
modeset while using HDMI and display port at the same time causes LDB
clock programming to destroy the programming of HDMI.

----------------------------------------------------------------
Robert Beckett (1):
      ARM: dts/imx6q-bx50v3: Set display interface clock parents

 arch/arm/boot/dts/imx6q-b450v3.dts  |  7 -------
 arch/arm/boot/dts/imx6q-b650v3.dts  |  7 -------
 arch/arm/boot/dts/imx6q-b850v3.dts  | 11 -----------
 arch/arm/boot/dts/imx6q-bx50v3.dtsi | 15 +++++++++++++++
 4 files changed, 15 insertions(+), 25 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

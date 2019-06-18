Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB3B64A359
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 16:05:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vs0fIF/kCfl2+EL3v9R4RNtSPQwO9kHlugplbMW1bkk=; b=N0tvGDHJxE6ejA
	+usNcWblwtCFOR26WmFqNA1nCtV/NI3q0QN/XNBwRCj7YFbyo0L2nlw1EjqoOY90oaFxHJ+y94IrC
	HHlO3Ju/Pxhy2+9hX9/DZPeTnMUljQ1oRsHQIzPpBCOrH7dTTMDMyc69luZ6VrLy1kSJZXwTQhaaM
	lh2FwdDMWWNaYAdw9ZzACbEJ5y6UbP5iiDAZxlQVHF6T7TPuj60SaDH86ohM01skLev8vA2I0wAGP
	0gi1UL2PVqOdaZ7INpObjYmseV82SqNkG/jPsSOp+cf7MUaEBzMnAMs4ixX69e1Z+fBPjRalNBR4u
	Z6RKczV2rjPZIxCiOmaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdEjf-0007fS-4b; Tue, 18 Jun 2019 14:05:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdEjN-0007Tn-8c
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 14:05:02 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1E27221530;
 Tue, 18 Jun 2019 14:04:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560866701;
 bh=UMfFOCfl5AONeiS0nmC99eFC7BIVgqTcMFM13ri1DH0=;
 h=Date:From:To:Cc:Subject:From;
 b=WMlHjDGYtjTZ19r1ddIioY5AyBbrQNbfHI3t472BHq8vdcVc4XNuCM9jRX+Tze7Kx
 XUyMEBKKdCf2ZhcVre+OIHYogZgEvbBDNhcQvwsHqf+UAx+8lt56Zbe9RQTWOU56pi
 huIIClx/V0snsnN+uKnhwVEh4oofWzroL96aBLCE=
Date: Tue, 18 Jun 2019 22:04:04 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: arm@kernel.org
Subject: [GIT PULL] i.MX fixes for 5.2, round 2
Message-ID: <20190618140401.GA5908@dragon>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_070501_318401_CEF8776B 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit b25af2ff7c07bd19af74e3f64ff82e2880d13d81:

  ARM: imx: cpuidle-imx6sx: Restrict the SW2ISO increase to i.MX6SX (2019-05-20 14:32:32 +0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-fixes-5.2-2

for you to fetch changes up to a019ab40679715ea680cc8561a02888be70bc4e9:

  arm64: defconfig: Enable FSL_EDMA driver (2019-06-18 14:32:43 +0800)

----------------------------------------------------------------
i.MX fixes for 5.2, round 2:
 - A fix on LS1028A device tree CPU state to get CPU idle work.
 - Enable FSL_EDMA driver support in defconfig to fix a indefinite
   deferring probe on Layerscape platforms.

----------------------------------------------------------------
Li Yang (1):
      arm64: defconfig: Enable FSL_EDMA driver

Ran Wang (1):
      arm64: dts: ls1028a: Fix CPU idle fail.

 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 18 +++++++++---------
 arch/arm64/configs/defconfig                   |  1 +
 2 files changed, 10 insertions(+), 9 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

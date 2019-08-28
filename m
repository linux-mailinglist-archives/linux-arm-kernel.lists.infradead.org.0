Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA65A099F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 20:36:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0fXcrQjUdfTwtUCr6eMYEmbEcR0WzaRX+R3iqVeRG+o=; b=Pvjf1HcFjRuxns
	qrMIL4yWMZqder6i8ikh5kbJVzu3uJ5o68vYyquuEVX0qEqUQ2/7J5lZwlQXRB/vNvWKxoO9Htq61
	JFAje0/T60BPRMCIv46M59LaCz3AbVNDuD/5baaBq8JyWdI1VIlDqgNuUdxgtP+FgxCTIN1niulEl
	BIt+M2Wtz6R6ROnKarVd7HJ+Bhk65hRe7XJd/xjPgrAzuCOV6bCNVuEuVpPCrX4U1ME9VmeFzwXm1
	ciET5noTn3xZa2P3/lZYCIkMtHCq4P0ECJtvmfwSNLtjBya9E7FATs7DdtcM6ecXKWTpHylTBJ2bN
	HHmZkZnjwLoobIvnmoqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i32nU-0006hD-FX; Wed, 28 Aug 2019 18:35:56 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i32ma-0004um-Ny
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 18:35:02 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id B6BB48162;
 Wed, 28 Aug 2019 18:35:29 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL 4/4] sgx soc glue changes for omaps for v5.4
Date: Wed, 28 Aug 2019 11:34:52 -0700
Message-Id: <pull-1567016893-318461@atomide.com-4>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <pull-1567016893-318461@atomide.com>
References: <pull-1567016893-318461@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_113500_840669_B27B048A 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Tony Lindgren <tony@atomide.com>, linux-omap@vger.kernel.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Tony Lindgren" <tony@atomide.com>

The following changes since commit 7edd00f71f4b91ca31dbfa08926495fe5e77aab4:

  bus: ti-sysc: Detect d2d when debug is enabled (2019-08-26 08:33:25 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.4/ti-sysc-sgx-signed

for you to fetch changes up to 6cb0ac0fb9786d01f140dcfcd3d09ce850dd0a64:

  ARM: dts: ARM: dts: Configure interconnect target module for am3517sgx (2019-08-26 08:47:09 -0700)

----------------------------------------------------------------
SoC glue layer changes for SGX on omap variants for v5.4

For a while we've had omap4 sgx glue layer defined in dts and probed
with ti-sysc driver. This allows idling the sgx module for PM, and
removes the need for custom platform glue layer code for any further
driver changes.

We first drop the unused legacy platform data for omap4 sgx. Then for
omap5, we need add the missing clkctrl clock data so we can configure
sgx. And we configure sgx for omap34xx, omap36xx and am3517.

For am335x, we still have a dependency for rstctrl reset driver changes,
so that will be added later on.

Note that this branch is based on earlier ti-sysc branch for omap36xx
glue layer quirk handling.

----------------------------------------------------------------
Adam Ford (1):
      ARM: dts: ARM: dts: Configure interconnect target module for am3517sgx

Tony Lindgren (4):
      ARM: OMAP2+: Drop legacy platform data for omap4 gpu
      clk: ti: add clkctrl data omap5 sgx
      ARM: dts: Configure sgx for omap5
      ARM: dts: Configure interconnect target module for omap3 sgx

 arch/arm/boot/dts/am3517.dtsi              | 24 ++++++++++++++
 arch/arm/boot/dts/omap34xx.dtsi            | 26 +++++++++++++++
 arch/arm/boot/dts/omap36xx.dtsi            | 28 ++++++++++++++++
 arch/arm/boot/dts/omap4.dtsi               |  1 -
 arch/arm/boot/dts/omap5.dtsi               | 23 +++++++++++++
 arch/arm/boot/dts/omap54xx-clocks.dtsi     | 14 ++++++++
 arch/arm/mach-omap2/omap_hwmod_44xx_data.c | 53 ------------------------------
 drivers/clk/ti/clk-54xx.c                  | 34 +++++++++++++++++++
 include/dt-bindings/clock/omap5.h          |  3 ++
 9 files changed, 152 insertions(+), 54 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

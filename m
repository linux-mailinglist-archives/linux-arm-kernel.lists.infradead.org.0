Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4A141D79
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 09:19:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F55T7OYoCr4YZLJErLWXt6OU+MDic1lN1OF/sckU4vs=; b=HoAQH0uqf/DtF7
	VBMoHXCzq9p1NsJA1v36D3ddAza8VvVCm8mb+lfeu01B6bFaTJJo1xfbjgqkwUc/Q6kqGVMAz3A2I
	urosDLjcsYlIwfOFzabHEqu3tQLZjDilf3qPQjvvyiRFoEmuC9CaVgJjR9Y1HVjylWqugYP7NKnKL
	fWOZVmV81BBIAeCsX0LWQ2lGuUT2ldLk9RZn9N1yPXtQ0PHHoo2Xs1KBtbVgFDyrS+29CW+qVOQpj
	MopLM/MNxGphwZznnsENI7/5lLH5AimIpojZUFX1LoPwtm7SP5qE/ITvNpC/zdwhXvLncEpA5HdCM
	cuwqViG8tZuzHI1q1JOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haxXT-0003uL-It; Wed, 12 Jun 2019 07:19:19 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haxWs-0003eX-8k
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 07:18:44 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 27B7980E2;
 Wed, 12 Jun 2019 07:19:03 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: arm@kernel.org
Subject: [GIT PULL] three fixes for omaps
Date: Wed, 12 Jun 2019 00:18:39 -0700
Message-Id: <pull-1560323885-602179@atomide.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_001842_428219_66F24734 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Tony Lindgren" <tony@atomide.com>

The following changes since commit 4ee23cd76c0ce8622976b3da0e2bc89e6d94f6d4:

  Merge branch 'omap-for-v5.2/ti-sysc' into fixes (2019-05-20 08:33:03 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.2/fixes-rc4

for you to fetch changes up to 8a0098c05a272c9a68f6885e09755755b612459c:

  ARM: dts: am335x phytec boards: Fix cd-gpios active level (2019-06-10 00:06:57 -0700)

----------------------------------------------------------------
Fixes for omap variants

Three fixes mostly for dra7 SoC variants that have some devices disabled
compared to the base SoC. These got broken by the change of making devices
probe with ti-sysc interconnect target module and went unnnoticed for a
while. And there is no clkcel bit for timer12 unlike timer1. Also included
is a GPIO direction fix for phytec SDIO card detection.

----------------------------------------------------------------
Keerthy (1):
      ARM: dts: dra72x: Disable usb4_tm target module

Teresa Remmet (1):
      ARM: dts: am335x phytec boards: Fix cd-gpios active level

Tony Lindgren (1):
      ARM: dts: Drop bogus CLKSEL for timer12 on dra7

 arch/arm/boot/dts/am335x-pcm-953.dtsi | 2 +-
 arch/arm/boot/dts/am335x-wega.dtsi    | 2 +-
 arch/arm/boot/dts/dra7-l4.dtsi        | 2 --
 arch/arm/boot/dts/dra72x.dtsi         | 4 ++++
 4 files changed, 6 insertions(+), 4 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

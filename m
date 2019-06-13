Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE14A4333E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 09:18:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HvjkY0KO7UFflIO8b/2QEmiMvfkZ2vTBt2rFXkgN+Jw=; b=n43SXf+ZCQHuIx
	9W4bd7SSuTKD85+0Pa7cEeu1JpkNKLd+iuBeTaeNRbAEauFCltKbIRzBquItZYwwfF2wDcdEQ4b91
	WLX13ZMbtaDmlMOMiMbJg/5UTqOjWZeVD/6oxwbjX98draUwd593kc2ULPzWUcxkPL/1FO7LL7FPn
	y5UzUEfrKSjJpL+GaIwKbIwLSLP4rePqNFpZsODCc9rmblaByOer22QRzywSwOM63pQ/WUwRM3JSK
	xdKyNA5tfUcFvCgupWE8U9a1iuuIsrguvHHgkyu117smKEVcjy3lKTqH6cVNMCiVoqjeUidzVqWJH
	y2ju6Ami8R0jsIB4CSDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbK0E-0005D7-MT; Thu, 13 Jun 2019 07:18:31 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbJt1-0006TS-2N
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 07:11:06 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 7001381BD;
 Thu, 13 Jun 2019 07:11:24 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: arm@kernel.org
Subject: [GIT PULL 4/4] ti-sysc dts changes for v5.3
Date: Thu, 13 Jun 2019 00:10:53 -0700
Message-Id: <pull-1560399818-512977@atomide.com-4>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <pull-1560399818-512977@atomide.com>
References: <pull-1560399818-512977@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_001103_549772_68ADE6A0 
X-CRM114-Status: UNSURE (   7.13  )
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

The following changes since commit b6a53c4c872ab6870eb455d10a6f7ff0d99b1b1f:

  bus: ti-sysc: Detect uarts also on omap34xx (2019-05-28 05:19:17 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.3/ti-sysc-dt-signed

for you to fetch changes up to 22a7fc15cf1e742884fdc11a236fcd755225b4f0:

  ARM: dts: Drop legacy custom hwmods property for omap4 mmc (2019-05-28 05:19:17 -0700)

----------------------------------------------------------------
ti-sysc dts changes for v5.3

We can now drop the custom dts property "ti,hwmods" for drivers that
have the ti-sysc interconnect target module configured in dts.

Let's start with a minimal changes to omap4 uart and mmc. We use
omap4 as the starting point as it has runtime PM implemented and all
the omap variants after that are based on it with similar clkctrl
clock for the modules. More devices will be updated later on as they
get tested.

Note that these changes are based on the related ti-sysc driver
changes.

----------------------------------------------------------------
Tony Lindgren (2):
      ARM: dts: Drop legacy custom hwmods property for omap4 uart
      ARM: dts: Drop legacy custom hwmods property for omap4 mmc

 arch/arm/boot/dts/omap4-l4.dtsi | 9 ---------
 1 file changed, 9 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

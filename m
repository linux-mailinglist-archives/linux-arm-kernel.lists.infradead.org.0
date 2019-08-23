Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A889AFAE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 14:37:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tAHuIT0oGz5wY7uxS+36f0/B7+H7aSSSC0wuwkcBZIM=; b=gpN2pwRAXwSHGi9V3hv0bCM2Bo
	JGkD4TqZX39IOamt1+A7SkX07BDKe6Jpqpb7kEgCGn1PuAGN+BCY3A9S81DhB9xYLovapHna8bR+L
	I4fjkZhsJ0fw2gb3I1DO9ZymPUqYwpvKmxuEjrq0kqJTib1NyKcZkHdUk7SbSDEGXfHry7L4hWd2B
	DbBfDRp79NbSI8qrFeN4h65YgEIeNFBWD4fjWfSFZEAYqTVQ3mjezUddULBJ7QT5dkvfCZdrDN0/f
	k/gU7kykzys25Bf139vEjOgvH7edQH5opEPd0QE+fLSDdseZBvPqsWYSSOwBEWtOLAbvlSWT8rtfq
	pGAbzJyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i18oh-0007IY-Og; Fri, 23 Aug 2019 12:37:19 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i18oQ-00074M-JD
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 12:37:04 +0000
Received: from ramsan ([84.194.98.4]) by michel.telenet-ops.be with bizsmtp
 id sccr2000U05gfCL06ccrx4; Fri, 23 Aug 2019 14:36:54 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i18oF-0006YU-GJ; Fri, 23 Aug 2019 14:36:51 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i18oF-0004uR-E9; Fri, 23 Aug 2019 14:36:51 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [PULL 4/5] Renesas driver updates for v5.4 (take two)
Date: Fri, 23 Aug 2019 14:36:42 +0200
Message-Id: <20190823123643.18799-5-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190823123643.18799-1-geert+renesas@glider.be>
References: <20190823123643.18799-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_053702_797416_1C111DD2 
X-CRM114-Status: UNSURE (   7.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:18 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-renesas-soc@vger.kernel.org, Simon Horman <horms@verge.net.au>,
 Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 0ed0eb0171d7c19310d9f7b06a6dee82a4fb8ab6:

  soc: renesas: rcar-sysc: Use [] to denote a flexible array member (2019-07-29 15:36:56 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-drivers-for-v5.4-tag2

for you to fetch changes up to 2eced4607a1e6f51f928ae3e521fe02be5cb7d23:

  soc: renesas: Enable ARM_ERRATA_754322 for affected Cortex-A9 (2019-08-23 10:33:31 +0200)

----------------------------------------------------------------
Renesas driver updates for v5.4 (take two)

  - Improve "always-on" PM Domain handling on SH/R-Mobile SoCs,
  - Automatic errata selection for Cortex-A7/A9,
  - Small fixes and improvements.

----------------------------------------------------------------
Geert Uytterhoeven (4):
      soc: renesas: rcar-sysc: Eliminate local variable gov
      soc: renesas: rmobile-sysc: Set GENPD_FLAG_ALWAYS_ON for always-on domain
      soc: renesas: Enable ARM_ERRATA_814220 for affected Cortex-A7
      soc: renesas: Enable ARM_ERRATA_754322 for affected Cortex-A9

Nishka Dasgupta (1):
      soc: renesas: rcar-sysc: Add goto to of_node_put() before return

 drivers/soc/renesas/Kconfig        | 11 +++++++++++
 drivers/soc/renesas/rcar-sysc.c    |  5 ++---
 drivers/soc/renesas/rmobile-sysc.c | 31 ++++++++++++++++---------------
 3 files changed, 29 insertions(+), 18 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70321DF012
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 16:39:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FnRo3Yd0dL1n+tZ4DWTlC2oI6snCrw5inDmQDGmPpFM=; b=X61
	P7XEdK5ipfTFUxfgREXhmbza5WrnsVgZNFOH2+qVz/jDgJ/IY0GGsjIooGszU+IjB4WFP16ylOTy2
	MCN8ABkw9hl4CgKMRhO9Vf6mzL/B/smpi5hhK672Padkm6FD0tJB4Eum1tm8lZhR+9P791ytJMlTH
	qPMC7efhitPAkSjIAPCtdstEHtRPPTa/mjwoetj5gBeydw/ggSsG4QIHFKC6CKA3r5+fs+IXeed0h
	Ri8CsclJRmKPPQ1jZeJDqIDH4QEedxBejDbeI2flXk3nUnc8R4YH2sQMQHgmGROWIA4uHMFDuP1Xj
	gEq0GGYVQzaIvGFSXCKoKRYpudlLGXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYqH-0005mv-QY; Mon, 21 Oct 2019 14:39:29 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYos-0004ac-6j
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 14:38:05 +0000
Received: from ramsan ([84.194.98.4]) by michel.telenet-ops.be with bizsmtp
 id GEdo2100R05gfCL06Edorl; Mon, 21 Oct 2019 16:37:54 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iMYoe-0007cv-Bm; Mon, 21 Oct 2019 16:37:48 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iMYoe-0003mY-7w; Mon, 21 Oct 2019 16:37:48 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jaehoon Chung <jh80.chung@samsung.com>,
 "David S . Miller" <davem@davemloft.net>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>
Subject: [PATCH 0/7] debugfs: Add and use debugfs_create_xul()
Date: Mon, 21 Oct 2019 16:37:35 +0200
Message-Id: <20191021143742.14487-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_073802_397002_6BBE0CF5 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:18 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.7 SUBJ_OBFU_PUNCT_FEW    Possible punctuation-obfuscated Subject:
 header
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

	Hi all,

The existing debugfs_create_ulong() function supports objects of
type "unsigned long", which are 32-bit or 64-bit depending on the
platform, in decimal form.  To format objects in hexadecimal, various
debugfs_create_x*() functions exist, but all of them take fixed-size
types.

To work around this, some drivers call one of debugfs_create_x{32,64}(),
depending on the size of unsigned long.
Other driver just cast the value pointer to "u32 *" or "u64 *",
introducing portability bugs or data leaks in the process.

Hence this patch series adds a debugfs helper for "unsigned long"
objects in hexadecimal format, and converts drivers to make use of it.
It also contains two cleanups removing superfluous casts, which I added
to this series to avoid conflicts.

Thanks for your comments!

Geert Uytterhoeven (7):
  debugfs: Add debugfs_create_xul() for hexadecimal unsigned long
  mac80211: Use debugfs_create_xul() helper
  net: caif: Fix debugfs on 64-bit platforms
  mmc: atmel-mci: Fix debugfs on 64-bit platforms
  mmc: atmel-mci: Remove superfluous cast in debugfs_create_u32() call
  mmc: dw_mmc: Fix debugfs on 64-bit platforms
  mmc: dw_mmc: Remove superfluous cast in debugfs_create_u32() call

 drivers/mmc/host/atmel-mci.c   | 10 +++++-----
 drivers/mmc/host/dw_mmc.c      | 10 +++++-----
 drivers/net/caif/caif_serial.c |  4 ++--
 include/linux/debugfs.h        | 10 ++++++++++
 net/mac80211/debugfs_sta.c     | 17 +++--------------
 5 files changed, 25 insertions(+), 26 deletions(-)

-- 
2.17.1

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

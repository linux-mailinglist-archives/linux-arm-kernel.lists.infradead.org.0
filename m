Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6557AE496E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 13:10:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hwgND0ra9wFzHhuLWsXV83S5us52zKdJe6n8fIBEf9o=; b=sux
	sopsT3WjUPUL9mLLpTFd9hMEpoYowlcLGiheMBEWcwDbERKzBBq+e0Z+DzYPLBwqUewNSvwywSGzO
	dGhe2AEEoLH19P5HxXgo4Cgd/MQjkxJw1UL8RywLDBsh9UHyct9KwhSjyeE9/sMjcxY3AyuZCwmXq
	aW0onH1Ake7z+ftV92jZB59ZnpjmQVQQi9NcFI3odBSa5iNCBYZddEQXbqI7qn55jTHi/nQ81crp9
	q1ioY9S2fJVpw7Y30P4vL5uG0Az7YZ8n4VP98nJa7LR1NIu3xii7uSxBrdVdtpSd1awQFS4ruL6Nc
	i0VwVpC+lFBH0uKuUnNZOfcyBC+bpoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNxUQ-0006xY-QD; Fri, 25 Oct 2019 11:10:42 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNxSZ-000489-U8
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 11:08:51 +0000
Received: from ramsan ([84.195.182.253]) by xavier.telenet-ops.be with bizsmtp
 id Hn8b2100e5USYZQ01n8bmB; Fri, 25 Oct 2019 13:08:46 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNxSN-0003rD-Iz; Fri, 25 Oct 2019 13:08:35 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNw6A-0006mq-Ia; Fri, 25 Oct 2019 11:41:34 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Jonathan Corbet <corbet@lwn.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jaehoon Chung <jh80.chung@samsung.com>,
 "David S . Miller" <davem@davemloft.net>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>
Subject: [PATCH v2 0/7] debugfs: Add and use debugfs_create_xul()
Date: Fri, 25 Oct 2019 11:41:23 +0200
Message-Id: <20191025094130.26033-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_040848_135838_A96E54F5 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:14 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, linux-doc@vger.kernel.org,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
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
Other drivers just cast the value pointer to "u32 *" or "u64 *",
introducing portability bugs or data leaks in the process.
 
Hence this patch series adds a debugfs helper for "unsigned long"
objects in hexadecimal format, and converts drivers to make use of it.
It also contains two cleanups removing superfluous casts, which I added
to this series to avoid conflicts.
 
Changes compared to v1[1]:
  - Add kerneldoc,
  - Update Documentation/filesystems/debugfs.txt,
  - Add Acked-by.

Dependencies:
  - The first patch now depends on "Documentation: debugfs: Document
    debugfs helper for unsigned long values"[2], which Jon said he
    applied to his tree.

Thanks!

[1] https://lore.kernel.org/lkml/20191021143742.14487-1-geert+renesas@glider.be/
[2] https://lore.kernel.org/lkml/20191021150645.32440-1-geert+renesas@glider.be/

Geert Uytterhoeven (7):
  debugfs: Add debugfs_create_xul() for hexadecimal unsigned long
  mac80211: Use debugfs_create_xul() helper
  net: caif: Fix debugfs on 64-bit platforms
  mmc: atmel-mci: Fix debugfs on 64-bit platforms
  mmc: atmel-mci: Remove superfluous cast in debugfs_create_u32() call
  mmc: dw_mmc: Fix debugfs on 64-bit platforms
  mmc: dw_mmc: Remove superfluous cast in debugfs_create_u32() call

 Documentation/filesystems/debugfs.txt |  5 ++++-
 drivers/mmc/host/atmel-mci.c          | 10 +++++-----
 drivers/mmc/host/dw_mmc.c             | 10 +++++-----
 drivers/net/caif/caif_serial.c        |  4 ++--
 include/linux/debugfs.h               | 21 +++++++++++++++++++++
 net/mac80211/debugfs_sta.c            | 17 +++--------------
 6 files changed, 40 insertions(+), 27 deletions(-)

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

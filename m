Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E7F1C5C58
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 17:46:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=B6yZDDDPnpv2Bln8NiHlEYFwko561FbHOBaBjeMoscU=; b=Te9
	nB7v1MEUdPktQW8bezDYwAFh+VY1OOxpRBoQiBM+1eyAgoEWKnVd4J1sojn2SOKQcCY4aDipBb2P1
	Q//v9wD85Hv9aE6GzUC5bbmj0pVQS4xOB4uEPLybloSh7KUgVesRCH2HBcWKnkuOn/GrKtYvCkGhq
	0QRHwFohMW+bLzxHTINrAtgKaXVtcMtgCI+ohYayR76hQdVS/uuMG3hw1PyATKvI+4TBj0HiDmsfy
	+fo5blkYtFSxtiButhSzj+cNSp/rGmRMvVw9UwcPUMSnDE2a09Hj74rwtBpwqQkCqY5uP4NOobldC
	zby3TA8OEr5J6DTqdj4J3C5p58dcQuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVzmI-0007hx-Pb; Tue, 05 May 2020 15:46:38 +0000
Received: from andre.telenet-ops.be ([2a02:1800:120:4::f00:15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVzlh-0006sF-ED
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 15:46:03 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:bd97:8453:3b10:1832])
 by andre.telenet-ops.be with bizsmtp
 id b3le2200W3VwRR3013leCg; Tue, 05 May 2020 17:45:39 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jVzlK-0003Gp-QD; Tue, 05 May 2020 17:45:38 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jVzlK-00014u-Nq; Tue, 05 May 2020 17:45:38 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: soc@kernel.org
Subject: [PATCH v2 0/3] ARM: Replace <linux/clk-provider.h> by <linux/of_clk.h>
Date: Tue,  5 May 2020 17:45:33 +0200
Message-Id: <20200505154536.4099-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_084601_642850_4B21D79D 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:15 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 1.4 SUBJ_OBFU_PUNCT_MANY   Punctuation-obfuscated Subject: header
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Lubomir Rintel <lkundrak@v3.sk>, Kevin Hilman <khilman@kernel.org>,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, Olof Johansson <olof@lixom.net>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

	Hi arm-soc folks,

The OF clock helpers were moved to <linux/of_clk.h> a while ago.
Hence code that is not a clock provider, but just needs to call
of_clk_init(), can (and should) include <linux/of_clk.h> instead of
<linux/clk-provider.h>.

This series contains the patches from [1] that haven't been applied yet.

Changes compared to v1:
  - Add Reviewed-by.

Thanks for applying!

[2] "[PATCH 0/7] ARM: Replace <linux/clk-provider.h> by <linux/of_clk.h>"
    https://lore.kernel.org/r/20200212100830.446-1-geert+renesas@glider.be

Geert Uytterhoeven (3):
  ARM/time: Replace <linux/clk-provider.h> by <linux/of_clk.h>
  ARM: mediatek: Replace <linux/clk-provider.h> by <linux/of_clk.h>
  ARM: mmp: Replace <linux/clk-provider.h> by <linux/of_clk.h>

 arch/arm/kernel/time.c            | 2 +-
 arch/arm/mach-mediatek/mediatek.c | 2 +-
 arch/arm/mach-mmp/mmp-dt.c        | 2 +-
 arch/arm/mach-mmp/mmp2-dt.c       | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

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

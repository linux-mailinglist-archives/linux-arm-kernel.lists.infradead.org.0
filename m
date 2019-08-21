Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C729979D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 14:46:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=coQ9tws4N7Apl07nGlb37eYmdPmk7km42/s3pfpQkwU=; b=EQ5
	+gfk51wmCwHx6TJzORwSrC00Ixs2w9OTSnIErqg3hIXHTV+4oaKN4aKM6XuzVbWYy+tK5mr8trm6n
	0+jKK9vZeKG6Rdb9XK3+F18n6yFGB0Bh2Q8AdG01B7W0b1beLUP2fibcKhR0Mk+gHn7Qz4XqgP8ik
	KpLdBpG61MixESnROZznf8xEjZ/ubQbpcze+aemnsqtJIxfAnA53qRqEy+F5sEs3jB9NXoBvBzdvF
	+k31aBnxXskkihPDc+oOlpoTBHAHNfPziObD+hYGBYF4nMsmWiP8zKu8vOlg4KaXfMfkjF/xCln95
	9jpQ/cNu6KMcqzYKgjJWWg/AT3ynjaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Q0U-0000O6-01; Wed, 21 Aug 2019 12:46:30 +0000
Received: from albert.telenet-ops.be ([2a02:1800:110:4::f00:1a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Q0F-0000MP-Ol
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 12:46:18 +0000
Received: from ramsan ([84.194.98.4]) by albert.telenet-ops.be with bizsmtp
 id rom32000M05gfCL06om3Do; Wed, 21 Aug 2019 14:46:06 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i0Q03-0003dy-LB; Wed, 21 Aug 2019 14:46:03 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i0Q03-0007dd-JR; Wed, 21 Aug 2019 14:46:03 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Simon Horman <horms@verge.net.au>,
	Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH 0/3] soc: renesas: ARM errata updates
Date: Wed, 21 Aug 2019 14:45:59 +0200
Message-Id: <20190821124602.29317-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_054615_960895_4F21F89F 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:1a listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-renesas-soc@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

	Hi all,

This patch series updates the handling of ARM errata for affected
Renesas SoCs.

The first patch enables the new ARM_ERRATA_814220 for Cortex-A7, using
Kconfig logic.
The second patch moves enablement of ARM_ERRATA_754322 for Cortex-A9
from shmobile_defconfig to Kconfig logic, to make sure it's always
enabled when needed.
The third patch disables PL310_ERRATA_588369, as it doesn't affect any
Renesas SoCs.

The last patch is marked RFC, as I don't know the revision of PL310 on
EMMA Mobile EV2, and cannot test it on EMEV2.

Thanks for your comments!

Geert Uytterhoeven (3):
  soc: renesas: Enable ARM_ERRATA_814220 for affected Cortex-A7
  soc: renesas: Enable ARM_ERRATA_754322 for affected Cortex-A9
  [RFC] ARM: shmobile: defconfig: Disable PL310_ERRATA_588369

 arch/arm/configs/shmobile_defconfig |  2 --
 drivers/soc/renesas/Kconfig         | 11 +++++++++++
 2 files changed, 11 insertions(+), 2 deletions(-)

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

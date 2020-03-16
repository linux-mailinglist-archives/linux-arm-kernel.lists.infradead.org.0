Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE9C01868EE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 11:26:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+UV/RvmehHXqumh8eWRHa0gCEqvgz/SgaCratfGK5qs=; b=dFP
	a6NxBbbR3zh3bfhnuUkOpdstd9ng4t303G5lDDyZm4lPFBocBxKRUB7tKJQXfcDvzt85/vCS8wi8l
	yggjX02jX7Kyjv/0w/Acc91LAESeW8KGTrnLOuMcIsWjvlqTmCtZw3ECMfd5X91/dbQwxAzwbHEJX
	8V+75rnBaHPzaQEG/bWqMgYknxkOypG42Fbe9AU6Qw9/3GiaPDNNVtmTzIiOGdGhL7+zWReQrF0nz
	pW+JmjCjWNhYIHhg5D2UgWuw5A7ra8i6Zz7XSEtg6eopwMKmqlqdsA9HMcgEFIYWyBCZYrbO6HWs3
	RfYJ8BCM8OVMZ5mhOronbGHvNmTsYcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDmwu-0004cE-J8; Mon, 16 Mar 2020 10:26:20 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDmwX-0004Ru-FB
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 10:25:59 +0000
Received: from ramsan ([84.195.182.253]) by michel.telenet-ops.be with bizsmtp
 id EyRk2200P5USYZQ06yRkK4; Mon, 16 Mar 2020 11:25:46 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jDmwK-00069k-85; Mon, 16 Mar 2020 11:25:44 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jDmwK-0007Wg-5V; Mon, 16 Mar 2020 11:25:44 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH 0/2] ARM: dts: r8a7791: Enable PWM support
Date: Mon, 16 Mar 2020 11:25:38 +0100
Message-Id: <20200316102540.28887-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_032557_668031_2C1E4B67 
X-CRM114-Status: UNSURE (   6.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:18 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-renesas-soc@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

	Hi all,

This patch series enables PWM support on R-Car M2-W, using both the
single Timer Pulse Unit (4 channels), and the 7 channels of dedicated
PWM Timers.

Channels 1-3 for both types have been tested on Koelsch using DT
overlays from my topic/renesas-overlays branch[*].
I intend to queue this in renesas-devel for v5.8.

Thanks for your comments!

[*] https://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-drivers.git/log/?h=topic/renesas-overlays

Geert Uytterhoeven (2):
  ARM: dts: r8a7791: Add TPU device node
  ARM: dts: r8a7791: Add PWM device nodes

 arch/arm/boot/dts/r8a7791.dtsi | 81 ++++++++++++++++++++++++++++++++++
 1 file changed, 81 insertions(+)

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

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0121BF37F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 10:51:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HsyuaSV0GNJYI8NqOomScSDD6nJmuAM4yumRQ7h4zdo=; b=Cna
	J6ESmQB8VZpyKgNWQHNNvCJPnbBDDrfV6QPaIXjmsMHtumnOP+Z+8y+v2RSlarHOt+0Z2b5ENBHbG
	cKv45IkZy6n7qUCYiKi8Y3hfsQfGHbaO0SMOKvgKILLLBc5ZESKQFOpEDSeBPoIhcnMgxa+m0kvEC
	0ZjdPmtk83q+jvKXqsqC0IB7EJRuCJUphZs/fKWpz1pAz6q4tcSs8A9u+ZILEJ6Ny3YYXwSuwvzMP
	EXUlakD6F3HNipDTFzI6kh4gD2n7O5n8K3k+jMlAWQLvscIgtYk4TEUkn6Howz23sOiy7ddtpSOLc
	dAtipD9y6Z6uPrNwoPHZDFhcp7z/L6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU4u9-0002Ez-7l; Thu, 30 Apr 2020 08:50:49 +0000
Received: from albert.telenet-ops.be ([2a02:1800:110:4::f00:1a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU4sP-0006t7-0D
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 08:49:05 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:182a:142e:a95f:66c2])
 by albert.telenet-ops.be with bizsmtp
 id Ywor2200U0w8ZL606worP5; Thu, 30 Apr 2020 10:48:52 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jU4sF-0002l1-FK; Thu, 30 Apr 2020 10:48:51 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jU4sF-0000OK-E8; Thu, 30 Apr 2020 10:48:51 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL 0/5] Renesas SoC updates for v5.8
Date: Thu, 30 Apr 2020 10:48:44 +0200
Message-Id: <20200430084849.1457-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_014901_253132_C34F711E 
X-CRM114-Status: UNSURE (   5.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:1a listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

	Hi arm-soc folks,

This is my first pull request for the inclusion of Renesas SoC updates
for v5.8.

It consists of 5 parts:

  [GIT PULL 1/5] Renesas ARM defconfig updates for v5.8

    - Refresh shmobile_defconfig for v5.7-rc1.

  [GIT PULL 2/5] Renesas ARM DT updates for v5.8

    - USB, UART, PWM, and PCIe support for R-Car M3-W+,
    - PWM (16-bit Timer Pulse Unit and PWM Timers) support for R-Car M2-W,
    - Minor fixes and cleanups.

  [GIT PULL 3/5] Renesas ARM SoC updates for v5.8

    - Add Basic support for the new RZ/G1H SoC.

  [GIT PULL 4/5] Renesas driver updates for v5.8

    - Add System Controller (SYSC) and Reset (RST) support for the new
      RZ/G1H (R8A7742) SoC.

  [GIT PULL 5/5] Renesas DT binding updates for v5.8

    - Document System Controller (SYSC) and Reset (RST) support for
      RZ/G1H.

Note that the new Renesas RZ/G1H DT Binding Definitions are shared by
driver and DT source files, and thus included in multiple pull requests:
  - "[GIT PULL 4/5] Renesas driver updates for v5.8" (for arm-soc),
  - "[GIT PULL] clk: renesas: Updates for v5.8" (for clk).

Thanks for pulling!

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

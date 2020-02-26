Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 944C316FCDD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 12:02:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7ULox14OPAajuBqVN1LHU9gXDCVvAjGXF67XuNnCeRQ=; b=qWP
	RNYlFWuMCcvqkzDnc0C8sGuuNnBfvdjGa9DYxd8kIKnggbVdbTxbNKiZtQmq2Z0N8qui9MxFrQZSn
	Gv51GGn9veycvY7oQomSvN60nXBqe/Bzt957veYBV/n0q1uec7xjwisay1Ls+CLqeA10pcMwwLQAp
	RsHuuKdHlc0X51lchEI4WnlhwNcCLFVVeVnRbiI1vUFLlQb3RUuOzO8+P8quU7ezSlHCYqhjsmr37
	zAHvEIdEZJUBHJiJz3jD0Z2FajEJ9PXEf7W9rhUg/lDzgjrnH0PSaLLstLBisYHjxAP9jlo/P/wER
	7fwenz75QKln86mT/Fsy9h+5CYvMfJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6uSh-0006Qe-N4; Wed, 26 Feb 2020 11:02:43 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6uSV-0006QB-Ht
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 11:02:32 +0000
Received: from ramsan ([84.195.182.253]) by laurent.telenet-ops.be with bizsmtp
 id 7P2V2200H5USYZQ01P2ViD; Wed, 26 Feb 2020 12:02:29 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j6uST-0002Tx-7k; Wed, 26 Feb 2020 12:02:29 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j6uST-00051y-5o; Wed, 26 Feb 2020 12:02:29 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL 0/5] Renesas SoC updates for v5.7
Date: Wed, 26 Feb 2020 12:02:16 +0100
Message-Id: <20200226110221.19288-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_030231_756587_DB1EDA79 
X-CRM114-Status: UNSURE (   5.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:19 listed in]
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
for v5.7.

It consists of 5 parts:

  [GIT PULL 1/5] Renesas ARM DT updates for v5.7

    - Miscellaneous fixes and improvements.

  [GIT PULL 2/5] Renesas ARM SoC updates for v5.7

    - Enable ARM global timer on Cortex-A9 MPCore SoCs,
    - A minor cleanup.

  [GIT PULL 3/5] Renesas ARM64 defconfig updates for v5.7

    - Restore R-Car M3-W support,
    - Enable additional support for Renesas platforms.

  [GIT PULL 4/5] Renesas ARM64 DT updates for v5.7

    - CryptoCell support for R-Car M3-W, M3-W+, M3-N, E3, and D3,
    - Miscellaneous fixes and improvements.

  [GIT PULL 5/5] Renesas driver updates for v5.7

    - Miscellaneous fixes and improvements.

Note that the first commit from "[GIT PULL 3/5] Renesas ARM64 defconfig
updates for v5.7" is also included in "[GIT PULL] Renesas fixes for
v5.6".

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

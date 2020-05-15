Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D50591D4A6F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 12:06:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CGbdsSO5GtrJ5o+Z1UMnnscya+EdJqtUJGiaTSjqz/I=; b=OYH
	2S8WHwTrChxk5VaixbYSYRM/iKvjQDrheKYir0iivpnEozsJwrOK/xI4I9VxQ7Lb/taewKrfTV7eb
	FMmPlyj2AFveCryKUpzm1P+HWLo8XVOaYrqEOLfEgygaJba0/wZAeNvFJk6UBt5RgZtyKXvE1Fdg0
	bJ9QQPKU5Lu0n3vvuOy7A38TwFcPYGiCugOdwXxXw7nQRDqcs9WxMtYA2mADemJQ9n1Z4h2HWUbQ8
	uh3bZ9Xl9c4n9LSvArAocVZlwe4SvgO+8SvZ8J+Nf7bVM2wiWlLT0LliENNEcD9WwvQLGtSDzYZRn
	1MYAs1RpBtwWK0ISgp5iEiYR9w3aizg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZXEo-0003pj-VK; Fri, 15 May 2020 10:06:42 +0000
Received: from andre.telenet-ops.be ([2a02:1800:120:4::f00:15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZXEM-0003g0-06
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 10:06:16 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:ad37:48f9:900a:523e])
 by andre.telenet-ops.be with bizsmtp
 id ey5w2200D1TfvYq01y5w1Z; Fri, 15 May 2020 12:05:59 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jZXE4-0008Qi-D2; Fri, 15 May 2020 12:05:56 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jZXE4-0003pY-9l; Fri, 15 May 2020 12:05:56 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL 0/5] Renesas SoC updates for v5.8 (take two)
Date: Fri, 15 May 2020 12:05:42 +0200
Message-Id: <20200515100547.14671-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_030614_192573_83CBD6F4 
X-CRM114-Status: UNSURE (   6.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:15 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

	Hi arm-soc folks,

This is my second pull request for the inclusion of Renesas SoC updates
for v5.8.

It consists of 5 parts:

  [GIT PULL 1/5] Renesas ARM defconfig updates for v5.8 (take two)

    - Enable support for the new RZ/G1H SoC in the shmobile and multi_v7
      defconfigs.

  [GIT PULL 2/5] Renesas ARM DT updates for v5.8 (take two)

    - Initial support for the Renesas RZ/G1H SoC on the iWave RainboW
      Qseven SOM (G21M) and board (G21D),
    - Support for the AISTARVISION MIPI Adapter V2.1 camera board on the
      Silicon Linux EK874 RZ/G2E evaluation kit.

  [GIT PULL 3/5] Renesas ARM SoC updates for v5.8 (take two)

    - Add debug-ll support for RZ/G1H.

  [GIT PULL 4/5] Renesas driver updates for v5.8 (take two)

    - Add the main config option for the RZ/G1H SoC.

  [GIT PULL 5/5] Renesas DT binding updates for v5.8 (take two)

    - Document support for the RZ/G1H-based iWave RainboW Qseven SOM
      (G21M) and board (G21D).

Note that the new Renesas RZ/G1H DT Binding Definitions are shared by
driver and DT source files, and thus included in multiple pull requests:
  - "[GIT PULL 2/5] Renesas ARM DT updates for v5.8 (take two)",
  - "[GIT PULL 4/5] Renesas driver updates for v5.8" (previous PR),
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

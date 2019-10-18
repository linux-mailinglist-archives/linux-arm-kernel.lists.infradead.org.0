Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8AEDDC371
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 13:01:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cWybNR9UekEhI//0y2SKxXxgQMZEjQ5/15/4e6XSJPc=; b=hyb
	rYBlOJ8p/6y8JJbAbISBDKyfcLgWNuhMVnPXgGDvf4WBFEIv8kjCwMgxj6Dat9nSwh42Tylf7HUio
	mRsHboUtwk+REsPn4DAONR6ZhsnzsozHlNCTOf2GNYs00JeIpORBTX2xTMMBbAN6hjR/8WSKSefj/
	jdlGbg0AxDvWr8YI3GZ4328KRmXRtdd4I0Hl4nEeGDijFOItJWkvL07hu7w+smSBAcgX/k61/mfhZ
	rSgdOQYkxRdwKEmK8cM/dzexPu9NbLkYq2QX16ZKbxDG/L0hN33k52HH9WjfqNuvUmEope6a9iw+6
	ZqIvqPqL/w2oS+0jR75CSICBNZmK3Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLQ0x-0001hB-OT; Fri, 18 Oct 2019 11:01:47 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLQ0P-0001Qj-U1
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 11:01:15 +0000
Received: from ramsan ([84.194.98.4]) by michel.telenet-ops.be with bizsmtp
 id Ez142100Y05gfCL06z14Dd; Fri, 18 Oct 2019 13:01:08 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iLQ0G-0005q3-Pg; Fri, 18 Oct 2019 13:01:04 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iLPEt-0006ru-Q1; Fri, 18 Oct 2019 12:12:07 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL 0/5] Renesas SoC updates for v5.5
Date: Fri, 18 Oct 2019 12:11:31 +0200
Message-Id: <20191018101136.26350-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_040114_132072_E4086F02 
X-CRM114-Status: UNSURE (   6.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:18 listed in]
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
for v5.5.

It consists of 5 parts:

  [GIT PULL 1/5] Renesas ARM DT updates for v5.5

    - Whitespace cleanups.

  [GIT PULL 2/5] Renesas ARM64 defconfig updates for v5.5

    - Enable support for the new RZ/G2N (r8a774b1) SoC.

  [GIT PULL 3/5] Renesas ARM64 DT updates for v5.5

    - Support for the RZ/G2N (r8a774b1) SoC and the HiHope RZ/G2N board,
    - CPU idle support for R-Car H3 and M3-W,
    - LVDS and backlight support on the HiHope RZ/G2M and RZ/G2N boards,
      with Advantech idk-1110wr LVDS panel,
    - Minor fixes and improvements.

  [GIT PULL 4/5] Renesas driver updates for v5.5

    - Add support for the new RZ/G2N (r8a774b1) SoC,
    - Fix System Controller power request conflicts on recent R-Car Gen3
      and RZ/G2N SoC variants and revisions,
    - Minor cleanups.

  [GIT PULL 5/5] Renesas DT binding updates for v5.5

    - RZ/G2M update for the Renesas Timer Unit bindings,
    - Support for the new RZ/G2N (r8a774b1) SoC and the HiHope RZ/G2N
      board.

Note that the new Renesas RZ/G2N DT Binding Definitions are shared by
driver and DT source files, and thus included in 3 pull requests:
  - "[GIT PULL 3/5] Renesas ARM64 DT updates for v5.5" (for arm-soc),
  - "[GIT PULL 4/5] Renesas driver updates for v5.5" (for arm-soc).
  - "[GIT PULL] clk: renesas: Updates for v5.5] (for clk).

If you prefer to merge this dependency explicitly, please pull tag
renesas-r8a774b1-dt-binding-defs-tag first.

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

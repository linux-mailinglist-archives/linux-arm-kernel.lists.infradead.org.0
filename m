Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CF1EC64C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 17:00:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0oG3oIiUCNH92xNy0hmRjcbwgV08GB5pmfcHYW3pboQ=; b=Qnm
	PmzqxZX5KUdCgwk8tE8J5JLYzmMIrSYKQZkL6yaXq30y1QAFRjgGda0H/OeEC8ZSG9qibI9ozoTEK
	zsCKhNJCy91geXUDAD+4YnHtEKz3Ck4dZYkl8g/is2vYTNI6ZEU6lvOwMqKRj4N0Vtj7mR3ZAVKP9
	EnMPe9yGEBl9mcqDqUTH4HxZd894bOrZtbLUQAzICwdaPkiPFA+EDu8SBQ9JjZCPTCju7lyr4g3Ly
	1WgfDnZG0szFZMUpfpy10jlvP5qGd5ewBUCckuXaNN5BDCAETyKJDHJS8MRdny+W8jtOiPEYHxw+G
	LvrFDhlS9ogHpPnfF3tGBIS0IFtBZLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZLm-0004Mx-4W; Fri, 01 Nov 2019 16:00:34 +0000
Received: from andre.telenet-ops.be ([2a02:1800:120:4::f00:15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZKH-0001pZ-PR
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 15:59:05 +0000
Received: from ramsan ([84.195.182.253]) by andre.telenet-ops.be with bizsmtp
 id Lfyp210095USYZQ01fypyM; Fri, 01 Nov 2019 16:58:52 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iQZK5-0002rR-26; Fri, 01 Nov 2019 16:58:49 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iQZK4-0008CQ-W0; Fri, 01 Nov 2019 16:58:49 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL 0/6] Renesas SoC updates for v5.5 (take two)
Date: Fri,  1 Nov 2019 16:58:36 +0100
Message-Id: <20191101155842.31467-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_085902_028975_545A1C9C 
X-CRM114-Status: UNSURE (   6.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:15 listed in]
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
for v5.5.

It consists of 6 parts:

  [GIT PULL 1/6] Renesas ARM defconfig updates for v5.5

    - Refresh shmobile_defconfig for v5.4-rc1.

  [GIT PULL 2/6] Renesas ARM SoC updates for v5.5

    - Drop legacy DT clock support on R-Car Gen2.

  [GIT PULL 3/6] Renesas ARM64 defconfig updates for v5.5 (take two)

    - Enable support for the new R-Car M3-W+ (r8a77961) SoC.

  [GIT PULL 4/6] Renesas ARM64 DT updates for v5.5 (take two)

    - Video-Input and Serial-ATA support on RZ/G2N,
    - Color Management Module support on various R-Car Gen3 SoCs,
    - Initial support for the R-Car M3-W+ (r8a77961) SoC on the
      Salvator-XS board.

  [GIT PULL 5/6] Renesas driver updates for v5.5 (take two)

    - Initial support for the R-Car M3-W+ (r8a77961) SoC,
    - A minor fix.

  [GIT PULL 6/6] Renesas DT binding updates for v5.5 (take two)

    - JSON schema conversion,
    - Core support for the new R-Car M3-W+ (r8a77961) SoC,
    - Board compatible updates.

Note that the new Renesas R-Car M3-W+ DT Binding Definitions are shared
by driver and DT source files, and thus included in 3 pull requests:
  - "[GIT PULL 4/6] Renesas ARM64 DT updates for v5.5 (take two)" (for
    arm-soc),
  - "[GIT PULL 5/6] Renesas driver updates for v5.5 (take two)" (for
    arm-soc),
  - "[GIT PULL] clk: renesas: Updates for v5.5 (take two)] (for clk).

If you prefer to merge this dependency explicitly, please pull tag
renesas-r8a77961-dt-binding-defs-tag first.

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

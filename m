Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5DE114222
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 15:01:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IyPNPnBlfBZDk1kEeHSSAmB4zVd1RLcxEfY+s0XRtZQ=; b=e6o
	GLyJK94/CQK70XvMdAWhMyqXinwRz8z5IxeTuqPENcfukFFtkayLU4U362hDejBnTqFJh0afFEwM8
	7wsjBd6frbvqkhM3605CPAXqkfF4qxDErmvRKzYvBLO4Uzin0BOGtxplWU0cEffwbUhnjbNpkyjF9
	B5Zw4khLyY5r23Y6FSQVvAbvt9ysgEYtw6DwzF0zdn0q0I9Hf4NQcGoIvSCdtU3I5aHyro/Vfa5TP
	YyUFJRpp1nw/RO8dZswgX+wqnltN9xJ5rroXnJSceXVD15smuaPXguruL/eevMD8sYch+oyqmBnnh
	FWXYodLl1aTrDZBsbreIsadLpkdZmgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icrgn-0001Xq-Um; Thu, 05 Dec 2019 14:01:05 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icrfX-0007g7-6T
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 13:59:49 +0000
Received: from ramsan ([84.195.182.253]) by laurent.telenet-ops.be with bizsmtp
 id aDzY210065USYZQ01DzYQ6; Thu, 05 Dec 2019 14:59:36 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1icrfI-0002Ks-1D; Thu, 05 Dec 2019 14:59:32 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1icrfH-0001x4-VR; Thu, 05 Dec 2019 14:59:31 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH 0/6] arm64: dts: renesas: r8a77961: Add more device nodes
Date: Thu,  5 Dec 2019 14:59:24 +0100
Message-Id: <20191205135930.7454-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_055947_392949_F0DD6F7B 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:19 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-renesas-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Eugeniu Rosca <erosca@de.adit-jv.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

	Hi all,

This patch series broadens support for the R-Car M3-W+ (aka R-Car M3-W
ES3.0) Soc (R8A77961), by adding more device nodes to its DT source
file, up to what can be tested reasonably using remote access.

This has been tested on a Salvator-XS development board.
More details can be found in the individual patches.

To be queued in renesas-devel for v5.6.

Thanks for your comments!

Geert Uytterhoeven (6):
  arm64: dts: renesas: r8a77961: Add RWDT node
  arm64: dts: renesas: r8a77961: Add GPIO nodes
  arm64: dts: renesas: r8a77961: Add RAVB node
  arm64: dts: renesas: r8a77961: Add SYS-DMAC nodes
  arm64: dts: renesas: r8a77961: Add I2C nodes
  arm64: dts: renesas: r8a77961: Add SDHI nodes

 arch/arm64/boot/dts/renesas/r8a77961.dtsi | 390 +++++++++++++++++++++-
 1 file changed, 377 insertions(+), 13 deletions(-)

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

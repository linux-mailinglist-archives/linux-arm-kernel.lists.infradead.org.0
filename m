Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 335A09AFBB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 14:38:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=EC6mtXuEPfbdKDfEnBkvZVthYtluBiJ5xcuR6h3vwGQ=; b=Hrc
	zSTg5oCnSXB2ufahshdFvvXqJQ7vLD8XnzcMUJWXRGWc//czdb29UO2fQ2tfTNd8QydakpiRUlEF4
	8ld8+drjHrCPY1a9dzCKU29w4wQIf4lNMERWSYIE1Oag5aQXrLdBs0Dx0R7tqhfnv0qja9XQu7TA6
	+fXpX1+h0cgz+Uaj6+xjZu5GF6+bX6ZJX/ThtBGsYP2UbRGLnU2kVbV8mbjTPpxTZLgktuE74Ifgc
	dIUeSWAUJ75xyfjzZ8rVxdK0u+rO2TymUiBvFX9Fb0Bv/zq+CybDC9BboBViWak7+PxSVWcp+/aZ3
	cENkIne1SzSEV8a4nuZe7NQOEsW2f1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i18pR-0008Ha-L5; Fri, 23 Aug 2019 12:38:05 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i18oQ-00074P-Qn
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 12:37:05 +0000
Received: from ramsan ([84.194.98.4]) by baptiste.telenet-ops.be with bizsmtp
 id sccr2000805gfCL01ccrV0; Fri, 23 Aug 2019 14:36:53 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i18oF-0006YL-Cy; Fri, 23 Aug 2019 14:36:51 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i18oF-0004uG-B7; Fri, 23 Aug 2019 14:36:51 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [PULL 0/5] Renesas SoC updates for v5.4 (take two)
Date: Fri, 23 Aug 2019 14:36:38 +0200
Message-Id: <20190823123643.18799-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_053703_027601_CDAB8584 
X-CRM114-Status: UNSURE (   7.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:13 listed in]
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
Cc: linux-renesas-soc@vger.kernel.org, Simon Horman <horms@verge.net.au>,
 Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

	Hi arm-soc folks,

This is my second pull request for the inclusion of Renesas SoC updates
for v5.4.

It consists of 5 parts:

  [PULL 1/5] Renesas ARM DT updates for v5.4

    - Fix HSCIF PM Domain on R-Car H1,
    - PMU support for RZ/G1C.

  [PULL 2/5] Renesas ARM SoC updates for v5.4

    - Low-level debugging support for RZ/A2M.

  [PULL 3/5] Renesas ARM64 DT updates for v5.4 (take two)

    - Sort nodes in various SoC and board DTSes,
    - HDMI sound for HiHope RZ/G2M and R-Car M3-N Salvator-X(S) boards,
    - Limit EtherAVB to 100Mbps on the Ebisu and Draak boards,
    - Small fixes and improvements.

  [PULL 4/5] Renesas driver updates for v5.4 (take two)

    - Improve "always-on" PM Domain handling on SH/R-Mobile SoCs,
    - Automatic errata selection for Cortex-A7/A9,
    - Small fixes and improvements.

  [PULL 5/5] Renesas DT binding updates for v5.4 (take two)

    - Renesas DT binding doc filename cleanups,
    - R-Car Gen3 and RZ/G1 updates for the R-Car CAN and CANFD DT
      bindings.

For now I more or less followed Simon's way of structuring the branches,
but I'm open for change.  Hence if you have any comments, or suggestions
for improving the workflow, please let me know.

Thanks for pulling, and for your comments!

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

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A983184AEF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 16:44:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=M9ro3zjjBUBYYIjcb8FxvWlqm58Zxc/4m7L96EpWFnI=; b=JsN
	Tr0JMpLPh3wqyHxAynhVqdZC1SxU7oYTh/NcwNRTu6sh/ABwSkYD3hgmIeIdBduE6aH1MUpgVHa2Z
	aAK9rlYe18aZsw2NBDbPc44ulxMGJnGm6e+Zv9yvPuXzvRO8QO4VvaigVFhGRFs1o0bC5LDe3AWc3
	NboPsBL3sK04tYwSQf2FslrjoZ8iwVwDUm09aXyBa+wfR/kAgxPM/zd334MjqIs/6/CExUycPDdEN
	biglcqDRhF3jFaTmcQfLZzGs7e9SbaE+q9lKdhVNAB4T5Xfkh4jqRbk4N2pAkEpdtS5GozNUjo/0R
	mCt02OVo/tDP2elAMMojIzUxKJLpIEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCmTb-0004Fv-4I; Fri, 13 Mar 2020 15:43:55 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCmTB-00041C-Kq
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 15:43:31 +0000
Received: from ramsan ([84.195.182.253])
 by baptiste.telenet-ops.be with bizsmtp
 id DrjG2202H5USYZQ01rjGAi; Fri, 13 Mar 2020 16:43:17 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jCmSy-0002sB-Eo; Fri, 13 Mar 2020 16:43:16 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jCmSy-0000RN-C7; Fri, 13 Mar 2020 16:43:16 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL 0/3] Renesas SoC updates for v5.7 (take two)
Date: Fri, 13 Mar 2020 16:43:01 +0100
Message-Id: <20200313154304.1636-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_084329_843505_CC4FC587 
X-CRM114-Status: UNSURE (   5.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
for v5.7.

It consists of 3 parts:

  [GIT PULL 1/3] Renesas ARM DT updates for v5.7 (take two)

    - LCD/touchscreen support for the iwg22d-sodimm board.

  [GIT PULL 2/3] Renesas ARM64 DT updates for v5.7 (take two)

    - Thermal support for R-Car M3-W+,
    - Support for the M3ULCB board with R-Car M3-W+,
    - CPUIdle support for R-Car M3-N and E3,
    - Display support for the HiHope RZ/G2M board,
    - A minor fix.

  [GIT PULL 3/3] Renesas DT binding updates for v5.7

    - Document support for the M3ULCB board with R-Car M3-W+.

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

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1CE1310D7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 11:50:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=D4LrMGQs/B2Zita4n0ywJKO9SkUBAaGwmLr7UxBM7LM=; b=sA+
	v461Pa/MNBI5YgtHskfhjgFdtcnCUJoR7QbafJPicXHbo70ctkObBWo98XCDh044ft1vSn/ZqmVRu
	NxJbVCE/9sntIGWM+OSFKXFmqIFCDHgF0xTxsqqkXYgSJv5mzgULjwljDRPTNnokIs2pW2nsMxvYE
	ARE1ylO4QamT6EiMMl+crJysOrp6gJ0940qOA1X8urVwt774VneynTvCyfZWeKzNbRvB6a/zfY1GB
	k9DvNQ8jRKEjqTecDDWHlRn0J9LGhq3qCzGVQSNtS8kmjUdWwEyWq6oIzw8LJU4IXAA3RxL+Xbvwl
	65cBhm6doCChiRUv8VKjP9C9BXd9CGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioPy6-0005ve-P9; Mon, 06 Jan 2020 10:50:42 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioPwg-0003TN-Qg
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 10:49:18 +0000
Received: from ramsan ([84.195.182.253]) by michel.telenet-ops.be with bizsmtp
 id myp52100R5USYZQ06yp5RP; Mon, 06 Jan 2020 11:49:09 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1ioPwX-0001yg-KJ; Mon, 06 Jan 2020 11:49:05 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1ioPwX-0002Bp-IP; Mon, 06 Jan 2020 11:49:05 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL 0/5] Renesas SoC updates for v5.6
Date: Mon,  6 Jan 2020 11:48:52 +0100
Message-Id: <20200106104857.8361-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_024915_038122_C8CC60DC 
X-CRM114-Status: UNSURE (   6.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a02:1800:110:4:0:0:f00:18 listed in] [list.dnswl.org]
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

This is my first pull request for the inclusion of Renesas SoC updates
for v5.6.

It consists of 5 parts:

  [GIT PULL 1/5] Renesas ARM defconfig updates for v5.6

    - Enable support for the display panel on the iwg20d board.

  [GIT PULL 2/5] Renesas ARM DT updates for v5.6

    - Touch screen support for the iwg20d board,
    - ARM global timer support on Cortex-A9 MPCore SoCs,
    - Miscellaneous fixes for issues detected by "make dtbs_check".

  [GIT PULL 3/5] Renesas ARM64 DT updates for v5.6

    - Remove now unused ARCH_R8A7796 config symbol,
    - Rename R-Car H3 and M3-W SoC, and ULCB board DTS files to increase
      naming consistency,
    - Miscellaneous fixes for issues detected by "make dtbs_check",
    - Enhance support for R-Car M3-W+,
    - Display support for the EK874 board,
    - Prepare for split of R-Car H3 ES1.x and ES2.0+ config symbols,
    - Minor fixes and improvements.

  [GIT PULL 4/5] Renesas driver updates for v5.6

    - Remove now unused ARCH_R8A7796 config symbol,
    - Fix a sparse warning,
    - Add split R-Car H3 ES1.x and ES2.0+ config symbols.

  [GIT PULL 5/5] Renesas DT binding updates for v5.6

    - Document TMU and CAN(FD) support for R-Car RZ/G2N.

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

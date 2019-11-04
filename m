Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9D3EDD7F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 12:09:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ijZ2fWO6V1d7D6LJuFjkD2JVUrrG7ZOi+S6Ig2qJDEE=; b=CNYWqj5H+8dxWX
	b3+FuXBx21a6s4DLrv6qdz+jsXpdv4Ofm1RwjU54/FFeaI++CEHOcQ7skNK+thcaIKdAceAQJLjK5
	lTUjMHUNpU1sqGH0o9PjvAyYneR30EteJ6DMVhL78AegbFm0Yk+8pXk2/OrJu0mjnYPROBLbfuHwL
	J3ycnrO2JkVkmFWeTD8kI4Kt+CiAyF6R1FgUofzGaXK+H2Bp9trzfiLHRZlWQek7ByfKGfkQ5pOeF
	oivc4WFbcagthtL+hGmV23oYTBSKJ2+ARLLvQRgVlaXTLRYZ1MNGJR6//Apim97sD0Mdismjr5Yzh
	JgfLPhtQJhGrH3FjKoiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRaEn-0004a4-Kk; Mon, 04 Nov 2019 11:09:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRaEd-0004Zc-H0
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 11:09:24 +0000
Received: from dragon (li1038-30.members.linode.com [45.33.96.30])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4F18521D81;
 Mon,  4 Nov 2019 11:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572865763;
 bh=ED2+1l4ATP0OGk62gY0UI54W/7Sig6CV0sihleJDKzA=;
 h=Date:From:To:Cc:Subject:From;
 b=cfSvfGSuyCd7Gp5N+tSJ751niPlDFEuZRhtOva2P/UBpeL8dqWk9Bk8LhqabdsLfP
 N7aJIWYYRkuk/E/+/l5JoirmB7IJ/hkt0x4Br0Pj8EOJQEtuc3zxs37weDpuDiNiuu
 dxwyI5d8r6gyhjUJLuzbDovxEnwt5k9LqWNl9pGs=
Date: Mon, 4 Nov 2019 19:08:57 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: [GIT PULL] i.MX clock changes for 5.5
Message-ID: <20191104110856.GX24620@dragon>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_030923_601463_C8E6AB44 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Stefan Agner <stefan@agner.ch>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-clk-5.5

for you to fetch changes up to bceed71ba13116de4b1459c2c6db47d927b48e68:

  clk: imx: imx8mq: fix sys3_pll_out_sels (2019-11-04 09:10:49 +0800)

----------------------------------------------------------------
i.MX clock changes for 5.5:
 - Make 1443X/1416X PLL clock structure common for reusing among i.MX8
   SoCs.
 - A couple of imx7ulp clock multiplexer option corrections.
 - Drop IMX7ULP_CLK_MIPI_PLL clock, as it's a MIPI DSI local clock and
   shouldn't be used externally.
 - Add VIDEO2_PLL clock for imx8mq which is needed by DCSS when high
   resolutions are used.
 - Add missing gate clock for pll1/2 fixed dividers on i.MX8 SoCs.
 - Register SYS_PLL1 and SYS_PLL2 as fixed clock rather than pll14xx
   type of clock.
 - Use imx_obtain_fixed_clk_hw() to simplify i.MX6/7/8 clock driver code
   a little bit.
 - One cosmetic change on clk-pll14xx code to make variables static.

----------------------------------------------------------------
Anson Huang (4):
      clk: imx8mm: Move 1443X/1416X PLL clock structure to common place
      clk: imx8mn: Use common 1443X/1416X PLL clock structure
      clk: imx7ulp: Correct system clock source option #7
      clk: imx7ulp: Correct DDR clock mux options

Fancy Fang (1):
      clk: imx7ulp: do not export out IMX7ULP_CLK_MIPI_PLL clock

Laurentiu Palcu (1):
      clk: imx8mq: Add VIDEO2_PLL clock

Leonard Crestez (4):
      clk: imx: pll14xx: Fix quick switch of S/K parameter
      clk: imx8mq: Define gates for pll1/2 fixed dividers
      clk: imx8mm: Define gates for pll1/2 fixed dividers
      clk: imx8mn: Define gates for pll1/2 fixed dividers

Peng Fan (8):
      clk: imx: imx8mm: mark sys_pll1/2 as fixed clock
      clk: imx: imx8mn: mark sys_pll1/2 as fixed clock
      clk: imx: imx8mq: mark sys1/2_pll as fixed clock
      clk: imx: imx7d: use imx_obtain_fixed_clk_hw to simplify code
      clk: imx: imx6sll: use imx_obtain_fixed_clk_hw to simplify code
      clk: imx: imx6sx: use imx_obtain_fixed_clk_hw to simplify code
      clk: imx: imx6ul: use imx_obtain_fixed_clk_hw to simplify code
      clk: imx: imx8mq: fix sys3_pll_out_sels

YueHaibing (1):
      clk: imx: clk-pll14xx: Make two variables static

 .../devicetree/bindings/clock/imx7ulp-clock.txt    |   1 -
 drivers/clk/imx/clk-imx6sll.c                      |   8 +-
 drivers/clk/imx/clk-imx6sx.c                       |  12 +-
 drivers/clk/imx/clk-imx6ul.c                       |   8 +-
 drivers/clk/imx/clk-imx7d.c                        |   4 +-
 drivers/clk/imx/clk-imx7ulp.c                      |   9 +-
 drivers/clk/imx/clk-imx8mm.c                       | 150 +++++++-------------
 drivers/clk/imx/clk-imx8mn.c                       | 152 +++++++--------------
 drivers/clk/imx/clk-imx8mq.c                       |  77 +++++++----
 drivers/clk/imx/clk-pll14xx.c                      |  72 +++++-----
 drivers/clk/imx/clk.h                              |   3 +
 include/dt-bindings/clock/imx7ulp-clock.h          |   1 +
 include/dt-bindings/clock/imx8mm-clock.h           |  19 ++-
 include/dt-bindings/clock/imx8mn-clock.h           |  19 ++-
 include/dt-bindings/clock/imx8mq-clock.h           |  24 +++-
 15 files changed, 268 insertions(+), 291 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A59D1662D4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 17:30:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+GbhGA5FuzXzJaq9T5JYN2+UiuGoGgAu1XRqZzmRjL0=; b=TH+
	abCnLnlaje3nD6Yhq9zEOwIsTzOnDxfhZNUhRVj3PAY1PZH8Huz68sDOzKk1ZLjpW2zHI81Cxz/ts
	2VeQx/NWumtjRKlJSINH5h1B50TwWJfQV53d3v4fK1Hntxv7d5A8Vf2IHnSHxupDOkbPdoLI86FYq
	/vLd37Xn/sGLyvWVVwI8F+szCsXzogjo8Y4d7yoydXAC9DBcY63h0BIC7HH76wlsANcjtlbTg5dDQ
	tiabeOyfMd+byUDnDZfHUzpE9rcDcOe2b/nIm8KrEVtl4cBCvHW8s4HsgEvZRHfayA3qlUqB1YVlo
	RuHSSv/2xFhh4QsbacUKdh9/3gqQqWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4oiA-0005vO-6w; Thu, 20 Feb 2020 16:30:02 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4oht-0005u2-AI
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 16:29:46 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6343A200BED;
 Thu, 20 Feb 2020 17:29:43 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 54446200BC4;
 Thu, 20 Feb 2020 17:29:43 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 2BDDD20328;
 Thu, 20 Feb 2020 17:29:42 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Dong Aisheng <aisheng.dong@nxp.com>
Subject: [PATCH v2 0/8] firmware: imx: Align imx SC msg structs to 4
Date: Thu, 20 Feb 2020 18:29:31 +0200
Message-Id: <cover.1582216144.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_082945_493668_BD3B6749 
X-CRM114-Status: UNSURE (   6.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stefan Agner <stefan@agner.ch>, linux-clk@vger.kernel.org,
 Franck LENORMAND <franck.lenormand@nxp.com>, linux-gpio@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The imx SC api strongly assumes that messages are composed out of
4-bytes words but some of our message structs have sizeof "6" and "7".

This produces many oopses with CONFIG_KASAN=y:

	BUG: KASAN: stack-out-of-bounds in imx_mu_send_data+0x108/0x1f0

It shouldn't cause an issues in normal use because these structs are
always allocated on the stack but tools like KASAN are very useful on
stable kernels.

Chnages since v1:
* Split into many patches with individual fixes: tags
Link to v1: https://patchwork.kernel.org/patch/11376909/

Leonard Crestez (8):
  clk: imx: Align imx sc clock msg structs to 4
  clk: imx: Align imx sc clock parent msg structs to 4
  firmware: imx: misc: Align imx sc msg structs to 4
  firmware: imx: scu-pd: Align imx sc msg structs to 4
  firmware: imx: Align imx_sc_msg_req_cpu_start to 4
  pinctrl: imx: scu: Align imx sc msg structs to 4
  rtc: imx-sc: Align imx sc msg structs to 4
  soc: imx-scu: Align imx sc msg structs to 4

 drivers/clk/imx/clk-scu.c               | 8 ++++----
 drivers/firmware/imx/misc.c             | 8 ++++----
 drivers/firmware/imx/scu-pd.c           | 2 +-
 drivers/pinctrl/freescale/pinctrl-scu.c | 4 ++--
 drivers/rtc/rtc-imx-sc.c                | 2 +-
 drivers/soc/imx/soc-imx-scu.c           | 2 +-
 6 files changed, 13 insertions(+), 13 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

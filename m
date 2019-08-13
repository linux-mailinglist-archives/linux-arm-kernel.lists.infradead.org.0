Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF778BF3B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 19:06:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NJf8WKqVwuopRz4N7ZaRpFab+MuJ/l6iLkwuFK2C0KQ=; b=Xv4
	AQYib2EJnizX+VGWenTGHYfCm1at7yptpSeVXrj4vaSHGEMrHEg55B2qt/AbFDju3pwDEf51qsANI
	WrYjcLHTHjbW8BVKFClOszDkX5jr8KC/BYyvcyP4LAIyR/wQtMMX7G6ahJP2w23uow53vuVxhmqAJ
	GkY9GrogmxyKdnKsIDiI5qSFjdUlBEqDqM+qq2rIkmR6P7t6+NON4wB1RElBUSaoE8SFHkdi/xinQ
	2xTBNyPVkB66QRDLkzTzN/py1skgkDoNzGtVF60czjWDnQdOWOtDrxbre8OeQ6As4JDWzVH44H8VP
	QgIm6Lyp8c++TD/AJjGGaa5ecCL+Mug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxaFN-00048U-Bz; Tue, 13 Aug 2019 17:06:09 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxaEq-0003vk-SR
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 17:05:40 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 0AF272007C5;
 Tue, 13 Aug 2019 19:05:35 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E87312007B0;
 Tue, 13 Aug 2019 19:05:34 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 2F91D2060E;
 Tue, 13 Aug 2019 19:05:34 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Jacky Bai <ping.bai@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 0/4] clk: imx8m: Fix incorrect parents
Date: Tue, 13 Aug 2019 20:05:27 +0300
Message-Id: <cover.1565715590.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_100537_059165_46E751DF 
X-CRM114-Status: UNSURE (   5.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

No checks are made to ensure the parents in the _sels arrays actually
exist and it turns out that several are incorrect.

I found the errors using a hack to clk core, is there a better way?
Link: https://github.com/cdleonard/linux/commit/da32c2e76eb373e8a03aec905af2eef28a7997a7

Also add imx8mn GIC clock while we're at it because otherwise parent
could get disabled and lock the system.

Leonard Crestez (4):
  clk: imx8mq: Fix sys3 pll references
  clk: imx8mm: Fix incorrect parents
  clk: imx8mn: Fix incorrect parents
  clk: imx8mn: Add GIC clock

 drivers/clk/imx/clk-imx8mm.c             |   8 +-
 drivers/clk/imx/clk-imx8mn.c             |  19 ++--
 drivers/clk/imx/clk-imx8mq.c             | 112 +++++++++++------------
 include/dt-bindings/clock/imx8mn-clock.h |   3 +-
 4 files changed, 74 insertions(+), 68 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

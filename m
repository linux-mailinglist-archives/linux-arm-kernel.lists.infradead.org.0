Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B98E11CD9A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 13:55:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jbP+Zl5Qr8ftXak4maBOQ+VAPFYR9XDyhjD8V9ovRu4=; b=s2ZYfP0NNRkxuV
	z+Umm903/bwQARkF0YHIbs8vZNB9DHUv8UlH1Z/06b+3lrqArw8KKyQCS2fjdhssxax73MRmitNFe
	w+6zQMLOXCon2v9rqHROy5djb+XupH4StREuW3srhWaexSAHcG7Ch0VC16o2lztwlsqtXKjOgrxvh
	8tlkiZV2+7E4OufJutVfy/RQzfkEqpvRfYjHqHss68es3C3e5ml4VpbYUk7knjqk+E/1ENBPAe2Mk
	xxQm5BQ59qz37Ha7puxkJ0GFoS/jLv5SJCBmtYmx5c0Vp1w/2+jBztN222FS32kvdb6BB9DllOI2m
	l/YBVD0MrjR1APMOD2/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifNzx-00034v-0t; Thu, 12 Dec 2019 12:55:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifNzj-0002eu-01
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 12:55:04 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DC38922527;
 Thu, 12 Dec 2019 12:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576155302;
 bh=q22ys+7yEejNl95SUh3b+v8OPqjuQuiXy3OCNG1U4zA=;
 h=Date:From:To:Cc:Subject:From;
 b=cL8iUT9zMdfomDvmoiHYfeh7GCl6Y+cJttQhltrKT9SaI80y5NcmH8pXYEPiFcza4
 zaVhwpopscnTIpZOyY2yiOR/ct2u6FtLVHjgs/g51Sry3Nu0tQm/BTi/gZ87Byp89f
 WWoE0iKB5N7dfLh5Ib8t361ZK/sF7DGsDAgggV1A=
Date: Thu, 12 Dec 2019 20:54:48 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: [GIT PULL] i.MX clock fixes for 5.5
Message-ID: <20191212125447.GL15858@dragon>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_045503_062557_02F77A99 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-clk-fixes-5.5

for you to fetch changes up to c3a5fd15ed0c1494435e4e35fbee734ae46b5073:

  clk: imx: pll14xx: fix clk_pll14xx_wait_lock (2019-12-11 15:07:06 +0800)

----------------------------------------------------------------
i.MX clock fixes for 5.5:
 - Add missing lock to divider in the composite driver for exclusive
   register access.
 - Add missing sentinel for ulp_div_table in clk-imx7ulp driver.
 - Fix clk_pll14xx_wait_lock() function which calls into
   readl_poll_timeout() with incorrect parameter.

----------------------------------------------------------------
Peng Fan (3):
      clk: imx: clk-composite-8m: add lock to gate/mux
      clk: imx: clk-imx7ulp: Add missing sentinel of ulp_div_table
      clk: imx: pll14xx: fix clk_pll14xx_wait_lock

 drivers/clk/imx/clk-composite-8m.c | 2 ++
 drivers/clk/imx/clk-imx7ulp.c      | 1 +
 drivers/clk/imx/clk-pll14xx.c      | 2 +-
 3 files changed, 4 insertions(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

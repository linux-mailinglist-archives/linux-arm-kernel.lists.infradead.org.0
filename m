Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D071860C3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 01:25:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gnom/QJrvHeV7MJiPldhiUzMBvlWRp0I9Tg/m09NfNw=; b=Ziasbq9Eo0uN2X
	Zo0ctmuo9AC03E7RaOG6lPdpZZtMlU79oObwOVdSpfq+3ybz8HPbdxUyFb3m0cdMKsBqMRCo8Zbm4
	jGRxRhl6+XPHakXAe4tuK6jyK7Xpm89QFapkZNFYmGcLFHQJ1z433dd0uO32t7yKot7YiIGNFOo99
	hI3y7fWm6Pi/grO7iRtvvtf3WQHPnb6U0Ecv4tZ4jSUHQPTB4rXui+LnYu7qVrEx5Hy+bYDhtsN60
	G96qvrHtoRqH0Ghry8ilw/ZMmQnu9sHwWOOcKKKbQsoPfp9nVQhvwOaqAlcUzDoR8gJ25VFxp2yjt
	qWbuM9zMZtrBbKJ9uNmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDdZj-0006Rz-BV; Mon, 16 Mar 2020 00:25:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDdZc-0006Rg-3f
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 00:25:41 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 09175205ED;
 Mon, 16 Mar 2020 00:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584318339;
 bh=oIh/Sa6m0Gp0EyqnU/CsJD/QSJgd+E76JL1QkHOvR9k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZJcAzHSVaZrvJYM4TA2p2uEOIm1WoujFL/C/rw4vVBtUJ6HBnWyiiD5VbBP3YOf2h
 5vErhIKKbcJSk5eBuywr7xipCIQqdexTZ3GbBBRTBiuKUdJ6uuqMN4Tfiv29LackQW
 TxLwGMLJFnyrtw021IcjH64c4tlvEHgw0cXMwbOA=
Date: Mon, 16 Mar 2020 08:25:29 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v2 1/8] clk: imx: Align imx sc clock msg structs to 4
Message-ID: <20200316002527.GA16155@dragon>
References: <cover.1582216144.git.leonard.crestez@nxp.com>
 <10e97a04980d933b2cfecb6b124bf9046b6e4f16.1582216144.git.leonard.crestez@nxp.com>
 <20200224072210.GR27688@dragon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224072210.GR27688@dragon>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_172540_170728_23A14DC5 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-rtc@vger.kernel.org, Stefan Agner <stefan@agner.ch>,
 Franck LENORMAND <franck.lenormand@nxp.com>, linux-gpio@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, linux-clk@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 03:22:18PM +0800, Shawn Guo wrote:
> On Thu, Feb 20, 2020 at 06:29:32PM +0200, Leonard Crestez wrote:
> > The imx SC api strongly assumes that messages are composed out of
> > 4-bytes words but some of our message structs have odd sizeofs.
> > 
> > This produces many oopses with CONFIG_KASAN=y.
> > 
> > Fix by marking with __aligned(4).
> > 
> > Fixes: fe37b4820417 ("clk: imx: add scu clock common part")
> > Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> 
> Applied, thanks.

Patch #1 and #2 were dropped from my clk queue, as Stephen hasn't been
convinced by this change.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

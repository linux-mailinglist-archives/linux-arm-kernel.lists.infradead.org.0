Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38933116510
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 03:37:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ly8Bri0ffQVXRwAdC1//jogNksy6jU8P8nj6KzftxZA=; b=f7uhDHnPq/+YNu
	uNiG0S4eCOaIjQ1dwxCtA8Bu+5yyRgDKCfXYexnqVuWfasm3mS2Dw7IXppSGN/7TFi1LHOuI19r0D
	nYaUBOINWAtrsgN2As6SZmsTHhxcQPpP1MV3LgfLaEa7DVUy8xfqbLtK29p4JYr45bH+kP0fn0U21
	wuE/7N+GQNCtPGmrIfORJjFjMM5XLCXrPIBnZFDtwn+S4X27xDjb3wMM5N6Y7C5ca/WSyGWuxxSTM
	viLx6QYeBzsFKazRSSRVqUqCNYMUY9GJXfLQbGy6b2T2jXPMGmlucQ/b7jPoz92qqFaZ2HCTttBcU
	O6kR6SfqhHhOQ+jLgyWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ie8vH-0006Ns-U9; Mon, 09 Dec 2019 02:37:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ie8v9-0006NJ-Ac
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 02:37:12 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EED5A206F4;
 Mon,  9 Dec 2019 02:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575859030;
 bh=KwTcMhxxQxSTWeCjOkeJmE5iBWvBtzmK8AUbPh94n54=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hjNX6VXVtN71ykx9twRtu+K3Dmxs+V5KGy0KHaoNRZt9mlE8F1rVMdOQYoWho7vQt
 3bPSfCjK9ydbcg3gVZYf+tfuMGtyoXd6ukg+kcZtlnHiWBggrFbdlD21VMatYDS1KJ
 0vFpHs8w1mWve8L2qYeg5e7NFlDMp3Bkrb+yy+zE=
Date: Mon, 9 Dec 2019 10:36:54 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH] clk: imx8m: Suppress bind attrs
Message-ID: <20191209023653.GV3365@dragon>
References: <ce34606bb3876f7506f483db7623fcba6da04810.1574344160.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ce34606bb3876f7506f483db7623fcba6da04810.1574344160.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_183711_391369_F42C3A07 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-imx@nxp.com, kernel@pengutronix.de,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 03:52:17PM +0200, Leonard Crestez wrote:
> The clock drivers on imx8m series are registered as platform devices and
> this opens the possibility of reloading the driver at runtime.
> 
> This doesn't actually work: clocks are never removed and attempting to
> bind again results in registration errors and a crash. Almost all
> devices depend on clocks anyway so rebinding is unlikely to ever be
> useful
> 
> Fix this by explicitly suppressing bind attrs like several other
> clock drivers.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Reviewed-by: Peng Fan <peng.fan@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

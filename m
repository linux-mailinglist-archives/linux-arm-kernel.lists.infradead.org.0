Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C97DB177B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 05:42:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KOeL9X3vDSyfYAPuBKbWivRqvhFYWtn931Y9VwC7pPo=; b=Ytq3+GpvXkTh8g
	W2w+GCU2WAg7vUZCvbBC2hDnpV3LKUb5/yHR1B8JxIQKR/bxHxr0ftbdc9wMv37q7bMJ/30QSEXNr
	Gac2w6v6gx/qpnUtUXQnGT7BJ9JfzeBwtqYxjr8rUwPKNhoeRkcjMaR81QB8kR9IJGy7SDZx4dwVl
	8RvB+fBCDsRj67SQal+G7bIN7WCYq7scBDleJ9jzIzErwWK1PxYbt6Fj91Xf0marBLMIyrCS8AKyA
	TKgn3jUrVgGaPC+x9S6sHefJmfv6Iin5wyrq3eDbzLWMYCICJRYM2sTE7/IRq+bUmPcw9nQGtNwRw
	5x98T8JhISTksTnNtGcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8cTl-0003ym-0h; Fri, 13 Sep 2019 03:42:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8cTY-0003yP-1W
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 03:42:25 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 759EF20684;
 Fri, 13 Sep 2019 03:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568346143;
 bh=a4+pLs0HMpwthQVTXKUFl9IjvLrN/5bYwSFxfU5uDKw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iTlc+yhvbhgGcqvpGhGuRb8jZA11MoghlvglMSEwsgxqcp05bmmYUKE/J82jv2Buq
 pkUX/gLzFxBDpIjNUXXObPjP/a7HDnHC26YmztmstpVsv6dzCD2EJ3XkWgwe1+vVFo
 gn5lk9BdxbneE1Q+HqWQtNKWa8WvzoHclgfl9gLk=
Date: Fri, 13 Sep 2019 11:42:14 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH] clk: imx: lpcg: write twice when writing lpcg regs
Message-ID: <20190913034213.GH17142@dragon>
References: <1566936978-28519-1-git-send-email-peng.fan@nxp.com>
 <20190906172044.B99FB20838@mail.kernel.org>
 <CAA+hA=To9B0H1z6Hh1eSZN9_rcextT_Oe-CTMmz9fC9CDNUBTQ@mail.gmail.com>
 <DB3PR0402MB3916906683B58843B459ABE1F5B60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB3916906683B58843B459ABE1F5B60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_204224_105103_7DB43AA1 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Dong Aisheng <dongas86@gmail.com>, Stephen Boyd <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 02:47:59AM +0000, Anson Huang wrote:
> 
> 
> > On Sat, Sep 7, 2019 at 9:47 PM Stephen Boyd <sboyd@kernel.org> wrote:
> > >
> > > Quoting Peng Fan (2019-08-27 01:17:50)
> > > > From: Peng Fan <peng.fan@nxp.com>
> > > >
> > > > There is hardware issue that:
> > > > The output clock the LPCG cell will not turn back on as expected,
> > > > even though a read of the IPG registers in the LPCG indicates that
> > > > the clock should be enabled.
> > > >
> > > > The software workaround is to write twice to enable the LPCG clock
> > > > output.
> > > >
> > > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > >
> > > Does this need a Fixes tag?
> > 
> > Not sure as it's not code logic issue but a hardware bug.
> > And 4.19 LTS still have not this driver support.
> 
> Looks like there is an errata for this issue, and Ranjani just sent a patch for review internally,

Having errata number in both commit log and code comment is generally
helpful.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

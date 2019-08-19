Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8C4922EE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 13:59:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zxKzVeLY6KNQcbNG6GZhWENAndiStjQeZXGl9pXw/jE=; b=G9vW4qKIsgpR7k
	/jN9TSU9tHByW93Muh26a/JaiRBoGbLmiU/M1EVZcLwMDYMGnPzmHWESnfEtM0e8+LjPgbymGSHv8
	4j3DbMLCtHrrSeEyCERxgBfF0dxCrd5evvk7rY6qKHKBl9haYX5gB8joidMmi35JNSXcLTJIZq/K7
	u3bSipcxr852yJHmXHxLkGzFO4H26SHfWZlLhGXJb2FgH/zvHQkxQ6vdbdXiCkASVhRyEYauI6tUq
	vM1Gek9LSFtJCMDfqTuU7YwzvMVoVvjPcOs/5wG6qOI4nF1OXv6cJEM5yxJh+x+Jgj6Iogc59PRQk
	JtSesu20+mZmm80PO+tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzgJs-0005zD-Kh; Mon, 19 Aug 2019 11:59:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzgJl-0005yu-7d
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 11:59:22 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DEDF12085A;
 Mon, 19 Aug 2019 11:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566215960;
 bh=BlF5eyN8+BYQuNaKgdgBAcb8evFPpg8cxRjy3CPmiRE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=N/S1qpYiSKTHfHFnyA5YvjHA45F9f9gS2wu4MxcxIXVBMokQT2MskhpPwU0eBohhZ
 k2iJWiPJx/Rr9D4SsqUjBQwwGBgE/kU+WIFNI9kOWvU46yG9z+N2PbbwhnGUDzICzK
 TB+W5XK0hC8wxg01tmpoCqFv6au/KqzISkPbUiBM=
Date: Mon, 19 Aug 2019 13:59:09 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH] clk: imx8mn: fix int pll clk gate
Message-ID: <20190819115907.GB5999@X250>
References: <20190814015312.11711-1-peng.fan@nxp.com>
 <20190816180246.D37BD20665@mail.kernel.org>
 <AM0PR04MB4481D73817CFCB7491DE89CB88A80@AM0PR04MB4481.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB4481D73817CFCB7491DE89CB88A80@AM0PR04MB4481.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_045921_290231_33612857 
X-CRM114-Status: GOOD (  13.29  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 01:05:42AM +0000, Peng Fan wrote:
> Hi Stephen,
> 
> > Subject: Re: [PATCH] clk: imx8mn: fix int pll clk gate
> > 
> > Quoting peng.fan@nxp.com (2019-08-13 18:53:12)
> > > From: Peng Fan <peng.fan@nxp.com>
> > >
> > > To Frac pll, the gate shift is 13, however to Int PLL the gate shift
> > > is 11.
> > >
> > > Cc: <stable@vger.kernel.org>
> > > Fixes: 96d6392b54db ("clk: imx: Add support for i.MX8MN clock driver")
> > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > Reviewed-by: Jacky Bai <ping.bai@nxp.com>
> > > ---
> > 
> > This is a fix for a change in -next. Why is stable Cced?
> 
> Sorry, that was added by mistaken. Should I resend v2 to drop it?

Applied with both stable and Fixes tag dropped, as the commit ID is
unstable before it lands on mainline.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

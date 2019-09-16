Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8737B4085
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 20:46:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jfLAHlFAkXAu2n3bbgeV7BNSEvA5BD1RFkCMvTBjVzk=; b=pVQUF6cZbQ33Ko
	V2pVAmZndGsvXshsveS/KTAsXBgHE9/GUSdiuf006KmrxoHCnA6DYgY0g++rXJtT+00wbcHxskl4f
	QbYtt24vDit2ag90vZQFk5BA+rfbItVwrWj8eCSybVpXH9hQ8CIbrBLZ9EJxhYK5OYu6DUW/ZJASz
	l8p3a4uDa7/44m9snpakdis9yG7DXtjXlxTSVfUn+A0TAaU1Byeg01uZi5JHBuQelubXVSmcKX/SJ
	3rU9uT1fzsHlHmxKVODeIQB/bb3KKYggA7A1Wl8mviThW8HncnEZD5/6Q38/XStYMeGVBwWVyxAVG
	QKFz5ntvE3zZTxQuqqXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9w0c-000091-UU; Mon, 16 Sep 2019 18:45:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9vzm-0007Wj-DR
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 18:45:14 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 256CB20665;
 Mon, 16 Sep 2019 18:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568659505;
 bh=GuCx8CbzJWU7fsB5PLSGwh7YL/SIJdzE0AFcQ+lRqIU=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=NgjThRYrSkBw0Hk9jyFUNFvDJXkJakVGdDGftQw+53bo/6/PV6mtYkfigz1sZBEye
 UFLn4I4TBGWAe603yhyC8+yFNukHrvUhEvOgO4pkw/iPec7fVaCQinXpiRK29yffYZ
 mKYVPeAniMDgCIJReeXdk17CpXz6czGyoS0l+xbA=
MIME-Version: 1.0
In-Reply-To: <CAA+hA=QJwfHsRA+G2oT2awLxx659qXLPsiECV6VYcJ181c6D8w@mail.gmail.com>
References: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
 <1566299605-15641-9-git-send-email-aisheng.dong@nxp.com>
 <20190906171323.8847820640@mail.kernel.org>
 <CAA+hA=QJwfHsRA+G2oT2awLxx659qXLPsiECV6VYcJ181c6D8w@mail.gmail.com>
To: Dong Aisheng <dongas86@gmail.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH V4 08/11] clk: imx: imx8qxp-lpcg: add parsing clocks from
 device tree
User-Agent: alot/0.8.1
Date: Mon, 16 Sep 2019 11:45:04 -0700
Message-Id: <20190916184505.256CB20665@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_114507_793421_94F4CB42 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, dl-linux-imx <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Dong Aisheng (2019-09-09 04:23:14)
> ]On Sat, Sep 7, 2019 at 5:35 PM Stephen Boyd <sboyd@kernel.org> wrote:
> >
> > Quoting Dong Aisheng (2019-08-20 04:13:22)
> > > Add parsing clocks from device tree.
> >
> > Please describe some more here.
> 
> Will improve.
> 
> > > +       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > > +       base = devm_ioremap_resource(&pdev->dev, res);
> > > +       if (IS_ERR(base))
> > > +               return PTR_ERR(base);
> > > +
> > > +       count = of_property_count_u32_elems(np, "clock-indices");
> > > +       if (count < 0) {
> > > +               dev_err(&pdev->dev, "failed to count clocks\n");
> > > +               return -EINVAL;
> > > +       }
> >
> > Is 'count' expected to be equal to IMX_LPCG_MAX_CLKS? Because later on
> > in this function we set the num of clks to the MAX instead of the count
> > from clock-indices.
> >
> 
> No. Here is a tricky to ease the clk getting.
> For example, one LPCG supports up to 8 clock outputs which each of them
> is fixed to 4 bits. Then we can easily use the bit-offset/clk-indices
> parsed from DT
> to fetch the corresponding clock by hws[clkspec->args[0] / 4].
> And the cost is very limited with only a few pointers.

Ok. Can you add a comment into the code to explain this?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

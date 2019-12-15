Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10AFA11F746
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 11:52:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CkWlbTtyvU/ErkHkgz1fXXhNdjsD6Z9rz+UVd8zgEeM=; b=ZRdF+J8Huinxt5
	NlKLocZq5kZ0hs4UR2IRlwAg56IRwrO/h7ASS69N/lzS3UrJ4iUoMy1yTAK9IbTib7aLn44COyKiL
	P1c2EUWz/ugoCy1cUIQoRdMuzlGRvFMAo89v5Ao2BLJzwal/8PVk1xO/Qr1i4aNA6nv1eBCdDX4vE
	W00dgSacqZK87cQAyBL9q70NB9MaiYJclqGtT857r9qn3LdkIz3K07pFzMLRLsopmfXfVKvcq1BuW
	PxbGjgSaK9bbtK1irx8hUxi9UOeXCfwwPc/fTwBrJLZyiMzbRP7StbFwwfVzKC/EeirMvUwoYyiE6
	7tNL/K5gfsEj/57xPWDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igRVg-00047o-Su; Sun, 15 Dec 2019 10:52:24 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igRVT-000469-1h; Sun, 15 Dec 2019 10:52:13 +0000
X-Originating-IP: 88.190.179.123
Received: from localhost (unknown [88.190.179.123])
 (Authenticated sender: repk@triplefau.lt)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 2EAAD240003;
 Sun, 15 Dec 2019 10:51:55 +0000 (UTC)
Date: Sun, 15 Dec 2019 12:00:20 +0100
From: Remi Pommarel <repk@triplefau.lt>
To: Jerome Brunet <jbrunet@baylibre.com>
Subject: Re: [PATCH] clk: meson: pll: Fix by 0 division in
 __pll_params_to_rate()
Message-ID: <20191215110020.GA7304@voidbox>
References: <20191208212206.16808-1-repk@triplefau.lt>
 <1jo8whesj2.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1jo8whesj2.fsf@starbuckisacylon.baylibre.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_025211_228774_528A50A7 
X-CRM114-Status: GOOD (  19.01  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 09, 2019 at 10:51:13AM +0100, Jerome Brunet wrote:
> 
> On Sun 08 Dec 2019 at 22:22, Remi Pommarel <repk@triplefau.lt> wrote:
> 
> > Some meson pll registers can be initialized with 0 as N value, introducing
> > the following division by 0 when computing rate :
> >
> >   UBSAN: Undefined behaviour in drivers/clk/meson/clk-pll.c:75:9
> >   division by zero
> >   CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.4.0-rc3-608075-g86c9af8630e1-dirty #400
> >   Call trace:
> >    dump_backtrace+0x0/0x1c0
> >    show_stack+0x14/0x20
> >    dump_stack+0xc4/0x100
> >    ubsan_epilogue+0x14/0x68
> >    __ubsan_handle_divrem_overflow+0x98/0xb8
> >    __pll_params_to_rate+0xdc/0x140
> >    meson_clk_pll_recalc_rate+0x278/0x3a0
> >    __clk_register+0x7c8/0xbb0
> >    devm_clk_hw_register+0x54/0xc0
> >    meson_eeclkc_probe+0xf4/0x1a0
> >    platform_drv_probe+0x54/0xd8
> >    really_probe+0x16c/0x438
> >    driver_probe_device+0xb0/0xf0
> >    device_driver_attach+0x94/0xa0
> >    __driver_attach+0x70/0x108
> >    bus_for_each_dev+0xd8/0x128
> >    driver_attach+0x30/0x40
> >    bus_add_driver+0x1b0/0x2d8
> >    driver_register+0xbc/0x1d0
> >    __platform_driver_register+0x78/0x88
> >    axg_driver_init+0x18/0x20
> >    do_one_initcall+0xc8/0x24c
> >    kernel_init_freeable+0x2b0/0x344
> >    kernel_init+0x10/0x128
> >    ret_from_fork+0x10/0x18
> >
> > This checks if N is null before doing the division.
> 
> Thanks for reporting this
> 
> >
> > Fixes: 8289aafa4f36 ("clk: meson: improve pll driver results with
> > frac")
> 
> In mainline, the commit above went in with sha1 3c4fe763d64d.
> 
> Also, this commit is not really responsible for the problem. Having HW
> initialized with N = 0 would have failed since the beginning, I believe.
> 
> In this case the correct fixes would be:
> Fixes: 7a29a869434e ("clk: meson: Add support for Meson clock controller")
> 
> 
> > Signed-off-by: Remi Pommarel <repk@triplefau.lt>
> > ---
> >  drivers/clk/meson/clk-pll.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/drivers/clk/meson/clk-pll.c b/drivers/clk/meson/clk-pll.c
> > index ddb1e5634739..6649659f216a 100644
> > --- a/drivers/clk/meson/clk-pll.c
> > +++ b/drivers/clk/meson/clk-pll.c
> > @@ -66,6 +66,10 @@ static unsigned long __pll_params_to_rate(unsigned long parent_rate,
> >  					 (1 << pll->frac.width));
> >  	}
> >  
> > +	/* Avoid by zero division */
> > +	if (n == 0)
> > +		return 0;
> 
> This can only really happen after init, in recalc() rate.
> 
> I would much prefer if you could check the n value right after it is
> read (meson_parm_read()) in .recalc_rate() and add a comment explaining
> that some HW may have this parameter set 0 on init.
> 

Sure will do.

Thanks for reviewing this.

-- 
Remi

> > +
> >  	return DIV_ROUND_UP_ULL(rate, n);
> >  }
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

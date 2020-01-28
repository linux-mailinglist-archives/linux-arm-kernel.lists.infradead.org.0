Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDCD14BDBD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 17:29:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9+rxuU5WwNYQTOyZ6oE05Xlb0Jfnr7Pt4oBvSBsl/MY=; b=T56EHBhxeFVU3K
	i+ieN/fBX8e1eYUBxH9C2VFHoBT81NFibSppyNZk3Lln62eRi1d9LULgUz9r/bNQIbG1lOCbTGIcd
	UaNAeQHstgA/0KSzJD1x7Isreu6HJ4iK9V3xiiR1ClkLyO9rUDCpIDpEnZCBCjV0OrL8aW51NXMSK
	I1/3WmB6D0BsOerifhZSuJSVfVNWp+XCe7s+ypa2dNY/m+v9QBareYW1jMXqf2A4raOcAucfAPL0m
	aXHWaixgIdgGlvmnHLbuwI8W/a/CFoL6B+4FDVB/VJ4YSwXYklkK4f6ZXjt5cJqaaHI0Z7kjLe5I/
	vIUlowmU03DDAII3GkRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwTk4-0000HJ-Bh; Tue, 28 Jan 2020 16:29:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwTjs-0000Fn-2m; Tue, 28 Jan 2020 16:29:21 +0000
Received: from p57b77a13.dip0.t-ipconnect.de ([87.183.122.19]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iwTje-0001cp-2j; Tue, 28 Jan 2020 17:29:06 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 1/3] clk: rockchip: convert rk3399 pll type to use
 readl_poll_timeout
Date: Tue, 28 Jan 2020 17:29:05 +0100
Message-ID: <12366580.SORy7UBWfn@phil>
In-Reply-To: <f8001dbb-ebbc-ebe3-d1db-c75d3888fd38@arm.com>
References: <20200128100204.1318450-1-heiko@sntech.de>
 <f8001dbb-ebbc-ebe3-d1db-c75d3888fd38@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_082920_273371_FF6DCFB9 
X-CRM114-Status: GOOD (  21.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, zhangqing@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Dienstag, 28. Januar 2020, 16:28:44 CET schrieb Robin Murphy:
> On 28/01/2020 10:02 am, Heiko Stuebner wrote:
> > From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> > 
> > Instead of open coding the polling of the lock status, use the
> > handy readl_poll_timeout for this. As the pll locking is normally
> > blazingly fast and we don't want to incur additional delays, we're
> > not doing any sleeps similar to for example the imx clk-pllv4
> > and define a very safe but still short timeout of 1ms.
> > 
> > Suggested-by: Stephen Boyd <sboyd@kernel.org>
> > Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> > ---
> >   drivers/clk/rockchip/clk-pll.c | 21 ++++++++++-----------
> >   1 file changed, 10 insertions(+), 11 deletions(-)
> > 
> > diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
> > index 198417d56300..43c9fd0086a2 100644
> > --- a/drivers/clk/rockchip/clk-pll.c
> > +++ b/drivers/clk/rockchip/clk-pll.c
> > @@ -585,19 +585,18 @@ static const struct clk_ops rockchip_rk3066_pll_clk_ops = {
> >   static int rockchip_rk3399_pll_wait_lock(struct rockchip_clk_pll *pll)
> >   {
> >   	u32 pllcon;
> > -	int delay = 24000000;
> > +	int ret;
> >   
> > -	/* poll check the lock status in rk3399 xPLLCON2 */
> > -	while (delay > 0) {
> > -		pllcon = readl_relaxed(pll->reg_base + RK3399_PLLCON(2));
> > -		if (pllcon & RK3399_PLLCON2_LOCK_STATUS)
> > -			return 0;
> > +	/*
> > +	 * Lock time typical 250, max 500 input clock cycles @24MHz
> > +	 * So define a very safe maximum of 1000us, meaning 24000 cycles.
> > +	 */
> > +	ret = readl_poll_timeout(pll->reg_base + RK3399_PLLCON(2), pllcon,
> > +				 pllcon & RK3399_PLLCON2_LOCK_STATUS, 0, 1000);
> 
> Note that the existing I/O accessor was readl_relaxed(), but using plain 
> readl_poll_timeout() switches it to regular readl(). It may well not 
> matter, but since it's not noted as an intentional change it seemed 
> worth pointing out.

So we end up with an additional __iormb() after each readl_relaxed call.
So except for a small speed-penalty per iteration is there some other
memory-barrier wirednes that could come into play? (Somehow I always
forget the contents of Will's memory-barrier talks after a time)


From a bit of non-scientific testing, rk3328 seems to need at max 20
iterations in the wait_lock loop for the pll to lock, when doing cpufreq
scaling.

While interestingly px30 takes somewhere between 900 and 2000 iterations
on the same pll type.
[Though sleeps are not really possible anyway due to pll rates also getting
set during of_clk_register early during boot which results in errors about
scheduling the idle thread, so in the end it doesn't really matter]

Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

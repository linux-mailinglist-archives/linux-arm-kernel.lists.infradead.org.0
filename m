Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C6716652B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 18:43:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NinymtKhLSx7MASvI0SXFWXjxrZE/hJ+820N/mSNWBY=; b=tV0nBpqL+dDsyO
	Q9TNtFpPS/csGQiW8QMR2j/xGJVVBuLNHgX7WOGw6lGKv4Y7Q1gdn6peYs4I/EDzwCtjxY6sFJM3S
	PXT6FkPgx5SCT20juls52KnATEDdEniHOBVPciSccFssEM6whuCr56FGvUMRQJTdfWXEFbUmWAQaQ
	RITEZ8ibytGcs+PU64zss4nom+Ez+lCcnhr3Lq59jW1oy10kxS7a28No5FIITsJ2MEt+U0l+UJtq1
	Ozt2h01yckzYh04M07ZI7qwQ58HFwkWpsrXHIOVk7UpIvj2M+x0Hs3kyVnsch16QcS9HArZ2ITv1Y
	X1YsWXPC0Hf4z+9kxtpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4prY-0007ha-Vv; Thu, 20 Feb 2020 17:43:48 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4prA-0007V7-K0
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 17:43:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582220599; bh=7BG+1cfDaleCgWG24+EuOoEzF99bjlW8TOxBcqOLLHE=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=FTWiBs2aUKamgHDVx6vgZ9w6hXR8jmaN8JU03i78l+qL+vFRL+h15NlLNSmjfiqD6
 ow4N0zIQwLZl1jalCRnOTLJ/h+86nSVPuIJ/Xk6SBuw/YMvABrREICM1eghjwjcra7
 xBq3p240BfMgWfnZbXxGIl4vwxTSs8rHITGyaFew=
Date: Thu, 20 Feb 2020 18:43:19 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH] bus: sunxi-rsb: Return correct data when mixing 16-bit
 and 8-bit reads
Message-ID: <20200220174319.k2icqoxlubu5o2fu@core.my.home>
Mail-Followup-To: Maxime Ripard <maxime@cerno.tech>,
 linux-sunxi@googlegroups.com, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>,
 Stephen Boyd <swboyd@chromium.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>
References: <20200219010951.395599-1-megous@megous.com>
 <20200220173213.s2ytf3zdi6q3bxli@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200220173213.s2ytf3zdi6q3bxli@gilmour.lan>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_094325_033544_CF85B12B 
X-CRM114-Status: GOOD (  19.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Samuel Holland <samuel@sholland.org>,
 open list <linux-kernel@vger.kernel.org>, Stephen Boyd <swboyd@chromium.org>,
 linux-sunxi@googlegroups.com, Chen-Yu Tsai <wens@csie.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, Feb 20, 2020 at 06:32:13PM +0100, Maxime Ripard wrote:
> On Wed, Feb 19, 2020 at 02:09:50AM +0100, Ondrej Jirman wrote:
> > When doing a 16-bit read that returns data in the MSB byte, the
> > RSB_DATA register will keep the MSB byte unchanged when doing
> > the following 8-bit read. sunxi_rsb_read() will then return
> > a result that contains high byte from 16-bit read mixed with
> > the 8-bit result.
> >
> > The consequence is that after this happens the PMIC's regmap will
> > look like this: (0x33 is the high byte from the 16-bit read)
> >
> > % cat /sys/kernel/debug/regmap/sunxi-rsb-3a3/registers
> > 00: 33
> > 01: 33
> > 02: 33
> > 03: 33
> > 04: 33
> > 05: 33
> > 06: 33
> > 07: 33
> > 08: 33
> > 09: 33
> > 0a: 33
> > 0b: 33
> > 0c: 33
> > 0d: 33
> > 0e: 33
> > [snip]
> >
> > Fix this by masking the result of the read with the correct mask
> > based on the size of the read. There are no 16-bit users in the
> > mainline kernel, so this doesn't need to get into the stable tree.
> >
> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> > ---
> >  drivers/bus/sunxi-rsb.c | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/bus/sunxi-rsb.c b/drivers/bus/sunxi-rsb.c
> > index b8043b58568ac..8ab6a3865f569 100644
> > --- a/drivers/bus/sunxi-rsb.c
> > +++ b/drivers/bus/sunxi-rsb.c
> > @@ -316,6 +316,7 @@ static int sunxi_rsb_read(struct sunxi_rsb *rsb, u8 rtaddr, u8 addr,
> >  {
> >  	u32 cmd;
> >  	int ret;
> > +	u32 mask;
> >
> >  	if (!buf)
> >  		return -EINVAL;
> > @@ -323,12 +324,15 @@ static int sunxi_rsb_read(struct sunxi_rsb *rsb, u8 rtaddr, u8 addr,
> >  	switch (len) {
> >  	case 1:
> >  		cmd = RSB_CMD_RD8;
> > +		mask = 0xffu;
> >  		break;
> >  	case 2:
> >  		cmd = RSB_CMD_RD16;
> > +		mask = 0xffffu;
> >  		break;
> >  	case 4:
> >  		cmd = RSB_CMD_RD32;
> > +		mask = 0xffffffffu;
> >  		break;
> >  	default:
> >  		dev_err(rsb->dev, "Invalid access width: %zd\n", len);
> > @@ -345,7 +349,7 @@ static int sunxi_rsb_read(struct sunxi_rsb *rsb, u8 rtaddr, u8 addr,
> >  	if (ret)
> >  		goto unlock;
> >
> > -	*buf = readl(rsb->regs + RSB_DATA);
> > +	*buf = readl(rsb->regs + RSB_DATA) & mask;
> 
> Thanks for debugging this and the extensive commit log.
> 
> I guess it would be cleaner to just use GENMASK(len * 8, 0) here?

GENMASK most probably fails with value (32,0) I think.

#define GENMASK(h, l) \
	(((~UL(0)) - (UL(1) << (l)) + 1) & \
	 (~UL(0) >> (BITS_PER_LONG - 1 - (h))))

would give ~0 >> -1

regards,
	o.

> Maxime



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

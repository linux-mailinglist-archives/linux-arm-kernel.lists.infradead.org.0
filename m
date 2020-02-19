Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB761643FE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 13:14:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pDEqf6KYnLu0lEUvagZaeTQq0SqC2OgIwzpNHKDJ/QU=; b=aO+889qV8aeK7R
	x57NbumD+W2EJv3jazsCCD/hSn1iY2VqNPTLupd9a6SgKrAM6A+140xNzfd4+Ids6ULPDXScNllaL
	K5E9k0Z+27MFjl6TXGCbBlYkOaPiGoyxwQ859adiM2blz3I3XInOabrz4JyMlUU2NA99+u1LEcN9O
	t5Qimmg7bydCD1jcKvtBmckiLJMn6InAsLaaZMOXLaH+hfed20YmrGTHlQeSUerwBOmPunlkXt5ni
	KHvQ8IUxwWOSO656gT5PVSK58IQh1csr1dqM3QsFxJstNt/3cVAMR7j0Q0W5xGBWFddIR06dpmunM
	Hx8obvln6/oXhKWtY6Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4OFV-0004tX-SI; Wed, 19 Feb 2020 12:14:41 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4OFL-0004sM-3b
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 12:14:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582114465; bh=LBA0OH0LGSn5q2o3L6sg17qe8iS+vJij63Yj2IJHsB0=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=dvGcwYJJZLS/xFu1ybo56J0BAjHKnrYfVUk3M+k4oXa0oOJ+vK/r+mmexvgN/O3+7
 V4ZYYZ970DFyi3RfWCLmndM3lhr8HDwymiDHyO/HXJP9xib7xnnjK77E0/9tpT9p1T
 T7QrfHCKnH+F5eHduStJqxSTxzYMELJI1oPd1y24=
Date: Wed, 19 Feb 2020 13:14:24 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH] bus: sunxi-rsb: Return correct data when mixing 16-bit
 and 8-bit reads
Message-ID: <20200219121424.dfvrwfcavupmwbvw@core.my.home>
Mail-Followup-To: Chen-Yu Tsai <wens@csie.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Maxime Ripard <mripard@kernel.org>,
 Samuel Holland <samuel@sholland.org>,
 Stephen Boyd <swboyd@chromium.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>
References: <20200219010951.395599-1-megous@megous.com>
 <CAGb2v67BLODmDmQOJH-m-KWVtXS2EGrnPxi9czj6oipHPDTfjw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v67BLODmDmQOJH-m-KWVtXS2EGrnPxi9czj6oipHPDTfjw@mail.gmail.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_041431_323513_B5073655 
X-CRM114-Status: GOOD (  22.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 10:49:18AM +0800, Chen-Yu Tsai wrote:
> On Wed, Feb 19, 2020 at 9:10 AM Ondrej Jirman <megous@megous.com> wrote:
> >
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
> 
> Acked-by: Chen-Yu Tsai <wens@csie.org>
> 
> for the fix, however it's not entirely clear to me how the MSB 0x33
> value got into the regmap. Looks like I expected the regmap core to
> handle any overflows, or didn't expect the lingering MSB from 16-bit
> reads, as I didn't have any 16-bit register devices back when I wrote
> this.

Now I feel like I masked some other bug. Though explanation may be quite simple.

For example when AXP core does regmap_read on some values for showing charging
current or battery voltage, because regmap_read works with unsigned int, it
will simply get a number that's too big. And that was the major symptom
I observed. I got readings from sysfs that my tablet is consuming 600A or 200A,
etc. And this value was jumping around based on AC100 activity (as the MSB
byte got changed).

In other places where the driver does regmap_update_bits, I think nothing bad
happened. The write after the read would simply discard the MSB byte.

And for the debugfs/regmap/*/registers, those are printed such:

https://elixir.bootlin.com/linux/latest/source/drivers/base/regmap/regmap-debugfs.c#L256

	snprintf(buf + buf_pos, count - buf_pos,
		"%.*x", map->debugfs_val_len, val);
	
This doesn't truncate values, so the larger number gets printed to (for example):

        33fe

But regmap debugfs code truncates this by cutting off the formatted string to
this length:

  https://elixir.bootlin.com/linux/latest/source/drivers/base/regmap/regmap-debugfs.c#L189

So in the end, only:

        00: 33

remains, instead of the correct value of:

        00: fe

So in the case of debugfs this is just a cosmetic/formatting issue, that didn't
affect anything else.

I think regmap_bus->reg_read API simply expects the returned value to not exceed
the sensible range.

regards,
	o.


> ChenYu
> 
> 
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
> >         u32 cmd;
> >         int ret;
> > +       u32 mask;
> >
> >         if (!buf)
> >                 return -EINVAL;
> > @@ -323,12 +324,15 @@ static int sunxi_rsb_read(struct sunxi_rsb *rsb, u8 rtaddr, u8 addr,
> >         switch (len) {
> >         case 1:
> >                 cmd = RSB_CMD_RD8;
> > +               mask = 0xffu;
> >                 break;
> >         case 2:
> >                 cmd = RSB_CMD_RD16;
> > +               mask = 0xffffu;
> >                 break;
> >         case 4:
> >                 cmd = RSB_CMD_RD32;
> > +               mask = 0xffffffffu;
> >                 break;
> >         default:
> >                 dev_err(rsb->dev, "Invalid access width: %zd\n", len);
> > @@ -345,7 +349,7 @@ static int sunxi_rsb_read(struct sunxi_rsb *rsb, u8 rtaddr, u8 addr,
> >         if (ret)
> >                 goto unlock;
> >
> > -       *buf = readl(rsb->regs + RSB_DATA);
> > +       *buf = readl(rsb->regs + RSB_DATA) & mask;
> >
> >  unlock:
> >         mutex_unlock(&rsb->lock);
> > --
> > 2.25.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

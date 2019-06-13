Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C196B43207
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 02:46:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L02j2ba+ligsiWwZbZFIrXGN7tjyhMVPQc7Gu8zAu7w=; b=aVALyUfv/ubzyT
	44t+4EjLSGolZQcAstg0/k0UHLcznU0sYRZN82vKvTd4OSPOuSW8sLGAa9Xhv+AQ+tNcrXe5k9aGA
	cmq5E5hlY20G6OJmrVWd6lk4oOlo0tTUDnXsaAHCTQMNqmow7XCOk7/gBUuQOmgqOPcHL48KaIQkb
	SIiodPa9qX1AChU/zKe+mrlKVRq8WpCxyx3BLntHgZZR3psRSXTqZSzJ41UHwF40u+1ACpufNoTDx
	VGtyUm2pTXAx8lJybzj3KeOyxkBYJug5pxXQD4XeiBSfdum2nAB/KBPhwiogCh6DQBjruZDbMqmLE
	cO4IM6Wb6XSwCWKZ4IZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbDsP-0004PS-E9; Thu, 13 Jun 2019 00:46:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbDsA-0004P8-DA
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 00:45:47 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A5143215EA;
 Thu, 13 Jun 2019 00:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560386745;
 bh=Y7mdi6uFOuBO3QxKWlpKYM6bNyXkY1xifsM4T0q7N8U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S7EpA5OokHKhhjL9gHwCJrcGLGApv/KADm67/XXDDdIrNY684DJbkzkOJPmVOjFQt
 ZLTdOzW6obAQYrYpwF+ZTMLvsVggKTzpNRFkS5JnUyX29Ah+W/ZcuK7JbuUrgVMB7J
 9jDWecsCijkiNcUINgXNm3wZHEfS8ExGt2NMokZo=
Date: Thu, 13 Jun 2019 08:45:10 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Li Yang <leoyang.li@nxp.com>
Subject: Re: [PATCH] arm64: defconfig: Enable FSL_EDMA driver
Message-ID: <20190613004508.GA20747@dragon>
References: <20190422183056.16375-1-leoyang.li@nxp.com>
 <20190510030525.GC15856@dragon>
 <CADRPPNT2G20j2pvSEyqX=_WNDPrcNR+xCR_XZukbnSW19wFLNA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADRPPNT2G20j2pvSEyqX=_WNDPrcNR+xCR_XZukbnSW19wFLNA@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_174546_465985_813DEEAD 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: aisheng.dong@nxp.com, Grant Likely <grant.likely@arm.com>,
 madalin.bucur@nxp.com, lkml <linux-kernel@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 03:01:29PM -0500, Li Yang wrote:
> On Thu, May 9, 2019 at 10:15 PM Shawn Guo <shawnguo@kernel.org> wrote:
> >
> > On Mon, Apr 22, 2019 at 01:30:56PM -0500, Li Yang wrote:
> > > Enables the FSL EDMA driver by default.  This also works around an issue
> > > that imx-i2c driver keeps deferring the probe because of the DMA is not
> > > ready.  And currently the DMA engine framework can not correctly tell
> > > if the DMA channels will truly become available later (it will never be
> > > available if the DMA driver is not enabled).
> > >
> > > This will cause indefinite messages like below:
> > > [    3.335829] imx-i2c 2180000.i2c: can't get pinctrl, bus recovery not supported
> > > [    3.344455] ina2xx 0-0040: power monitor ina220 (Rshunt = 1000 uOhm)
> > > [    3.350917] lm90 0-004c: 0-004c supply vcc not found, using dummy regulator
> > > [    3.362089] imx-i2c 2180000.i2c: can't get pinctrl, bus recovery not supported
> > > [    3.370741] ina2xx 0-0040: power monitor ina220 (Rshunt = 1000 uOhm)
> > > [    3.377205] lm90 0-004c: 0-004c supply vcc not found, using dummy regulator
> > > [    3.388455] imx-i2c 2180000.i2c: can't get pinctrl, bus recovery not supported
> > > .....
> > >
> > > Signed-off-by: Li Yang <leoyang.li@nxp.com>
> >
> > Applied, thanks.
> 
> Hi Shawn,
> 
> Is it possible to move this patch to the -fix series so that it can
> reach the mainline earlier?  It is having a boot failure in mainline
> for platforms using this device without this workaround.

Why would I2C device deferring cause boot failure on a platform?  I'm
just trying to understand severity of the problem.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

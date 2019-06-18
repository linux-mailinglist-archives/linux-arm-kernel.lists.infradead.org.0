Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 064BD498E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 08:32:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7u7kvwdrSSFmTaj+y4oxdY58lG85DBl+bTAqLVKbDRQ=; b=CVQV7ve9tYhdql
	FaFXnlzOX/hzQhJekKruL2ocfZPaQrf03f3sbmjf2E0yHT9l7CnbXtaU9zsbyIAyyC01q8OXzpqle
	XgXqi4A41+kE41JUIRMn5v1RZkmONr/5kLcQRctlA5uKoxWWFOz6EKtSTcfqC8E178emiyDwNH6k6
	zlm0KnTiDCL1Kd/l3sZC3Se/YnzKY0f347goiHPzbyO6PWnoz6+2lDGyj9EWYxofQc/+QDIYdunLE
	gmGJsqM7Nw6FrILVN9aciJAH/k5eJN6Cqx1z6ql5N2CW1HBo30jD77rKTiHwJVvGHZN8UOO6JV5K8
	5NMhA9WFFE2oLPL9zq4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd7fH-0000jm-Nz; Tue, 18 Jun 2019 06:32:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd7f6-0000jE-Q4
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 06:32:10 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0ADC12166E;
 Tue, 18 Jun 2019 06:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560839527;
 bh=VejpOgqd5R4dMXfFuMAOUrMQQHjjtWsjAe1WJUq7tzE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=o9lgizXWTgD+9aai+vLwwtARXKwM5HOKlNCOCmCgEGt+S9gFyV6yEFZLYmjT86xhI
 /Z/8CMZTqodJdtW30kwJFw7O8SG2nwR+YGgHikRJ9kOOCMTCd5otlbTQNPzk+NT++Q
 fc070xBZggbbSzDwsPwfeBHXhp0RsTxetBmdRJ98=
Date: Tue, 18 Jun 2019 14:31:16 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leo Li <leoyang.li@nxp.com>
Subject: Re: [PATCH] arm64: defconfig: Enable FSL_EDMA driver
Message-ID: <20190618063114.GA29468@dragon>
References: <20190422183056.16375-1-leoyang.li@nxp.com>
 <20190510030525.GC15856@dragon>
 <CADRPPNT2G20j2pvSEyqX=_WNDPrcNR+xCR_XZukbnSW19wFLNA@mail.gmail.com>
 <20190613004508.GA20747@dragon>
 <VE1PR04MB6687EE0E22DA0697A0A7038F8FEF0@VE1PR04MB6687.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VE1PR04MB6687EE0E22DA0697A0A7038F8FEF0@VE1PR04MB6687.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_233208_878893_8102D5DF 
X-CRM114-Status: GOOD (  22.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Grant Likely <grant.likely@arm.com>,
 Madalin-cristian Bucur <madalin.bucur@nxp.com>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>, lkml <linux-kernel@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 02:01:11PM +0000, Leo Li wrote:
> 
> 
> > -----Original Message-----
> > From: Shawn Guo <shawnguo@kernel.org>
> > Sent: Wednesday, June 12, 2019 7:45 PM
> > To: Leo Li <leoyang.li@nxp.com>
> > Cc: Madalin-cristian Bucur <madalin.bucur@nxp.com>; Rob Herring
> > <robh+dt@kernel.org>; Aisheng Dong <aisheng.dong@nxp.com>; Vinod Koul
> > <vkoul@kernel.org>; Grant Likely <grant.likely@arm.com>; moderated
> > list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE <linux-arm-
> > kernel@lists.infradead.org>; lkml <linux-kernel@vger.kernel.org>
> > Subject: Re: [PATCH] arm64: defconfig: Enable FSL_EDMA driver
> > 
> > On Wed, Jun 12, 2019 at 03:01:29PM -0500, Li Yang wrote:
> > > On Thu, May 9, 2019 at 10:15 PM Shawn Guo <shawnguo@kernel.org>
> > wrote:
> > > >
> > > > On Mon, Apr 22, 2019 at 01:30:56PM -0500, Li Yang wrote:
> > > > > Enables the FSL EDMA driver by default.  This also works around an
> > > > > issue that imx-i2c driver keeps deferring the probe because of the
> > > > > DMA is not ready.  And currently the DMA engine framework can not
> > > > > correctly tell if the DMA channels will truly become available
> > > > > later (it will never be available if the DMA driver is not enabled).
> > > > >
> > > > > This will cause indefinite messages like below:
> > > > > [    3.335829] imx-i2c 2180000.i2c: can't get pinctrl, bus recovery not
> > supported
> > > > > [    3.344455] ina2xx 0-0040: power monitor ina220 (Rshunt = 1000
> > uOhm)
> > > > > [    3.350917] lm90 0-004c: 0-004c supply vcc not found, using dummy
> > regulator
> > > > > [    3.362089] imx-i2c 2180000.i2c: can't get pinctrl, bus recovery not
> > supported
> > > > > [    3.370741] ina2xx 0-0040: power monitor ina220 (Rshunt = 1000
> > uOhm)
> > > > > [    3.377205] lm90 0-004c: 0-004c supply vcc not found, using dummy
> > regulator
> > > > > [    3.388455] imx-i2c 2180000.i2c: can't get pinctrl, bus recovery not
> > supported
> > > > > .....
> > > > >
> > > > > Signed-off-by: Li Yang <leoyang.li@nxp.com>
> > > >
> > > > Applied, thanks.
> > >
> > > Hi Shawn,
> > >
> > > Is it possible to move this patch to the -fix series so that it can
> > > reach the mainline earlier?  It is having a boot failure in mainline
> > > for platforms using this device without this workaround.
> > 
> > Why would I2C device deferring cause boot failure on a platform?  I'm just
> > trying to understand severity of the problem.
> 
> Currently the probe of imx-i2c will be retried immediately after it is deferred when the optional dependency on DMA driver is not met.  This will cause an indefinite loop of probe-defer-probe and keep printing the message as shown in the commit message.
> 

Indefinite loop of probe-defer-probe is not a boot failure to me.  But I
will try to send it as fix, and see if arm-soc folk will take it.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

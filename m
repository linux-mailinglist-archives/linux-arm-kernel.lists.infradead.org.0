Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F8316B97D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 07:12:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UrdkBXcx06zQfDLCAj5ep5RtFVu9rOL5XPuI7J2tIoY=; b=WroxB/bzqjc2dX
	1z2HPrC4IIglgFX5c6Eu1KbpEq4qlmZsUFKdGdxFjahFGzjrE27SkGRIIgZkha7hgu7/WN3i2yZWR
	RS+JniFLRg7Tj/VJ6nGv20nZSxq3MYmhPidDY9eYiwOWi1H7A1PWMV0BJuWH9zlrwLaFvZFtTNCjG
	y3mmC8iPHIA4AdTiz5mNodqFGBvqYWI3IqKu0h/+kyP6jZ/NpjW7MUMGZ1sMJNhk9lDdwAeWMHLTa
	mFokpqD4+ZxwEj/C52UzoRRZ+D3vqdP+h/nVZXZo4OaUUmosfPRwewXJmz4Wl/lx2uU7IlGs9J2mX
	WNN0jzUt5Q83M7/tzAGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6TSM-0002Uh-Ij; Tue, 25 Feb 2020 06:12:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6TSC-0002UI-IS
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 06:12:25 +0000
Received: from localhost (unknown [122.167.120.28])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 557BE2082F;
 Tue, 25 Feb 2020 06:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582611144;
 bh=fxLOFtVYfe/xZb9HlC6PvDLWrLnNe/I7p4/iU1LvhUc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=igezpnXUhAdO5oTgHW459emyzcdKLBnR/P1Gw8dY0ve+VGQoVDDraV4MdWqHfMtUo
 irHddwFcD3/HwfcnJC3CLI42i2sQhWVZDSfb4Le8MzAg+4Y7KyjJHdT5Y4cbqeHPMg
 nyKpzGOjwpeRbizs0vyFNvNeGOUDVctNjc9bfEyc=
Date: Tue, 25 Feb 2020 11:42:20 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] dma: imx-sdma: Fix the event id check to include RX
 event for UART6
Message-ID: <20200225061220.GK2618@vkoul-mobl>
References: <20200224172236.22478-1-frieder.schrempf@kontron.de>
 <CAOMZO5CyYbAZRZrGLJNJXNJiekJXptUTu8tOfVw6y7-n-CXesg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5CyYbAZRZrGLJNJXNJiekJXptUTu8tOfVw6y7-n-CXesg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_221224_631028_93E525C8 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Linus Walleij <linus.ml.walleij@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Dan Williams <dan.j.williams@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24-02-20, 15:43, Fabio Estevam wrote:
> Hi Frieder,
> 
> On Mon, Feb 24, 2020 at 2:22 PM Schrempf Frieder
> <frieder.schrempf@kontron.de> wrote:
> >
> > From: Frieder Schrempf <frieder.schrempf@kontron.de>
> >
> > On i.MX6 the DMA event for the RX channel of UART6 is '0'. To fix
> 
> I would suggest being a bit more specific than saying i.MX6.
> 
> I see UART6 is present on i.MX6UL/i.MX6SX, but not on i.MX6Q/i.MX6DL,
> so it would be better to specify it in the commit log.
> 
> imx6ul.dtsi does not have dma nodes under uart6, so I guess you fixed
> it for imx6sx.

and use right subsystem tag dmaengine. Git log of the file should tell
you the right one to use :)

> 
> > the broken DMA support for UART6, we change the check for event_id0
> > to include '0' as a valid id.
> >
> > Fixes: 1ec1e82f2510 ("dmaengine: Add Freescale i.MX SDMA support")
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> Reviewed-by: Fabio Estevam <festevam@gmail.com>

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD5419D436
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 11:44:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TmonHwVLC2+M0BofI6qxMKkkEYWLWHpNGbz4mHS3hBo=; b=bHp7szT8Op5MnU
	CPjlTgYV6uhtnkUbJUgqWzsy2LVhffVWL8tfDc1nxQNnzAbpHep4fmds1w4fSBng86hJI4+KpVGEp
	WzPcZjsqi7kUiY+8HrFoiPVWEpj2vQoYFXxbi/K8X6GFv4TvZFxhKQURjZSLOicuyL62YRffraw4Q
	7/fuhVFtBXjfTTx8WGRV98SzG+nIGlVGSYPmMIm2O6MJw5Pa2D27a2vykasZGOUZwuzCk6+a28RiU
	ZwoM1dpcMR1gS49NIjhlYupefOEq9Tx/rgGIj0xSmCwFGZqrI80rtRraPfzvmzIfiHlaYTAsrVx8h
	rNeo0nlh+00bcPANIbFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKIsQ-0002KC-22; Fri, 03 Apr 2020 09:44:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKIsJ-0002JW-8D
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 09:44:32 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2AC482080C;
 Fri,  3 Apr 2020 09:44:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585907070;
 bh=JZdgbxojaFXqEniYk+LRNZx0nJZ1n6has4h4/C53gRw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yWhCY8DotHZ0SZufEDg33AVRBGq+vMKbJMMyIwZjAX9yhOrpiiSuy8ajbiI4cvVdT
 OzCq1Q6ZfzJa5Q18h5BFELlviTQaSjMpQ33R4zYVsF0DYJfhh2ntPW1f3kXAYTwwvx
 lFaeXPYyYhQlCZ0zo7ur6s4CcM9SGUEruAmqdqto=
Date: Fri, 3 Apr 2020 11:44:27 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH 0/7] serial: uartps: Revert dynamic port allocation
Message-ID: <20200403094427.GA3754220@kroah.com>
References: <cover.1585905873.git.michal.simek@xilinx.com>
 <20200403093216.GA3746303@kroah.com>
 <d9598635-a8ef-eff2-22e8-4fa37f8390b3@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d9598635-a8ef-eff2-22e8-4fa37f8390b3@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_024431_310035_35E6BECE 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: monstr@monstr.eu, johan@kernel.org, linux-kernel@vger.kernel.org,
 git@xilinx.com, linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 03, 2020 at 11:37:46AM +0200, Michal Simek wrote:
> On 03. 04. 20 11:32, Greg KH wrote:
> > On Fri, Apr 03, 2020 at 11:24:29AM +0200, Michal Simek wrote:
> >> Hi,
> >>
> >> there were several changes done in past in uartps drivers which have been
> >> also done in uartlite driver.
> >> Here is the thread about it
> >> https://lore.kernel.org/linux-serial/20191203152738.GF10631@localhost/
> >>
> >> This series reverts all patches which enabled dynamic port allocation and
> >> returning driver to the previous state. There were added some features in
> >> meantime which are not affected by this series.
> > 
> > Should this go into 5.7-final as it's causing problems now, and
> > backported as well?  Or can it wait until 5.8-rc1?
> 
> These patches have been added to v4.20. It means all version from that
> are affected.
> 
> The issue I am aware of is when you setup stdout-path =
> "serialX:115200n8" where X is not 0.
> 
> But as was discussed the concept is based on Johan wrong that's why it
> can be consider as bug fix.

Ok, I'll queue these up after 5.7-rc1 is out, for inclusion in
5.7-final, and cc: for stable, as I agree, they should all be reverted.
Thanks for doing the work.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

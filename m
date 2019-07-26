Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F0D76109
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 10:41:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2KL8GmcnbV5ZBn9071x1CNRofrFvaEhNcYz4yGWGnTo=; b=Sjwc6+D7MS1AUa
	ke3XPPhXCJa0rFkSbkUOTtWNvaUtUIYw0RYUCp0kzZyMnev6nd1M5Lkn0RkohkMCHSeYPMpBsC7T7
	Z7RUjLCHChYlZ76ZXwBKuGdgmimYewgUkwGpXgUlbeMU7krmkyoyHK8nLcYEgfNKCtTD15viypIu/
	+b6wEA7PUPVr0UUdFxeinmSF5hlxYZ3M/KjEyB1g4sFwKgflwNVoBSHowcLeRBxRphAR3fQJImWZ0
	lXVPQBS3wNjP2PFKIXdE0Gg9DRynzNBZJ9nq3wUuDnk0FdVMfMgUY93YxzLoAXvEI3wpX4ERsUv4e
	tah0S5IA6mwD/x6qjwPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqvnZ-00057y-8I; Fri, 26 Jul 2019 08:41:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqvn8-00057T-Mx
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 08:41:32 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6EBFF2166E;
 Fri, 26 Jul 2019 08:41:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564130489;
 bh=u9hE5TPAuhfE3I5+DNmN/ANWL4HwopSUkPDD7JGenyM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AqDr367cELkWdsKg7/xTTW+mMoF2lxvrD+4VoeryF+ymEc4dncJKYUB9VHdcnJtWw
 6HGs9KVD2otlVWphduu3Ov2QGZCNwZlvcsGOuBEMGgyWtRnFLrHgnJBsPBZabMwz5y
 W0IhqbTPXTMFAIkB+5ESIEvgjDm5JsljlEJbSU2M=
Date: Fri, 26 Jul 2019 10:41:27 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [Regression] Missing device nodes for ETR, ETF and STM after
 CONFIG_UEVENT_HELPER=n
Message-ID: <20190726084127.GA28470@kroah.com>
References: <cfe09a46-462f-633a-37c2-52f8bfc0ffb2@codeaurora.org>
 <20190726070429.GA15714@kroah.com>
 <165028a7-ff12-dd28-cc4c-57a3961dbb40@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <165028a7-ff12-dd28-cc4c-57a3961dbb40@codeaurora.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_014130_792015_CDB027CC 
X-CRM114-Status: GOOD (  23.16  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 01:50:27PM +0530, Sai Prakash Ranjan wrote:
> On 7/26/2019 12:34 PM, Greg Kroah-Hartman wrote:
> > On Fri, Jul 26, 2019 at 11:49:19AM +0530, Sai Prakash Ranjan wrote:
> > > Hi,
> > > 
> > > When trying to test my coresight patches, I found that etr,etf and stm
> > > device nodes are missing from /dev.
> > 
> > I have no idea what those device nodes are.
> > 
> > > Bisection gives this as the bad commit.
> > > 
> > > 1be01d4a57142ded23bdb9e0c8d9369e693b26cc is the first bad commit
> > > commit 1be01d4a57142ded23bdb9e0c8d9369e693b26cc
> > > Author: Geert Uytterhoeven <geert+renesas@glider.be>
> > > Date:   Thu Mar 14 12:13:50 2019 +0100
> > > 
> > >      driver: base: Disable CONFIG_UEVENT_HELPER by default
> > > 
> > >      Since commit 7934779a69f1184f ("Driver-Core: disable /sbin/hotplug by
> > >      default"), the help text for the /sbin/hotplug fork-bomb says
> > >      "This should not be used today [...] creates a high system load, or
> > >      [...] out-of-memory situations during bootup".  The rationale for this
> > >      was that no recent mainstream system used this anymore (in 2010!).
> > > 
> > >      A few years later, the complete uevent helper support was made optional
> > >      in commit 86d56134f1b67d0c ("kobject: Make support for uevent_helper
> > >      optional.").  However, if was still left enabled by default, to support
> > >      ancient userland.
> > > 
> > >      Time passed by, and nothing should use this anymore, so it can be
> > >      disabled by default.
> > > 
> > >      Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > >      Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > > 
> > >   drivers/base/Kconfig | 1 -
> > >   1 file changed, 1 deletion(-)
> > > 
> > > 
> > > Any idea on this?
> > 
> > That means that who ever created those device nodes is relying on udev
> > to do this, and is not doing the correct thing within the kernel and
> > using devtmpfs.
> > 
> > Any pointers to where in the kernel those devices are trying to be
> > created?
> > 
> 
> Somewhere in drivers/hwtracing/coresight/* probably. I am not sure,
> Mathieu/Suzuki would be able to point you to the exact code.
> 
> Also just to add on some more details, I am using *initramfs*

Are you using devtmpfs for your /dev/ mount?

If you enable this option, what does:
	ls -l /dev/etr
	ls -l /dev/etf
	ls -l /dev/stm
result in?

What are these device nodes for?  Are they symlinks?  Real devices that
show up in /sys/dev/char/ as a real value?  Or something else?

Do you have udev rules that create these nodes somehow?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

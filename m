Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8E775F75
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 09:04:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3yPvyyfFTqC1G++SVDCuCavh2umRvbRiCP3Ahx489Ek=; b=UYqOhI97BmfZ/y
	fmw5sGFRj344FEFb4JdDDT+hgP7HGYA/NLj/VoCJqGKrgWfl9TUpQFhPCgP6PoHGHyEBVX0O43Ezt
	T5LhGpAjedOhDbFzIP3GFf+kzw96JlQhSlhNIIDQINhXlfGSjK4gkk82VXhF8gJwf3U2rlb96N61C
	QiYmwnbMZF5sLWgrR8cFHIf2ICvJILlgFMOMmXde4X6gEuiDRC4XPsMHsp7CjC6yQgABsLeYpn2Mu
	T8RE5FmIJvRqndm0zpGOhwuZ8q/vkOAZEsLq3QYTUPGoC9jtJefMPdM+2KgIN3lAeRgcONu3jx0lg
	miVsaQBFMPnJDTe+yIFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hquHY-0001an-M0; Fri, 26 Jul 2019 07:04:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hquHI-0001aH-OD
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 07:04:34 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B33C2189F;
 Fri, 26 Jul 2019 07:04:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564124672;
 bh=k/UOBs057nzqvM8wDXVsdhD34rUb8UosI2e9mYaPZcc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hj2bqG3OC26tesrJHal/PYw3vjXJCXPcVlmZ/mvwcK60gprjxKzanyetOieQalQtC
 /Az1cdpFMBj1pj7fD6vzLZAQk3QkKKBYhyCBP0bowOvh4Z2hvHgTjIArDV9mZEW1at
 xZaN09LLnZSxwlkmcNlcEhZwoiJWK9WeJZ3uacKE=
Date: Fri, 26 Jul 2019 09:04:29 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [Regression] Missing device nodes for ETR, ETF and STM after
 CONFIG_UEVENT_HELPER=n
Message-ID: <20190726070429.GA15714@kroah.com>
References: <cfe09a46-462f-633a-37c2-52f8bfc0ffb2@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cfe09a46-462f-633a-37c2-52f8bfc0ffb2@codeaurora.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_000432_807511_46C8B21B 
X-CRM114-Status: GOOD (  16.44  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Fri, Jul 26, 2019 at 11:49:19AM +0530, Sai Prakash Ranjan wrote:
> Hi,
> 
> When trying to test my coresight patches, I found that etr,etf and stm
> device nodes are missing from /dev.

I have no idea what those device nodes are.

> Bisection gives this as the bad commit.
> 
> 1be01d4a57142ded23bdb9e0c8d9369e693b26cc is the first bad commit
> commit 1be01d4a57142ded23bdb9e0c8d9369e693b26cc
> Author: Geert Uytterhoeven <geert+renesas@glider.be>
> Date:   Thu Mar 14 12:13:50 2019 +0100
> 
>     driver: base: Disable CONFIG_UEVENT_HELPER by default
> 
>     Since commit 7934779a69f1184f ("Driver-Core: disable /sbin/hotplug by
>     default"), the help text for the /sbin/hotplug fork-bomb says
>     "This should not be used today [...] creates a high system load, or
>     [...] out-of-memory situations during bootup".  The rationale for this
>     was that no recent mainstream system used this anymore (in 2010!).
> 
>     A few years later, the complete uevent helper support was made optional
>     in commit 86d56134f1b67d0c ("kobject: Make support for uevent_helper
>     optional.").  However, if was still left enabled by default, to support
>     ancient userland.
> 
>     Time passed by, and nothing should use this anymore, so it can be
>     disabled by default.
> 
>     Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
>     Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> 
>  drivers/base/Kconfig | 1 -
>  1 file changed, 1 deletion(-)
> 
> 
> Any idea on this?

That means that who ever created those device nodes is relying on udev
to do this, and is not doing the correct thing within the kernel and
using devtmpfs.

Any pointers to where in the kernel those devices are trying to be
created?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

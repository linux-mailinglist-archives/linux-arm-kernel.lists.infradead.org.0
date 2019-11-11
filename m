Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F531F6E9A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 07:41:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QiYTpYweeEB0tRdICW2oBQ1kCrgdgC+yJwIgl+/yXcc=; b=rhb8Bm8qhg/c/O
	22v5w5Z6x2dDOkoZ4v0QWRPnbcrQK0tK95aWzNg3mu+o4mKa2XwxjBhw6VkA3zXPKQtd8ndsB4dIs
	jOXzEaa2B1yMOSvWgQowAggRXdGQeK/FkNzOiduLYqFKJQkC/GrGeD7Wfo2vcUpfpxn8MB2VhfO9f
	GtGgwIdHTGrt1SRIvOM42wyJ1cF49VFUm8mTkfipmr3hUVc7JBR1eFo8df8crwzkbkmtiskCQ683v
	slO1R20d6AN7HK0upQrD0/3SAAGfrji+zz5M7iqH1QRw1JNaahqr6f0Pa1v6kIrYt/kFb3t44W8sc
	mgWXF42GvDPXHl7skAIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU3Nb-0004gK-AK; Mon, 11 Nov 2019 06:40:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU3NT-0004fj-Gx; Mon, 11 Nov 2019 06:40:44 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C61420818;
 Mon, 11 Nov 2019 06:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573454442;
 bh=cktYl62Ynev3YcbNhpece5Z14fVDGbQyuOjqOeQf4Gc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=D9AYN0qRT9g+HjcozyPSfAxeXGwrD/p62xk0fGvNIEwwbe+jeCiTdU8Z02UVy8mBU
 6EhCkCncoqGPQRkmPCtjtIcB0iFmEimLIfokLW8QumwPcVen8DJd5ozAHFuDbPRuWF
 ps+wnu+3R+bj461e+l6N90ZizCpBxyUGAqcNdeRQ=
Date: Mon, 11 Nov 2019 07:40:40 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH] base: soc: Export soc_device_to_device() helper
Message-ID: <20191111064040.GA3502217@kroah.com>
References: <20191103013645.9856-3-afaerber@suse.de>
 <20191111045609.7026-1-afaerber@suse.de>
 <20191111052741.GB3176397@kroah.com>
 <586fa37c-6292-aca4-fa7c-73064858afaf@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <586fa37c-6292-aca4-fa7c-73064858afaf@suse.de>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_224043_593228_BABE51D3 
X-CRM114-Status: GOOD (  13.16  )
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
 linux-realtek-soc@lists.infradead.org, "Rafael J. Wysocki" <rafael@kernel.org>,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 06:42:05AM +0100, Andreas F=E4rber wrote:
> Hi Greg,
> =

> Am 11.11.19 um 06:27 schrieb Greg Kroah-Hartman:
> > On Mon, Nov 11, 2019 at 05:56:09AM +0100, Andreas F=E4rber wrote:
> >> Use of soc_device_to_device() in driver modules causes a build failure.
> >> Given that the helper is nicely documented in include/linux/sys_soc.h,
> >> let's export it as GPL symbol.
> > =

> > I thought we were fixing the soc drivers to not need this.  What
> > happened to that effort?  I thought I had patches in my tree (or
> > someone's tree) that did some of this work already, such that this
> > symbol isn't needed anymore.
> =

> I do still see this function used in next-20191108 in drivers/soc/.
> =

> I'll be happy to adjust my RFC driver if someone points me to how!

Look at c31e73121f4c ("base: soc: Handle custom soc information sysfs
entries") for how you can just use the default attributes for the soc to
create the needed sysfs files, instead of having to do it "by hand"
which is racy and incorrect.

> Given the current struct layout, a type cast might work (but ugly).
> Or if we stay with my current RFC driver design, we could use the
> platform_device instead of the soc_device (which would clutter the
> screen more than "soc soc0:") or resort to pr_info() w/o device.

Ick, no, don't cast blindly.  What do you need the pointer for?  Is this
for in-tree code?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

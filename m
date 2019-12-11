Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3153C11AD69
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 15:27:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C6R52y3/vCwB8+ippjlGBYUElDDfNIphxOPHFuCwtsA=; b=T28uv4yGTU4SRf
	0WUgMhcAQt+1tzo4i3YJ6TQ+huVlfbIIkRBjM6ntmW/LpQF1KiL7EVY8OnIhT3cLCGoXdhbiMmD2R
	k3NVXxlT7SKbZW0DZ/AGpYd8zIZ7VslNbTKPOu/AnAxO4m8XPgbJUyx9PHLo6WVcRCxElTJLeTWR1
	VmzfKsOweV0F9+kvgWJGKtdmClqkZQi8+We2Zmgn0gHS0QQPnRMpJHpkWiVg+umJF7bQv7ycoTG4T
	FyAcDVLgBLGz6LQxAgnToKOITQw5DeG8Y0yZ2pRYcBuB7nuST6gD2RycfydRgfxEKZn//ZdQQMFnF
	FDbVxQQGqYej7Wip4C3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if2x9-0001Ls-28; Wed, 11 Dec 2019 14:26:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if2x0-0001LS-2E
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 14:26:51 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2E5C420836;
 Wed, 11 Dec 2019 14:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576074409;
 bh=Qy1znBU3pH+6omj0HjeyroPBVpb9rQjYap7r0jfAG98=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BjvxOVhSQ707fRbeqTGUXDcuhEnzOxXEY+NxteZ5p9aSm+qeQJSaibiL5kHCZ33sd
 Pd/bmPcoPYFx8uiwXjWgkfnXB0s+RY7apIIL5HJMwzItLR0FHncehO7FSui0mBdjxG
 r17SLeJRPEidTZ+Eih0GExSsMWMovYmsTKbTBCog=
Date: Wed, 11 Dec 2019 15:26:47 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Thomas Renninger <trenn@suse.de>
Subject: Re: [PATCH 2/3] x86 cpuinfo: implement sysfs nodes for x86
Message-ID: <20191211142647.GB605616@kroah.com>
References: <20191206162421.15050-1-trenn@suse.de>
 <4737004.4U1sY2OxSp@skinner.arch.suse.de>
 <20191211135619.GA538980@kroah.com>
 <22533595.7ohjOCJ8As@skinner.arch.suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <22533595.7ohjOCJ8As@skinner.arch.suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_062650_126123_05B8940A 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arch@vger.kernel.org, Felix Schnizlein <fschnizlein@suse.de>,
 Felix Schnizlein <fschnizlein@suse.com>, x86@kernel.org, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 03:12:51PM +0100, Thomas Renninger wrote:
> On Wednesday, December 11, 2019 2:56:19 PM CET Greg KH wrote:
> > On Wed, Dec 11, 2019 at 11:42:35AM +0100, Thomas Renninger wrote:
> > > If Greg (and others) are ok, I would add "page size exceeding" handling.
> > > Hm, quick searching for an example I realize that debugfs can exceed page
> > > size. Is it that hard to expose a sysfs file larger than page size?
> > 
> > No, there is a simple way to do it, but I'm not going to show you how as
> > it is NOT how to use sysfs at all :)
> >
> > Why are you wanting to dump this whole mess into one file
> 
> I wouldn't call a whitespace separated list of CPU feature flags a mess...

It's a mess in that it's more than one value and you want to overflow a
PAGE_SIZE sometime in the future with it :(

> > and then parse
> > it, it's no different from having 100+ different sysfs files and then
> > doing a readdir(3) on the thing, right?
> 
> If this is the way it "has to"/should/"is designed for" to export such
> (not that complex) data via sysfs...
> 
> I do not have such a strong opinion on the how, this is up to maintainers
> to discuss.
> 
> I hope it is agreed that this info is worth exporting via sysfs.

I don't think anyone is saying it is worth exporting this information
via sysfs at all here.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

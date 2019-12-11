Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 342EC11AE86
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 15:57:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mKyGAsRLlBQIxsWZQQryy0rXvWFBV+7eZ35qhnQFP1U=; b=HLCOm6gAYq0YFa
	98aKd+pAcXDfj75ALavYjbq43Zvt+VoAStyF9oTu4Dhs9XHJo/SE9nRkrFAokEqfVJ2yFONBTlDgC
	uCAdEW2gom94BD9TiYx/XLDYy3UTVIagBHFadHGCi1YGD9+aGsaVHmcgXmuCsTuBt98lkRrzkCfZS
	/FNzqakjW4rFHlggSn0hv7c4eK6ReA5ZKBoeJiQIWIi3mY7tj/SY0UdDZ88iDYbscCqRU+vdh9qlB
	85ymPMdQMe5IaWVVleA2/X8qd29CGyJbmrVyrCsDduz/MC+ARb/Bmi/ttlshGQ9T6ItcN+aIl+/JH
	JVPkKEnomvA/T2VWV+iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if3QT-0003Le-El; Wed, 11 Dec 2019 14:57:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if3QG-0003E5-Pu
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 14:57:06 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2B5CE214AF;
 Wed, 11 Dec 2019 14:57:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576076223;
 bh=RikKpQKAfx88f9r5aeSm+aYV6wJVq+oyRXyFAH4If2w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Vwq5ih3Gzc/zeRWqiDWqjjHHUk8T8yWngddwLrn88d+62gc8BLDalBM9Ro3btuvg+
 4BlVNYcEkH/h9G+Z+kqn518qD7kwkTzAfT4s5AjMI64aryGCp1raMfMnM5z3HaFaPw
 oCPkkDQBRXk2gqtcBzJsa9xdEbKWlY12MHqmHlig=
Date: Wed, 11 Dec 2019 15:57:00 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Thomas Renninger <trenn@suse.de>
Subject: Re: [PATCH 2/3] x86 cpuinfo: implement sysfs nodes for x86
Message-ID: <20191211145700.GA639677@kroah.com>
References: <20191206162421.15050-1-trenn@suse.de>
 <22533595.7ohjOCJ8As@skinner.arch.suse.de>
 <20191211142647.GB605616@kroah.com>
 <2139491.Komy7AgBfX@skinner.arch.suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2139491.Komy7AgBfX@skinner.arch.suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_065704_859740_D18E9144 
X-CRM114-Status: GOOD (  11.50  )
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

On Wed, Dec 11, 2019 at 03:52:33PM +0100, Thomas Renninger wrote:
> On Wednesday, December 11, 2019 3:26:47 PM CET Greg KH wrote:
> > On Wed, Dec 11, 2019 at 03:12:51PM +0100, Thomas Renninger wrote:
> > > On Wednesday, December 11, 2019 2:56:19 PM CET Greg KH wrote:
> > > > On Wed, Dec 11, 2019 at 11:42:35AM +0100, Thomas Renninger wrote:
> 
> ...
> 
> > > I hope it is agreed that this info is worth exporting via sysfs.
> > 
> > I don't think anyone is saying it is worth exporting this information
> > via sysfs at all here.
> 
> Ok. I go for cpuid userspace tool then.
> 
> I'd still say general files like:
> cpu/info/{name,vendor}
> make sense, so that if exported by an arch like in cpuinfo, it should show up 
> in the same file.
> Every cpu has a model name and a vendor and cpuid is x86 only.

I think you just saw the ARM developers arguing about model names, so I
don't think people will agree with that :)

goo dluck!

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

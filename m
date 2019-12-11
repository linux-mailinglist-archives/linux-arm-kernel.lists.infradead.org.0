Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8451111AD1A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 15:13:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wppUMJfGYF1NFtjsRCHVfPppK/WJwsJ1PX4IhMVzBDQ=; b=bxD1VW+zwaidrW
	93o8OPeMIv3lRxjNCEUsRgj/JybS+sIn5AeeORlbP9S5vYNqvtRAwvon8f9Z8ZLm85mf06YNGuat0
	d8b+eYW4MqAPt1RcuPBBQlJ8on5RE8T6AriAaImoL3Ye5dEbHt3dvBcMrTBwShF6PSigcJOAaNO/l
	XDTDwg6mtqattkXTq9JcroHTyUJ4FyGJOfo3iswNWfIVbaICg+xiE+Rbt8JmMTfSWoYYDM4/ZrKRz
	DZ3aUrQourxxtZph9U+y+wBF0cyFyeVzAtqjkYiBRqaS4pc61NvpHhc9bfHzNFVr98N+9uIW2bkh7
	SrCYzVo4QTaMUAYBki0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if2jh-0003mK-1B; Wed, 11 Dec 2019 14:13:05 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if2jX-0003lZ-Gd
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 14:12:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 6CC3FB232;
 Wed, 11 Dec 2019 14:12:52 +0000 (UTC)
From: Thomas Renninger <trenn@suse.de>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 2/3] x86 cpuinfo: implement sysfs nodes for x86
Date: Wed, 11 Dec 2019 15:12:51 +0100
Message-ID: <22533595.7ohjOCJ8As@skinner.arch.suse.de>
In-Reply-To: <20191211135619.GA538980@kroah.com>
References: <20191206162421.15050-1-trenn@suse.de>
 <4737004.4U1sY2OxSp@skinner.arch.suse.de> <20191211135619.GA538980@kroah.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_061255_698354_740372D4 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Wednesday, December 11, 2019 2:56:19 PM CET Greg KH wrote:
> On Wed, Dec 11, 2019 at 11:42:35AM +0100, Thomas Renninger wrote:
> > If Greg (and others) are ok, I would add "page size exceeding" handling.
> > Hm, quick searching for an example I realize that debugfs can exceed page
> > size. Is it that hard to expose a sysfs file larger than page size?
> 
> No, there is a simple way to do it, but I'm not going to show you how as
> it is NOT how to use sysfs at all :)
>
> Why are you wanting to dump this whole mess into one file

I wouldn't call a whitespace separated list of CPU feature flags a mess...

> and then parse
> it, it's no different from having 100+ different sysfs files and then
> doing a readdir(3) on the thing, right?

If this is the way it "has to"/should/"is designed for" to export such
(not that complex) data via sysfs...

I do not have such a strong opinion on the how, this is up to maintainers
to discuss.

I hope it is agreed that this info is worth exporting via sysfs.
So I wait for the "how are CPU feature flags/bugs data" to be exported
via sysfs and I volunteer to pick it up and submit a patch out of it.

Thanks,

   Thomas



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

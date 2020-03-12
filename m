Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF6D182C98
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 10:39:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h8vhSHMc2WK5F0nI9v+8pcubXUFMOWUNa+GtBPmLCIA=; b=DpsBn6Iitgi9LV
	EmnZydxkhvWJH40sDeYzdB8vL5zS/fvTkoJJpymtCmLUdmWeBzu5eRSBMoBzCgB0jQg9QwmidZQfr
	fyzTvUCRAD72QMHwWwBVPCllqg29OuYk8hPXZ9qOMAyKKoY/SEE+sgBQnqf4gdxb7YeIYHM0foGPO
	PTAOXiqvb9FM1/XGgnpE+nbBZlfoG+eyUP7Hc6Czl06BwlA9IAbGzyNdLUlKCpdbNqmqD/BPAbC2V
	WexXUoutKGWyxUWoF4J0REMK5s0FFc12lehwvbLTE5fqcjzE9bX3otYJDMmXFdEgRZ+VmZz9VrFKQ
	p63O6vksO3VHpE3qpQWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCKJO-0003R4-1O; Thu, 12 Mar 2020 09:39:30 +0000
Received: from smtprelay0226.hostedemail.com ([216.40.44.226]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCKJE-0003QK-L6
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 09:39:22 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 2FF6710FA8;
 Thu, 12 Mar 2020 09:39:16 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:967:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1434:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2525:2553:2560:2563:2682:2685:2828:2859:2902:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3354:3622:3865:3866:3867:3868:3871:3872:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:8531:9025:10004:10400:10848:11026:11232:11658:11914:12043:12297:12438:12555:12740:12760:12895:12986:13069:13161:13229:13311:13357:13439:14181:14659:14721:21080:21433:21451:21611:21627:21811:21939:30054:30060:30083:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: match59_8af9430b5bd5c
X-Filterd-Recvd-Size: 3208
Received: from XPS-9350.home (unknown [47.151.143.254])
 (Authenticated sender: joe@perches.com)
 by omf16.hostedemail.com (Postfix) with ESMTPA;
 Thu, 12 Mar 2020 09:39:14 +0000 (UTC)
Message-ID: <fa07756217b3c033c7e5af495a03ff5655947450.camel@perches.com>
Subject: Re: [PATCH -next 005/491] ARM/UNIPHIER ARCHITECTURE: Use fallthrough;
From: Joe Perches <joe@perches.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Date: Thu, 12 Mar 2020 02:37:31 -0700
In-Reply-To: <CAK7LNAS98yeCeFZpKgNRRKcFhXSKWQ7Ka4vP90YcY=ufScZRCw@mail.gmail.com>
References: <cover.1583896344.git.joe@perches.com>
 <dae0878058223a42c77d725b8d7c5845a7ef9dc0.1583896348.git.joe@perches.com>
 <CAK7LNAS7GAk9yXkPhbS3ByU+n9Gb-rk0PeLcXLCNwpW1B22aeg@mail.gmail.com>
 <891a42ad8d8fd7beca911845108e1ded022ef3f7.camel@perches.com>
 <20200312085606.GA154268@kroah.com>
 <CAK7LNAS98yeCeFZpKgNRRKcFhXSKWQ7Ka4vP90YcY=ufScZRCw@mail.gmail.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_023920_751252_39036797 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.226 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.226 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-03-12 at 18:02 +0900, Masahiro Yamada wrote:
> On Thu, Mar 12, 2020 at 5:56 PM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> > On Wed, Mar 11, 2020 at 07:31:07AM -0700, Joe Perches wrote:
> > > On Wed, 2020-03-11 at 14:15 +0900, Masahiro Yamada wrote:
> > > > On Wed, Mar 11, 2020 at 2:07 PM Joe Perches <joe@perches.com> wrote:
> > > > > Convert the various uses of fallthrough comments to fallthrough;
> > > > > 
> > > > > Done via script
> > > > > Link: https://lore.kernel.org/lkml/b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe.com/
> > > > > 
> > > > > Signed-off-by: Joe Perches <joe@perches.com>
> > > > 
> > > > Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> > > > 
> > > > 
> > > > But, I think the patch subject should be prefixed:
> > > > "serial: 8250_uniphier:"
> > > 
> > > Yeah thanks, that's difficult to script though.
> > > 
> > > 
> > 
> > Kernel development is hard :)
> 
> It is strange to process this per-platform
> and to send out a giant series that
> consists of 491 patches.
> 
> This is very trivial conversion.
> 
> I think it is better to have a single patch
> to convert all files under drivers/tty/serial/,
> with the patch subject "serial:".

The difficulty there is determining where these
subsystem spanning blocks should begin and end.

That could not be done for instance with drivers/net.

As I have suggested a few times, better still
would be to have a mechanism for scripted patches
applied possibly as single treewide patch.

Likely applied only at an -rc1.

The stated negatives to a treewide mechanism
have been difficulty to backport to -stable.

Perhaps a mechanism like

	git format-patch --stdout <treewide_commit_to_backport> | \
	git apply --include=<specific_files>

with some automated rewrite of the treewide patch subject
then commit could help.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

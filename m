Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9521832A9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 15:17:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=24QArYMaK4x+9g8b928xeH6w0w0q7pIKGVSi/Jf/HxY=; b=evjwA7twiarTJw
	RdhlrWv0ggS1H6MNkSXtDvWkfxUlaR/Q1ArMm9JBvle7khiKu3bP8zFKfw0WCLQ8zyvrSn0+A+Fg1
	wLxcIf/by8RNcN2aEqlNkKqZYJQq3L2SvI3pwdybGStzncamsznMcINhzsKjp4RfSSjpd1ogPYpXB
	wWvD+qzWZsnoFpmHTNHn0mVmUmXjw4bgtGHBoS+4fQI4ksSFHipJiil1jzLvCkDRnBksJkPf85evJ
	NkusgTzBgoDMgRnF5iuKGE5ZAHv3YXRMlJ13limUE4NWcwYANNSUyfWXKzF0Xat5KhmKh4SNranI9
	eg+jOdTTCk+NSp9Ns/gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCOeC-0001mC-Dc; Thu, 12 Mar 2020 14:17:16 +0000
Received: from smtprelay0107.hostedemail.com ([216.40.44.107]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCOe6-0001lo-8c
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 14:17:11 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 51ABE8139;
 Thu, 12 Mar 2020 14:17:08 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2693:2740:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3872:3874:4321:5007:6119:10004:10400:10450:10455:10848:11232:11658:11914:12297:12740:12760:12895:13069:13161:13229:13311:13357:13439:13869:14040:14096:14097:14659:14721:19904:19999:21080:21611:21627:30005:30012:30041:30054:30060:30070:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: music20_5b3c53998c133
X-Filterd-Recvd-Size: 2957
Received: from XPS-9350.home (unknown [47.151.143.254])
 (Authenticated sender: joe@perches.com)
 by omf17.hostedemail.com (Postfix) with ESMTPA;
 Thu, 12 Mar 2020 14:17:06 +0000 (UTC)
Message-ID: <520264e86bcba45ba8cb721ca54b81e56e5df42e.camel@perches.com>
Subject: Re: [PATCH -next 005/491] ARM/UNIPHIER ARCHITECTURE: Use fallthrough;
From: Joe Perches <joe@perches.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Date: Thu, 12 Mar 2020 07:15:23 -0700
In-Reply-To: <20200312134712.GE7159@mit.edu>
References: <cover.1583896344.git.joe@perches.com>
 <dae0878058223a42c77d725b8d7c5845a7ef9dc0.1583896348.git.joe@perches.com>
 <CAK7LNAS7GAk9yXkPhbS3ByU+n9Gb-rk0PeLcXLCNwpW1B22aeg@mail.gmail.com>
 <891a42ad8d8fd7beca911845108e1ded022ef3f7.camel@perches.com>
 <20200312085606.GA154268@kroah.com>
 <CAK7LNAS98yeCeFZpKgNRRKcFhXSKWQ7Ka4vP90YcY=ufScZRCw@mail.gmail.com>
 <fa07756217b3c033c7e5af495a03ff5655947450.camel@perches.com>
 <20200312134712.GE7159@mit.edu>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_071710_368830_9D0F174F 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.107 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.107 listed in wl.mailspike.net]
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-03-12 at 09:47 -0400, Theodore Y. Ts'o wrote:
> On Thu, Mar 12, 2020 at 02:37:31AM -0700, Joe Perches wrote:
> > As I have suggested a few times, better still
> > would be to have a mechanism for scripted patches
> > applied possibly as single treewide patch.
> > 
> > Likely applied only at an -rc1.
> > 
> > The stated negatives to a treewide mechanism
> > have been difficulty to backport to -stable.
> 
> Any time we do a massive, disruptive change to the code base, it's
> going to cause problems to -stable.  It means that bug fix patches
> won't necessarily auto-apply, and some will require manual fixups
> afterwards

That's mostly a tools problem than a real problem.

> Given that this change doesn't really fix any bugs, I'd have to ask
> the question --- is it *worth* it?  We really need to apply a certain
> amount of cost/benefit analysis around this.
> 
> If it were really important, the thing we could do is to apply a
> single treewide patch at some point after the merge window.  I'd
> suggest after -rc2, myself, but reasonable people can differ.  And
> then, if it were *really* important we could run the same script on
> the stable kernels.
> 
> But for changing "/* fallthrough */" to "fallthrough;"
> 
> Does this ***really*** matter?

That depends a bit on whether clang is your
compiler of choice.

> Why are we tying ourselves up in knots
> trying to do this all at once?

Discretely or treewide, all at once or done over time,
the impact problem to backports is the same.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

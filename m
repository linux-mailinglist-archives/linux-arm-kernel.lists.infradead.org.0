Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2701CE4E2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 21:56:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k1yp89oBna0WAaYT55EOFHkK+ixtg3DgvLixUxDYuMw=; b=PC5GJX3y7TvKAX
	zp6L/HESOI+UnbXKfGAIYqTdQ30Ie1tQqt5l8LvBIWp8zzG4gyrSY6HLSW5snijLJAGbVH4wubsKw
	Ntu+v13vbACADQzHyLyx/9DNrx1KAZPGhLjFOvD8o8DOyht+Ya9pMufXUl//Q6DDGQohw7dtf/JFO
	AEO8oa+0hRdCnTbZ8/EDIrS0MU9Su8EjtmSmhEDl6Dl/EAnIXdgj1ppd1+uu1EhAXjCZMWshU2mHm
	MRc0gsxfjU0wgsDSQRPfZdvorFMrFvLtCE804nkgsOWyksKDPZgvOPpxYrhPpLNceKzEqzCB8m17F
	lwiaS87Ww/wVx6IgThgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYEXI-0006rq-TY; Mon, 11 May 2020 19:56:24 +0000
Received: from smtprelay0037.hostedemail.com ([216.40.44.37]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYEXB-0006pw-DT
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 19:56:18 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id 820CC837F253;
 Mon, 11 May 2020 19:56:11 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1538:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3350:3622:3865:3867:3870:3871:3872:3874:4321:5007:10004:10400:10848:11232:11658:11914:12297:12740:12760:12895:13069:13311:13357:13439:14659:14721:21080:21451:21627:21972:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: fall43_8d37d983a5062
X-Filterd-Recvd-Size: 1590
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf04.hostedemail.com (Postfix) with ESMTPA;
 Mon, 11 May 2020 19:56:10 +0000 (UTC)
Message-ID: <df390f30d2cca58bad013196b443f82e048c528c.camel@perches.com>
Subject: Re: [PATCH] Revert "dynamic_debug: Remove unnecessary __used"
From: Joe Perches <joe@perches.com>
To: Elliot Berman <eberman@codeaurora.org>, Jason Baron <jbaron@akamai.com>
Date: Mon, 11 May 2020 12:56:09 -0700
In-Reply-To: <9b6694ac-acb3-6bc4-49c9-39ad1c64d6e1@codeaurora.org>
References: <1589221618-21808-1-git-send-email-eberman@codeaurora.org>
 <59b3e2aac1388209d168a31294dfd2b1f7d21513.camel@perches.com>
 <9b6694ac-acb3-6bc4-49c9-39ad1c64d6e1@codeaurora.org>
User-Agent: Evolution 3.36.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_125617_513483_9A61AD25 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.37 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.37 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Trilok Soni <tsoni@codeaurora.org>,
 Murali Nalajala <mnalajal@codeaurora.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2020-05-11 at 12:31 -0700, Elliot Berman wrote:
> On 5/11/2020 11:54 AM, Joe Perches wrote> Change-Id: probably isn't necessary.
> 
> Thanks for the catch
> 
> > Is there a separate mechanism possible to avoid bloating the
> > otherwise unused content?
> 
> This struct is being used in lib/dynamic_debug.c but compiler doesn't know
> about this usage when optimizing the struct/branch away.

I only remember that I removed __used awhile ago
because it _wasn't_ used in some paths.

Maybe that's changed, but I don't know.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

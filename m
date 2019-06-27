Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 903CE57B3C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 07:21:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VvpjyQ+S4aiDVhF8E2CEt3AQ5aw1VbTmU2Z3Vuh+a1M=; b=sSMrxL5/nAg6Ma
	F2K7JYUmso2yDbjdAzvKZ0nlttOBFT1JqKie2BMTKKdGUgfgLhf+mjLJJBFyjCK7UKYC7MSfYfELE
	dCegnP0t1TieoPu/VDwmrUNXiSLzKMmWJToepEWqVDXherMUgm1ZYoshHerVPOboFF6l49eMVY7oN
	KivA8K77tLBcBMJo/dAKq3nl5PnVG9xCGe8mzJeYxxgYjRPudOpnYbiAUed/RN+A3Lnkqa7tartHC
	RdD/0EBVimJ5FqGinEdXvIHN3CHs8j79li1bxej5nul4g+wUX6BnQ2bqP0Pd7DEQH1hlcLq41vLHt
	GOc8mQgR5YFqiYGq1PhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgMqv-0001xT-Jq; Thu, 27 Jun 2019 05:21:45 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMou-0007bR-Cn
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 05:19:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+wCwdaSxTB8YKlW81OR1Th+bQGIzFRA/syRzv9dk9Z8=; b=CVCuVmI3XkTU86/qCbXJQg9LH7
 5wULrdcAune2qlDeyjgONyRrwCPDHKY638ued+PIHPtwnM90wUJh1xMii6/yMr7FZHy1+TeevS4l0
 /oOX8VV4X0428JotDu/+vwj1sAnjzMVgStqBIZy8zSunaZsc3slHYvwa3H9HTaF8QMvSB/Qz3JuVv
 d1Blyxao/FNxEEzQG6aCsQHXO8nMJ/6aVpSdO0iVyFN7HBAoD8GyGHSYKUwFka1g5iom6xMOrEeZ1
 8aliPJaPNtWOMCkZxdDFyU8iK2ylOIxnsTSxJWpqhqPD5eF7wiT8czkgp8UQHtQxNx2K599hMWPP+
 FFPvvnng==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgLD0-00081e-AH
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 03:36:28 +0000
Received: from localhost.localdomain (c-73-223-200-170.hsd1.ca.comcast.net
 [73.223.200.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C898C216E3;
 Thu, 27 Jun 2019 03:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561606552;
 bh=VbXYrl8hV0yD1BgA3FSNiW43CpbVpvSODNnRganJGDE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=qJNVSV/gh5CVGeGNXpkcW2nF9iUxd1Sdk2X1TV3BnRqByggZqSGbDMq/6dRMBaEd6
 X2eUMCkVnjulZ29brgN5QAbJUKPSXyQbRJD2zzaU60IjlrKzh1AKlvGVn63QYi9OzC
 IK+TVy8Lf1kt5G+0QGXbfgv6unH4vFb+A9uGD3oE=
Date: Wed, 26 Jun 2019 20:35:51 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Jason Gunthorpe <jgg@mellanox.com>
Subject: Re: [PATCH v3 0/4] Devmap cleanups + arm64 support
Message-Id: <20190626203551.4612e12be27be3458801703b@linux-foundation.org>
In-Reply-To: <20190626154532.GA3088@mellanox.com>
References: <cover.1558547956.git.robin.murphy@arm.com>
 <20190626073533.GA24199@infradead.org>
 <20190626123139.GB20635@lakrids.cambridge.arm.com>
 <20190626153829.GA22138@infradead.org>
 <20190626154532.GA3088@mellanox.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_043626_497303_2176C128 
X-CRM114-Status: GOOD (  31.88  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-5.0 points, 5.0 required)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Michal Hocko <mhocko@suse.com>,
 "anshuman.khandual@arm.com" <anshuman.khandual@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>, Robin Murphy <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 26 Jun 2019 15:45:47 +0000 Jason Gunthorpe <jgg@mellanox.com> wrote:

> On Wed, Jun 26, 2019 at 08:38:29AM -0700, Christoph Hellwig wrote:
> > On Wed, Jun 26, 2019 at 01:31:40PM +0100, Mark Rutland wrote:
> > > On Wed, Jun 26, 2019 at 12:35:33AM -0700, Christoph Hellwig wrote:
> > > > Robin, Andrew:
> > > 
> > > As a heads-up, Robin is currently on holiday, so this is all down to
> > > Andrew's preference.
> > > 
> > > > I have a series for the hmm tree, which touches the section size
> > > > bits, and remove device public memory support.
> > > > 
> > > > It might be best if we include this series in the hmm tree as well
> > > > to avoid conflicts.  Is it ok to include the rebase version of at least
> > > > the cleanup part (which looks like it is not required for the actual
> > > > arm64 support) in the hmm tree to avoid conflicts?
> > > 
> > > Per the cover letter, the arm64 patch has a build dependency on the
> > > others, so that might require a stable brnach for the common prefix.
> > 
> > I guess we'll just have to live with the merge errors then, as the
> > mm tree is a patch series and thus can't easily use a stable base
> > tree.  That is unlike Andrew wants to pull in the hmm tree as a prep
> > patch for the series.
> 
> It looks like the first three patches apply cleanly to hmm.git ..
> 
> So what we can do is base this 4 patch series off rc6 and pull the
> first 3 into hmm and the full 4 into arm.git. We use this workflow often
> with rdma and netdev.
> 
> Let me know and I can help orchestate this.

Well.  Whatever works.  In this situation I'd stage the patches after
linux-next and would merge them up after the prereq patches have been
merged into mainline.  Easy.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

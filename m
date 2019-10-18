Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA74DCCF8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 19:42:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ceT1F9MyzyKVJXBhJiGX4vXNxw1mJe5uMrUNxu2EVFY=; b=fHDnv+4qAB+Q3N
	VTACal/YlwjZLno9RyD5c/RRGaPtDDZQM83hMVVO1clR+KILdofKHurMnFTyd6SEMe5thW1tGaWnE
	Oe61JmZYWt8j2PdEVNOQki7hVqnsFd9EyU6yQnMmTZB0Y4/j3eZL2JpCyx1x119unzH9hc5q0WsE2
	sLddNOPVRImdHKwM/uy27GeKYhDywug03/A36QnK1OGTFpCp6qqgSHep2+DCt39yWb2DlaJF4d3j3
	SAcgxOV9z6qqlmW2XJzP77nuNNyVuxmd5vrYwIw0YTjUa+roy8szhkngeHR5IpcHa6YGm/ZXCRN6j
	M58Tp7p/ZCyM7Zh0A6qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLWGR-0006Ho-9s; Fri, 18 Oct 2019 17:42:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLWGH-0006Gq-DS
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 17:42:02 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CCA2E222C2;
 Fri, 18 Oct 2019 17:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571420520;
 bh=ByzaJhLWQDhYvhzZNYkjFZvEYfpXrCTgrRuj8JgtiFg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DeguvO5n+N0AvKbTtla8iJJAcvwhQnXBGsNC/fB7Iiha89DuiJ56Iaf9EfeFN8WQl
 55MfqI3QgCcvVrdPQp6M8qiR2nG7YxOqPPE9v6t27s6GcAHLk/6Yv+Fp2yk6ypk1Qy
 JWYmlJkZkwP5cYmxeFp3H+3/VO4Bqx4Sm2pzxNuw=
Date: Fri, 18 Oct 2019 18:41:56 +0100
From: Will Deacon <will@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [GIT PULL] arm64: Fixes for -rc4
Message-ID: <20191018174153.slpmkvsz45hb6cts@willie-the-truck>
References: <20191017234348.wcbbo2njexn7ixpk@willie-the-truck>
 <CAHk-=wjPZYxiTs3F0Vbrd3kRizJGq-rQ_jqH1+8XR9Ai_kBoXg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wjPZYxiTs3F0Vbrd3kRizJGq-rQ_jqH1+8XR9Ai_kBoXg@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_104201_475310_612BC0A1 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM Kernel Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 05:06:54PM -0700, Linus Torvalds wrote:
> On Thu, Oct 17, 2019 at 4:43 PM Will Deacon <will@kernel.org> wrote:
> >
> > Note that the workaround code ended up being based on -rc2, so I had a
> > bit of a faff trying to generate the right diffstat for this pull request
> > after merging that branch into our fixes branch based on -rc1. In the end
> > I had to emulate the pull locally because I couldn't figure out how to
> > drive request-pull correctly despite the shortlog being correct. I'd love
> > to know what I should've done instead.
> 
> You did the right thing.
> 
> When there are multiple merge bases, a regular "git diff" doesn't work
> since it's fundamentally about two end-points (well, it _can_ work
> almost by mistake, but doesn't work in the general case). So the only
> way to get a "proper" diff is to do a merge and then diff the result.
> 
> That said, I also accept the output of "git diff" which will then have
> a lot of noise from all the _other_ work done between the two merge
> bases. I can figure out what happened, and do my own two-endpoint diff
> and see what happened, and still se that "yes, that's what the pull
> request meant, and that's why the diffstat is garbage".
> 
> What you did is the "good quality" pull request, though.

Thanks, that's helpful to know for next time. I guess I'm most surprised by
the discrepancy between the shortlog and the diffstat, whereas I intuitively
expected them to be generated in the same way.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

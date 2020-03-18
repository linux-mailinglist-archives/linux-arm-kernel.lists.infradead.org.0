Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4000418A389
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 21:13:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=En/okSfMTgNbRzaZ5gKcR5v0AKZK3eN0IU8H7NTItuo=; b=WdPm++gZ6W034+
	QRFQYcdipi8HPhMEOc7RubnUgMagLbPNNj0oLIMO6/7CYDwjZxpVQi2bg0W2xTMNuaiUTXCLhC2lV
	KwxwWBW0vvQ8undOgIodVkdrCs8ZwM/3HxQtymI5HdtuNfx4O/wfgSmjXrGvFko1XyoDG+8Ubv29e
	I/ikK488Mqh+5WATVbVA9U/j9hBP2sJbFp+1bSCBxNmVRh2JAOXXdLXxeDPCWrxEDkcUt9R4xp5jP
	y+qFLbk6SvRi6ibzx+Ato9WUZAZGTN82jyIk9ixWcbAKGGtq0qDAnwp/ao9EIKtzF1cG/fe3kctjJ
	Zg8gdwTZRgIXL81pDygw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEf40-0006IN-08; Wed, 18 Mar 2020 20:13:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEf3q-0006Hv-Qe
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 20:13:08 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 56EEF2071C;
 Wed, 18 Mar 2020 20:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584562385;
 bh=pe4t1TUdWt373Ez1EnHNV+7ooE3eThnbOn1Mljp2GuQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fJfc1ht/bYxSxn6MowvslrLRwT9YTkQYplJpTElDcJogHBcmdK0MT1NWSEncYrRFw
 5+Fl9RF+m9QrQZoPXmFeB64y1NrjrT8m40A/WV2rYnfZVte49RVauotNPueT+RwzQR
 W8fAahaG7Zx3ewn3MZDnu8JgRwY9AqocH74w51lg=
Date: Wed, 18 Mar 2020 20:13:00 +0000
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [RFC PATCH] arm64: fix the missing ktpi= cmdline check in
 arm64_kernel_unmapped_at_el0()
Message-ID: <20200318201259.GA7463@willie-the-truck>
References: <20200317114708.109283-1-yaohongbo@huawei.com>
 <20200317121050.GH8831@lakrids.cambridge.arm.com>
 <20200317124323.GA16200@willie-the-truck>
 <20200317135719.GH3971@sirena.org.uk>
 <20200317151813.GA16579@willie-the-truck>
 <20200317163638.GI3971@sirena.org.uk>
 <20200317210154.GA19752@willie-the-truck>
 <20200318113217.GA4553@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318113217.GA4553@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_131306_887354_AD9E1ACC 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
 Hongbo Yao <yaohongbo@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 18, 2020 at 11:32:17AM +0000, Mark Brown wrote:
> On Tue, Mar 17, 2020 at 09:01:54PM +0000, Will Deacon wrote:
> > On Tue, Mar 17, 2020 at 04:36:38PM +0000, Mark Brown wrote:
> 
> > > I'd need to go back and retest to confirm but it looks like always had
> > > the issue that we'd install some nG mappings early even with KPTI
> > > disabled on the command line so your change is just restoring the
> > > previous behaviour and we're no worse than we were before.
> 
> > Urgh, this code brings back really bad memories :( :( :(
> 
> Tell me about it.
> 
> > So I've hacked the following, which appears to work but damn I'd like
> > somebody else to look at this. I also have a nagging feeling that you
> > implemented it like this at some point, but we tried to consolidate things
> > during review.
> 
> > Thoughts?
> 
> I don't think I did *exactly* this but it's familiar yeah.  It looks
> sensible and I can't think of any problems but that doesn't mean there
> aren't any.

Well, thanks for having a look!

Hongbo -- please can you confirm that this fixes the problem that you are
seeing?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

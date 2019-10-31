Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E95EB07A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 13:42:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uP0X+KDaQsDvR7x1edSJiUIA8Qz56lOniwN/EVnByX8=; b=hCYSnXiSStdw18
	82+NBsUHoTQezsHRaCqU7U4my6Ssd/nCdz4JVmI45nwVUBiYAa1kwl5lXwBdR2a6NDNrEwrC/0GO1
	QhbHWMJ84Bq9lf01pt2Qbhqk7R7/cByRKRDkAy/cgkGsRhp+9/bwPLkw6yfRmHb7P7mF5SfLw0k9H
	uRdYUCrP5OjLSXyIBBFJpwih2HR5KJ41hxOAzclP3eA0ak/nWdxk0Tf67emv9zK3zqBsiU+C1HGFw
	bLCv4MowT4ApLh90Yo/TNL+YLdL/HdyQxAz3JbQSANdyLTJ047jFEzXe87uoOQPeypO36h5S1kkv0
	3IqozpwnxpseIUz4prmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ9ma-0003jI-2b; Thu, 31 Oct 2019 12:42:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ9mR-0003io-2J
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 12:42:24 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A2AF42067D;
 Thu, 31 Oct 2019 12:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572525742;
 bh=Z8NkcpbE9HbpFDfcFV/Fke+tuX57CmwnyFv9UTQ0TH8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m/6cavYdrLV+Tfx1RodoT31BA+YByoVHMt4vwo3N4q32+pgkkXZzg0V0mCxD3YeSZ
 Yqisk/PknXHBBViHdrIlyzEyAawpYBgmKAFvgmSRSMKYf/c/bFOtwt3khrH9lGuz9K
 6FyKXN0KmvB3cyJSVBd9eqD96Ai26UaFyOUDQWIw=
Date: Thu, 31 Oct 2019 12:42:18 +0000
From: Will Deacon <will@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH v4 0/4] E0PD support
Message-ID: <20191031124217.GE26059@willie-the-truck>
References: <20191024214207.20588-1-broonie@kernel.org>
 <20191031112610.GA26059@willie-the-truck>
 <0152ac71-1295-a302-7810-f9767f7bbd78@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0152ac71-1295-a302-7810-f9767f7bbd78@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_054223_132096_BD7A90C0 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 12:13:35PM +0000, John Garry wrote:
> On 31/10/2019 11:26, Will Deacon wrote:
> > On Thu, Oct 24, 2019 at 10:42:03PM +0100, Mark Brown wrote:
> > > This series adds support for E0PD. We enable E0PD unconditionally where
> > > present on systems where all the CPUs in the system support E0PD and
> > > change to not enabling KPTI by default on systems where we have enabled
> > > E0PD. It also converts the runtime checks for use of non-global mappings
> > > into a variable.
> > 
> > Although I welcome the simplification introduced by this patch set, I'm
> > worried that we might be removing a significant optimisation to KASLR
> > boot-time on machines with large memory. John reported issues with this
> > in the past, so I'm looping him in in case he has a chance to test this
> > (branch here [1]). Of course, I could just be missing something since
> > this code was really subtle to begin with.
> 
> I booted our D05 and D06 boards with that branch and did not experience the
> pauses which we reported some time ago.

Hmm. So I annotated the code locally and I see that we do rewrite swapper
in this case, so I'm surprised you're not seeing the performance issue
you ran into with this before. Have you got KASLR enabled and are you
passing a non-zero seed?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

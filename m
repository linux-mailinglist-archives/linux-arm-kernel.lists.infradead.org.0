Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E97EEC658
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 17:05:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vnOm0RWSQx/3b3IEUbALUt7AjwEXresc7XjqI38F9xA=; b=Je+ug5btGYAR6d
	cW3nSh6yw5KbII3hQ6HrnZhV13QZtLx8LEHzFYQEdUT6z91Riu9qqFPEOlCaN2ckOyKRxiBv0t8qo
	w0ZiEsAFFnZ2E4xmUTUUc/U2ajudMtQHrabrQ0ujkEV12U+DYg5J425huyZ4Z9DCAHmasLpSy/HQS
	LoW6MOT4XLMnE3KIRsI1qYPChYQw3J7/F1Wsi2wsA19Q0QWC97HDVZJ3kqjZc+59QJDKQ+ST4y55g
	6r2875QpN7GfKVEh7v5rxmoaApOE7pAFWjlGV8IufVKPJTKeDpEZ/enadj0/mPS9M+YTaLqbQG2sG
	5JislRgsKZabuzjbNJkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZQs-0006Y0-SZ; Fri, 01 Nov 2019 16:05:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZQm-0006XJ-Hm
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 16:05:45 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DF039222CB;
 Fri,  1 Nov 2019 16:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572624343;
 bh=VLyDTGx/41mUpSedOO/FdDV9zpz1IgFUvWraZ5T6Tzk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XMSokdTzHiIUb6IbkVt0In1RBBrSk2IeKraPOxWWq72S5UE/PqvKhU2tihLh3RydC
 3OYH3qmTR2OcL94Q8i1VpAHlMJnkF4zvmxQWG+o1KUAhLHV3nukJ0Nt9WAovi893dR
 8TtlCyhQSLelgDFaKWJcUnSjAPx2CoCQ3pl20FXE=
Date: Fri, 1 Nov 2019 16:05:39 +0000
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: perf: Simplify the ARMv8 PMUv3 event attributes
Message-ID: <20191101160538.GA3603@willie-the-truck>
References: <1572407177-48229-1-git-send-email-zhangshaokun@hisilicon.com>
 <20191031160804.GA28325@willie-the-truck>
 <20191101085319.GA3508@blommer>
 <20191101103616.GA2392@willie-the-truck>
 <ddb8d44c-d7cc-5080-1cbc-59f758b699ae@arm.com>
 <20191101105557.GC2392@willie-the-truck>
 <7b1e730e-9083-75b9-f1bc-7d84c686c97c@arm.com>
 <20191101143602.GB13020@blommer>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101143602.GB13020@blommer>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_090544_608583_FEA9748F 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 02:36:03PM +0000, Mark Rutland wrote:
> On Fri, Nov 01, 2019 at 11:11:49AM +0000, Robin Murphy wrote:
> > On 2019-11-01 10:55 am, Will Deacon wrote:
> > > On Fri, Nov 01, 2019 at 10:54:21AM +0000, Robin Murphy wrote:
> > > > On 2019-11-01 10:36 am, Will Deacon wrote:
> > > > > On Fri, Nov 01, 2019 at 08:53:19AM +0000, Mark Rutland wrote:
> > > > > > You need want &(obj.attr.attr) rather than &(obj).attr.attr, i.e.
> > > > > > 
> > > > > > #define ARMV8_EVENT_ATTR(name, config) \
> > > > > > 	(&((struct perf_pmu_events_attr) { \
> > > > > > 		.attr = __ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL), \
> > > > > > 		.id = config, \
> > > > > > 	}.attr.attr))
> > > > > > ... which compiles for me.
> > > > > 
> > > > > Weird, the following compiles fine for me with both GCC and clang:
> > > > > 
> > > > > #define ARMV8_EVENT_ATTR(name, config)						\
> > > > > 	(&((struct perf_pmu_events_attr) {					\
> > > > > 		.attr = __ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL),	\
> > > > > 		.id = config,							\
> > > > > 	}).attr.attr)
> > > > 
> > > > You know that the expressions are equivalent because unary "&" has lower
> > > > precedence than ".", right? ;)
> > > 
> > > Right, which is why it's weird that Shaokun claims that the version I posted
> > > doesn't compile. I assume it didn't build for Mark either, hence his extra
> > > brackets.
> 
> I must've meessed up locally -- sorry for the noise.
> 
> > Because different compilers have different ideas of whether "obj" is a valid
> > thing to dereference at all, regardless of where you put parentheses. From
> > what I remember, the array trick was the only way to convince older GCCs to
> > treat the floating struct initialiser as an actual object definition. I
> > guess newer versions are a bit more lenient.
> 
> I strongly suspect Will's (much cleaner) version would work with those older
> compilers too, and I just didn't know what I was doing ~8 years ago when I came
> up with the trick.
> 
> I can have a go with my toolchain museum on Monday; if old GCCs are happy we
> can clean up the other instances of the trick to be much more legible.

I've thrown it into -next to see how it gets on.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

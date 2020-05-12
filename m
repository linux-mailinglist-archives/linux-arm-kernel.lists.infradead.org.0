Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 276171CF676
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 16:08:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AxIP6E96Uq+g0kaqBCmQ7pQ72hqQPZg9O085MAm8QYM=; b=R2VcsBthspfZgn
	XYyCaHhhUUVsXEvtGKfVwuJhv1SHkbtkGQ4JZNeVl508u1Y9TVnwzi/fFUk7pRJ623ImliNKsxbW9
	WuuDDlpWHBtlpOPnsH81FrwlhyW10Eksbs7sleTecx/07XZqL9tMAEZOwiERr6fr6bzpFXIYv7usk
	TGXn6IyiMgX81Aj0EjZeq1tx2NvbauxloVM6GTnjK92Xjq6EQ6rE1fnRIKhXSp3m73k2ySxsFRuoh
	e024d36i2YE+7ZGLL3gLF8807hpqZhI9L1ci1+lzF8zG1kH5igvZZnqBqs9TeJHD1jVbCBqH0nwb8
	sT5DEwDzImP3IgpZaP9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYVa3-00040r-F7; Tue, 12 May 2020 14:08:23 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYVZx-00040e-W7
 for linux-arm-kernel@bombadil.infradead.org; Tue, 12 May 2020 14:08:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=fzwFqbLGDZkv7zVEdnOkAnrFdnE9KNFZhl2rWunK4uU=; b=Vm7xbu1WPV9rFcmXbY0vufqy69
 VxYkGncfQBanfOlxD+iMe05h1iEOIHmHJF9cLtCJrykt5M1F/MXVel26a7HC/vO8B6/I2vQhsHNoK
 RMT+JpiwO0rtNjNj9i8bLi6HE9nGCsCtk0pwdGrY2IYESesk7ZAhXlfmt4s5rfunKXzPOpyK/M/VB
 8I8WH3FZhXaRRCEkeblPSU2cbznHbj5tQ313Oq7fBypecu8LGm7bKLNCwZC78p43hKndUNMQ2u/EL
 OuvJdveia5YREEuQwHTuqhAzTvf/IRRU0C5W0u/VzK56klr5uE5lF+VozugNNcLx+TyUgMDQFuB+p
 SakVOIVQ==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYVZu-00069L-Fo; Tue, 12 May 2020 14:08:14 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id AB2BB304DB2;
 Tue, 12 May 2020 16:08:11 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 6E62620962E33; Tue, 12 May 2020 16:08:11 +0200 (CEST)
Date: Tue, 12 May 2020 16:08:11 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH 2/5] arm64: perf: Implement correct cap_user_time
Message-ID: <20200512140811.GK2978@hirez.programming.kicks-ass.net>
References: <20200512124058.833263033@infradead.org>
 <20200512124450.824507755@infradead.org>
 <20200512140301.GC20352@leoy-ThinkPad-X240s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512140301.GC20352@leoy-ThinkPad-X240s>
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
Cc: Mark Rutland <mark.rutland@arm.com>, alexander.shishkin@linux.intel.com,
 Marc Zyngier <maz@kernel.org>, jolsa@redhat.com, daniel.lezcano@linaro.org,
 sboyd@codeaurora.org, linux-kernel@vger.kernel.org, acme@kernel.org,
 mingo@redhat.com, john.stultz@linaro.org,
 Catalin Marinas <catalin.marinas@arm.com>, tglx@linutronix.de,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 10:03:01PM +0800, Leo Yan wrote:
> > +	if (userpg->shift == 32) {
> 
> Thanks a lot for the patch set, some typos:
> 
> s/shift/time_shift
> 
> > +		userpg->shift = 31;
> 
> s/shift/time_shift

Blergh.. so much for me not taking the time to dig out the arm64 cross
compiler :/ Sorry about that.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

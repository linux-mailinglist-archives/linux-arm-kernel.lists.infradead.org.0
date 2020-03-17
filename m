Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8091891DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 00:14:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pAut1SnelmVaGTAvJM0INF/StBNe/CxVTJNG3PPTTnA=; b=ABLHRlYQZN5+h+
	AbQXLOMA9bgQebZd0FfSwhbbtrG/PCWC+Pn093zw0dhZb7lFrI5IA7FFBSrb3Q2TqcAmuz5VZubQ0
	oj9q994jlMkTzDc0VUtfR2D925/iYEQX5v0mdBth0MOK2HpwgicLYXOhLMm+Yb5I+znbc5yw1nBlM
	SiGxLlBJjxsgSWGLSmsqDEqmNyVXjaKnYcZ/7iymz8IQpe8+gRek7553nOoMJFztodPKOULYD6WRf
	Hc2FRZ6oWGkdTPeB+Ydx+uPgKDG9Lvu9bqBt9Rtyn0RMq5baPOhAk6YYPFM9Sj+P0Bz6oknvgXJp2
	NYwuqrYd40ik6ClpFiVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jELQ6-00064l-8f; Tue, 17 Mar 2020 23:14:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jELPy-00064F-7t
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 23:14:39 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B9B9C20674;
 Tue, 17 Mar 2020 23:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584486875;
 bh=yHw9wmkRZUD7U6vWzsX9I+2UeHaJ6WKcTXK2YgtM0NQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ov90TkG86ZpHEydQCgM2v70whf8E34aREle1LDBQm45qWSKt4pgMmyL45WA2SFHqb
 c3Idzds5Q8YJAOZQ6xu3CxFUGgOYLHNfjBYDnRjA0If0vdQiWtYt6/LXTAtbz255sw
 da7d9RusApuvu6yQnM3l5rGMhGI66/k1Iz7Oo3rA=
Date: Tue, 17 Mar 2020 23:14:31 +0000
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCHv6 0/3] arm64: perf: Add support for ARMv8.5-PMU 64-bit
 counters
Message-ID: <20200317231431.GM20788@willie-the-truck>
References: <20200302181752.14251-1-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302181752.14251-1-mark.rutland@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_161438_302439_A0ABD53D 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: catalin.marinas@arm.com, robin.murphy@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, maz@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 02, 2020 at 06:17:49PM +0000, Mark Rutland wrote:
> This is a respin of Andrew Murray's series to enable support for 64-bit
> counters as introduced in ARMv8.5.
> 
> I've given this a spin on (ARMv8.2) hardware, to test that there are no
> regressions, but I have not had the chance to test in an ARMv8.5 model (which I
> beleive Andrew had previously tested).
> 
> Since v5 [1]:
> * Don't treat perfmon ID fields as signed
> * Fix up ID field names
> * Explicitly compare ARMV8.5 PMU value

I'm betting on your issue being a model bug, so I've queued this on top of
Robin's enable/disable rework. Please take a look at for-next/perf [1] in
case I screwed it up.

Thanks,

Will

[1] https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=for-next/perf

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

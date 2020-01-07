Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E04132D58
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 18:45:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2CiLSnaQXNPJ8qXTq8SvEaqRMXehj7Zo67lSzJrl294=; b=XTymYsAFBwZ0+P
	r/xJcytRx/wEPooglGR1ZtwN/5IWu6nYH77dtRJGAJWX0NNIKBWhEZ7g/DyEIlm2afKPZckX9EBT2
	/bD/vzqS29b4GKGq928erdWn+S+U0dRdoH2wpHGAhNp0+ypCv+Yq9Ntdv9RVDTBo3piSp5Kwd99bB
	lMvuKrSykZlFI7/shgiM6xQoPoS1B+a76otMy5L2anOPc9bIwfVsXvc3Zv4bXkOpxi2INaVxsIBg4
	Ydz+nUD+Qx29K92FDfhmHGzooCF1alOVt+hwZkBsAVbhlErjSbPp78Tj/O/BEziFiBx8HuqLpZQj6
	uZcoXVOUzYOSv8oQF64A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iosux-0005hQ-Lg; Tue, 07 Jan 2020 17:45:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iosuo-0005gd-N0
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 17:45:15 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7AD992087F;
 Tue,  7 Jan 2020 17:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578419114;
 bh=M513xx9aW4iTXzxgBQtHXhndgn/SODuepiJRUK+eM7I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YbkRh/JoQJSbTUir4FFdQGp2dTetaYhozBWn1KLHijLhjGocJSnXGTWmIXpssfckn
 LKfYzP3x4Sa4MC3IMDOShFVS85iurs1AZtc2GpxehTzUHVG32MTJbf1okn+fAtFII6
 kX0aRor1c/IMgN9KHEVY1m4OXGNi5jBEo0ArixDE=
Date: Tue, 7 Jan 2020 17:45:09 +0000
From: Will Deacon <will@kernel.org>
To: Christian Brauner <christian.brauner@ubuntu.com>
Subject: Re: [PATCH 2/7] arm64: Implement copy_thread_tls
Message-ID: <20200107174508.GC32009@willie-the-truck>
References: <20200102172413.654385-1-amanieu@gmail.com>
 <20200102172413.654385-3-amanieu@gmail.com>
 <20200102180130.hmpipoiiu3zsl2d6@wittgenstein>
 <20200106173953.GB9676@willie-the-truck>
 <CA+y5pbSBYLvZ46nJP0pSYZnRohtPxHitOHPEaLXq23-QrPKk2g@mail.gmail.com>
 <20200107090219.jl4py4u2zvofwnbh@wittgenstein>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107090219.jl4py4u2zvofwnbh@wittgenstein>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_094514_771671_6D0EBF67 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Amanieu d'Antras <amanieu@gmail.com>, keescook@chromium.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 "# 3.4.x" <stable@vger.kernel.org>, Christian Brauner <christian@brauner.io>,
 linux-kselftest@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 07, 2020 at 10:02:27AM +0100, Christian Brauner wrote:
> [Cc Kees in case he knows something about where arch specific tests live
>  or whether we have a framework for this]
> 
> On Mon, Jan 06, 2020 at 07:03:32PM +0100, Amanieu d'Antras wrote:
> > On Mon, Jan 6, 2020 at 6:39 PM Will Deacon <will@kernel.org> wrote:
> > > I also ran the native and compat selftests but, unfortunately, they all
> > > pass even without this patch. Do you reckon it would be possible to update
> > > them to check the tls pointer?
> > 
> > Here's the program I used for testing on arm64. I considered adding it
> > to the selftests but there is no portable way of reading the TLS
> > register on all architectures.
> 
> I'm not saying you need to do this right now.

Agreed, these patches should be merged in their current state and my ack
stands for that.

> It feels like we must've run into the "this is architecture
> specific"-and-we-want-to-test-this issue before... Do we have a place
> where architecture specific selftests live?

For arch-specific selftests there are tools/testing/selftests/$ARCH
directories, although in this case maybe it's better to have an #ifdef
in a header so that architectures with __builtin_thread_pointer can use
that.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

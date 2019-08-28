Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC8F9FDD2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 11:04:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4B8d3PgCrWNHvp8cReWhCloXxGkgwO1Co1zPqGF7um4=; b=fNfWYExTKGxKGr
	RnmQ4q99X9J968m8aH3WbiVv9+IoWRHGacNKbtTn+fXHVPquxqcSEBgCRN3anl9oIRyVPCGvt5Ce8
	bHwq1kLSuQveJjpqt83utdLj+ueI0U8LoUzKlWWLjuy3Tggx2HD5KXu6aJZC9kDTzygTxJfcaB+7Z
	zSy306JP/9cDxAbHHbddkPpHcvDuGpCPfIwJgm8HItdlr1GvigC06+NLC/52m4xO5QObyIVetvXGK
	gLy5ccuZZUlpwO53/HO43sDVfyFrpeMJH2KvB1j3rhGwE+2uRFxYIrNqUE690jpVIuRxWWj664xq/
	6iZ1w9GJputmiy71WScA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2tsW-0006w1-24; Wed, 28 Aug 2019 09:04:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2tsD-0006ve-GW
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 09:04:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BD018337;
 Wed, 28 Aug 2019 02:04:12 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3E41E3F59C;
 Wed, 28 Aug 2019 02:04:12 -0700 (PDT)
Date: Wed, 28 Aug 2019 10:04:10 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3 0/5] arm64: avoid out-of-line ll/sc atomics
Message-ID: <20190828090410.GS14582@e119886-lin.cambridge.arm.com>
References: <20190812143625.42745-1-andrew.murray@arm.com>
 <20190827164944.qxk32uas7hx5pjgz@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190827164944.qxk32uas7hx5pjgz@willie-the-truck>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_020413_595249_DE6420B9 
X-CRM114-Status: GOOD (  18.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Boqun Feng <boqun.feng@gmail.com>,
 Will Deacon <will.deacon@arm.com>, Ard.Biesheuvel@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 05:49:45PM +0100, Will Deacon wrote:
> Hi Andrew,
> 
> On Mon, Aug 12, 2019 at 03:36:20PM +0100, Andrew Murray wrote:
> > When building for LSE atomics (CONFIG_ARM64_LSE_ATOMICS), if the hardware
> > or toolchain doesn't support it the existing code will fallback to ll/sc
> > atomics. It achieves this by branching from inline assembly to a function
> > that is built with specical compile flags. Further this results in the
> > clobbering of registers even when the fallback isn't used increasing
> > register pressure.
> > 
> > Let's improve this by providing inline implementatins of both LSE and
> > ll/sc and use a static key to select between them. This allows for the
> > compiler to generate better atomics code.
> > 
> > Whilst it may be difficult to understand the performance impact, we gain
> > improved code readability, ability to use Clang, and improved backtrace
> > reliability.
> > 
> > Build and boot tested, along with atomic_64_test.
> 
> I think this series is really close now and I was hoping to get something
> queued for 5.4. Would you be able to respin, addressing Mark's comments
> please? It would be a shame for this to miss another release.

Sure, I'm working on this now.

Thanks,

Andrew Murray

> 
> Thanks,
> 
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

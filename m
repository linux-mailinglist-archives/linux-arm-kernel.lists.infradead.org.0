Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B7DA8041
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 12:20:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bIRTqfJMR0B+gACdoaDR15PI/MkPSRlYjJpFfN2psNg=; b=relfBh3032yIQI
	AcJLuqdl7VK4r0YrF2zfDIg3Wbx1MQYfLa3luA1r8AQ2R9PZz3BPc/GvJj7MJYI8PG3GBxqnd3OaQ
	+UCizAErtRsyCD/8rORR6bmFtfOZ/15OfQEkrlTjWlY3hIsKDmFFzrwaNyUPm7EYswAwK2jTShyKY
	cNrqlJLnKl3gPa/mUmjvYmKbhy9qkmiP8gRYJzlifWxe05LhYi0Rn0T1WyGWMCbwDfMAJH0cgCjIv
	9iGu4M/tW3WQTrQxaZZgiKpE4Z/aSkRWHczXIH4ip6UENGJP1kYqF3umDvi8oN+02QVkpyimpYrOI
	Q8/DOQb7wOTgtGExwCFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5SOx-0000Jt-Hb; Wed, 04 Sep 2019 10:20:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5SOj-0000J3-KQ
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 10:20:22 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1906F20449;
 Wed,  4 Sep 2019 10:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567592420;
 bh=S/oWNeg7QpOZpuDH73ZJAKd89anQ9dg+ksO17yTLeXs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LxQ4Za5FOGiUdvbTOMsKChyA5gXyB5OsI8ucREQvwI1YgziflerGWnkhOu/iRvaeg
 pMruhAB/hBonAHqoPOJc6SUjFjvf30LHF6HG2SNAzVVJXimjfW9hNPpb/JToYxlGXL
 c/0DEhuPXABgJZDWYtTTthOAx2pnqZmfzUczah84=
Date: Wed, 4 Sep 2019 11:20:13 +0100
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v5 03/10] arm64: atomics: avoid out-of-line ll/sc atomics
Message-ID: <20190904102013.p2f7we62g3cpqgg7@willie-the-truck>
References: <20190903060011.GA60737@archlinux-threadripper>
 <20190903143117.GR9720@e119886-lin.cambridge.arm.com>
 <20190903144534.h2rp3cyd3ryohhgj@willie-the-truck>
 <20190903151544.GS9720@e119886-lin.cambridge.arm.com>
 <20190903153120.GT9720@e119886-lin.cambridge.arm.com>
 <20190903163753.huk5sjg4m27qu2zu@willie-the-truck>
 <20190903220412.GU9720@e119886-lin.cambridge.arm.com>
 <CAKwvOdnoZQMCc9rWEtQm1PVxUU8bJqaZHO9jcfdODL7mhvRtQQ@mail.gmail.com>
 <CANW9uyuRFtNKMnSwmHWt_RebJA1ADXdZfeDHc6=yaaFH2NsyWg@mail.gmail.com>
 <CAKwvOd=QDeKeOnn8Hw-p5mdhT3JPfwwLVnf7=xZ1wyc=v54AEQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOd=QDeKeOnn8Hw-p5mdhT3JPfwwLVnf7=xZ1wyc=v54AEQ@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_032021_694269_B987A3C5 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Ard.Biesheuvel@arm.com,
 Andrew Murray <andrew.murray@arm.com>,
 Itaru Kitayama <itaru.kitayama@gmail.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 03, 2019 at 03:53:34PM -0700, Nick Desaulniers wrote:
> > On Wed, Sep 4, 2019 at 7:35 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >> Thanks for the report.  We squashed many bugs related to asm goto, but
> >> it's difficult to say with 100% certainty that the current
> >> implementation is bug free.  Simply throwing more exotic forms of
> >> control flow at it often shake out corner cases.  Thank you very much
> >> for the reduced test case, and I'll look into getting a fix ready
> >> hopefully in time to make the clang-9 release train.
> 
> On Tue, Sep 3, 2019 at 3:49 PM Itaru Kitayama <itaru.kitayama@gmail.com> wrote:
> >
> > Do you mean that you'd do a backport to Clang 9 as well as the trunk contribution?
> 
> Yes; I think the window for merging things in the 9.0 release is still
> open, though they are late in the -rc cycle.  If not 9.1 bugfix is
> possible.

Thanks, Nick. If you run out of time to get it fixed then it would probably
be best to disable 'asm goto' support by default for arm64, since at least
you'll have a functional kernel in that case.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

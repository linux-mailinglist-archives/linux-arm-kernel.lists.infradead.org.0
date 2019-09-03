Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA9DA6BAB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 16:38:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FB9PerW/VRT3Z9Wn2lSrAz1u+M8TnTK9TEUMYNQ/lVs=; b=OUo70gbWGFBOOK
	7N/aLz9dquyzmaihoNKXX6ebmp/na0yaph4j+iLwru+cBfhflLyBVwZKQ0ZDp8jRkP56Y7Oy0kQf/
	FoLSllbpEU/qPbdTwO58TT2FHMtPvgkAr0xKDQeySpIpGhRtI6c5YAuugSegdhEjVJuq/JY0JGLvy
	+IYM/2kaDctz8P+GKXjv+TicKjjlhfTSdkK4rXVWpApSIOWSIbzFAvUn6xbNYvKowiXsqej5EG8Yv
	MnhP/Ihww669gWHTBB7J1Lb9hCCFaf5/C851B6SahCgTIEsdttJfNZyQbO1hRb8CYo3VbPLbCoQQE
	pelsR9udVom9NTUkk2WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i59wv-0002aq-ED; Tue, 03 Sep 2019 14:38:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i59wd-0002YS-6j
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 14:38:08 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9E0D520828;
 Tue,  3 Sep 2019 14:38:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567521486;
 bh=NYvh1Ty2TcysP6q9uoPqBfVZ4o8Dsna8O9GWcNeTjPM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OJb3Kho20mdnwL0J0X12EPvZi+YCveo7/1MvWOJty8arm52+WGvg72faQoeDkDslp
 gcXbCoUgsYIImpD8m9W/cZZXzmw/u/1Ai/IOtMCjmud5lXAkRUAZliTRZJFjfkXUvV
 F/jRoBkgB+zfTcpRpoe3lmbufzbFVwL5ziqsj2V4=
Date: Tue, 3 Sep 2019 15:38:01 +0100
From: Will Deacon <will@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v2 1/8] arm64: compat: vdso: Expose BUILD_VDSO32
Message-ID: <20190903143800.k6r663abs2g2ddpg@willie-the-truck>
References: <20190830135902.20861-1-vincenzo.frascino@arm.com>
 <20190830135902.20861-2-vincenzo.frascino@arm.com>
 <c0b1673d-e37d-a526-0862-ad07f779f5bf@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c0b1673d-e37d-a526-0862-ad07f779f5bf@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_073807_303391_1721A430 
X-CRM114-Status: GOOD (  15.99  )
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
Cc: linux-arch@vger.kernel.org, luto@kernel.org, catalin.marinas@arm.com,
 0x7f454c46@gmail.com, linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 paul.burton@mips.com, linux-kselftest@vger.kernel.org, tglx@linutronix.de,
 salyzyn@android.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 03, 2019 at 03:36:16PM +0100, Vincenzo Frascino wrote:
> On 8/30/19 2:58 PM, Vincenzo Frascino wrote:
> > clock_gettime32 and clock_getres_time32 should be compiled only with the
> > 32 bit vdso library.
> > 
> > Expose BUILD_VDSO32 when arm64 compat is compiled, to provide an
> > indication to the generic library to include these symbols.
> > 
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> > Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> > Acked-by: Catalin Marinas <catalin.marinas@arm.com>
> > ---
> >  arch/arm64/include/asm/vdso/compat_gettimeofday.h | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/arch/arm64/include/asm/vdso/compat_gettimeofday.h b/arch/arm64/include/asm/vdso/compat_gettimeofday.h
> > index c50ee1b7d5cd..fe7afe0f1a3d 100644
> > --- a/arch/arm64/include/asm/vdso/compat_gettimeofday.h
> > +++ b/arch/arm64/include/asm/vdso/compat_gettimeofday.h
> > @@ -17,6 +17,7 @@
> >  #define VDSO_HAS_CLOCK_GETRES		1
> >  
> >  #define VDSO_HAS_32BIT_FALLBACK		1
> > +#define BUILD_VDSO32			1
> >  
> >  static __always_inline
> >  int gettimeofday_fallback(struct __kernel_old_timeval *_tv,
> > 
> 
> This patch is independent from the rest and touches only arch code. Can it go in
> via the arm64 tree?

Why not take it via -tip along with patch 6? Otherwise we'll get a silly
conflict. I'd assumed this series was going in as one thing.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

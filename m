Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D7E1136BE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 21:50:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zMQWt+Bv/GDeWERADtx6uVaS4QGzknehpaiwjKj8k14=; b=pO5GPzmW1Ss6D3
	62pxQIZvFAb2TA23yF2WzohkWxWnd+hcSD3+4yfvpleLUCdmEr/afgjVRqVvgKIfeQwhs/sGCGbVQ
	eVGs7dcnyY3aZ84pqfDqObXH5kC83WzE4IlYXLPQehDMleusWT9ESqHpt2nfGblU5r8PfaDGebzSx
	zI2Iy5uuB+9ITLtPo6etk7MAsqscGF/RR9yqXL65jJfzmR/6Tz3GzWy/e330LWnYrUVTbRnyyJl68
	aHoUnh6nc82WOUmvvIYPDbIrD+8eFn8f0RHiifj9VDzkeUBTXzS303pmPSGV+OJmeiuJv/Bzt3gL1
	vmyOutzeu2RQLg41rWXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icbbW-0005a4-Qh; Wed, 04 Dec 2019 20:50:34 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icbbQ-0005Zk-Jy
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 20:50:30 +0000
Received: by mail-ed1-x541.google.com with SMTP id cm12so609847edb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 12:50:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hq3LxKYOOomc+/QE33SRTklsyQdBe2jME5WH5NYH7Hk=;
 b=XofnVsh9JkrhplZ0OE7AUH7DsGvWdzLDYNfCfoxP0l7uUCOPFmiZWxdtwZzblCYEz8
 nzcH3SxfKhsCeer285czBZtVUVdiqAvyDPXXHbvpBPdshfdh4w4FF5Ng8H+oA31OjfUI
 vZPAxNhB2mjGDNunaPVs6r6Df+EF+XB70UgvdAQdXKp02x6VP+txnFgTTh5mY2PbTWBh
 aPKP8kNjSZ9Nvrd6ldUJWoy7jknWIGTYAA4U6EpTMVIIsriQ4TSB6X2dF7Rx8utkpo3r
 RjUET3r64LH2ttN2w9Ab+JOyQfISd+xC71qLWTi6TcfKwVeInFWLiTuMVy3Xo0/BLupS
 8Apg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hq3LxKYOOomc+/QE33SRTklsyQdBe2jME5WH5NYH7Hk=;
 b=nxPBdS/o3ZF540dq9b0b1MqUnQMCOMT06e/uGJTt1K8+yqhPxq+pA/ppGxSFZZpZuW
 FzUoLM3tJUxaDSKn3Lo+bNt+XiKzR2lmXRXNJpNIk2dX1EmxBTvix495jGICioKG5NvJ
 kBfc096eVcSPdTSFYVyQFlYNls9LKB8KLJh0Ax+l7R091e6iuy/mfdblocPN3CPho1Ed
 MHKrHwp5Kkx6QgfsZqK4zWjTSO4AZs7C+RTUPOuL1eE2QdTsibhFnSVDR9GJRoumkghx
 BdWBanYDQXSyPEMyN/m4Kzre4dnIUCICh/MUDa1xb69AyTbxdBTuIknBjkX5DUKuEVK5
 3xSw==
X-Gm-Message-State: APjAAAWnrpDTNnjIZHzQ8Nb9IXd8N7vdmML2QFIYi0ZCt9u6K3WIGySR
 FuKgBHooLJhwTdO26nQkPI6sdbfjpQdi0VXVhKvfXw==
X-Google-Smtp-Source: APXvYqwMdNLsGxvlCa1i0ErELJP4i0sWpocovAjl4xGOHiGed8ZySML2zMNhKfShRaQbEjYyznCmIueYA6VatjBeKCI=
X-Received: by 2002:a17:906:3798:: with SMTP id
 n24mr5230843ejc.15.1575492627075; 
 Wed, 04 Dec 2019 12:50:27 -0800 (PST)
MIME-Version: 1.0
References: <20191127184453.229321-1-pasha.tatashin@soleen.com>
 <20191127184453.229321-3-pasha.tatashin@soleen.com>
 <20191128145151.GB22314@lakrids.cambridge.arm.com>
In-Reply-To: <20191128145151.GB22314@lakrids.cambridge.arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 4 Dec 2019 15:50:15 -0500
Message-ID: <CA+CK2bDPjLSECOeduZY7hVPreYYCTpgNMd4aTGSy=35E86W72Q@mail.gmail.com>
Subject: Re: [PATCH 2/3] arm64: remove uaccess_ttbr0 asm macros from cache
 functions
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_125028_836454_A990FEF4 
X-CRM114-Status: GOOD (  19.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Stefan Agner <stefan@agner.ch>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Will Deacon <will@kernel.org>,
 boris.ostrovsky@oracle.com, Sasha Levin <sashal@kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>, James Morris <jmorris@namei.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 xen-devel@lists.xenproject.org, Vladimir Murzin <vladimir.murzin@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, alexios.zavras@intel.com,
 Thomas Gleixner <tglx@linutronix.de>, allison@lohutok.net, jgross@suse.com,
 steve.capper@arm.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morse <james.morse@arm.com>,
 info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 28, 2019 at 9:51 AM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Wed, Nov 27, 2019 at 01:44:52PM -0500, Pavel Tatashin wrote:
> > We currently duplicate the logic to enable/disable uaccess via TTBR0,
> > with C functions and assembly macros. This is a maintenenace burden
> > and is liable to lead to subtle bugs, so let's get rid of the assembly
> > macros, and always use the C functions. This requires refactoring
> > some assembly functions to have a C wrapper.
>
> [...]
>
> > +static inline int invalidate_icache_range(unsigned long start,
> > +                                       unsigned long end)
> > +{
> > +     int rv;
>
> Please make this 'ret', for consistency with other arm64 code. We only
> use 'rv' in one place where it's short for "Revision and Variant", and
> 'ret' is our usual name for a temporary variable used to hold a return
> value.

OK

>
> > +
> > +     if (cpus_have_const_cap(ARM64_HAS_CACHE_DIC)) {
> > +             isb();
> > +             return 0;
> > +     }
> > +     uaccess_ttbr0_enable();
>
> Please place a newline between these two, for consistency with other
> arm64 code.

OK

>
> > +     rv = asm_invalidate_icache_range(start, end);
> > +     uaccess_ttbr0_disable();
> > +
> > +     return rv;
> > +}
> > +
> >  static inline void flush_icache_range(unsigned long start, unsigned long end)
> >  {
> >       __flush_icache_range(start, end);
> > diff --git a/arch/arm64/mm/cache.S b/arch/arm64/mm/cache.S
> > index db767b072601..a48b6dba304e 100644
> > --- a/arch/arm64/mm/cache.S
> > +++ b/arch/arm64/mm/cache.S
> > @@ -15,7 +15,7 @@
> >  #include <asm/asm-uaccess.h>
> >
> >  /*
> > - *   flush_icache_range(start,end)
> > + *   __asm_flush_icache_range(start,end)
> >   *
> >   *   Ensure that the I and D caches are coherent within specified region.
> >   *   This is typically used when code has been written to a memory region,
> > @@ -24,11 +24,11 @@
> >   *   - start   - virtual start address of region
> >   *   - end     - virtual end address of region
> >   */
> > -ENTRY(__flush_icache_range)
> > +ENTRY(__asm_flush_icache_range)
> >       /* FALLTHROUGH */
> >
> >  /*
> > - *   __flush_cache_user_range(start,end)
> > + *   __asm_flush_cache_user_range(start,end)
> >   *
> >   *   Ensure that the I and D caches are coherent within specified region.
> >   *   This is typically used when code has been written to a memory region,
> > @@ -37,8 +37,7 @@ ENTRY(__flush_icache_range)
> >   *   - start   - virtual start address of region
> >   *   - end     - virtual end address of region
> >   */
> > -ENTRY(__flush_cache_user_range)
> > -     uaccess_ttbr0_enable x2, x3, x4
> > +ENTRY(__asm_flush_cache_user_range)
> >  alternative_if ARM64_HAS_CACHE_IDC
>
> It's unfortunate that we pulled the IDC alternative out for
> invalidate_icache_range(), but not here.

Good point. I will fix that in a separate patch.

Thank you,
Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

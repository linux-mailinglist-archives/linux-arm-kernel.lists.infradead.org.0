Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4619813D92D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 12:41:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VZ4rX8L/6KaCDbQBIXQgfdt6PSXRxEh7r/HuLtOp0JQ=; b=P3Vjpg65VeBYvv
	dDYB1keBjEIFOybGaLbKvYGJYX+64OANw2CePcSJYQaDmioR0iFskr5a4cNYzb7+6zd9ayNZvZP92
	bpLQsrz2Qxymhywu3y9kQYW+7LmVnuaxBR7mkAxO/P7thKbaBUkd9R6vX0ICJO27bjWkCH+s84VdZ
	YdcJOl+HlnsPkB+RydzhxxQFHa5BeKl4RU7+UvXnOzeISfL/XnHHdu/Wt9k9XM/8UPSuuF97zfhhV
	5br7rWqYY9rNvyRgVB/fMZVDtVcF9FdkZHO717WQI7H38tGayQMGEAoV0EZLVNrtlSMDNmMBzb1oR
	AB/8kUHR5qy5dN2Q3Eug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is3WR-0003bv-Ie; Thu, 16 Jan 2020 11:41:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is3WA-0003bR-M9
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 11:40:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E1B5D31B;
 Thu, 16 Jan 2020 03:40:52 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 08AA33F534; Thu, 16 Jan 2020 03:40:51 -0800 (PST)
Date: Thu, 16 Jan 2020 11:40:49 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v10 1/3] arm64: Implement archrandom.h for ARMv8.5-RNG
Message-ID: <20200116114049.GD10277@arrakis.emea.arm.com>
References: <20200110122341.8445-2-broonie@kernel.org>
 <20200114174432.GG2579@willie-the-truck>
 <CAKv+Gu9pVZZm_gvsKfrCG_cM=1TmAAH+sj06GzT+Ag9Ej7__fg@mail.gmail.com>
 <20200115091651.GB21692@willie-the-truck>
 <CAKv+Gu-NZBo2q4_Yh068UENun0mkLitN473D-w7KBFXVpfdKqA@mail.gmail.com>
 <20200115110720.GG3897@sirena.org.uk>
 <20200115142611.GC3429@arrakis.emea.arm.com>
 <a789713b-8d0a-a997-d348-3521950e9d90@linaro.org>
 <20200116110245.GB10277@arrakis.emea.arm.com>
 <CAKv+Gu_Y3agWT1nOWHygc3An7zd2fAERcEq6Nav4geE0ahb+Xg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu_Y3agWT1nOWHygc3An7zd2fAERcEq6Nav4geE0ahb+Xg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_034054_769338_675F3457 
X-CRM114-Status: GOOD (  17.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>,
 Mark Brown <broonie@kernel.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 12:10:28PM +0100, Ard Biesheuvel wrote:
> On Thu, 16 Jan 2020 at 12:02, Catalin Marinas <catalin.marinas@arm.com> wrote:
> > On Wed, Jan 15, 2020 at 02:23:39PM -1000, Richard Henderson wrote:
> > > On 1/15/20 4:26 AM, Catalin Marinas wrote:
> > > > Until the ifunc resolver can work with CPUID, I think we should keep
> > > > adding HWCAPn bits. We can revisit this with the toolchain people before
> > > > introducing HWCAP3.
> > >
> > > Why would the ifunc resolver not be able to use HWCAP_CPUID?
> >
> > It can indeed check the HWCAP_CPUID but I haven't seen any plans to
> > implement the next part, actual use of an MRS instruction to read the
> > corresponding ID_AA64* regs. This MRS emulation was requested by (some
> > of) the toolchain people, even the architecture gained a feature to
> > simplify the emulation, but followed by complete silence from the
> > toolchain folk.
> 
> But what infrastructure would the toolchain folks need to provide
> here? An ifunc resolver would simply do
> 
> void generic_func(...);
> void foo_func(...);
> 
> void *resolve_foo(long hwcap)
> {
>    if (hwcap & HWCAP_CPUID) {
>        long l;
>        asm ("mrs %1, ID_AA64_...") : "=r"(l));
>        if (l has 'foo')
>          return foo_func;
>    }
>    return generic_func;
> }
> 
> so all that is needed for using ID registers to do ifunc resolution is
> already there.

If you write the resolver yourself, it should work. I was thinking of
function multiversioning (which I thought using ifunc behind the scenes)
but I'm not sure what the aarch64 support level is (in gcc or clang).

Anyway, I'm not aware of anyone using the MRS emulation (maybe they do
and I haven't heard). I guess it doesn't help that we keep adding HWCAP
bits ;).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

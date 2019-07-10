Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1D2643CE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 10:50:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uPFuSjl9OwrbxCBfE13EtwIbWUohonbahkRjglUdJGI=; b=afgPrYPTWFrVXF
	ah1DPKmE/WNOljuJ+ue4dPrq1P+etuvL5aBC5qZOBYwkLSuLApWSQu2t6t6/vAAwHkKmZNZGjL9Tu
	8Y1TfmIzBSHyBPauG70SFqtxp8xXuCz70yGd8xYjybzjm+po6KVhLYCFO94sbs3STxuF4D8QzcTTX
	FItKAAyytySofZkcExP3+L4Da9JuPR98x9Z//oeffapCeN54/HWx4GayxbdySqvhWO1VSsF4hDMbO
	7Dn4TFQAH7QeCN4KJQZwR3q21tFbNMA8XEjebDPcagYcQczFZbCwcWnorAmRPEVCXkbsI8x8uIOU7
	jeSwPUTfJipWqT34YgQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl8Ir-0000nQ-HK; Wed, 10 Jul 2019 08:50:17 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl8Ic-0008P1-RI
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 08:50:04 +0000
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com
 [209.85.217.52]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id x6A8nZJ6002600
 for <linux-arm-kernel@lists.infradead.org>; Wed, 10 Jul 2019 17:49:35 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com x6A8nZJ6002600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1562748576;
 bh=gRr2ZHUsW0batlIlf8edBpkoC6M7UhDY2/Z2A5dF2Ew=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=xnmpTU4IcXS6svt7Sp0VlAPV2kVqUlLzi5fdSVKo5ncwjrjfGnO31Y1/ry2qiq+MO
 HTyR8jI99t2xgBK3uaIKPqn9AIyBS6LHKT8WfBxtSGlUyMU4obiu0Z5C08IIjkhGCD
 w0cEV7UqVLUlCJxf47GlLed9hQHBPAe++3oqSKDFuy/tB9Am9g1wIT2EaMtH5Gx3Dt
 ryeIyD392ScrSRuIt0ndiHVW8qVdvkysXpEZCs6+3+VuezFHwrc5VzpUkXBTRnS3ZF
 oeuZ9UqN7otAP3nOwS4B6F4vSv8YJzr6ZXyROzHWimX8Ow2lAcEiQd2nCTweIKID5L
 53NYPatHHT9lQ==
X-Nifty-SrcIP: [209.85.217.52]
Received: by mail-vs1-f52.google.com with SMTP id 2so985642vso.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 01:49:35 -0700 (PDT)
X-Gm-Message-State: APjAAAVliqNP+ybAwfhomC4qvPsgx8Sx5t/pvS2QOD4WYRqarfixwlGW
 mV+ecRQLYRiCIFXHvv/P0/bOJTlI1v5UTbJznpI=
X-Google-Smtp-Source: APXvYqzFxzkXZ2NAx0kDLHL52rsFnvrI7eVB2fACWs44a57/zNDvmjzCiZgA+le0ZccJ22O59ldz9VzzgKa9qZwZZCU=
X-Received: by 2002:a67:cd1a:: with SMTP id u26mr16648858vsl.155.1562748574672; 
 Wed, 10 Jul 2019 01:49:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190617104237.2082388-1-arnd@arndb.de>
 <20190617112652.GB30800@fuggles.cambridge.arm.com>
 <CAK8P3a2aJNiLTyfRDqazJa2sAc-Jf-QShSZ7+4-whHSxKbLUVQ@mail.gmail.com>
 <20190617161330.GD30800@fuggles.cambridge.arm.com>
 <CAKv+Gu9Fh3anh6-TeDWZ+pL7rs7EBWZqvLXASRNjicGu7k+WKw@mail.gmail.com>
 <20190617164553.GI30800@fuggles.cambridge.arm.com>
 <20190618120259.GA31041@fuggles.cambridge.arm.com>
 <CAK8P3a2NQSm3sPcJq=6=Espa5da_L+2RNtyS=jkkzD3tx-4ehA@mail.gmail.com>
 <95d721d1-2ccc-321c-f688-15e5bb53c30b@redhat.com>
 <20190710081515.ffghx4kouqpsh4m3@willie-the-truck>
In-Reply-To: <20190710081515.ffghx4kouqpsh4m3@willie-the-truck>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 10 Jul 2019 17:48:58 +0900
X-Gmail-Original-Message-ID: <CAK7LNASV6Txo-yKq+zSGiyts4cNdNwgXz0w4yFRMFJ3ozHcH7A@mail.gmail.com>
Message-ID: <CAK7LNASV6Txo-yKq+zSGiyts4cNdNwgXz0w4yFRMFJ3ozHcH7A@mail.gmail.com>
Subject: Re: [PATCH] arm64/sve: fix genksyms generation
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_015003_122626_D2241678 
X-CRM114-Status: GOOD (  20.57  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.81 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Peter Maydell <peter.maydell@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Julien Grall <julien.grall@arm.com>, Alan Hayward <alan.hayward@arm.com>,
 Andrew Murray <andrew.murray@arm.com>, Laura Abbott <labbott@redhat.com>,
 =?UTF-8?B?QWxleCBCZW5uw6ll?= <alex.bennee@linaro.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 5:15 PM Will Deacon <will@kernel.org> wrote:
>
> Hi Laura, [+Masahiro]
>
> On Tue, Jul 09, 2019 at 03:06:49PM -0400, Laura Abbott wrote:
> > On 6/18/19 10:15 AM, Arnd Bergmann wrote:
> > > On Tue, Jun 18, 2019 at 2:03 PM Will Deacon <will.deacon@arm.com> wrote:
> > > >  From 6e004b8824d4eb6a4e61cd794fbc3a761b50135b Mon Sep 17 00:00:00 2001
> > > > From: Will Deacon <will.deacon@arm.com>
> > > > Date: Tue, 18 Jun 2019 12:56:49 +0100
> > > > Subject: [PATCH] genksyms: Teach parse about __uint128_t built-in type
> > > >
> > > > __uint128_t crops up in a few files that export symbols to modules, so
> > > > teach genksyms about it so that we don't end up skipping the CRC
> > > > generation for some symbols due to the parser failing to spot them:
> > > >
> > > >    | WARNING: EXPORT symbol "kernel_neon_begin" [vmlinux] version
> > > >    |          generation failed, symbol will not be versioned.
> > > >    | ld: arch/arm64/kernel/fpsimd.o: relocation R_AARCH64_ABS32 against
> > > >    |     `__crc_kernel_neon_begin' can not be used when making a shared
> > > >    |     object
> > > >    | ld: arch/arm64/kernel/fpsimd.o:(.data+0x0): dangerous relocation:
> > > >    |     unsupported relocation
> > > >
> > > > Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > > > Reported-by: Arnd Bergmann <arnd@arndb.de>
> > > > Signed-off-by: Will Deacon <will.deacon@arm.com>
> > >
> > > Looks good to me,
> > >
> > > Acked-by: Arnd Bergmann <arnd@arndb.de>
> > >
> > > I've added this to my randconfig build setup, replacing my earlier
> > > patch, and will let you know if any problems with it remain.
> > >
> >
> > I just hit this on 5ad18b2e60b75c7297a998dea702451d33a052ed on Linus'
> > branch. The fix works for me (feel free to add Tested-by). Is this
> > already queued up for Linus?
>
> I think there's a fix queued via the kbuild tree:
>
> https://lkml.kernel.org/r/CAK7LNAQRMnovWQA0F8A6mEqDjPxXOGM-1AHoyh1gQa367f+FqQ@mail.gmail.com
>
> Will


Yes, I will send a pull request shortly.



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

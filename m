Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C32D8344A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 16:49:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6FOuPntnE2iZsVFp+UPQtLv9VZIMPPLVhGIDxQ0n9ck=; b=GRH+oCA4U0/t0K
	0xGLYp4IT1WMADIrUpsxWMN+uYvjzaUhPqv9PsjiWGCq8cmkB/a/4C0fE4wLijl4tudCnH2pLkcND
	GjJwDhH+6r5VBKMS/3c7XXlfUZfS9bzOivaUFiLn5DSzXY4ypaAhg9mg23oat1I7ud4g91DPHAQ48
	qe9BH10crHBtPPCGtIyratQ4jeGvVgqKonBT6RGrQ/TUh1wLnBCVNoT7pUe4DXqNrr/+H+J7dBYjU
	DShlDCk3xEn8EJkChT7EzLcYSx1VX9fsXApVuoi2KZG+t9yTPN4iqIr7852XVfvrLoYzhotqhsRCR
	81KhGdKdv7Y9Z530RnTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv0lr-0004He-UC; Tue, 06 Aug 2019 14:49:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hv0lT-00044Y-M2
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 14:48:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 25CC0344;
 Tue,  6 Aug 2019 07:48:37 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 05EF83F706; Tue,  6 Aug 2019 07:48:35 -0700 (PDT)
Date: Tue, 6 Aug 2019 15:48:33 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Steve Capper <Steve.Capper@arm.com>
Subject: Re: [PATCH V4 06/11] arm64: mm: Introduce VA_BITS_ACTUAL
Message-ID: <20190806144833.GE30716@arrakis.emea.arm.com>
References: <20190729162117.832-1-steve.capper@arm.com>
 <20190729162117.832-7-steve.capper@arm.com>
 <20190805172643.GM4175@arrakis.emea.arm.com>
 <20190806113202.GA11778@capper-ampere.manchester.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806113202.GA11778@capper-ampere.manchester.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_074839_761070_F1A0E877 
X-CRM114-Status: GOOD (  15.29  )
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
Cc: "crecklin@redhat.com" <crecklin@redhat.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "maz@kernel.org" <maz@kernel.org>, "bhsharma@redhat.com" <bhsharma@redhat.com>,
 nd <nd@arm.com>, "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 06, 2019 at 11:32:04AM +0000, Steve Capper wrote:
> On Mon, Aug 05, 2019 at 06:26:43PM +0100, Catalin Marinas wrote:
> > On Mon, Jul 29, 2019 at 05:21:12PM +0100, Steve Capper wrote:
> > > diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> > > index a8a91a573bff..93341f4fe840 100644
> > > --- a/arch/arm64/include/asm/memory.h
> > > +++ b/arch/arm64/include/asm/memory.h
> > > @@ -37,8 +37,6 @@
> > >   * VA_START - the first kernel virtual address.
> > >   */
> > >  #define VA_BITS			(CONFIG_ARM64_VA_BITS)
> > > -#define VA_START		(UL(0xffffffffffffffff) - \
> > > -	(UL(1) << (VA_BITS - 1)) + 1)
> > >  #define PAGE_OFFSET		(UL(0xffffffffffffffff) - \
> > >  	(UL(1) << VA_BITS) + 1)
> > >  #define KIMAGE_VADDR		(MODULES_END)
> > > @@ -166,10 +164,14 @@
> > >  #endif
> > >  
> > >  #ifndef __ASSEMBLY__
> > > +extern u64			vabits_actual;
> > > +#define VA_BITS_ACTUAL		({vabits_actual;})
> > 
> > Why not use the variable vabits_actual directly instead of defining a
> > macro?
> 
> I thought that it would look better to have an uppercase name for the
> actual VA bits to match the existing code style for VA_BITS.
> 
> I can just rename vabits_actual => VA_BITS_ACTUAL and get rid of the
> macro?

By tradition we use uppercase for macros and lowercase for variables. So
I'd definitely keep the variable lowercase.

If you prefer to keep the macro as well, fine by me, I don't think we
should bikeshed here.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

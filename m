Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5BB67283
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 17:34:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FVK/3Zy1mkYuB7saEesePj/sbKTHZOHcoT4Zn42HXWQ=; b=Mud6gjhVp3st0Q
	Feq6tLtg22arQmmg3L2asroLlnfV4oO7/649kB6PtiV0fILHfswVrqjFvLWv5GyUxySas94qOKB3/
	aJhI9n6FFfsqlwcYkcA/V4ksILciUPvOxWE984268lcqJCCofbin+fn55y6qPfCPyTKEHOSsObmZt
	VZJjpD2+ccntBSvU+8jagqXhvtt6rchPGpXJFBMp4HDtEO9WlCt/jnxaRbBku6A+a1Gec7y0VOLX8
	cC0YeyeV6R0xSBD42jfDzQCTvXE/ebzTWBFnImn0A9Ft9rjKMAhfEzcx6TGcfvW+yDBZ7w+EsU2Ml
	xyyhcbstxKG0OV1kGRgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlxZL-0006PH-Md; Fri, 12 Jul 2019 15:34:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlxZ8-0006On-8B
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 15:34:31 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D8358208E4;
 Fri, 12 Jul 2019 15:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562945669;
 bh=0Jq5bytHScmzuaUgkLOcMn+wkYvpVCOyFIY3QFlQlPA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EcsX4XKIQ29y1tUOqb/gQ7R67pM4qGY9wMlQLPjygHdM6CzLF5q6w58H+PNWDbKq7
 jp4bnti/aIq2MeMoqkBEpiswGCsjM/U+6REw5bsOLPNoqagF9OaJUS+5reMSz+blsL
 +29+dJNduIXKl4ANdFw2W3EFliUz3id0zm6OMOKo=
Date: Fri, 12 Jul 2019 16:34:23 +0100
From: Will Deacon <will@kernel.org>
To: "Raslan, KarimAllah" <karahmed@amazon.de>
Subject: Re: [PATCH] arm: Extend the check for RAM in /dev/mem
Message-ID: <20190712153423.ypyqexfmajrmsa5r@willie-the-truck>
References: <1562883681-18659-1-git-send-email-karahmed@amazon.de>
 <20190712145711.mxmnuyn6kpv2dr7u@willie-the-truck>
 <1562944417.1345.17.camel@amazon.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562944417.1345.17.camel@amazon.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_083430_305024_6A4B6194 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "anders.roxell@linaro.org" <anders.roxell@linaro.org>,
 "yuzhao@google.com" <yuzhao@google.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "info@metux.net" <info@metux.net>,
 "anshuman.khandual@arm.com" <anshuman.khandual@arm.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "yaojun8558363@gmail.com" <yaojun8558363@gmail.com>,
 "james.morse@arm.com" <james.morse@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 03:13:38PM +0000, Raslan, KarimAllah wrote:
> On Fri, 2019-07-12 at 15:57 +0100, Will Deacon wrote:
> > On Fri, Jul 12, 2019 at 12:21:21AM +0200, KarimAllah Ahmed wrote:
> > > =

> > > diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> > > index 3645f29..cdc3e8e 100644
> > > --- a/arch/arm64/mm/mmu.c
> > > +++ b/arch/arm64/mm/mmu.c
> > > @@ -78,7 +78,7 @@ void set_swapper_pgd(pgd_t *pgdp, pgd_t pgd)
> > >  pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
> > >  			      unsigned long size, pgprot_t vma_prot)
> > >  {
> > > -	if (!pfn_valid(pfn))
> > > +	if (!memblock_is_memory(__pfn_to_phys(pfn)))
> > =

> > This looks broken to me, since it will end up returning 'true' for nomap
> > memory and we really don't want to map that using writeback attributes.
> =

> True, I will fix this by using=A0memblock_is_map_memory instead. That sai=
d, do
> you have any concerns about this approach in=A0general?

If you do that, I don't understand why you need the patch at all given our
implementation of pfn_valid() in arch/arm64/mm/init.c.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

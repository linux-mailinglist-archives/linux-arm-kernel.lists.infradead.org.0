Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF336C157
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 21:13:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wey9vKXWHDyD5jUPTMc89vSiUFldPEvVac7bCfEzA3s=; b=ZG+9j/AHSt2MGw
	jVFV4JCuytYHxDmy4Tnj7AA9HqBOZLpXfe2IHm4VNLSV/QGqPftim1tER/u6AMis20I76gZHgUtrA
	K7c4fanp4VQMaITsOO46vh/zQLwaUU9GACYT3UGxkl/CUFV+I88UCPR77qA/cw5ofz4MxSD89EZuk
	H5mOTobRRpxQuNSSezi5LMYxQvr/DKVif93VDQNHvFfUDT8S3QvWeDIlaOX8Awz9yj04eKXW6vUnC
	3Ki9A0ZbgCaudw0cg8y8LodA0Zg2B07fNQQ9+G8S9nicpdoRkDaFFcUoqlIzcAcqd2N+AhZ+WF9rz
	j16kbiBHptfG+KDCVvYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnpN1-0007fM-1L; Wed, 17 Jul 2019 19:13:43 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnpMn-0007ed-1p
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 19:13:31 +0000
Received: by mail-ed1-x543.google.com with SMTP id r12so27172859edo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 12:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=af7XSHG9FUQt2yu1S5jYF4Zn8ho5gd7vQCkyA/tLau4=;
 b=HKNB7eUjLd+nxSmK5kC8wj8kzMts/Dpt6A34z7nveegtxZyhnKNjglMj7rQ0vCl6LG
 h/4t0uSBVCIua7IFT+yYWm2Fj59/6h40i8YUKwiETrPB6sZ6v8tarBe4z05I3+6KBe/o
 nVsQcwwepTM0+8r5FULsisZ5p08osnWUZkggEXqUrver/328oW7udcbaG4m29zLP4D64
 st4mdSY/slk8zOdH5QHV/oOGIFI6JB+jLZjhMhxwOlllr+eD2L1dm5L7pJsHWpHbz5iR
 kY5YFUJdTFHOUuTE0MvIKbBNaqb0rDaxBWnAC2VW1rRN5sIlI/nski3ZyMC97oNqcCWt
 vPbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=af7XSHG9FUQt2yu1S5jYF4Zn8ho5gd7vQCkyA/tLau4=;
 b=bwT5tn05CZ61K5aiv6DWIiKEz1Azcg3VcdsdnEXynbr7fRc2qEDZQRFbmRgxZp2mvP
 sjG7dNWVgTRMc+SMthcBmRjm+nbz2IeHN28hAVdoMsrhOoMabpuMz9rsOuhEWO0RGwqR
 veqG999Jr6Lw9nBzcJA2F0yvNZof+uq1C8DBRc3ZjmDLvcqslPiUOJ4995cxGcskcdEF
 /wOZ+k81uyA7YMHmI3BenXILLipBLOl3Z41zd/FTOXhEzkNclDxcwSIRNvilc1M+7f4z
 sD3ewgxCb6ZoShn6vLVW/+WGPc5cOnAnT5Njvo/GtSxcRzv+yCmL92PkjFoxDK48K2Tg
 Gx8g==
X-Gm-Message-State: APjAAAWnOfbiqI9rulosHLGMjs+M8QzXV9faxfX+2PCLmGlrxoaVVIrj
 puuIBcK6EB8g5gP0i7gcyF5502o7PHq/dPpV9mo=
X-Google-Smtp-Source: APXvYqzGlg1pP7IjPvj4DxUTLs7iKsVaWKc3/xY8HdOnhR8EtZWtRowTgwJdp96WZgETcAPcZ/SpRP0xI4l4xnW+0CI=
X-Received: by 2002:a17:906:684e:: with SMTP id
 a14mr33040768ejs.156.1563390806721; 
 Wed, 17 Jul 2019 12:13:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190716165641.6990-1-pasha.tatashin@soleen.com>
 <4c8a3a11-adc2-efa4-f765-6be338546ae4@arm.com>
In-Reply-To: <4c8a3a11-adc2-efa4-f765-6be338546ae4@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 17 Jul 2019 15:13:15 -0400
Message-ID: <CA+CK2bBj9UsQZCLsy-S8c_Kd5SRAPvtdS8s9P_Fdg+VifTbT5w@mail.gmail.com>
Subject: Re: [RFC v1 0/4] arm64: MMU enabled kexec kernel relocation
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_121329_284225_CEF3218C 
X-CRM114-Status: GOOD (  34.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

Thank you for taking a look at this work.

> After a quick skim:
>
> This will map 'nomap' regions of memory with cacheable attributes. This is a non-starter.
> These regions were described by firmware as having content that was/is written with
> different attributes. The attributes must match whenever it is mapped, otherwise we have a
> loss of coherency. Mapping this stuff as cacheable means the CPU can prefetch it into the
> cache whenever it likes.

> It may be important that we do not ever map some of these regions, even though its
> described as memory. On AMD-Seattle the bottom page of memory is reserved by firmware for
> its own use; it is made secure-only, and any access causes an
> external-abort/machine-check. UEFI describes this as 'Reserved', and we preserve this in
> the kernel as 'nomap'. The equivalent DT support uses memreserve, possibly with the
> 'nomap' attribute.
>
> Mapping a 'new'/unknown region with cacheable attributes can never be safe, even if we
> trusted kexec-tool to only write the kernel to memory. The host may be using a bigger page
> size causing more memory to become cacheable than was intended.
> Linux's EFI support rounds the UEFI memory map to the largest support page size, (and
> winges about firmware bugs).
> If we're allowing kexec to load images in a region not described as IORESOURCE_SYSTEM_RAM,
> that is a bug we should fix.

We are allowing this. If you consider this to be a bug, I will fix it,
and this will actually simplify the idmap page table. User will
receive an error during kexec load if a request is made to load into
!IORESOURCE_SYSTEM_RAM region.

>
> The only way to do this properly is to copy the linear mapping. The arch code has lots of
> complex code to generate it correctly at boot, we do not want to duplicate it.
> (this is why hibernate copies the linear mapping)

As I understand, you would like to take a copy of idmap page table,
and add entries only for segment
sources and destinations into the new page table?

If so, there is a slight problem: arch hook machine_kexec_prepare() is
called prior to loading segments from userland. We can solve this by
adding another hook that is called after kimage_terminate().

> These patches do not remove the running page tables from TTBR1. As you overwrite the live
> page tables you will corrupt the state of the CPU. The page-table walker may access things
> that aren't memory, cache memory that shouldn't be cached (see above), and allocate
> conflicting entries in the TLB.

Indeed. However, I was following what is done in create_safe_exec_page():
https://soleen.com/source/xref/linux/arch/arm64/kernel/hibernate.c?r=af873fce#263

ttbr1 is not removed there. Am I missing something, or is not yet
configured there?

I will set ttbr1 to zero page.

> You cannot use the mm page table helpers to build an idmap on arm64. The mm page table
> helpers have a compile-time VA_BITS, and we support systems where there is no memory below
> 1<<VA_BITS. (crazy huh!). Picking on AMD-Seattle again: if you boot a 4K 39bit VA kernel,
> the idmap will have more page table levels than the page table helpers can build. This is
> why there are special helpers to load the idmap, and twiddle TCR_EL1.T0SZ.
> You already need to copy the linear-map, so using an idmap is extra work. You want to work
> with linear-map addresses, you probably need to add the field to the appropriate structure.

OK. Makes sense. I will do the way hibernate setup this table. I was
indeed following x86, hoping that eventually it would be possible to
unite: kasan, hibernate, and kexec implementation of this page table.

>
> The kexec relocation code still runs at EL2. You can't use a copy of the linear map here
> as there is only one TTBR on v8.0, and you'd need to setup EL2 as its been torn back to
> the hyp-stub.

As I understand normally on baremetal kexec runs at EL1 not EL2. On my
machine is_kernel_in_hyp_mode() == false in cpu_soft_restart.

This is the reason hibernate posts EL2 in a holding pen while it rewrites
> all of memory, then calls back to fixup EL2. Keeping the rewrite phase at EL1 means it
> doesn't need independently tweaking/testing. You need to do something similar, either
> calling EL2 to start the new image, or disabling the MMU at EL1 to start the new image there.

OK, I will study how hibernate does this. I was thinking that if we
are running in EL2 we can simply configure TTBR0_EL2 instead of
TTBR0_EL1. But, I need to understand this better.

>
> You will need to alter the relocation code to do nothing for kdump, as no relocation is
> required and building page-tables is extra work where the kernel may croak, preventing us
> from reaching kdump.

Yes, I was planning to do nothing for kdump, which involves not
allocating page table. It is not part of the current patchest, as the
current series is not ready.

>
> Finally, having this independent idmap machinery isn't desirable from a maintenance
> perspective. Please start with the hibernate code that already solves a very similar
> problem, as it already has most of these problems covered.

OK.

> > This patch series works in terms, that I can kexec-reboot both in QEMU
>
> I wouldn't expect Qemu's emulation of the MMU and caches to be performance accurate.

I am not measuring performance in QEMU, I use it for
development/verification only. The performance is measured on real
hardware only.

>
> > and on a physical machine. However, I do not see performance improvement
> > during relocation. The performance is just as slow as before with disabled
> > caches.
>
> > Am I missing something? Perhaps, there is some flag that I should also
> > enable in page table? Please provide me with any suggestions.
>
> Some information about the physical machine you tested this on would help.
> I'm guessing its v8.0, and booted at EL2....

I am using Broadcom's Stingray SoC. Because  is_kernel_in_hyp_mode()
returns false, I believe it is EL1. How can I boot it at EL2?

So, I am still confused why I do not see performance improvements
during relocation on this machine. Any theories?

Thank you,
Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

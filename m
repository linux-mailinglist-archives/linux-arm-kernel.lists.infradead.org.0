Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9AC90825
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 21:19:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HMCyi8n12mv0UiEf1EiJ3xdS8oNrezhHme4GkeekhkU=; b=UyUpJkrxbVEC2/
	0qDQPhUhODhjoICpNvVSCA5XqHX0Zmigefyfj/adc45ZCgznYlKrliz8cgmJBKxXm5s/PLmXrYi+a
	fnGsNqEYDbFTgAAIZEmqPGGXG1rEy+Bt4Sm3KKe/umWGlEx58KpwVX0YvBGvhEC3RI58ySId4DKZh
	xD5bzvylb1YiqgrMO/3Ny0sn0njuxxrofBRCEtsD0mGCrKcoFuAhp7/WXK2+qIiuDWnKf2SCTzvYB
	q9lb6Pvk1vmvLx3HH6mfevCxtAPhrNJQvDoIqPwmDqUvHS5qbHuDdu7LdMZyD3l95K4cS3EJEe0eK
	NA8JggFvF8YxJXkI5+IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyhlK-0001IZ-Vi; Fri, 16 Aug 2019 19:19:47 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyhl8-0001HT-Ny
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 19:19:36 +0000
Received: by mail-ed1-x541.google.com with SMTP id g8so6035240edm.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 12:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3jF3dCb2clsfRC1m94tcLbnSszpxa5sBshy2qiTh8jg=;
 b=gxEPt1uocQDpIezjyohy2qto3E8gIiDnEHN32P3VqscpBrrNMwtA3BtMF3s++tzJxq
 6kgB6+aBZI1uAPe20Dd93//Rou1NZFSa+MlWea7a4apfw6OU+WNkDTTxBkPNID2GHATe
 t42yFyoLnXCko8curvYSSF1lf9tSApzuS5XLuzSVHL9RU+7/PgPybAIRNb6GRoBqh9Q9
 KP9CSr87IGrsAbI+1alnAZVLaVXDAH3e9VQ9vu7x04WDBbFucF0TwGDhQspBGA4nRKhj
 45N8ABX3JDmEvTNT0c2XvkyGQESg+VonUAvhTVD8r9TF95vOAVrW+WProjVr0iUCAO/2
 7GUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3jF3dCb2clsfRC1m94tcLbnSszpxa5sBshy2qiTh8jg=;
 b=izE6KbOn3cHhAjcwKSt5fNw+UYqrdgA5/OKFUYcMlxXZ61+hBMwzacvg8fs/Jc2/oG
 m9VcL9oiuAZvm6S+ZvNdmfxeolfbk0TYAb/YxaV8ePaUBCEaxFNVifm0io91m9IXtBnq
 MzrtZ6SPMk6znGeoxHuFgJmE5osDxtDLqnJ8qNwNtZXqog/8bgIXtnXyas9or8dPzrPa
 hNyYkbfZ6iAOXCeP53UNbWjwOltAGfh+OYU/3HVVD4xVX+z/HNAtL63SlWAoZD6cffkJ
 6OeSE20gfGRya05CQD1dWo5flDcm+ZTVBiFIziiy75uISY+Wkp00JtRZDDmEzVfEjvPC
 V4KA==
X-Gm-Message-State: APjAAAVE8wwNcPbxX7ypUbYLmEA7I+fk0Xu6Wo4dIcYNXRRp+PUPjcDs
 B2BPOCCId3eeWpmDyUI7y331FonM90otFHF0TtvKiw==
X-Google-Smtp-Source: APXvYqxtnJ7RnETBEd87ybXfkvbUZMocGjLwMeZ0V/1j7afCA1u9g/f9Sqry1klH6iFYLjEc8dWocaje0P2sPtZ57pc=
X-Received: by 2002:a17:906:1112:: with SMTP id
 h18mr10882905eja.165.1565983171200; 
 Fri, 16 Aug 2019 12:19:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190801152439.11363-1-pasha.tatashin@soleen.com>
 <CA+CK2bADiBMEx9cJuXT5fQkBYFZAtxUtc7ZzjrNfEjijPZkPtw@mail.gmail.com>
 <ba8a2519-ed95-2518-d0e8-66e8e0c14ff5@arm.com>
 <CA+CK2bAqBi43Cchr=md7EPRuEWH-iuToK0PxN3ysSBQ42Hd0-g@mail.gmail.com>
 <746ceee3-43a7-231d-b2f6-0991a4148a28@arm.com>
In-Reply-To: <746ceee3-43a7-231d-b2f6-0991a4148a28@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Fri, 16 Aug 2019 15:19:20 -0400
Message-ID: <CA+CK2bAEFU2s5v9seo4Y_5M0WLp0PCQGAZ=ovgO855jR7zDSwg@mail.gmail.com>
Subject: Re: [PATCH v1 0/8] arm64: MMU enabled kexec relocation
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_121934_929569_AD3A1670 
X-CRM114-Status: GOOD (  32.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Vladimir Murzin <vladimir.murzin@arm.com>,
 Jonathan Corbet <corbet@lwn.net>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 linux-mm <linux-mm@kvack.org>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

Thank you for your feedback, my replies below:

> > It is not really an all-new implementation of hibernate (for kexec it
> > is true though). I used the current implementation of hibernate as
> > bases, and simply generalized the functions by providing a flexible
> > interface. So what you are asking is actually exactly what I am doing.
>
> I disagree. The resume page-table code is the bulk of the complexity in hibernate.c. Your
> first patch dumps ~200 lines of differently-complex code, and your second switches
> hibernate over to it.

OK, I will make the change incremental.

>
> Instead, please move that code, keeping it as it is. git will spot the move, and the
> generated diffstat should only reflect the build-system changes. You don't need to 'switch
> hibernate to transitional page tables.'
>
> Adding kexec will then show-up what needs changing, each change comes with a commit
> message explaining why. Having these as 'generalisations' in the first patch is a mess.

Makes sense, I will fix it.

>
> There is existing code that we don't want to break. Any changes need to be done as a
> sequence of small incremental changes. It can't be reviewed any other way.
>
>
> > I realize, that I introduced a bug that I will fix.
>
> Done as a sequence of small incremental changes, I could bisect it to the patch that
> introduces the bug, and probably fix it from the description in the commit message.

BTW, I root caused it, there were two trivial errors:
1. In "arm64, mm: transitional tables"
int i = pgd_index(addr);
In trans_table_copy_*:
should be: pte_index(), pmd_index(), pud_index(), accordingly.
2. In trans_table_create_copy()
pgd_offset_k(PAGE_OFFSET) should be: mm_init.pgd

> >> It looks like you are creating the page tables just after the kexec:segments have been
> >> loaded. This will go horribly wrong if anything changes between then and kexec time. (e.g.
> >> memory you've got mapped gets hot-removed).
> >> This needs to be done as late as possible, so we don't waste memory, and the world can't
> >> change around us. Reboot notifiers run before kexec, can't we do the memory-allocation there?
>
> > Kexec by design does not allow allocate during kexec time. This is
> > because we cannot fail during kexec syscall.
>
> This problem needs solving.
>
> | Reboot notifiers run before kexec, can't we do the memory-allocation there?
>
>
> > All allocations must be done during kexec load time.
>
> This increases the memory footprint. I don't think we should waste ~2MB per GB of kernel
> memory on this feature. (Assuming 4K pages and rodata_full)
>
> Another option is to allocate this memory at load time, but then free it so it can be used
> in the meantime. You can keep the list of allocated pfn, as we know they aren't in use by
> the running kernel, kexec metadata, loaded images etc.

This is until a new kernel module is loaded, I do not think this is safe to do.

In my opinion 2M per 1 GB is a fair trade off for a faster kexec
performance. Unlike with crash kexec for which we do not add any
memory useage, the kernel does not have to be all the time in memory,
but can be loaded by user before reboot. If machine is so scare on
memory resources that 2M per 1G matters, user simply won't keep new
kernel in memory until it is actually needed.

>
> Memory hotplug would need handling carefully, as would anything that 'donates' memory to
> another agent. (I suspect the TEE stuff does this, I don't know how it interacts with kexec)
>
>
> > Kernel memory cannot be hot-removed, as
> > it is not part of ZONE_MOVABLE, and cannot be migrated.
>
> Today, yes. Tomorrow?, "arm64/mm: Enable memory hot remove":
> https://lore.kernel.org/r/1563171470-3117-1-git-send-email-anshuman.khandual@arm.com

I understand that ARM64 is about to get hot-remove feature, but what I
am saying is that my feature does not introduce new problem because
the current kexec code assumes that kernel memory is not movable
(array of sparse physical source dest addresses in kimage->head). It
is possible to offline and hot-remove only memory that can be freed by
page migration, the pages that were allocated for kexec kernel are not
one of them.

> >>>> Previously:
> >>>> kernel shutdown 0.022131328s
> >>>> relocation      0.440510736s
> >>>> kernel startup  0.294706768s
> >>>>
> >>>> Relocation was taking: 58.2% of reboot time
> >>>>
> >>>> Now:
> >>>> kernel shutdown 0.032066576s
> >>>> relocation      0.022158152s
> >>>> kernel startup  0.296055880s
> >>>>
> >>>> Now: Relocation takes 6.3% of reboot time
> >>>>
> >>>> Total reboot is x2.16 times faster.
> >>
> >> When I first saw these numbers they were ~'0.29s', which I wrongly assumed was 29 seconds.
> >> Savings in milliseconds, for _reboot_ is a hard sell. I'm hoping that on the machines that
> >> take minutes to kexec we'll get numbers that make this change more convincing.
>
> > Sure, this userland is very small kernel+userland is only 47M. Here is
> > another data point: fitImage: 380M, it contains a larger userland.
> > The numbers for kernel shutdown and startup are the same as this is
> > the same kernel, but relocation takes: 3.58s
> > shutdown: 0.02s
> > relocation: 3.58s
> > startup:  0.30s
> >
> > Relocation take 88% of reboot time. And, we must have it under one second.
>
> Where does this one second number come from? (was it ever a reasonable starting point?)

Currently we have two fitImages for this system in development: one
that has a bare minimal userland, only ~40 packages, and another has a
more complete userland. So, my first experiment shows the data from
this first bare minimum ftImage, the second experiment from the second
more complete fitImage. As I stated in cover letter, kexec time is
proportional to the size of the image and this series fixes this
scalability issue by making relocation  ~20 times faster.

Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

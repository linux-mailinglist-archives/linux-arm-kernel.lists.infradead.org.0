Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED9CE64A2E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 17:55:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BUu6Q45ShMDwPJMGawglTifE6LBVTJWEKKnJy7itj4c=; b=ZveaEkbCzkS2cU
	RyqE93y+kEeYjYa09qyf916lV1qQ3fn9yo4z3Zc8KJS5MUw3a7Hhuz/ZFh6+V2ebpK/8gG1mHmaSK
	Un4f9F+w0yBo+7bN8GbeLqLeTukpiU74cgPjeEfSKH0YZznvrWQXntRTgDqFYGpGbLqne69SCMUu9
	CEIshtW/qY8ST6i72h8i1hP1IRWOo0rxhSB8ND3w9eLOQgVqg8kO3dWunmJhMTrWv5p0VgLhzVibr
	aKqPd+VvWGHVb+KVcpVPnYtHzjpZF3avJ4y7Rx+15KHX8jDerUbtR8kecolovT/6hvQ4wHbd0EUSx
	tIato3cSCw+7jtClrbzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlEwL-0007sq-A6; Wed, 10 Jul 2019 15:55:29 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlEw3-0007rB-QG
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 15:55:13 +0000
Received: by mail-ed1-x543.google.com with SMTP id k8so2651465edr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 08:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NaA7wPXrYr7zESysMrfljI9GtiDhiOThoc+Zj7rAeQA=;
 b=TqNYtLWI3NB5JsEVDIYRfoOI4EAUHP4qyxHSRm5QlvOdPdXg+XZBn6KbfVcA+ldNLI
 hfHdkLqaMhNIE5mo1ZJav81oJYcmTzznYM475X10Inp3sCwkcVSFjNi9PCNaC6G/K2Wt
 QX9qQHlgiffcwd7RGi1MUYVX8jaULZWLftt2Mznvv6iNu8iVu0iDA4SSHU3tHsHN3qM/
 o4it1CczGwSnYsettifQezPONE/tBvt/IMgWBy/zxxnFQpt5dhB6puDph7x5F/YyuESq
 m9PpMR3sqidn2gDwZhL58TVLvFBxoTivnIiHN3z96McCrM7yVipkS7cj8oWbeX4pZgu/
 bVFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NaA7wPXrYr7zESysMrfljI9GtiDhiOThoc+Zj7rAeQA=;
 b=U6O00/MmFb3NVHzlKto0VQdNMZjFQuFz2thckypL4yMhfSEPCwSwB5BumqkpePRuP+
 rN5kZ0fPaXyvg67ZG4Km05uOpvuTcfpRbMPsMovBke2rXWpM98zndFGMyNpcQQBG6Phc
 x98J6oTjbkfOU6OCpYcBsfTcp7QKvuGrVRleYUs8GQX857E7s2muVsMV+LUQ9mcH+dej
 Pd7oejNdVIWbDCqPe4TxjhVYktZNmKSd+lsIVg+8xfkvTMMkgWVJLfvIi5MIqU46I8mO
 yx2ibC1WpUMed8GV/fatHW/ySSYTHJq1VlXwnTbOGn38s+/CZp3BjLCdVRaUfro7ew/J
 Gh+g==
X-Gm-Message-State: APjAAAUHzRlkGAnEYAiGM9DOHGxXdlKQlR/Q2Dj9buynQDuq3GekOcBN
 3bEohAfKF6/YfEdXGje3n5LsUdn411LyfWc0bqGTBA==
X-Google-Smtp-Source: APXvYqxg9GNnMZ/W/1xpM+BzZ1/EcZfrkaZOycPesX2M/S7a3GF/j270Zx7XNeK8JZVUBd9XjN8MzzuAh6A7sMkVG/Y=
X-Received: by 2002:a17:906:d1d0:: with SMTP id
 bs16mr26795899ejb.286.1562774110079; 
 Wed, 10 Jul 2019 08:55:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190709182014.16052-1-pasha.tatashin@soleen.com>
 <d57ec270-a9dc-1820-195c-eb7ef61f9828@redhat.com>
In-Reply-To: <d57ec270-a9dc-1820-195c-eb7ef61f9828@redhat.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 10 Jul 2019 11:54:59 -0400
Message-ID: <CA+CK2bC_e=mkxeic--Rw6t84pnP139S_JqoGp9CsJ=aSrnY5mA@mail.gmail.com>
Subject: Re: [v2 0/5] arm64: allow to reserve memory for normal kexec kernel
To: Bhupesh Sharma <bhsharma@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_085511_854971_5E2EC301 
X-CRM114-Status: GOOD (  37.22  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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

On Wed, Jul 10, 2019 at 3:32 AM Bhupesh Sharma <bhsharma@redhat.com> wrote:
>
> Hi Pavel,
>
> On 07/09/2019 11:50 PM, Pavel Tatashin wrote:
> > Changelog
> > v1 - v2
> >       - No changes to patches, addressed suggestion from James Morse
> >         to add "arm64" tag to cover letter.
>
> Minor nit. Please also add PATCH to the subject line. Something like
> [PATCH v2]

OK

>
> Also will suggest to wait for atleast a couple of days before sending a
> new version of the patchset so as to give sufficient time for reviews to
> happen.

OK

>
> >       - Improved cover letter information based on discussion.
>
> > Currently, it is only allowed to reserve memory for crash kernel, because
> > it is a requirement in order to be able to boot into crash kernel without
> > touching memory of crashed kernel is to have memory reserved.
>
> > The second benefit for having memory reserved for kexec kernel is
> > that it does not require a relocation after segments are loaded into
> > memory.
>
> > If kexec functionality is used for a fast system update, with a minimal
> > downtime, the relocation of kernel + initramfs might take a significant
> > portion of reboot.
> >
> > In fact, on the machine that we are using, that has ARM64 processor
> > it takes 0.35s to relocate during kexec, thus taking 52% of kernel reboot
> > time:
> >
> > kernel shutdown       0.03s
> > relocation    0.35s
> > kernel startup        0.29s
> >
> > Image: 13M and initramfs is 24M. If initramfs increases, the relocation
> > time increases proportionally.
> >
> > While, it is possible to add 'kexeckernel=' parameters support to other
> > architectures by modifying reserve_crashkernel(), in this series this is
> > done for arm64 only.
>
> Note that we normally have two dimensions to this (and similar)
> problem(s) - time we spend in relocating the kernel + initramfs v/s the
> memory space we reserve while enabling kexeckernel (in this case) in the
> primary kernel.

Yes, for our specific case (Microsoft), it is more important to faster
reboot and have 64M permanently reserved. However, after thinking
about this, I decided to go ahead, and implement MMU enabled kernel
relocation for ARM64.

>
> Just to give you an example, I have to shrink even the crashkernel
> reservation size in the primary kernel on arm64 systems running fedora
> which have very small memory footprint. I have a amazon ec2 (aarch64)
> for example which runs with 256M memory space and even enabling
> crashkernel on the same was quite a challenge :)
>
> In such a case we need to do a comparison between the space we reserve
> v/s the time we spend while relocating while doing a kexec load.
>
> Note that we recently had issues with OOM in crashkernel boot, because
> of which we had to introduce kernel command-line parameter to allow a
> user to disable device dump to reduce memory usage, see the following
> commit:
>
> a3a3031b384f ("vmcore: Add a kernel parameter novmcoredd")
>
> More on the same below ...
>
> > The reason it is so slow on arm64 to relocate kernel is because the code
> > that does relocation does this with MMU disabled, and thus D-Cache and
> > I-Cache must also be disabled.
> >
> > Alternative solution is more complicated: Setup a temporary page table
> > for relocation_routine and also for code from cpu_soft_restart. Perform
> > relocation with MMU enabled, do cpu_soft_restart where MMU and caching
> > are disabled, jump to purgatory. A similar approach was suggested for
> > purgatory and was rejected due to making purgatory too complicated.
> > On, the other hand hibernate does something similar already, but there
> > MMU never needs to be disabled, and also by the time machine_kexec()
> > is called, allocator is not available, as we can't fail to do reboot,
> > so page table must be pre-allocated during kernel load time.
>
> ... may be its time to explore this path now with a fresh mind. I know
> Pratyush tried a bit on this and now I am experimenting on the same on
> several aarch64 systems, mainly because we are really short on memory
> resources on several aarch64 systems (used in embedded/cloud domain) and
> frequently run into OOM issues even in the primary kernel.
>
> Some more comments below:
>
> 1. I recommend protecting this code under a CONFIG (CONFIG_FAST_KEXEC ?)
> option and make it dependent on ARM64 being enabled (via CONFIG_ARM64
> option) to avoid causing issues on other archs like s390, powerpc,
> x86_64 (which probably don't need these changes).
>
> Also better to make the CONFIG option disabled by default, so that we
> can avoid OOM issues in primary kernel on arm64 systems with smaller
> memory footprints. A user can enabled it, if he needs fast kexec load
> experience..
>
> 2. Also, I don't see timing results for kexec_file_load() in this cover
> letter. Can you add some results for the same here, or are they on
> similar lines?
>
> I will give this a go on some aarch64 systems at my end and come back
> with more on the kernel + initramfs relocation time v/s memory space
> taken up results.
>
> Thanks,
> Bhupesh
>
> > Note: the above time is relocation time only. Purgatory usually also
> > computes checksum, but that is skipped, because --no-check is used when
> > kernel image is loaded via kexec.
> >
> > Pavel Tatashin (5):
> >    kexec: quiet down kexec reboot
> >    kexec: add resource for normal kexec region
> >    kexec: export common crashkernel/kexeckernel parser
> >    kexec: use reserved memory for normal kexec reboot
> >    arm64, kexec: reserve kexeckernel region
> >
> >   .../admin-guide/kernel-parameters.txt         |  7 ++
> >   arch/arm64/kernel/setup.c                     |  5 ++
> >   arch/arm64/mm/init.c                          | 83 ++++++++++++-------
> >   include/linux/crash_core.h                    |  6 ++
> >   include/linux/ioport.h                        |  1 +
> >   include/linux/kexec.h                         |  6 +-
> >   kernel/crash_core.c                           | 27 +++---
> >   kernel/kexec_core.c                           | 50 +++++++----
> >   8 files changed, 127 insertions(+), 58 deletions(-)
> >
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 983626AFC8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 21:27:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=//ffuNg9+iwbZvAwqya8UNuPUQ4/liqEzcTqQ2uhowQ=; b=IocULp/kcVFhbh
	uBye9W90LQ9jQSIlfn/LRqhDD/R5STKYi0uTT/m+Koc8V4x6LPmUjNufOgJgoHmnrY2BBauQbMqAz
	FoInna2erc01I7dtkLIp8Z99P8jKXmYLXgZcUqb5zr+sv25ZHkIxZt45sw/8XCsdD0Js8SCk6pdew
	TwWfBBaeqCguUscUpw3qaAYQrteqq9ocnPdcSA6eVBMsM0i6pv6bSEYUZYqlfd1NlaTSoGQILl0Uj
	feZ6+q3hdK1DFQLTNCaucMAPqq7qBn+gIXswymRtpX+b3dl/FThDP3C6veuM4jb180hDDtB1/eoN3
	TzRdfuHd0abQS5iygzGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnT6J-00085x-8M; Tue, 16 Jul 2019 19:26:59 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnT5s-0007sg-5U
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 19:26:34 +0000
Received: by mail-ed1-x543.google.com with SMTP id w20so21617445edd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 12:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tAMcer/o92OFVt119e6yifT3N3R3a5gfAH/A3YrhyPY=;
 b=Vs748xKj2hviUzrn4HuUZQJnzrom7YeHQzEBrRW3chVySiB4qVTO8ok+BmdZd/0Hkp
 ds9XA1cCfWwC0UUGBF6Uec9vZkeWsZumHKY7C7CWILZXjTQYfi83Zxqp386+dGJXg2sk
 5m5/QXQPcctDZzGAHeVD4jUurF6StkJcJsA7S2MuvDb430nXwLW8oKl0zcWIv1k0X/QH
 LzPEQ87Qpbify0cfq0eAlzE32H7JJ2SbOspS9aGI/LYBh0ZlwCWHBL53kYyGcoxYeWHR
 +7odcl9aj6ERiBzV52OHC4hZZ5DMEtL4b3AUe+wrmPJKnLEQGGU/9Wk8KuDfgZOiqP1t
 uU8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tAMcer/o92OFVt119e6yifT3N3R3a5gfAH/A3YrhyPY=;
 b=bTXMRdG9SCKolzuYwCdh6QueSN87mfor8Z2xi6EtQ9DqEpzbDD+4zUNc6Q8x7T045h
 pSrAPsBQFGgnStnRI/gvWm1pd2rL2tp3bQgYHKbFpzraMUWbnjO1otYZPKGdyhIQo/p5
 3aEiIrgH+ieUDV33iGrFevzMzptipKVslmLMl0nYAE/hMlM06KVw9CjO1vckoifQ1kbE
 5odUiYqgsOn2WmcQetCeB4Yd5Ds+9KHrTR0/+9CT1Ss65qvU5LeghNGba4F4ERn1Dmo4
 HEYTeoqga8T5pDUgQyK0vtD+twx2k1KmHNLR15vEHccA3HS2XS2AOmNtDAVrfhe7IHEP
 0JoQ==
X-Gm-Message-State: APjAAAX4Uq7B1jt0kCqQqstgrAJDH8ATIF4lGB8iefw9okf86qIwGWwr
 kXyAyXpqcUthQlQItObmJww5ybUYNqGnkL3ZQlk=
X-Google-Smtp-Source: APXvYqygM7bjRf5/q1NDCo6IIUu3Bn2fMgeKwA4WxUFuObu4eHPKtzeqoPz3euiFSNDs1KzoNjNAGmGQjtQzrhuFJUM=
X-Received: by 2002:a50:fb0a:: with SMTP id d10mr5479243edq.124.1563305190476; 
 Tue, 16 Jul 2019 12:26:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190716165641.6990-1-pasha.tatashin@soleen.com>
 <CACi5LpOO+sF3o+5u4jHXzba+Ki8fZ5auekKLayxSwNOL6Lp=-w@mail.gmail.com>
In-Reply-To: <CACi5LpOO+sF3o+5u4jHXzba+Ki8fZ5auekKLayxSwNOL6Lp=-w@mail.gmail.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Tue, 16 Jul 2019 15:26:19 -0400
Message-ID: <CA+CK2bCz5oZQZtmFzWCt_yscpeUuQKPCmajL1EQcav++n9=8Dw@mail.gmail.com>
Subject: Re: [RFC v1 0/4] arm64: MMU enabled kexec kernel relocation
To: Bhupesh Sharma <bhsharma@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_122632_650077_FAE0341E 
X-CRM114-Status: GOOD (  25.96  )
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 James Morris <jmorris@namei.org>, Eric Biederman <ebiederm@xmission.com>,
 will@kernel.org, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 3:14 PM Bhupesh Sharma <bhsharma@redhat.com> wrote:
>
> Hi Pavel,
>
> On Tue, Jul 16, 2019 at 10:26 PM Pavel Tatashin
> <pasha.tatashin@soleen.com> wrote:
> >
> > Added identity mapped page table, and keep MMU enabled while
> > kernel is being relocated from sparse pages to the final
> > destination during kexec.
> >
> > More description about the problem I am trying to solve here, can be
> > found here:
> > https://lore.kernel.org/lkml/20190709182014.16052-1-pasha.tatashin@soleen.com/
> >
> > This patch series works in terms, that I can kexec-reboot both in QEMU
> > and on a physical machine. However, I do not see performance improvement
> > during relocation. The performance is just as slow as before with disabled
> > caches.
>
> Thanks for the patchset, but if the changes still don't positively
> impact the kexec-reboot timings, I am not sure we if gain by adding
> these to the kernel.

Hi Bhupesh,

I am not asking to add these to the kernel (hence RFC), I am looking
for help to figure out why the relocation is still slow, once that is
understood I will submit the patches for integration. My previous
patch series fixed the relocation problem by pre-reserving space, but
because the culprit of the problem was narrowed down to disabled
caches it was decided that a better fix would be to do relocation with
MMU still enabled, this is why I created this new series.

>
> Like I mentioned in the previous threads, we have been carrying some
> relevant fixes for the same in Linux distros. I have been trying to
> find time to fix them and send them upstream, but I am caught up with
> some nasty kexec_file_load() issues on arm64 currently.

As I understood, the fixes were for slow purgatory checksum checking,
and not for relocation of there kernel. Are you saying redhat is
carrying some patches that address slow relocation problem as well?

Thank you,
Pasha

>
> So, I will find some time to work on them (may be next week) and will
> Cc you when I post them out after some checks on real physical
> hardware.
>
> Thanks,
> Bhupesh
>
> > Am I missing something? Perhaps, there is some flag that I should also
> > enable in page table? Please provide me with any suggestions.
> >
> > Pavel Tatashin (4):
> >   arm64, mm: identity mapped page table
> >   arm64, kexec: interface preparation for mmu enabled kexec
> >   arm64, kexec: add kexec's own identity page table
> >   arm64: Keep MMU on while kernel is being relocated
> >
> >  arch/arm64/include/asm/ident_map.h  |  26 ++++++
> >  arch/arm64/include/asm/kexec.h      |   5 +-
> >  arch/arm64/kernel/cpu-reset.S       |   8 --
> >  arch/arm64/kernel/cpu-reset.h       |   7 +-
> >  arch/arm64/kernel/machine_kexec.c   | 128 +++++++++++++++++++++-------
> >  arch/arm64/kernel/relocate_kernel.S |  36 +++++---
> >  arch/arm64/mm/Makefile              |   1 +
> >  arch/arm64/mm/ident_map.c           |  99 +++++++++++++++++++++
> >  8 files changed, 255 insertions(+), 55 deletions(-)
> >  create mode 100644 arch/arm64/include/asm/ident_map.h
> >  create mode 100644 arch/arm64/mm/ident_map.c
> >
> > --
> > 2.22.0
> >
> >
> > _______________________________________________
> > kexec mailing list
> > kexec@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/kexec

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6914E6347D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 12:44:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RqSaeEnidV9JPLX+VDBonAQ3Y7UNMYCkpnw+yr4x97Q=; b=gq3tQ2fDp7/YSH
	2OInd9v2zQD2vZ9sG18/LIHig84w0erbvKHGqcNV7sYnmQHd6EfDetDKMjHYp8lOqPGQY5cDYDqeq
	eGG5oQlrscSTmk1Uv2fLpk6lJnoS5TM17GERbs51WRGBZwGeIEbrWnQAqMDoy+T8SIQfCUxJbdBGx
	mremoe4uGXzHfJfLxF+F6WkXtxPa9r56zpknPM9tI0lFZevJST9oD0NquLDnADrZaG90fSm2wD5En
	IcAlbQ/GchH8iMi9eRGUxGA2Y/FxPaLKluc4c1mVKIL5OomzTXmeo7FpJd9zKR4cv1kCEL0vWx6Dq
	8omAFxv7JM1QWGaJUgfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hknbu-0004c6-Uv; Tue, 09 Jul 2019 10:44:35 +0000
Received: from mail-lj1-f196.google.com ([209.85.208.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hknbV-0004ba-Vq
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 10:44:11 +0000
Received: by mail-lj1-f196.google.com with SMTP id 16so19032510ljv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 03:44:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2WJ4m/DGadKDJn7LI59T/jmaK1sNDv+NLzWApQUyooQ=;
 b=AXeOTSylo9qgqQVNhuGO0FymMpoe5NxmKAF6g3vYP6A2/NTkfVD0lvBmgm+Lp4Az3m
 nHaHTNSKD3QXRKYLUwDVCeH0YaHiS7E/57W6DDPsjSrOdbroA1TXtxKsgN2lzdypIX45
 YeiYbWMhAheoda6cwM5BhtYZiFfcYyOxhvPR5HtIa0ThZb/6VfTKpFwev32TDay1w07N
 Y0cGcJpWqokqlMJ8yyYWNstOJyGwRkIkvPSlWp2w5PtaVBQQX/0C4PF1a5HusoCLmyzL
 Le+fMQNiQbRfDYncQ4a4Q+c6rec1pawHWNFr7AdsqHDEjJi1FFJdaPwIkA1DCGgyc/H1
 hrMA==
X-Gm-Message-State: APjAAAW+GNk3sAqJs5xx13lOGbIsTOpyZk7V/LPiWlADRkc09+32IZdZ
 fdyqRCSazpvng1FnAe4eGhSFp1VQbnlObcIvBLUskQ==
X-Google-Smtp-Source: APXvYqxPHBLg8W3ob44pbfsQreCW94qFhPE+cEwluc5uu4+OgXOPXOW4idA52S+Cl1VzOEXfq3Z9ZQKY+KVJgWw/EsE=
X-Received: by 2002:a2e:8945:: with SMTP id b5mr13056704ljk.93.1562668577294; 
 Tue, 09 Jul 2019 03:36:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190708211528.12392-1-pasha.tatashin@soleen.com>
In-Reply-To: <20190708211528.12392-1-pasha.tatashin@soleen.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Tue, 9 Jul 2019 16:06:05 +0530
Message-ID: <CACi5LpNGWhTnXyM8gB0Tn=682+08s-ppfDpX2SawfxMvue1GTQ@mail.gmail.com>
Subject: Re: [v1 0/5] allow to reserve memory for normal kexec kernel
To: Pavel Tatashin <pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_034410_021315_42EFED3A 
X-CRM114-Status: GOOD (  20.44  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: sashal@kernel.org, Jonathan Corbet <corbet@lwn.net>,
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

Hi Pavel,

On Tue, Jul 9, 2019 at 2:46 AM Pavel Tatashin <pasha.tatashin@soleen.com> wrote:
>
> Currently, it is only allowed to reserve memory for crash kernel, because
> it is a requirement in order to be able to boot into crash kernel without
> touching memory of crashed kernel is to have memory reserved.
>
> The second benefit for having memory reserved for kexec kernel is
> that it does not require a relocation after segments are loaded into
> memory.
>
> If kexec functionality is used for a fast system update, with a minimal
> downtime, the relocation of kernel + initramfs might take a significant
> portion of reboot.
>
> In fact, on the machine that we are using, that has ARM64 processor
> it takes 0.35s to relocate during kexec, thus taking 52% of kernel reboot
> time:
>
> kernel shutdown 0.03s
> relocation      0.35s
> kernel startup  0.29s
>
> Image: 13M and initramfs is 24M. If initramfs increases, the relocation
> time increases proportionally.
>
> While, it is possible to add 'kexeckernel=' parameters support to other
> architectures by modifying reserve_crashkernel(), in this series this is
> done for arm64 only.
>
> Pavel Tatashin (5):
>   kexec: quiet down kexec reboot
>   kexec: add resource for normal kexec region
>   kexec: export common crashkernel/kexeckernel parser
>   kexec: use reserved memory for normal kexec reboot
>   arm64, kexec: reserve kexeckernel region
>
>  .../admin-guide/kernel-parameters.txt         |  7 ++
>  arch/arm64/kernel/setup.c                     |  5 ++
>  arch/arm64/mm/init.c                          | 83 ++++++++++++-------
>  include/linux/crash_core.h                    |  6 ++
>  include/linux/ioport.h                        |  1 +
>  include/linux/kexec.h                         |  6 +-
>  kernel/crash_core.c                           | 27 +++---
>  kernel/kexec_core.c                           | 50 +++++++----
>  8 files changed, 127 insertions(+), 58 deletions(-)
>
> --
> 2.22.0

This seems like an issue with time spent while doing sha256
verification while in purgatory.

Can you please try the following two patches which enable D-cache in
purgatory before SHA verification and disable it before switching to
kernel:

http://lists.infradead.org/pipermail/kexec/2017-May/018839.html
http://lists.infradead.org/pipermail/kexec/2017-May/018840.html

Note that these were not accepted upstream but are included in several
distros in some form or the other :)

Thanks,
Bhupesh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

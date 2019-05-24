Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A3929204
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 09:44:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zc8mZ/vpnxtNJ5FxQBLBAe0bl2o7xUBwBSw4ttdBpTQ=; b=lx6jAWElx//D2r
	fVckjsqctFb0QBYw2CqlCnwkMewhf7H6KBFYEV3xdG7sp7AGDa57MzhiqRRBc/kBaD8k03LtEniHJ
	FcSc7gYz0YPsuEkuvdCp9CthwkrB1W8EtT1gpjdLSRoL/4G2jb5CjS9L1icFu7lceYmwpV1UJGB2g
	/aGXEWyWBBX4hIkffrAAVe2yt2q+qwz2EMq38iDr/F23mfxO3IdDwrP++NCqAzY7+ajr6DYHT1atz
	A4iGUonfS3ZFmqxmx/V2C4vsYcQ8IKPQu/jofwNg4AZIu30zh47Pe9KLlv/sBAaD4SyGVVYMJloTK
	zQXZ17/z6jithVMiswJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU4sG-0005Du-7v; Fri, 24 May 2019 07:44:20 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU4s8-0005DG-1t
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 07:44:13 +0000
Received: by mail-qk1-f194.google.com with SMTP id d10so6059668qko.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 00:44:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k2hM4uRH+xcF6VZw3zZp57FHF0UiIEpfXR9WFJl84UE=;
 b=REVKstBd3RPETp0rX7XX1XrotLwKyM5lSdtaniWp8GhnIZcWNTatdJorKs77QMRfe0
 6I8TJlOkRw2U2RL7ZwKirv6kGrCvgs/uKEclUbjfjZ4zHiqVwM1fI8ZP+jwn05ulIrWz
 rIsf1GHGCXM0/mSsXoV6P/4+QgCEGmpZIMEMHeLTjPYTyWRw6xI6tOR3onzCB69+vOB1
 AsPLTxSISDa+BHg0xXMeWSbefatJIMx4sGTIvy5EA/Myg3w606H/ZOnQMH0McLENxY2v
 xt4Sev/PjUo22RPLrB0shfXJqMz5AQFOnZyhU4JEyDqbfYpUMgiJJuxznxzgqdHNPAbM
 vI3A==
X-Gm-Message-State: APjAAAWzt2AJd8E8bXsD9ppojD8c3IO0uFaTgT1teGITE5tT6lxW+Q92
 4m2OUlQkRZ9NDMBYpd0tTtMm87waLuyRJyyBpoI=
X-Google-Smtp-Source: APXvYqy/WqyRL4BlbMWLM5GdeDgLkBJI6XwCNcVvXGonN+2oV2dtTQWrObje5U17OKbtEn0pWH9nlYsDR25/fOWgBDY=
X-Received: by 2002:ac8:2433:: with SMTP id c48mr70119188qtc.18.1558683849757; 
 Fri, 24 May 2019 00:44:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190522155259.11174-1-christian@brauner.io>
 <67e4458a-9cc4-d1aa-608c-73ebe9e2f7a3@yandex-team.ru>
 <20190523163345.q5ynd2ytk7nxcvqf@brauner.io>
In-Reply-To: <20190523163345.q5ynd2ytk7nxcvqf@brauner.io>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 24 May 2019 09:43:53 +0200
Message-ID: <CAK8P3a26uvqmExJZsezhB+cp2ADM0Ai9jVUKWOFM6kg848bCKg@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] open: add close_range()
To: Christian Brauner <christian@brauner.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_004412_099274_D8A829BC 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-ia64@vger.kernel.org, Linux-sh list <linux-sh@vger.kernel.org>,
 Konstantin Khlebnikov <khlebnikov@yandex-team.ru>,
 Oleg Nesterov <oleg@redhat.com>, David Howells <dhowells@redhat.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 sparclinux <sparclinux@vger.kernel.org>, Shuah Khan <shuah@kernel.org>,
 linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Miklos Szeredi <miklos@szeredi.hu>,
 the arch/x86 maintainers <x86@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, Todd Kjos <tkjos@android.com>,
 Jann Horn <jannh@google.com>, linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 "Dmitry V. Levin" <ldv@altlinux.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Florian Weimer <fweimer@redhat.com>,
 Parisc List <linux-parisc@vger.kernel.org>,
 Linux API <linux-api@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 alpha <linux-alpha@vger.kernel.org>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 6:33 PM Christian Brauner <christian@brauner.io> wrote:
> On Thu, May 23, 2019 at 07:22:17PM +0300, Konstantin Khlebnikov wrote:
> > On 22.05.2019 18:52, Christian Brauner wrote:> This adds the close_range() syscall. It allows to efficiently close a range
> > >   22 files changed, 100 insertions(+), 9 deletions(-)
> > >
> >
> > It would be better to split arch/ wiring into separate patch for better readability.
>
> Ok. You mean only do x86 - seems to be the standard - and then move the
> others into a separate patch? Doesn't seem worth to have a patch
> per-arch, I'd think.

I think I would prefer the first patch to just add the call without wiring it up
anywhere, and a second patch do add it on all architectures including x86.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

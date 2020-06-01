Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3051EB1B6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 00:28:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3FqWUl+Hir8UBdF4XIgjopbpGj7ag8R58xHTRdV9WOs=; b=IU1eEdS9DKIycs
	YiWtD+QnglNiuw1qXXfQiakAtOxQ7E7+Poss+xJQclWgAKcS3YjVlTsGePNyf104tKE98nV3U3p0W
	v4dfJMnq3rd/H0xOV/XBVl94lBxGHB4GiYqFVjlDKrKCkGSQfzrqEevO89fOwWVGd3JtgqsNppaRm
	pnXoxV5pnbzNDFgwhh0L+Q34OeQ0To3KDTHyB5YFihHYnFnu5LNj3YHt3D5G4uIoEFOkX3LI0yfP8
	2zg/RP9Br98Fk2/X0mtK0NVjHfgv3T9eV+wOhTNbb4nzQVhS9zY8kRUNVYomAvJZjOJvJqVER6HBN
	WR7oXFZRFTnhaMKQAD0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfsuq-0001vY-NL; Mon, 01 Jun 2020 22:28:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfsuj-0001v4-Rm
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 22:28:15 +0000
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com
 [209.85.161.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4FA70207BB
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  1 Jun 2020 22:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591050493;
 bh=HZeHYKJaA5zfzUfWCv5xs+dYsYLFUWGAULPrEiyXdHU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=i6fw7Woj321Rj0NEBV5lz31PlvlC+0F5wCw2tEpvRtDhUZY17QTIZZB2fuiJRm32G
 a34qK0Q1RdyLGubyqCl8BZtDRu8Ylab2JFWWDfY3rvBcczS43wrRoKSzvar/rHf6OO
 v7xbiwqwbM9qYTqsNjIQ5Z4HrO+YCp9Gl6nFREEo=
Received: by mail-oo1-f53.google.com with SMTP id q6so1770459oot.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 15:28:13 -0700 (PDT)
X-Gm-Message-State: AOAM530a5gU6vLMfC2Lb0zZoG/Eq/BUU67K3cpKYdkBjYGYEBMJ25loH
 pAg0jHIROh55V2O0VGuEqyR3Vv31Cny76WqK0gY=
X-Google-Smtp-Source: ABdhPJx439ODktknmn00LL4bUu84xVfsoS2i+XtRQqynlW0jpzGZlCtf2Sa7BVPhzYl4dy9KZEUj0KvDav8V5PIXt9E=
X-Received: by 2002:a4a:b18a:: with SMTP id c10mr9200772ooo.41.1591050492222; 
 Mon, 01 Jun 2020 15:28:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200521100952.GA5360@willie-the-truck>
 <20200521173738.GA29590@e121166-lin.cambridge.arm.com>
 <20200526202157.GE2206@willie-the-truck>
 <20200527134104.GA16115@e121166-lin.cambridge.arm.com>
 <20200601070459.GB8601@willie-the-truck>
 <CAKwvOdmXmxOdW_TJQmYBYDY8gDOacjDTcpSWQGATb2p_85tFAQ@mail.gmail.com>
 <CAMj1kXFQzBaZO+RGKs2iJOzW6rdEiAjdVc8PJ4U+KMWgCD9a6w@mail.gmail.com>
 <CAKwvOdnz-=GD9-taLQt6LDhs2Q-xgWmywCUA6skB0NJhubB+nw@mail.gmail.com>
In-Reply-To: <CAKwvOdnz-=GD9-taLQt6LDhs2Q-xgWmywCUA6skB0NJhubB+nw@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 2 Jun 2020 00:28:00 +0200
X-Gmail-Original-Message-ID: <CAMj1kXErFuvOoG=DB6sz5HBvDuHDiKwWD8uOyLuxaX-u8-+dbA@mail.gmail.com>
Message-ID: <CAMj1kXErFuvOoG=DB6sz5HBvDuHDiKwWD8uOyLuxaX-u8-+dbA@mail.gmail.com>
Subject: Re: arm64/acpi: NULL dereference reports from UBSAN at boot
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_152813_938061_AF0410FF 
X-CRM114-Status: GOOD (  18.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Peter Collingbourne <pcc@google.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 LKML <linux-kernel@vger.kernel.org>, Alexander Potapenko <glider@google.com>,
 Dmitry Vyukov <dvyukov@google.com>, Hanjun Guo <guohanjun@huawei.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2 Jun 2020 at 00:19, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Mon, Jun 1, 2020 at 2:57 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Mon, 1 Jun 2020 at 23:52, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > >
> > > Anyways, it looks like the address of member from NULL subexpression
> > > looks problematic.  I wonder if offsetof can be used here?
> > >
> > > #define ACPI_OFFSET(d, f) ACPI_PTR_DIFF (offsetof(d, f), (void *) 0)
> > >
> > > Seems to work in my basic test case.  Untested in the kernel.
> > >
> > > IIUC, ACPI_OFFSET is trying to calculate the difference between the
> > > offset of a member of a struct and 0?  Isn't that the tautology `x - 0
> > > == x`?
> >
> > No. ACPI_OFFSET() is just a poor person's version of offsetof().
> >
> > (Note that it calculates the difference between &(((d *) 0)->f) and
> > (void *)0x0, so the 0x0 term is there on both sides)
>
> Got it. So we're trying to avoid including stddef.h?  Can
> __builtin_offsetof be used here?
> #define ACPI_OFFSET(d, f) ACPI_PTR_DIFF (__builtin_offsetof(d, f), (void *) 0)

Drop the 0x0:

#define ACPI_OFFSET __builtin_offsetof

should be all we need.

> The oldest version of GCC in godbolt.org (4.1) supports this builtin.

Yeah I think that should be fine.

Alternatively, using any arbitrary address other than 0x0 on both
sides should work as well to get rid of the undefined behavior
(assuming the use of NULL pointers is what is causing it), but I don't
see why we need to invent our own helper here.

BTW some other macros looks dodgy as well.
761f0b82393353507930b6721ae4311a9df2ca36 provides a nice set of
candidates to go and clean up.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

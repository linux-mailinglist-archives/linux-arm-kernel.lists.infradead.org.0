Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C550219668C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 15:10:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ANTS+HgIE6cRgxT0PkLkRJJCouSGAHQLZRJaJ1fv5Q=; b=UDkoep+FVIXul5
	4SuYHomr00153jOoE+IHQgSr1hokx3AR0Q+0EQOeMSYrA54Uf1scYT2+4wCUvI78c3U3mM7GucNsw
	Gxx5nrN8+zEgrtf1PBKn+VWhU0F03Ceq5JaM2ueO0XEOKKEM08aBtaw/XWEXOOfc1mCKYgnVXd4fC
	A3GWkQQI5DSrRhD9qGWaIjDHpjhC+YjgNQjY+3G2nRTY4yjp8FBEFVWZjkTatlB78msvlS9PTbqxh
	D+4v46Lhe3TtJ+Y0KzS+KtHQu8vyd8Pya68GWjHRituXqb9yHp36at6smcZfP07CtZCRbbxSOlgzs
	4Av3GixuRixLr//THykw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jICAi-0004Zv-Av; Sat, 28 Mar 2020 14:10:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jICAX-0004Zc-M4
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 14:10:39 +0000
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com
 [209.85.166.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B6D66207FF
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Mar 2020 14:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585404636;
 bh=VZQs1gVf2IDvqb7BYuqbkw5L8XebB0Z1pH9jbPoh7V4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=zMEHFmCcv4skXGyPp3q9oQCV5QtzPbbi4zxNJSe0qmF811PIiKr1y8OPdo96GdWZR
 qWQE+FJbwr5/LV5rTVaHRyVcrJf+bANb+qNZHqwjsz7gMh6l22xSsM6RSYYICAGyZL
 LfMdjuQIFIdC2XVfLKoSNWC3RrwVLwQnZiR503Zc=
Received: by mail-il1-f179.google.com with SMTP id 7so11493715ill.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Mar 2020 07:10:36 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3wUNIijyClBH9OvEUQ91RzJC2OO4p9oftVs8DcqLrKTvlRN2Z2
 LkXOX+4bzLb1GNIx0eBJ7QrcnSQRNy9jsT+HhDk=
X-Google-Smtp-Source: ADFU+vtUUV8KCdGbs2VMIFXaD36NbeZJ9wf0loihOXgvnZLn5Z+77lVV0SV0f1j/SLKGcgPBnbxm2yHStIABPZ4Qtfg=
X-Received: by 2002:a92:dcd1:: with SMTP id b17mr3891182ilr.80.1585404636052; 
 Sat, 28 Mar 2020 07:10:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200326165905.2240-1-ardb@kernel.org>
 <20200326165905.2240-3-ardb@kernel.org>
 <20200328140648.GA234129@rani.riverdale.lan>
In-Reply-To: <20200328140648.GA234129@rani.riverdale.lan>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Sat, 28 Mar 2020 15:10:25 +0100
X-Gmail-Original-Message-ID: <CAMj1kXEgduoZjtC2b16vJLmjc5UpEgFBAMbVB+zebL_NmXrHJQ@mail.gmail.com>
Message-ID: <CAMj1kXEgduoZjtC2b16vJLmjc5UpEgFBAMbVB+zebL_NmXrHJQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] efi/arm64: increase the PE/COFF alignment so the
 kernel can run in place
To: Arvind Sankar <nivedita@alum.mit.edu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_071037_763458_2FBAFEA8 
X-CRM114-Status: GOOD (  18.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-efi <linux-efi@vger.kernel.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arvind,

Thanks for taking a look.

On Sat, 28 Mar 2020 at 15:06, Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Thu, Mar 26, 2020 at 05:59:05PM +0100, Ard Biesheuvel wrote:
> > Update the PE/COFF metadata so that the UEFI image loader will load the
> > kernel image at an offset that allows it to execute in place.
> >
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > ---
> >  arch/arm64/kernel/efi-header.S | 2 +-
> >  arch/arm64/kernel/image-vars.h | 7 +++++++
> >  2 files changed, 8 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/kernel/efi-header.S b/arch/arm64/kernel/efi-header.S
> > index 914999ccaf8a..f9ee1c2a5fd6 100644
> > --- a/arch/arm64/kernel/efi-header.S
> > +++ b/arch/arm64/kernel/efi-header.S
> > @@ -32,7 +32,7 @@ optional_header:
> >
> >  extra_header_fields:
> >       .quad   0                                       // ImageBase
> > -     .long   SZ_4K                                   // SectionAlignment
> > +     .long   PECOFF_SECTION_ALIGNMENT                // SectionAlignment
> >       .long   PECOFF_FILE_ALIGNMENT                   // FileAlignment
> >       .short  0                                       // MajorOperatingSystemVersion
> >       .short  0                                       // MinorOperatingSystemVersion
> > diff --git a/arch/arm64/kernel/image-vars.h b/arch/arm64/kernel/image-vars.h
> > index be0a63ffed23..7a7fa3ba7b2f 100644
> > --- a/arch/arm64/kernel/image-vars.h
> > +++ b/arch/arm64/kernel/image-vars.h
> > @@ -15,6 +15,13 @@
> >  __efistub_kernel_size                = _edata - _text;
> >  __efistub_primary_entry_offset       = primary_entry - _text;
> >
> > +#ifndef CONFIG_RELOCATABLE
> > +PECOFF_SECTION_ALIGNMENT = SZ_4K;
> > +#elif THREAD_ALIGN > SEGMENT_ALIGN
> > +PECOFF_SECTION_ALIGNMENT = THREAD_ALIGN;
> > +#else
> > +PECOFF_SECTION_ALIGNMENT = SEGMENT_ALIGN;
> > +#endif
> >
> >  /*
> >   * The EFI stub has its own symbol namespace prefixed by __efistub_, to
> > --
> > 2.17.1
> >
>
> The section virtual addresses and (possibly) size of image need to be
> updated to be a multiple of PECOFF_SECTION_ALIGNMENT, no?

Indeed. I spotted that after sending this patch - both _end and
_initdata_begin need to be aligned to this value. I also noticed that
it is unclear whether values over 64 KB are permitted: the PE/COFF
spec mentions that 64 KB is the max for FileAlignment, and that
SectionAlignment should be larger or equal to that.

So I think it would be better to set this value to 64 KB
unconditionally, and round up the sections to 64 KB. This means 64k
pagesize kernels with vmap'ed stack have a 50% chance of ending up at
an offset that requires moving the image, but this is still an
improvement over doing it all the time.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA28C160D63
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 09:33:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tMaR3JrClxwK278SMm1v1T7aCvWZWPUc8+YfN1H8Ti0=; b=oLIbxEXw3sFhz+
	WyeXvXNm0UpZLt/D8yqFa8ayvJPNlYH6kbv+D4FGNHWbgmlwbCR5kNX2/LR3VMd/LdfjqJT+XE6Iy
	HCqqvT2qeafGRfs0aUD1TgajANAdkLlziCGp8SqxBfjxSjwNor7i6CoVoGXm+sQym5G35f9FRrvd4
	TjBP6bWk1ZdUb5hSP+oV+iH7udC6xF++SgS3g4XZy7XzeFL4bNordPC9YgWRRMip0FsVfo8KZ+zlD
	J11BZW86Wox4sTadqSvfGOw9zrhjSZ/jsmRwDCixNHEy5F55FSPhTYq0vf6vnD92sJ2gqSSFIv08F
	bFYZvlOQewX7zgiOOF9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3bpw-0006D9-1M; Mon, 17 Feb 2020 08:33:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3bpk-00068X-UX
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 08:32:54 +0000
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 25B742072C
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 08:32:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581928372;
 bh=OwgMBsjVSCrvbV4TA2D+tr7AeyhpUQsV01Ho7eUVod0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=1Qsi15U7hTxkN1xdFFORkwVFajZ/gVGeHxiOLjCR1d1WrYJ9ngmW56hFGfLcG/vY1
 yFRc7dkoBHwkAs70yIqaRDY9Vu0PEbjZQ8KREpRR1jIe9ShqQQ8YZsxqi0qc6UGTsy
 AQfPaISrmT2i+Qx8knFGeMyJCWj2aw4n+uLS5irs=
Received: by mail-wm1-f41.google.com with SMTP id t14so17365480wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 00:32:52 -0800 (PST)
X-Gm-Message-State: APjAAAV+bj95MBoumBvie/c2nRMlXwPsnld4drS/o9U1hU1I3oO9tfRI
 l1ycotQO+A4nQ4ayX/Un5FtdPp+5MBNlOXonO0+D4g==
X-Google-Smtp-Source: APXvYqyziBIaciYe96AavE0XzNcCSVkKBWen9F5MoO0KrZzjOxjQc0rgfFEuNAV7fOW971/GLufC9iE3EI+E9zbFjKU=
X-Received: by 2002:a1c:bc46:: with SMTP id m67mr20313635wmf.40.1581928370477; 
 Mon, 17 Feb 2020 00:32:50 -0800 (PST)
MIME-Version: 1.0
References: <20200216182334.8121-1-ardb@kernel.org>
 <20200216182334.8121-13-ardb@kernel.org>
 <20200216191219.GA589207@rani.riverdale.lan>
In-Reply-To: <20200216191219.GA589207@rani.riverdale.lan>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 17 Feb 2020 09:32:39 +0100
X-Gmail-Original-Message-ID: <CAKv+Gu_NEuPAnEjFtk1MOs6xqcH-WNK2+6uP_EQ203vhjHzDaw@mail.gmail.com>
Message-ID: <CAKv+Gu_NEuPAnEjFtk1MOs6xqcH-WNK2+6uP_EQ203vhjHzDaw@mail.gmail.com>
Subject: Re: [PATCH 12/18] efi: clean up config_parse_tables()
To: Arvind Sankar <nivedita@alum.mit.edu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_003253_051366_361D3E16 
X-CRM114-Status: GOOD (  22.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: the arch/x86 maintainers <x86@kernel.org>,
 linux-efi <linux-efi@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 16 Feb 2020 at 20:12, Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Sun, Feb 16, 2020 at 07:23:28PM +0100, Ard Biesheuvel wrote:
> > config_parse_tables() is a jumble of pointer arithmetic, due to the
> > fact that on x86, we may be dealing with firmware whose native word
> > size differs from the kernel's.
> >
> > This is not a concern on other architectures, and doesn't quite
> > justify the state of the code, so let's clean it up by adding a
> > non-x86 code path, constifying statically allocated tables and
> > replacing preprocessor conditionals with IS_ENABLED() checks.
> >
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > ---
> >  arch/ia64/kernel/efi.c          |  3 +-
> >  arch/x86/platform/efi/efi.c     |  6 +--
> >  drivers/firmware/efi/arm-init.c |  5 +--
> >  drivers/firmware/efi/efi.c      | 47 ++++++++++----------
> >  include/linux/efi.h             |  5 ++-
> >  5 files changed, 32 insertions(+), 34 deletions(-)
> >
...
       if (!retval)
> > diff --git a/drivers/firmware/efi/efi.c b/drivers/firmware/efi/efi.c
> > index 2bfd6c0806ce..db1fe765380f 100644
> > --- a/drivers/firmware/efi/efi.c
> > +++ b/drivers/firmware/efi/efi.c
...
> > @@ -498,39 +498,38 @@ static __init int match_config_table(efi_guid_t *guid,
> >       return 0;
> >  }
> >
> > -int __init efi_config_parse_tables(void *config_tables, int count, int sz,
> > -                                efi_config_table_type_t *arch_tables)
> > +int __init efi_config_parse_tables(const efi_config_table_t *config_tables,
> > +                                int count,
> > +                                const efi_config_table_type_t *arch_tables)
> >  {
> > -     void *tablep;
> > +     const efi_config_table_64_t *tbl64 = (void *)config_tables;
> > +     const efi_config_table_32_t *tbl32 = (void *)config_tables;
> > +     const efi_guid_t *guid;
> > +     unsigned long table;
> >       int i;
> >
> > -     tablep = config_tables;
> >       pr_info("");
> >       for (i = 0; i < count; i++) {
> > -             efi_guid_t guid;
> > -             unsigned long table;
> > -
> > -             if (efi_enabled(EFI_64BIT)) {
> > -                     u64 table64;
> > -                     guid = ((efi_config_table_64_t *)tablep)->guid;
> > -                     table64 = ((efi_config_table_64_t *)tablep)->table;
> > -                     table = table64;
> > -#ifndef CONFIG_64BIT
> > -                     if (table64 >> 32) {
> > +             if (!IS_ENABLED(CONFIG_X86)) {
> > +                     guid = &config_tables[i].guid;
> > +                     table = (unsigned long)config_tables[i].table;
> > +             } else if (efi_enabled(EFI_64BIT)) {
> > +                     guid = &tbl64[i].guid;
> > +                     table = tbl64[i].table;
> > +
> > +                     if (IS_ENABLED(CONFIG_X64_32) &&
>                                               ^^^ typo, should be X86
>

Noted, thanks for spotting that.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

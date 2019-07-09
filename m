Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B79A963A9C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 20:12:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7csxGrqYqFlE3zFFOF1TNwN/FZ0cAcweklFiZ7ZWKew=; b=RelRaOlIIxO2Lr
	zxtD+RLVs/YslZ2CXfQCxl85rtzDVNzjC+uNZCREmG1HcHGEOHOqvHTO6OEbOQpNiEx1bNgetxPhr
	95zVnAnkwalpgrXFtg1pYm7NghMeLv6r4TsVSE7eSQszMqAWOLpynQbLaTAh5ZDOa7wa5HR9b55AT
	T7pqJx62gpotSO12LP+ge5ZDdln6MpQJkHbI/mNvAGbUBHhR5xF4NK0EidwV2sGjX4J+U30hvlyXb
	Ol8TlCNwHHmd0TRFqqrzqJlUb12JKuY9gsqlqR0Ro1AWv0RBTVgvikIXzVXJkLqdi+AjGZ2Q2Nrj1
	objriTdxTYuYta1fgq6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkuax-0004GT-9w; Tue, 09 Jul 2019 18:12:03 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkuaj-0004EU-T1
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 18:11:54 +0000
Received: by mail-pg1-x542.google.com with SMTP id f25so9847924pgv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 11:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V9rTJgMykVUW5gRfUWEDbI//Knjbwf3ukGtodkxh/fo=;
 b=Ib8kP9oMyOKVcnaKmSIHd6rHEWZCy37dxMh2409gx7EBVJDKMAwFDcYqFqGzBgpUtZ
 VU8hhKl4BFnaWmKa6ZuW5qF8sd9KCpHVkOHJMmTkLfhRC67PlNc5QeHCwk1RKSFEZfhg
 RIws28WMU8JDV6IX16FkaPswhYoc/H3yTwv51VUTNW/xToHrf0cJ+lQF/kCxTkQ3oLru
 1331wGDxjru01KelnPfhqVbp+Jk7WxLFbKvp0CAftrysStSiwCWEBEfK0kixUwgKWX8B
 XmWENcr/vEpBA6wyJN9eviaR7xxJaZjog2JBokuUmPSG2cILj7vuJp8g+Q5Gk62Pxwd0
 HFPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V9rTJgMykVUW5gRfUWEDbI//Knjbwf3ukGtodkxh/fo=;
 b=gILknNLaaHbHipQNl/KSIkMYCarZwTEJ+k5R5ZpN50Vl/6z+GLqO4C235nzm9UXjDk
 7QlkNDlAb6eZ4EL277GdAI1cg8MjlmC2vY4FPLG3lKX8heupb61LORNoKjmPZEdBXQ7J
 JTve6UR+9PbEQgOgWa0wHDadHraQx5xhRvsm9DSX+ZbvLyaHDE74IjPcv7RTAzq/X2JJ
 PPinC4bLQvhgfhCuqfaXOISt/aw0wYM900XuqZGH26CUVDRgdKXWWR7XlAX9zbByeeSr
 mGHManvvwPBDFfAQB+vl0CSICg7nesHblf9FZkrPw8KnCpJfP/A70vAuIjKdZTPhBTK6
 scpg==
X-Gm-Message-State: APjAAAWQX6D53vEOZwoF+Sz61KifVyrImar4l96OS2lFM29r88T/tYgI
 rJKw/qdD8Tgk7lFAbRvQXxXo+tzpySjYRN2qli9NLg==
X-Google-Smtp-Source: APXvYqyCzXINahX1VlGhs9c/oK3Wfch2QJxcoiaKsuMM7YX+ttAe/oQtJzp/cCY4PXLL09MpDinhSocxbmrKB1E0hCI=
X-Received: by 2002:a65:4087:: with SMTP id t7mr21641518pgp.10.1562695908809; 
 Tue, 09 Jul 2019 11:11:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190708203049.3484750-1-arnd@arndb.de>
 <CACRpkdZO6to2UsJ64FCYi3aOC79PEb9pxOBABBkgcmR_d82dYg@mail.gmail.com>
 <20190709122550.nau44z32valjd5ir@shell.armlinux.org.uk>
In-Reply-To: <20190709122550.nau44z32valjd5ir@shell.armlinux.org.uk>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 9 Jul 2019 11:11:37 -0700
Message-ID: <CAKwvOdnbVFQZNFaZs7Yh4C=OnR8k3CyrRc=NQEQqFvPL=Qo9Vg@mail.gmail.com>
Subject: Re: [PATCH] ARM: mtd-xip: work around clang/llvm bug
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_111149_965115_2CA16D48 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: -14.4 (--------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-14.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Arnd Bergmann <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 9, 2019 at 5:26 AM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Tue, Jul 09, 2019 at 02:17:58PM +0200, Linus Walleij wrote:
> > On Mon, Jul 8, 2019 at 10:31 PM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > > -#define xip_iprefetch()        do { asm volatile (".rep 8; nop; .endr"); } while (0)
> > > +#define xip_iprefetch()        do {                                            \
> > > +        asm volatile ("nop; nop; nop; nop; nop; nop; nop; nop;");      \
> > > +} while (0)                                                            \
> >
> > This is certainly an OK fix since we use a row of inline nop at
> > other places.
> >
> > However after Russell explained the other nops I didn't understand I located
> > these in boot/compressed/head.S as this in __start:
> >
> >                 .rept   7
> >                 __nop
> >                 .endr
> > #ifndef CONFIG_THUMB2_KERNEL
> >                 mov     r0, r0
> > #else
> >
> > And certainly this gets compiled, right?
> >
> > So does .rept/.endr work better than .rep/.endr, is it simply mis-spelled?
> >
> > I.e. s/.rep/.rept/g
> > ?
> >
> > In that case we should explain in the commit that .rep doesn't work
> > but .rept does.
>
> According to the info pages for gas:
>
> 7.96 `.rept COUNT'
> ==================
>
> Repeat the sequence of lines between the `.rept' directive and the next
> `.endr' directive COUNT times.
>
> So yes, ".rep" is mis-spelled, and it brings up the obvious question:
> why isn't gas issuing an error for ".rep"?  There is no mention of
> ".rep" in the manual.

I swear I had looked this up somewhere and found that GNU as and
clang's integrated assembler supported alternative spellings for
assembly directives.  Just checked the manual
https://ftp.gnu.org/old-gnu/Manuals/gas-2.9.1/html_chapter/as_7.html#SEC116
and indeed no mention of the alternatives...must have been looking at
the source...
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 298A3D3A4E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 09:50:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XcmA8X91KKEZnn/TqnXjHUnuIi65KMUGLx0fjcNo8oo=; b=T/dfFV2zPJNxA7
	1r1RQShfLO+vu/GU1pAJbx2VXlT3+rhjIYAysKcRXD0mmpGmjf+1J3cflf7VhgoO5CO8udotZIaBF
	zLlD2ZHVwRJ0dyIBzN9mI8KSxSX/uHvotclY9R5gOQr4KsT3vkr+RIEVbLAS52pZdyCEF4GkrsgGZ
	ydaRuN3ZRyI+IcYMXLwn6UDUrRVyCmjXmwcFWmWI4j2ahBS0cqNCf6WjZiBSp4kh7+/yrqdJ8z2CI
	N7a/VKXopIfCYm4kCOAJojavKmN45qaP1jYl32RLUgd1Vm9yLcqGDKOp/1BrO5qkFvrKOqQIxFXNX
	B1wRpt1ZXFOHV7gVMviw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIpgi-0007Ig-E1; Fri, 11 Oct 2019 07:50:12 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIpgV-0007HQ-7l
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 07:50:00 +0000
Received: by mail-ot1-f67.google.com with SMTP id 67so7199324oto.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 00:49:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9x3/cDB6PwQR0s+Phj11ZK3bUY2nRE9yOnXorXSrffA=;
 b=CYpYVtPxJRR3LiBaxDSAOQru4xnprl+K6iQA5ZIYRAeu7Ex00wHkpWnUaE3rThCPT+
 zxmm9Z8fN2VQRums/H6uyB12Suh+9OtAWW2dwKsXzhY30idKJklJPiilpDS+U44Vk9hZ
 mv0sSglkAPS4cFzSjVji7tx0wpKx4FdXgXDhgDxl6+b9pegMJscvrxe/MlVJ40qZBRc6
 EZCw7ScjN33PcdG1tBXGZ0aGYd0W5ia998HRzybHPbscxi3oSVncLsHvyiwws40p27Pu
 1JhKZrqbFMJHhAxkPiHoVB86IS/cfluPowAvuuRacK6FVqYZ/nh9iY4oU8eTLjQwOEmt
 sXaw==
X-Gm-Message-State: APjAAAVI+JjRP+za1OXEVDhkr+0KnIJJ+MuuOI7YXHypl1n4uXPQfCHI
 lTIOSw2SmC2x0+H1cUvWVHephQp/o8OLD6Ofqzc=
X-Google-Smtp-Source: APXvYqzJCUSr68IdNnXRm+PcuWp7xfU4DRvosjpGQ70mELArtPXAo+zUfEKqQC0cweLEsachiHT5ajqOtTTMdIKhbv4=
X-Received: by 2002:a05:6830:1685:: with SMTP id
 k5mr11303222otr.250.1570780198260; 
 Fri, 11 Oct 2019 00:49:58 -0700 (PDT)
MIME-Version: 1.0
References: <20191011000609.29728-1-keescook@chromium.org>
 <20191011000609.29728-13-keescook@chromium.org>
In-Reply-To: <20191011000609.29728-13-keescook@chromium.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 11 Oct 2019 09:49:47 +0200
Message-ID: <CAMuHMdW24azYFyoYwsYZKG685KS+a1H6L3v96BVcG2uBJoqnLw@mail.gmail.com>
Subject: Re: [PATCH v2 12/29] vmlinux.lds.h: Replace RO_DATA_SECTION with
 RO_DATA
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_004959_371319_FDB675F7 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Linux-Arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Michal Simek <monstr@monstr.eu>,
 the arch/x86 maintainers <x86@kernel.org>,
 "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>,
 linux-c6x-dev@linux-c6x.org, Arnd Bergmann <arnd@arndb.de>,
 linux-xtensa@linux-xtensa.org, Michael Ellerman <mpe@ellerman.id.au>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Borislav Petkov <bp@alien8.de>,
 Parisc List <linux-parisc@vger.kernel.org>, Andy Lutomirski <luto@kernel.org>,
 alpha <linux-alpha@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rick Edgecombe <rick.p.edgecombe@intel.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 2:07 AM Kees Cook <keescook@chromium.org> wrote:
> Finish renaming RO_DATA_SECTION to RO_DATA. (Calling this a "section"
> is a lie, since it's multiple sections and section flags cannot be
> applied to the macro.)
>
> Signed-off-by: Kees Cook <keescook@chromium.org>

>  arch/m68k/kernel/vmlinux-nommu.lds  | 2 +-

For m68k:
Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

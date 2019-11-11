Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A514EF7951
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 17:58:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/E4oR1Cuz+eRHLz/838cvbrthG9h9owSpoHWJ4AByAY=; b=T5CJSDISpJWqwG
	L3N8u3INgW35PJ6naZIoZ3JCrmxifdNwrVWa5V7S46svj9C1Ey1BSceZyzmRp3Gr0uqR6zU1sg2r2
	EmYScjSrR414WzwSIUOWMjnoxWbWUQJTXyXjvMkpkUVCRAp3IhVkl9tzRHA2aQTK0WGsJjbz8DRIJ
	VYE7oCZZtPeadxIxd1v4rVMiiXjGk+d4CsYalIxb+FZvZmbg4GVruMdx9NOFqKE7vLm3w1hL5puCn
	uIAgCzEmClwmJB1HVQl5h+x1ND2NBQURFUjx2hCKdi9iT4wZQytsE4tdLxfA8lNv+CTLndgWOvxxw
	0oCjr0Qvv0yiqB98lFmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUD1G-0005Eh-P5; Mon, 11 Nov 2019 16:58:26 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUD18-0005EI-Do
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 16:58:19 +0000
Received: by mail-oi1-f194.google.com with SMTP id 22so12090913oip.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 08:58:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N5Vcj3yE2rkXP4doP0O2V7gRihUnv+nSjX4pf/13Rw8=;
 b=Ued1IOp89uIlM5/o6VXExKIJ5CLmvM1rrCq0dt39JiFOg5FtMYtsEZa0uwyPe+HZPS
 BcHJ0wGuGexvSCOgi7hhO70OIi6n8uRkGoiarqMTA+2gGXe9sBgeRHFUHAQyzfztAmSM
 p1qjBczspuLrkOYT8YyEG/aDIBve7x9lGiS12e9ss9xoYEkyp8fc1FMVGbO6NdijsXk6
 UIB2UducsqL429QuF+witeKIoDTJUiYWGlERVYrAV7FfRQ5w2cq6ZdGiMIwjDXTJ+WmY
 VklsdkTYzZn9uhDL8gMT4TSXyFI4pwYN66gNwflxNHEkInlZpzNdeo2I9LWKu40lU+sW
 uwxg==
X-Gm-Message-State: APjAAAV017/E7NWPYdcOZeMlfqzla/VURpD5j6VdLdwz+1SqvY3RiEsT
 CgCHDovxousHLLgpdDPMZivHlWxjr1Mt1atdVfE=
X-Google-Smtp-Source: APXvYqy/vMjYcYeqIvTqdLd5GGnLez7ZmWGDKl5AqUc+6PF8GisVTiuTjJisyx2dw7CZpTj+GRrxuJBIdtOSyrbYjfw=
X-Received: by 2002:aca:fc92:: with SMTP id
 a140mr23499698oii.153.1573491497306; 
 Mon, 11 Nov 2019 08:58:17 -0800 (PST)
MIME-Version: 1.0
References: <20191011000609.29728-1-keescook@chromium.org>
 <20191011000609.29728-12-keescook@chromium.org>
In-Reply-To: <20191011000609.29728-12-keescook@chromium.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 11 Nov 2019 17:58:06 +0100
Message-ID: <CAMuHMdXfPyti1wFBb0hhf3CeDSQ=zVv7cV-taeYCmDswMQkXPQ@mail.gmail.com>
Subject: Re: [PATCH v2 11/29] vmlinux.lds.h: Replace RODATA with RO_DATA
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_085818_466855_E551800C 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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

Hi Kees,

On Fri, Oct 11, 2019 at 2:07 AM Kees Cook <keescook@chromium.org> wrote:
> There's no reason to keep the RODATA macro: replace the callers with
> the expected RO_DATA macro.
>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/alpha/kernel/vmlinux.lds.S      | 2 +-
>  arch/ia64/kernel/vmlinux.lds.S       | 2 +-
>  arch/microblaze/kernel/vmlinux.lds.S | 2 +-
>  arch/mips/kernel/vmlinux.lds.S       | 2 +-
>  arch/um/include/asm/common.lds.S     | 2 +-
>  arch/xtensa/kernel/vmlinux.lds.S     | 2 +-
>  include/asm-generic/vmlinux.lds.h    | 4 +---
>  7 files changed, 7 insertions(+), 9 deletions(-)

Somehow you missed:

    arch/m68k/kernel/vmlinux-std.lds:  RODATA
    arch/m68k/kernel/vmlinux-sun3.lds:      RODATA

Leading to build failures in next-20191111:

    /opt/cross/kisskb/gcc-4.6.3-nolibc/m68k-linux/bin/m68k-linux-ld:./arch/m68k/kernel/vmlinux.lds:29:
syntax error
    make[1]: *** [/kisskb/src/Makefile:1075: vmlinux] Error 1

Reported-by: noreply@ellerman.id.au
http://kisskb.ellerman.id.au/kisskb/buildresult/14022846/

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

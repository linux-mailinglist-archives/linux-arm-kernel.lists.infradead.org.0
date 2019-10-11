Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26571D3A46
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 09:49:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZOXNeS4IP3KgrYhfxHI4C3AXk8Vbvf/G/IkALZB8wes=; b=Yg1DOI0M8FthLI
	j3w64j3LXvqoasYYVAhVyz1oL/2TTeIe6Dnunio79v3r6pPvYThBMdK8f7MUQ11fMpr5irVGaAgbD
	68XO13GG7eNHdcRGg1nqDJkgWfkQimmftqSeRryxPWgdF2Haj6pDZ/3wN0ae76k8T01fDwOQe/aN0
	z+6YFtZu8C1c71ZnHdtq5KHF54dzror2F43bn0I37YdapaX0IgoDikJpoVVRtC2Hg5kB4Yr6QFZlY
	TQ+pRxq3e11sm0/LmHVwQxl35IM6CJkmF/6BevGNE+TqA36akcdDUIgxviJlFTGVgUOeepTN79Sds
	IwwSanfwL6NwiMDlxcrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIpg3-0006w7-TX; Fri, 11 Oct 2019 07:49:31 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIpfw-0006vA-29
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 07:49:25 +0000
Received: by mail-ot1-f67.google.com with SMTP id 89so7165637oth.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 00:49:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cXN+zRgmCQohqXmd61dtsclsBrxaUdjkWuLDpZ7x1eg=;
 b=HFzosCG0fjtDLijuOiQkCjKceK4+V9Dxr1G85AbFXFnxT1n+WGp/dzWmbjVqLSPO4W
 2XBPRg/XhdmLk98MthkUOv72XNnALtaHW/Fh2vhePcFLAfFAt8J/+VNiIMOuiwpIWVQE
 v82oug7jWYO9H2Bo1dwwCWl/0juAyK7QPicxcM9Czk6qgumhLPPnzCaKJY2758sWmpVk
 HIzs7hfvpNNPxHWJVkk6aaCldSVwMELPA2VJ+g+NoMBw7woar+a9L38Qa/jYOhB1v3sJ
 mQTtRxyOdwGsQUWAARHy0hpr+kbc6MLYf2H+AUMSZutGnCCVjKfmzk58Zgr31LB+84//
 vkkg==
X-Gm-Message-State: APjAAAWCUqV98JB8XI89A9ajg52LfdOjC0CRjiTPFgE+u2m50qzqsAKC
 atpfX4U5PQoSVcgExJCEBU6ISp4HGwuF0VYr45rWuA==
X-Google-Smtp-Source: APXvYqwqVxfC2cNUYKhwcqXPFeJg2d1bFBSsmVLGAXW7oEd6d1E5TBDxF8h/vtJ2zwm35tbMgZpLEGXynIDHXf1hv80=
X-Received: by 2002:a05:6830:1544:: with SMTP id
 l4mr3638195otp.297.1570780163122; 
 Fri, 11 Oct 2019 00:49:23 -0700 (PDT)
MIME-Version: 1.0
References: <20191011000609.29728-1-keescook@chromium.org>
 <20191011000609.29728-14-keescook@chromium.org>
In-Reply-To: <20191011000609.29728-14-keescook@chromium.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 11 Oct 2019 09:49:12 +0200
Message-ID: <CAMuHMdXiSboG2xum0ZgjpwBxEaP-owywvPpmUubr1nuqzDPJ4Q@mail.gmail.com>
Subject: Re: [PATCH v2 13/29] vmlinux.lds.h: Replace RW_DATA_SECTION with
 RW_DATA
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_004924_106291_ECD1D5CB 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
> Rename RW_DATA_SECTION to RW_DATA. (Calling this a "section" is a lie,
> since it's multiple sections and section flags cannot be applied to
> the macro.)
>
> Signed-off-by: Kees Cook <keescook@chromium.org>

>  arch/m68k/kernel/vmlinux-nommu.lds   | 2 +-
>  arch/m68k/kernel/vmlinux-std.lds     | 2 +-
>  arch/m68k/kernel/vmlinux-sun3.lds    | 2 +-

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

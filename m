Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D66F51AC705
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 16:48:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TdNd56vzOkbvszbav6JATf0Jx4HMs/rr8wzrRO8v4Fk=; b=h3wrD92cyJ3L2V
	fhQnkFG5L2q65G4d+XqvXQnx6HYkrg/SXY4w9GySbokmLmw4lyVdFRhfYrh/gNYHCgkzWqWAOhfZw
	J0sFIlQBKbcw+mbSfYubO9PFdRx4cDtgPuiFEdJIypPaXzFS0M8iPkasy/7A9F2mrppUj/FJFd5jU
	jGqYfyJewE5pRHVhgwo06DgGbJ0SR3hsTUO1BqhyXkL+YX2z/SG+QLFSfD+TQleF9P8Yg7ZYbCqis
	OHd0GywXiuACLZInJbeA2Qs9DW2+yeyuQ/MuP559uY7P5neNA3Nbqt/NzXfebCltQhZEzwbMRvL5H
	E/m7/voC00oq+H743gxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP5ob-00027C-0n; Thu, 16 Apr 2020 14:48:29 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP5oR-00025s-0e
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 14:48:20 +0000
Received: by mail-qt1-x841.google.com with SMTP id 71so16524029qtc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 07:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=hqU3RukC+Wcy1beI5mHwFrne2ji8Zyuh2QqLhWnxtHQ=;
 b=fTo8UcmsXD7A4NEtK3NfBs49RNNLGi8bxg8SWycx2D/czAgWIQTTGo/VvyAmQ+0fYs
 kx+EfbJ7RyO56KbIZfrC5aCoJdh6TyLnlrfjp0NCPwAw6S57AU11ThPuH9nJQCdmG3H5
 dno7C3cer5UF4qIRAtg6tbFzFUPOZW7qfQntg6Cfe8S44N+OOUjhpylckOpPTPsxmKlX
 jiFwa3EbZgVlr/ngN8+zDaANiyc3pwcm5y4QmI055bj8g5IB7mHGaE7B09V3keALJFfJ
 7pUq8YICJvXL4P4/T4M2D19LkyOmkaPtzLHVqgwuqOB3dNezlTF8uWqEf/cJy+97EaNa
 xG9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=hqU3RukC+Wcy1beI5mHwFrne2ji8Zyuh2QqLhWnxtHQ=;
 b=cFVFUxwG19eN9B1ULMPt5WLmzNUJ/ES0h3Nk6RHyLjjQ+z/C2tgYBdmvDOzLh/kBrx
 Oam0qzchmopuX/goTZvyAc01E2dCUmkjjwxu5OFxmYl9SuLfPrvaE6M8JISQz5UXcmwn
 CmRyIJFv6g0pasGYhKfKajGUPgiWBFFpbBCT7FBXkhpAeNbI1MoihlU5VHNZ1g1ANsHQ
 xTGVSumIuci+g3ebpqoGsLVCn7n9E8K3/kDe5rwCLwYlECzq7oQKJ0E6IkZSNU+ReQjG
 EfsOK4PQ2PGb9KXJdeZgups/i2hZLDedxQ9Qn+hs9Dm3UCaXuIp4iZrF/lycQS7UNDfl
 iTvQ==
X-Gm-Message-State: AGi0PuZU4jf3NOV+yAbaa28D4tnuxKUCETu2vcyrAv4cDzuTOgoU/0xw
 FaBz30rkIZ6BhVncTGOIDPQ=
X-Google-Smtp-Source: APiQypJ9bGDSqwPsZ0XN/Iu2gtQIYZ2l4vmi9YmWye0Bcsk+dfXSmqg2MkX3IQZo0l71xMCmebXclg==
X-Received: by 2002:aed:3bf2:: with SMTP id s47mr15097558qte.126.1587048497317; 
 Thu, 16 Apr 2020 07:48:17 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
 by smtp.gmail.com with ESMTPSA id o7sm2584717qkh.76.2020.04.16.07.48.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 07:48:16 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
X-Google-Original-From: Arvind Sankar <arvind@rani.riverdale.lan>
Date: Thu, 16 Apr 2020 10:48:15 -0400
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH 5/5] efi/x86: Check for bad relocations
Message-ID: <20200416144815.GA3267283@rani.riverdale.lan>
References: <20200415221520.2692512-1-nivedita@alum.mit.edu>
 <20200415221520.2692512-6-nivedita@alum.mit.edu>
 <CAMj1kXFMMeYUPirY10JJfs31Z5GnHvUe=gLgG6SUJY9uWj588g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXFMMeYUPirY10JJfs31Z5GnHvUe=gLgG6SUJY9uWj588g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_074819_079854_982A4CBE 
X-CRM114-Status: GOOD (  20.26  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [niveditas98[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [niveditas98[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-efi <linux-efi@vger.kernel.org>, X86 ML <x86@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Arvind Sankar <nivedita@alum.mit.edu>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 09:38:36AM +0200, Ard Biesheuvel wrote:
> On Thu, 16 Apr 2020 at 00:15, Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > Add relocation checking for x86 as well to catch non-PC-relative
> > relocations that require runtime processing, since the EFI stub does not
> > do any runtime relocation processing.
> >
> > This will catch, for example, data relocations created by static
> > initializers of pointers.
> >
> > Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> > ---
> >  drivers/firmware/efi/libstub/Makefile | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> > index 0bb2916eb12b..2aff59812a54 100644
> > --- a/drivers/firmware/efi/libstub/Makefile
> > +++ b/drivers/firmware/efi/libstub/Makefile
> > @@ -96,6 +96,8 @@ STUBCOPY_RELOC-$(CONFIG_ARM)  := R_ARM_ABS
> >  # .bss section here so it's easy to pick out in the linker script.
> >  #
> >  STUBCOPY_FLAGS-$(CONFIG_X86)   += --rename-section .bss=.bss.efistub,load,alloc
> > +STUBCOPY_RELOC-$(CONFIG_X86_32) := 'R_X86_32_(8|16|32)'
> 
> This should be R_386_xxx

Oops. I tested 64-bit but not 32-bit. I'll fix.

> 
> > +STUBCOPY_RELOC-$(CONFIG_X86_64) := 'R_X86_64_(8|16|32|32S|64)'
> >
> 
> ... and in general, I think we only need the native pointer sized ones, so
> 
> R_386_32
> R_X86_64_64

Ok.

> 
> >  $(obj)/%.stub.o: $(obj)/%.o FORCE
> >         $(call if_changed,stubcopy)
> > @@ -107,16 +109,14 @@ $(obj)/%.stub.o: $(obj)/%.o FORCE
> >  # this time, use objcopy and leave all sections in place.
> >  #
> >
> > -cmd_stubrelocs_check-y = /bin/true
> > -
> > -cmd_stubrelocs_check-$(CONFIG_EFI_ARMSTUB) =                           \
> > +cmd_stubrelocs_check =                                                 \
> >         $(STRIP) --strip-debug -o $@ $<;                                \
> > -       if $(OBJDUMP) -r $@ | grep $(STUBCOPY_RELOC-y); then            \
> > +       if $(OBJDUMP) -r $@ | grep -E $(STUBCOPY_RELOC-y); then         \
> 
> ... which means we don't need to -E either
> 
> >                 echo "$@: absolute symbol references not allowed in the EFI stub" >&2; \
> >                 /bin/false;                                             \
> >         fi
> >
> >  quiet_cmd_stubcopy = STUBCPY $@
> >        cmd_stubcopy =                                                   \
> > -       $(cmd_stubrelocs_check-y);                                      \
> > +       $(cmd_stubrelocs_check);                                        \
> >         $(OBJCOPY) $(STUBCOPY_FLAGS-y) $< $@
> > --
> > 2.24.1
> >
> 
> Could we fold this into the previous x86 patch, and drop the one that
> splits off the relocation check from stubcpy?

Will do.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

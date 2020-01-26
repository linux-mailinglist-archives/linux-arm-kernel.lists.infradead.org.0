Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3EC0149B2D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Jan 2020 15:46:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LKOKi3UNMBqbS5JmxM+/Q5sWTZhTPyF6rROfX07HdSk=; b=YHr1DhiGEFTEKG
	dfQYerDLITObTWOOEBtjS3cjoQEUhmbCeHhRLApRhMze0KsfOf7KmKPNVzvsBQ3I6HbXoBEi6LdaY
	eU0GChf0qMOPijTQT16ewZGbq8miEg6Kupdrv0XdQ0+A94sk4Y03ym7wq6bqOaudoGPbDUM28eokG
	+FSkv/BePbxLRx85c2PGrJVC1RuLAl9BM06y+XtJFeBwg7Pc341ECcn0dq846l3aQQsEoZsO01u4S
	fZHF2cTxR58p7HAbAHtXfpppY5t7IrLJoDYwF8KnPU2doY2OVqhsxs73TnGZ6jztTtJTuC47gi5Uc
	SpIjCkrUnlZMB1i5E3NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivjBM-0005d0-O8; Sun, 26 Jan 2020 14:46:36 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivjBA-0005cJ-5P
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Jan 2020 14:46:26 +0000
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com
 [209.85.217.44]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id 00QEk7xj008837
 for <linux-arm-kernel@lists.infradead.org>; Sun, 26 Jan 2020 23:46:08 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 00QEk7xj008837
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1580049968;
 bh=fCthRo0/YJRQgvkizewWNyrw0PVZqlII4545je2IhAU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=UfObZ6aaBOvpQxUV4HCStJkY7mlysX6K+nF718dbWIsek4AQ76PzZVggi9PcfEfSM
 5wkFtIxojJGLmnM61SqYZlxmaSSa1egQvMOD/QHabeBITqAPy9Su4LgdvU7g5XfV1V
 K2kQqLtU/NXZ4r8+mFuRD9IHA3rxbdoheGAINnz5+KwIHnEQZgOjVuA6kTzvBsL5sS
 9McBMD9XfHGBoGg9ZH04h897UemIpHh8o+JnSvdJCn6jHw1Vhfdr+MhHFqci8K/LLO
 Y/78qqReBIA0T7T88xoBELZ10ykODEooO2P4d0dwmj1Hsu2ZNRtAWel93pyr4EqpEN
 anlY0xFOW6SSA==
X-Nifty-SrcIP: [209.85.217.44]
Received: by mail-vs1-f44.google.com with SMTP id g23so4110641vsr.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Jan 2020 06:46:07 -0800 (PST)
X-Gm-Message-State: APjAAAU3BZyyGMN3DnUPAcOQ17PLb3vFwZQ+9pI6KUbmNK63cixTIJ0m
 UAsQxf0L8SIN4QUTEVGGEIB1NzqQL9eCVljTX3s=
X-Google-Smtp-Source: APXvYqzSQrV5PfcGwsfFavYwzivPXa1mG8tgMLvyHTUINQEiUPNfOKGj8QrkpK9+OfdNYYr1Xa+PbTjLiPDyGN7EdTI=
X-Received: by 2002:a05:6102:3102:: with SMTP id
 e2mr7469669vsh.179.1580049966609; 
 Sun, 26 Jan 2020 06:46:06 -0800 (PST)
MIME-Version: 1.0
References: <1579774839-19562-1-git-send-email-amit.kachhap@arm.com>
 <1579774839-19562-16-git-send-email-amit.kachhap@arm.com>
 <CAKv+Gu-r4d1bBNJK0BZAX=b2+SDqMztAHx+cpq1dxB2q8O1YJA@mail.gmail.com>
 <0640c3c6-8b5f-8c29-692c-a9acdda01a6c@arm.com>
In-Reply-To: <0640c3c6-8b5f-8c29-692c-a9acdda01a6c@arm.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sun, 26 Jan 2020 23:45:30 +0900
X-Gmail-Original-Message-ID: <CAK7LNAShhOCpdoVveQ1C1VupDEYOv2UJp4iSTnyyFQ=eTko+uw@mail.gmail.com>
Message-ID: <CAK7LNAShhOCpdoVveQ1C1VupDEYOv2UJp4iSTnyyFQ=eTko+uw@mail.gmail.com>
Subject: Re: [PATCH v4 15/17] kconfig: Add support for 'as-option'
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_064624_554602_D9B3B2CC 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.80 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 23, 2020 at 7:52 PM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:
>
> On 23/01/2020 10:30, Ard Biesheuvel wrote:
> > On Thu, 23 Jan 2020 at 11:22, Amit Daniel Kachhap <amit.kachhap@arm.com> wrote:
> >>
> >> From: Vincenzo Frascino <vincenzo.frascino@arm.com>
> >>
> >> Currently kconfig does not have a feature that allows to detect if the
> >> used assembler supports a specific compilation option.
> >>
> >> Introduce 'as-option' to serve this purpose in the context of Kconfig:
> >>
> >>         config X
> >>                 def_bool $(as-option,...)
> >>
> >> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> >> Cc: linux-kbuild@vger.kernel.org
> >> Acked-by: Masahiro Yamada <masahiroy@kernel.org>
> >> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> >> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> >> ---
> >> Changes since v3:
> >> *) Changed the assembler option to -c instead of earlier -E.
> >> *) Added Masahiro Acked-by.
> >>
> >>  scripts/Kconfig.include | 4 ++++
> >>  1 file changed, 4 insertions(+)
> >>
> >> diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
> >> index d4adfbe..c4b4424 100644
> >> --- a/scripts/Kconfig.include
> >> +++ b/scripts/Kconfig.include
> >> @@ -31,6 +31,10 @@ cc-option = $(success,$(CC) -Werror $(CLANG_FLAGS) $(1) -E -x c /dev/null -o /de
> >>  # Return y if the linker supports <flag>, n otherwise
> >>  ld-option = $(success,$(LD) -v $(1))
> >>
> >> +# $(as-option,<flag>)
> >> +# Return y if the assembler supports <flag>, n otherwise
> >> +as-option = $(success, $(CC) $(CLANG_FLAGS) $(1) -c -x assembler /dev/null -o /dev/zero)
> >
> > Did you mean '-o /dev/null' here?
> >
>
> No /dev/zero because otherwise I get a warning that says that I am trying to
> compile an object into the same file.
>
> If I invert /dev/zero and /dev/null this trashes the compilation. It took me a
> while to get the right combination.


What compiler produces such a warning?
GCC? Clang?




--
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF87B3D3D2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 19:18:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lLG9OIwWbQJrpCie0Pz1IUGhjTpKkbJpH9AN7Wa00RI=; b=QuNSfNnFs6yHFG
	oBe98oql3fNcZfuFDPof6XMq4UVYodszCBUtbWEamXB8neYybm6wnYAAkuNcQ9GqxwzWlBfoBN6ZX
	zobcSKFQX5ZmEWHOi3tFDx+qr38SBvm6aVvodGStpk4QxCxc4XWycL3thgfGMOl4SGHVAgT4JHPWr
	jxwcyNl0kFsIWDS7mnXE1PGNc7zfmOsd6DVnafgkw1eGkQKbu5/Fgq25VSERQ+p4TgBF6ivpe84l/
	ZMSsle0bsqK0L3jrNftJVmGIAOInHpuxvCzS8OpIReXvht7NDitVpfDu4A7JniGvw8fmJkVjfEPYi
	tax/zjH7MfoSmdrHPPXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hakPp-0001eS-2a; Tue, 11 Jun 2019 17:18:33 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hakPZ-0001cQ-9v
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 17:18:21 +0000
Received: by mail-pf1-x443.google.com with SMTP id m30so7319754pff.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 10:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cRK7dSJ9ozXpkMag7XMLUlUKlJp+YVQsFuMywlLYIIY=;
 b=b9zA6Ql86DPqQkTp5i0i6v7MtDOq0tAACNbJiToG/gsWM88lOHPNTLEE2A75D2FKoO
 SaTGSkkdbkFjBHB6V7dNy3yNl8DW1iE0pnw0WmGXH9zKr6DLv5bE7mRA4LdyIllbpD/D
 KcrOvJfjpWiyccNOyNMsy4lUx+9EWF4+Rz1owvnwBXs022X3zquKp/rp+skYCj68ppuI
 s9oCX7Or8ik9oAg9pTuxoIFV/Q0kJ7gPx7GPxqYH4vPwX3SSd1Ma3tHuV9GC8yXrZkiY
 8Msdnuz2aqf5gojfEQ2ZtoCfHhj+2CsKFVVs7asqO5iLhZbFI9QDBNBmCP2d56v0+z1i
 p9EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cRK7dSJ9ozXpkMag7XMLUlUKlJp+YVQsFuMywlLYIIY=;
 b=g4k+I5IxIdDK296IESma3D2XzMumeFOvCq93JvwFa46LKudxmUEIuxUZeHhK/85T54
 tA/LDAcNVW8RCRgdL20YqJCrTEfQjvpohCrOGT3i9A9pHuq9IwmwKiz9E4rnI7HJD9Hx
 T8obuPN5aBpH4EpwuPShl2EFTU7MTp1skufYbae58a+RfVbpSPXxFFXrJGcspC6+AEH3
 9EEU3abkDziSlTSLmUutlr8XLr90gBr3XeYIuAcmJd3wXltRMCD2yN1Yyhezpf9WTKrF
 o0kO8/SCClSJNNsjjAveOyvFSb//OWj6ErUGCK3AS5FOXbKZipl+KGEduKPXIDOEbNNm
 orBQ==
X-Gm-Message-State: APjAAAUHxoaSmbqOmI0gjgOn+cLT4UD4ltBcKoLWoCMS2IUAh5lf8i6s
 kOKlnZr5AxHwZaB66fGXB4xDLrkxoqh7yY2Wns9BZsGEnMc=
X-Google-Smtp-Source: APXvYqwTIY2/OtCAe2ytKIYqGY3omJlioSYHG1JrmGnaMaDG0e9TwsYGQisqOCiIuCpfggd2Tzz2lgNj29c+F+rHVNg=
X-Received: by 2002:a17:90a:2488:: with SMTP id
 i8mr27381746pje.123.1560273495783; 
 Tue, 11 Jun 2019 10:18:15 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1559580831.git.andreyknvl@google.com>
 <9e1b5998a28f82b16076fc85ab4f88af5381cf74.1559580831.git.andreyknvl@google.com>
 <20190611150122.GB63588@arrakis.emea.arm.com>
In-Reply-To: <20190611150122.GB63588@arrakis.emea.arm.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Tue, 11 Jun 2019 19:18:04 +0200
Message-ID: <CAAeHK+wZrVXxAnDXBjoUy8JK9iG553G2Bp8uPWQ0u1u5gts0vQ@mail.gmail.com>
Subject: Re: [PATCH v16 16/16] selftests, arm64: add a selftest for passing
 tagged pointers to kernel
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_101820_085441_87487512 
X-CRM114-Status: GOOD (  18.29  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match 0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 Khalid Aziz <khalid.aziz@oracle.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 5:01 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Mon, Jun 03, 2019 at 06:55:18PM +0200, Andrey Konovalov wrote:
> > This patch is a part of a series that extends arm64 kernel ABI to allow to
> > pass tagged user pointers (with the top byte set to something else other
> > than 0x00) as syscall arguments.
> >
> > This patch adds a simple test, that calls the uname syscall with a
> > tagged user pointer as an argument. Without the kernel accepting tagged
> > user pointers the test fails with EFAULT.
> >
> > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
>
> BTW, you could add
>
> Co-developed-by: Catalin Marinas <catalin.marinas@arm.com>
>
> since I wrote the malloc() etc. hooks.

Sure!

>
>
> > +static void *tag_ptr(void *ptr)
> > +{
> > +     unsigned long tag = rand() & 0xff;
> > +     if (!ptr)
> > +             return ptr;
> > +     return (void *)((unsigned long)ptr | (tag << TAG_SHIFT));
> > +}
>
> With the prctl() option, this function becomes (if you have a better
> idea, fine by me):
>
> ----------8<---------------
> #include <stdlib.h>
> #include <sys/prctl.h>
>
> #define TAG_SHIFT       (56)
> #define TAG_MASK        (0xffUL << TAG_SHIFT)
>
> #define PR_SET_TAGGED_ADDR_CTRL         55
> #define PR_GET_TAGGED_ADDR_CTRL         56
> # define PR_TAGGED_ADDR_ENABLE          (1UL << 0)
>
> void *__libc_malloc(size_t size);
> void __libc_free(void *ptr);
> void *__libc_realloc(void *ptr, size_t size);
> void *__libc_calloc(size_t nmemb, size_t size);
>
> static void *tag_ptr(void *ptr)
> {
>         static int tagged_addr_err = 1;
>         unsigned long tag = 0;
>
>         if (tagged_addr_err == 1)
>                 tagged_addr_err = prctl(PR_SET_TAGGED_ADDR_CTRL,
>                                         PR_TAGGED_ADDR_ENABLE, 0, 0, 0);

I think this requires atomics. malloc() can be called from multiple threads.

>
>         if (!ptr)
>                 return ptr;
>         if (!tagged_addr_err)
>                 tag = rand() & 0xff;
>
>         return (void *)((unsigned long)ptr | (tag << TAG_SHIFT));
> }
>
> --
> Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

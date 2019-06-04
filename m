Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 594A0345E0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 13:48:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Na/lHezoEpzVUiuZW4EHim6lBEZ1mnK66EC5i8/wP2U=; b=J0aggYkzjxa+Yn
	oQ6XZ8XIJQab0MYEMoOUuPOR0yAPN8CheXwZBa8Nmla1sQISaOuHlSfZMBkHAFcN+fFk74qZ+WwOb
	rXkA1bTCPN+oUwJv1b2pEKwJOY3bO2zglPYeo7vlODLGmqMJsiNBN2nSj21tBIhHd/4coLCXCg9WC
	wG1rnnHZu593TskWHPzWUhw/1yx+YZL8w5NfqQk6jW6kbd8kvUN+VCJn/9qu+4x7mHxQDJEW82qDV
	bzK5wRMY2gd9qgjrfCmlqUvaxm9GpxY5INZOxejVfLVhNomAp/De5r6Fh337U/WypcgqOUUIqbtJe
	BVO2+4xm/qtH8lhW0r+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY7vS-0001Gc-SG; Tue, 04 Jun 2019 11:48:22 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY7vM-0001GI-0c
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 11:48:17 +0000
Received: by mail-pl1-x642.google.com with SMTP id s24so8107211plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 04:48:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=l2lS9VXn0JOV0lrkvQPMmgSCO4r5DeMFb6G5blm/uF4=;
 b=M0DMlRQ1HKA6D9NAO0V2sm9/zYZWP+1XOjmn59ytz8n46FHwdaWXM0RmDqecELc0CD
 TyAtpGjsaLf78y28sMV5XpDdzqWkQFoLrG4JmKyB20v3AEUSZ84vFCfbahAnJbBWXTDe
 lxvooM2Tt/ajz9LaLc0YFyhDIwwZ9gPW/77cWnoFBFeW1WjBXUTE7GfRa1ThVQOHuo3s
 shP14wPYTEXFgEfcuub9qa9DcYA4fCTl4CLVznhqf/cR8S79aYCO7GCHb7p1YqEQltrO
 AQzjJKwTGzxdh+F0Gnq7lZoTrHue4pLf6ckipB1C17pl/cPtDze5tQgEM9+9n2jZCGGY
 dHSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=l2lS9VXn0JOV0lrkvQPMmgSCO4r5DeMFb6G5blm/uF4=;
 b=H2t2WAorDsIIEDJL4mb3HAqF7vXhkAPE9ad+ME9k6uXuvgj1vdESAsc5vxIV253z1c
 3TO/v5dCoogCAlKNoIC4SB1HEoVRcY7gvhj7N/+4+cpRyX6lSzausHv0Ijz5Ni76RoDR
 UwxLDE8OQzRc5poJKcBYMozgmC7mteuKmYjGxI+Fnq5Z1Jv4EYrf7jSAXgv/+5hI9kDz
 5KgtNjFz06bKjJYKnN8sy7uYnkkxiYk7TAKWQL4+oMdUk51vmW0qsWrlSwWYJFSggNoU
 UycA1ObXOr7xR9vQxxq+yBWlbvcrTEiGiP7n/CARESId2zwxkrn5ZaZl5/+m+AS2q5hJ
 RNUw==
X-Gm-Message-State: APjAAAW74qzhPm9x97GwzeSNzkxiT5FSr9Hy2cPxZCF+yMHgBpJOqgwb
 1PlrgAUOfhTLkY4JnVRq4gjT6OwpJiQ/DGBBJ5tyCk0/Tfs=
X-Google-Smtp-Source: APXvYqx7WlqCkdGPKLutoMBA66Kuwfxftr7iVGYrBeMeyQalyPFL29VhCLInmdVTRNyRVDkjn2/lP008/BVA4p3Szd8=
X-Received: by 2002:a17:902:bc47:: with SMTP id
 t7mr24049646plz.336.1559648895074; 
 Tue, 04 Jun 2019 04:48:15 -0700 (PDT)
MIME-Version: 1.0
References: <8ab5cd1813b0890f8780018e9784838456ace49e.1559648669.git.andreyknvl@google.com>
 <d74b1621-70a2-94a0-e24b-dae32adc457d@amd.com>
In-Reply-To: <d74b1621-70a2-94a0-e24b-dae32adc457d@amd.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Tue, 4 Jun 2019 13:48:03 +0200
Message-ID: <CAAeHK+w0_9QdxCJXEf=6nMgZpsb8NyrAaMO010Hh86TW75jJvw@mail.gmail.com>
Subject: Re: [PATCH] uaccess: add noop untagged_addr definition
To: "Koenig, Christian" <Christian.Koenig@amd.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_044816_088561_A2799474 
X-CRM114-Status: GOOD (  18.93  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Khalid Aziz <khalid.aziz@oracle.com>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>, "Kuehling,
 Felix" <Felix.Kuehling@amd.com>, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Lee Smith <Lee.Smith@arm.com>, "Deucher,
 Alexander" <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 4, 2019 at 1:46 PM Koenig, Christian
<Christian.Koenig@amd.com> wrote:
>
> Am 04.06.19 um 13:44 schrieb Andrey Konovalov:
> > Architectures that support memory tagging have a need to perform untagging
> > (stripping the tag) in various parts of the kernel. This patch adds an
> > untagged_addr() macro, which is defined as noop for architectures that do
> > not support memory tagging. The oncoming patch series will define it at
> > least for sparc64 and arm64.
> >
> > Acked-by: Catalin Marinas <catalin.marinas@arm.com>
> > Reviewed-by: Khalid Aziz <khalid.aziz@oracle.com>
> > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> > ---
> >   include/linux/mm.h | 4 ++++
> >   1 file changed, 4 insertions(+)
> >
> > diff --git a/include/linux/mm.h b/include/linux/mm.h
> > index 0e8834ac32b7..949d43e9c0b6 100644
> > --- a/include/linux/mm.h
> > +++ b/include/linux/mm.h
> > @@ -99,6 +99,10 @@ extern int mmap_rnd_compat_bits __read_mostly;
> >   #include <asm/pgtable.h>
> >   #include <asm/processor.h>
> >
> > +#ifndef untagged_addr
> > +#define untagged_addr(addr) (addr)
> > +#endif
> > +
>
> Maybe add a comment what tagging actually is? Cause that is not really
> obvious from the context.

Hi,

Do you mean a comment in the code or an explanation in the patch description?

Thanks!

>
> Christian.
>
> >   #ifndef __pa_symbol
> >   #define __pa_symbol(x)  __pa(RELOC_HIDE((unsigned long)(x), 0))
> >   #endif
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2387234630
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 14:05:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DYV2wGUaMM6Hau6JKG6FUjne2QdSXWufRqhFiAP8yc0=; b=QWKkRVjs24W0XU
	753LoRsfoFcHxcqxBBRNJ+gcwQt1bvDEkf1yPDMNFK3dacjr0EKS/yJNx1AMFVFa/UH7KETKkag6d
	80H58SNEsfjIDeA9BxAZw6lXvXqIiwS37oDxwAgktBSXoJ9+/w80I5XtjmFvACwO2VqjpX+3mp8PB
	rVKgcNgwNbhFhRFQPkK3AWLCjMHsOnOtEbP15sZy5sUnC3rlWMGtSF1mgN1hvi7/8H8rcDycu+AF8
	CSbJ160mOdhYJicjlwa1+ovE5XgslQr978CNoLViEUt2ip2GlZIsvBboNbMxWI9MIcJte0YxIJnS4
	q401HYQ8i6M1ngDxFGow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY8C8-0000lA-S4; Tue, 04 Jun 2019 12:05:36 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY8C0-0000jN-SA
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 12:05:30 +0000
Received: by mail-pf1-x442.google.com with SMTP id c85so3774116pfc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 05:05:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j34LYUoJM4InkQPNFKh7Ow4BYIjL6/oVFRsfu7DIJqw=;
 b=Q1qaT6guKN0cVPZ3I7m80z+l8td98w2uqIqeYi7AFZlLfwx0G3uMrYBq/J+BmnmOkM
 atOxQZO2OZRPqsjN3jqBQv44CvwjPmxvlTBcPKmMi6XjoZEmV/fygK5lB45wakW1x509
 lWKLza5Yda4CAzzaQyvI+9jrqysNJKJVvTJhllwO+UsWDQVgevJunQ8PW4WiDuXWRUXU
 7jLII5xQ27xFuA+YQ/J9v/BCfFu0O+m0Eo51qSbf6BhnxxvgwoGoytsvTWBHtF3OYNCG
 5xAYIJ3eDxoQdAcL8X0Di1QghLFbw2D39YI3GMMqxvSPlDl32yI9DfA4EynC+NBnx3BM
 Md2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j34LYUoJM4InkQPNFKh7Ow4BYIjL6/oVFRsfu7DIJqw=;
 b=HZhytcbZRsZsMu/FH4U7EmanYwUfauoErcXL3lUBe7C57CVo5iDEyrsFOCbm7HJa1p
 3aMt9wDxsg0nWqVXvFF9yRCIVIZbc8ouapLLHVz+utzHABdpEDh1le9fLcKqo8dyYTUe
 U24aNK4rRjSwwOOdZ+eNvh+0ZpZDfI3jysNuChURghPig3MQEReYzj9IQTfNWDwkGHLU
 X5CcWIqZDb4AovW8nfiOvttOw0ekTlZUvo1PYODbMj++ccP8LWs7oLUMwFK/SHj3aqOm
 44BJpZo9dypp5nJNkhe/OZ3pjUHs/l2gD7mRfO0cdPBytvrHRuegW0ulBQm/J9JhfTy1
 Xn6Q==
X-Gm-Message-State: APjAAAWjJWI/ld32E7/r0V8tm3H2anWgdh1P5gUBFAdq/yph9ZluiOKY
 +Ey4q9U+7x1Nvih29HRJWq1dKZSwjVSdMzSfM9jD+w==
X-Google-Smtp-Source: APXvYqwvrt39xcYJfCMZYMz7iLhPbel6HsvYFhEAa8PCAaMa5qdXOZSee+ccpu58h4UkbZo4zcE90xOl7nDE7Qf6Y+o=
X-Received: by 2002:a17:90a:2488:: with SMTP id
 i8mr28700584pje.123.1559649927361; 
 Tue, 04 Jun 2019 05:05:27 -0700 (PDT)
MIME-Version: 1.0
References: <8ab5cd1813b0890f8780018e9784838456ace49e.1559648669.git.andreyknvl@google.com>
 <d74b1621-70a2-94a0-e24b-dae32adc457d@amd.com>
 <CAAeHK+w0_9QdxCJXEf=6nMgZpsb8NyrAaMO010Hh86TW75jJvw@mail.gmail.com>
 <ff73058a-f57b-526b-af53-c0e30b7b1bc1@amd.com>
In-Reply-To: <ff73058a-f57b-526b-af53-c0e30b7b1bc1@amd.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Tue, 4 Jun 2019 14:05:16 +0200
Message-ID: <CAAeHK+wfNbNz_AP8c4PqcpWXuLxx23D1coY0SS5ORM_tUewNFA@mail.gmail.com>
Subject: Re: [PATCH] uaccess: add noop untagged_addr definition
To: "Koenig, Christian" <Christian.Koenig@amd.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_050528_909023_5600ECCC 
X-CRM114-Status: GOOD (  18.34  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

On Tue, Jun 4, 2019 at 1:49 PM Koenig, Christian
<Christian.Koenig@amd.com> wrote:
>
> Am 04.06.19 um 13:48 schrieb Andrey Konovalov:
> > On Tue, Jun 4, 2019 at 1:46 PM Koenig, Christian
> > <Christian.Koenig@amd.com> wrote:
> >> Am 04.06.19 um 13:44 schrieb Andrey Konovalov:
> >>> Architectures that support memory tagging have a need to perform untagging
> >>> (stripping the tag) in various parts of the kernel. This patch adds an
> >>> untagged_addr() macro, which is defined as noop for architectures that do
> >>> not support memory tagging. The oncoming patch series will define it at
> >>> least for sparc64 and arm64.
> >>>
> >>> Acked-by: Catalin Marinas <catalin.marinas@arm.com>
> >>> Reviewed-by: Khalid Aziz <khalid.aziz@oracle.com>
> >>> Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> >>> ---
> >>>    include/linux/mm.h | 4 ++++
> >>>    1 file changed, 4 insertions(+)
> >>>
> >>> diff --git a/include/linux/mm.h b/include/linux/mm.h
> >>> index 0e8834ac32b7..949d43e9c0b6 100644
> >>> --- a/include/linux/mm.h
> >>> +++ b/include/linux/mm.h
> >>> @@ -99,6 +99,10 @@ extern int mmap_rnd_compat_bits __read_mostly;
> >>>    #include <asm/pgtable.h>
> >>>    #include <asm/processor.h>
> >>>
> >>> +#ifndef untagged_addr
> >>> +#define untagged_addr(addr) (addr)
> >>> +#endif
> >>> +
> >> Maybe add a comment what tagging actually is? Cause that is not really
> >> obvious from the context.
> > Hi,
> >
> > Do you mean a comment in the code or an explanation in the patch description?
>
> The code, the patch description actually sounds good to me.

Sent v2, thanks!

>
> Christian.
>
> >
> > Thanks!
> >
> >> Christian.
> >>
> >>>    #ifndef __pa_symbol
> >>>    #define __pa_symbol(x)  __pa(RELOC_HIDE((unsigned long)(x), 0))
> >>>    #endif
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

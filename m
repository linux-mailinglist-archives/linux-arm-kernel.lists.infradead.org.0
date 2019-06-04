Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F51F346EC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 14:35:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=26DS/XTlMD8FzEAF4hzfusZmfpZSIMsrStKDx+PChRU=; b=anlS1xsc8BiTBC
	xaqk13Z0AEfBCP9DtBw0tXQiea9v3CZZXT8XyLKyTn9AmqjZSoGdDH0A3VsOm85CH/BC6yRDIeFQj
	LU8+bSp1p/rPZ/yr+tpehFsGmzoQHkQCqj9no3IeMkNxycFHcDh0bXWH9qCkFBwnIFVMDVOGyF00Q
	2ChxN1blRLULiYyTXqW5/qD3RYtPGZ1TjDrHBeZ+XSB3dTb6KuUvIyOQTkllGHpyIoXWfY7PW3JkN
	1PLAb2Zb98tkiRewaV87xQodF5JBG9ddQmH3CN8VHpcv5pzY8RrWQW692Wmlgczt9wjxLMUmT60G6
	g96/FkTnyWnFOrujeisw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY8eY-0000vX-Lf; Tue, 04 Jun 2019 12:34:58 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY8eQ-0000uc-BA
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 12:34:52 +0000
Received: by mail-pg1-x541.google.com with SMTP id e6so9026855pgd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 05:34:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZHnFmrFfRfh/AvNJyyWOv1fZiunoT+xaBh/4jOpKvTQ=;
 b=sM1mzsQHPWWZHTawBLKWAgVjQThohDWkimAMcbonijyC54y8P2c26E0W2rM2IJY/m8
 LZvg01A94bMj1WlufObeLPkCPFVWlG1fpPGYAusKcJ0h4TSfntoPqPc6/wpa61VjjeSq
 2wxM/o5o0K1ra4b5zRGlQW204mrf6zT/4yMmHX7lBOfDc4OCCgqvd6tNS4U2wlNLMmtL
 bz7UkkIob9zlNFiuzQFjICyejDPOtW4/NuezAc/NufYaEQ9+bPzfXvEC2VUHLxA3jSpg
 zi75erEDlO6/F+f3w/vSf+LFVBb/kHnrW1/Xu0/niwLqlxDvkQELtydqfx7PnZ4+YwSc
 CMGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZHnFmrFfRfh/AvNJyyWOv1fZiunoT+xaBh/4jOpKvTQ=;
 b=i2lK0TshK9uSMfv5yMaxoVF0EqfeVTMLqhqfBAT+REMXLRb7NGP7rOa974G4wdCYdD
 56UdXoXXsgeuTjCpgSJ29albFSiAtqnN3QjO8IOVm/T0znM/QmLWqhuOlDc/E6/f5uHp
 FTMWZWlDwdwGCekYQN1k6pO+zuGQeyG89GnSZdua+yIzpeQUPlpj7ujqJ/VyfYP68wBn
 IcbQCuPaGeKTzaFD/u4KB52Vwi9wTue8asrWYLX7lLk74W7yt64h/9LIql99Crf2U5zW
 QIxiMuw0OqNf581DYIbQ3vqwR3V69JEin65oQpboPhC+4O9rFleL6MvIVbWhNOxNM2hK
 V+Ug==
X-Gm-Message-State: APjAAAXQFxYz4tk0SG/FHPjYPkzlhk9YZXiqgJosyigizT4Wcf542Ld0
 p8m3gS1E/yhfUkD16sOSGqMsStGsG3MZ6PUFs1QGEHPlUILA/w==
X-Google-Smtp-Source: APXvYqwn1SWCI6udsJKomLgM6z7+qFO6mHtKOVLBDx9bpSrAmG/bLquj7gkAYUayFTQJ+Kz6TBw6JcOE/LCE3GzhNkY=
X-Received: by 2002:a62:1c91:: with SMTP id c139mr29991024pfc.25.1559651689157; 
 Tue, 04 Jun 2019 05:34:49 -0700 (PDT)
MIME-Version: 1.0
References: <c8311f9b759e254308a8e57d9f6eb17728a686a7.1559649879.git.andreyknvl@google.com>
 <20190604122841.GB15385@ziepe.ca>
In-Reply-To: <20190604122841.GB15385@ziepe.ca>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Tue, 4 Jun 2019 14:34:37 +0200
Message-ID: <CAAeHK+x0qYsO+P=8pQ6N0nRa4y+N3HWTh4sFaUMM63X3q_QbBg@mail.gmail.com>
Subject: Re: [PATCH v2] uaccess: add noop untagged_addr definition
To: Jason Gunthorpe <jgg@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_053450_840880_9F590F49 
X-CRM114-Status: GOOD (  22.29  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
 Linux Memory Management List <linux-mm@kvack.org>,
 Khalid Aziz <khalid.aziz@oracle.com>, sparclinux@vger.kernel.org,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Dmitry Vyukov <dvyukov@google.com>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 4, 2019 at 2:28 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
>
> On Tue, Jun 04, 2019 at 02:04:47PM +0200, Andrey Konovalov wrote:
> > Architectures that support memory tagging have a need to perform untagging
> > (stripping the tag) in various parts of the kernel. This patch adds an
> > untagged_addr() macro, which is defined as noop for architectures that do
> > not support memory tagging. The oncoming patch series will define it at
> > least for sparc64 and arm64.
> >
> > Acked-by: Catalin Marinas <catalin.marinas@arm.com>
> > Reviewed-by: Khalid Aziz <khalid.aziz@oracle.com>
> > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> >  include/linux/mm.h | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> >
> > diff --git a/include/linux/mm.h b/include/linux/mm.h
> > index 0e8834ac32b7..dd0b5f4e1e45 100644
> > +++ b/include/linux/mm.h
> > @@ -99,6 +99,17 @@ extern int mmap_rnd_compat_bits __read_mostly;
> >  #include <asm/pgtable.h>
> >  #include <asm/processor.h>
> >
> > +/*
> > + * Architectures that support memory tagging (assigning tags to memory regions,
> > + * embedding these tags into addresses that point to these memory regions, and
> > + * checking that the memory and the pointer tags match on memory accesses)
> > + * redefine this macro to strip tags from pointers.
> > + * It's defined as noop for arcitectures that don't support memory tagging.
> > + */
> > +#ifndef untagged_addr
> > +#define untagged_addr(addr) (addr)
>
> Can you please make this a static inline instead of this macro? Then
> we can actually know what the input/output types are supposed to be.
>
> Is it
>
> static inline unsigned long untagged_addr(void __user *ptr) {return ptr;}
>
> ?
>
> Which would sort of make sense to me.

Hm, I'm not sure. arm64 specifically defines this as a macro that
works on different kinds of pointer compatible types to avoid casting
everywhere it's used:

https://elixir.bootlin.com/linux/v5.1.7/source/arch/arm64/include/asm/memory.h#L214

>
> Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

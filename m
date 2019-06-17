Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68249494B1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 00:00:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=luIF22FETCSPvq1o1q1mzEY/Aj5igO9F4v7BtIqQpXw=; b=os7osn2Yp6RZvJ
	41DtsKj8KlDcMDn20Y85ZSYmOgmoaebvSA2m1DeRJFWe1zwvSORgjVMFyOWpLnqKuEvVeE3+9G4sc
	aG4mhY2fsqSu5wzZv9V08PzW3bnFwG3BpCFsWS+ZLB+dwtgTGnJqXno813prIxJgRysgoEJHLTOtu
	cYZAUyvWTEINv5UdC3kL3UZBw7AwEndX9mNQShDG3aE39MWG+5TU5t2NKl78ia4914TcvWqnpdy0s
	csHI66ve9PXgVphxWfORtHTJeXUNJzTigm1ddrvXh75EYyWaemSh6IVm3AxzNYJE7IjSWnMnM/T/c
	pgORzw8BsyFyWBavtKpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hczfR-0004ar-9s; Mon, 17 Jun 2019 21:59:57 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hczfD-0004EK-F2
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 21:59:44 +0000
Received: by mail-ua1-x944.google.com with SMTP id s4so4135751uad.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 14:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EAhatab0HAVyw+PnT7+3nUVy3uXQEI6O1vd8Cnx2LKk=;
 b=kvgoo1AWJ53ectZxNh7vumo7uHVF3ezzA+dmS6OCiyHy7q38adiyo8Mt48b9s1ecuS
 8vbgSWAHi7F66ZbJb0OnnHkka0SZfIdhx44ptJvkStf7KSPyjOUktnOEWU+P5uVTHP64
 eN+AH0Y198g5GhXwzgWWBTwbfohtVJT/rFQhRmBXLkxVDGhPtni3s7vOLmfSoppPuiMS
 fw+6xL0t8nIg9W/VqAlmea2Xi/QAMj43r70NCnqPKdZOQ+k2pXu+G5fUMaRe8zFdt2fk
 JWWQc2NJ/zMPTaMg9M5+VHQpiaQGfqqosa4YWPSG3qztsQIxZrsszWUCVKNg2vbMMWht
 a6XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EAhatab0HAVyw+PnT7+3nUVy3uXQEI6O1vd8Cnx2LKk=;
 b=Ozwm1GLNeWeVShYR6qORtFglualYWXsrROD9FJY3DqO67E97S72mkCaU7xaWDo8R2Z
 kBv+QSZAyL1oe7A+HPvpB/q6pMBk9JyRpXSoLqetceSERALZ1ULa8V9JpF7gWKdeW2vg
 /1pUXEKg2gaZZ1SJwCh197aczinM9mYHCYlzILgJyFjmx2s+GGVvPFksdhVRXKyUPtA/
 9JkQ9X5R8D5jZShG4V89A3XxsBQBjLGar9q5SqbpzwxxSB/6cBPdc2Ge7alawHj6VgXk
 zElZZ+v9t1N5gaUbZMsWCrVRNWLXU7fggPzKc6kV3lLuJ8gVVL5B1AD1hk1NGzAVB9B4
 g7lw==
X-Gm-Message-State: APjAAAX3IWO5kyxfQUJycxhwhl8rK/RdkG46ZeI31FxjTMWwjxIGa3we
 PJYK+j8OlTkTIFpLDmwVxZUky6RCdaOIokI9sEi3bQ==
X-Google-Smtp-Source: APXvYqx2nWcd1UUVmxVOfqTdpy/EjWGEE63D+8CgDq6wsvkYXGUtTG/eldJ/84K4uXpb1xaJ0VQplOCTsiiUpsYmcEg=
X-Received: by 2002:ab0:234e:: with SMTP id h14mr10788176uao.25.1560808781025; 
 Mon, 17 Jun 2019 14:59:41 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1560339705.git.andreyknvl@google.com>
 <a7a2933bea5fe57e504891b7eec7e9432e5e1c1a.1560339705.git.andreyknvl@google.com>
 <20190617135636.GC1367@arrakis.emea.arm.com>
 <CAFKCwrjJ+0ijNKa3ioOP7xa91QmZU0NhkO=tNC-Q_ThC69vTug@mail.gmail.com>
 <20190617171813.GC34565@arrakis.emea.arm.com>
In-Reply-To: <20190617171813.GC34565@arrakis.emea.arm.com>
From: Evgenii Stepanov <eugenis@google.com>
Date: Mon, 17 Jun 2019 14:59:29 -0700
Message-ID: <CAFKCwrhuQ+x-KprJV=CPCrnQR9Ky9qL=M5q_pa3fGj27oo4mng@mail.gmail.com>
Subject: Re: [PATCH v17 03/15] arm64: Introduce prctl() options to control the
 tagged user addresses ABI
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_145943_540220_AC115ECE 
X-CRM114-Status: GOOD (  21.75  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 linux-media@vger.kernel.org, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
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

On Mon, Jun 17, 2019 at 10:18 AM Catalin Marinas
<catalin.marinas@arm.com> wrote:
>
> On Mon, Jun 17, 2019 at 09:57:36AM -0700, Evgenii Stepanov wrote:
> > On Mon, Jun 17, 2019 at 6:56 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > > On Wed, Jun 12, 2019 at 01:43:20PM +0200, Andrey Konovalov wrote:
> > > > From: Catalin Marinas <catalin.marinas@arm.com>
> > > >
> > > > It is not desirable to relax the ABI to allow tagged user addresses into
> > > > the kernel indiscriminately. This patch introduces a prctl() interface
> > > > for enabling or disabling the tagged ABI with a global sysctl control
> > > > for preventing applications from enabling the relaxed ABI (meant for
> > > > testing user-space prctl() return error checking without reconfiguring
> > > > the kernel). The ABI properties are inherited by threads of the same
> > > > application and fork()'ed children but cleared on execve().
> > > >
> > > > The PR_SET_TAGGED_ADDR_CTRL will be expanded in the future to handle
> > > > MTE-specific settings like imprecise vs precise exceptions.
> > > >
> > > > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > >
> > > A question for the user-space folk: if an application opts in to this
> > > ABI, would you want the sigcontext.fault_address and/or siginfo.si_addr
> > > to contain the tag? We currently clear it early in the arm64 entry.S but
> > > we could find a way to pass it down if needed.
> >
> > For HWASan this would not be useful because we instrument memory
> > accesses with explicit checks anyway. For MTE, on the other hand, it
> > would be very convenient to know the fault address tag without
> > disassembling the code.
>
> I could as this differently: does anything break if, once the user
> opts in to TBI, fault_address and/or si_addr have non-zero top byte?

I think it would be fine.

> Alternatively, we could present the original FAR_EL1 register as a
> separate field as we do with ESR_EL1, independently of whether the user
> opted in to TBI or not.
>
> --
> Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

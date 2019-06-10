Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E26213BD90
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 22:36:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lK55zFRYqpB0y01uDnesj5PXDp8MHx80o0sH9xuhGv4=; b=nhBgTox7xy5prI
	gENkKO3ShYaOHUwj3OH5OFKs6td71zuOQClz4FdQHdpr7Ht0pWHdK71/XFCynl2Ry+COujV8uNrAX
	kMQmi+uUEHN+dsB2mFygx/MY+GudKG0APAmXxfVGtQKF0ao1CdVkKlhctD93KiQp6a1jDn0ZzQjMQ
	4DhUbuB9hygXG6lek3nJTTat9YMYTUuE2Ukh+OflSbkLxjTEFvuyLAx3zu6ReR/RwPoMhTLUy2Hax
	ZEwzOcYpILlg5ayURDlwFr+ibSnzmvTzLTWxif9RixPtyvgLIrA/I4yoIdKNs3ERfIE3VvHo6+7RW
	Rnr1i/bfnu8xglPuG7ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haR1l-00082i-9x; Mon, 10 Jun 2019 20:36:25 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haR1S-00082L-Re
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 20:36:08 +0000
Received: by mail-pg1-x544.google.com with SMTP id 196so5635846pgc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 13:36:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=QIiaElKbYG7X2iRY6VXsdeM4+31zgx4vPIFfu4hUJug=;
 b=aypLgRrX0btLwkQ78UmSd30OW9UF0AUZJnAd3r2/5HqpTZB7t9pPjkr79taehwRSBe
 Uf3LjKJsRGeyWW7niEs4BHLmd/27Tp++YcV8xUIXVrHXkWkhfr39ad2bGk73/2ccXpRd
 Krrfs143htc/xGI+Ppm9VimNWGnjKhQyxh//k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=QIiaElKbYG7X2iRY6VXsdeM4+31zgx4vPIFfu4hUJug=;
 b=FQKuorIuvG0vK9ESqqoL4CMmL6OKh6mBEwgYT4u3I6gnDOzUEh5VV4lG8gbLoeSVKG
 Kd0PQfDuDu7B3F9tsWPXDNYXuXtm9GGpsvDE2duOzVljQUXF170S7M/T+0IeSV/mO9C4
 lx9wk66QvHL7dg+aw0PU5bDVP5fEiS/sSDwWdSPrOygyyWPBvpoKiGGYvGDlIBBw0Mx1
 phhegN/wNDndL0fdykXHNHUjtQS6RlUKrAludxKhUFR6DqViU0qD5BVL7k+MDMKQyBwy
 d6iUQP/hHVThSMBMs15By3fSIHd5S4rvW3TOgjneE/i1pb40PmdqayYhonVuzjR8r9/I
 5mVw==
X-Gm-Message-State: APjAAAUjwq8YQ++eP7GLi4EGBeR4aJqWzIuMjcZ0zVTJe034v3fnQIS8
 5kx3+sDeJ+TsHAeX9r5+iJFtFQ==
X-Google-Smtp-Source: APXvYqz36v1zCKX0GRWb534Z9an9udGHI/NESxPlvuGqVOMCrwC97gsWY6mXQoFhLwcNndoWLde2ZA==
X-Received: by 2002:a62:1b85:: with SMTP id
 b127mr76850297pfb.165.1560198965895; 
 Mon, 10 Jun 2019 13:36:05 -0700 (PDT)
Received: from www.outflux.net
 (173-164-112-133-Oregon.hfc.comcastbusiness.net. [173.164.112.133])
 by smtp.gmail.com with ESMTPSA id k22sm11148457pfk.178.2019.06.10.13.36.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 10 Jun 2019 13:36:04 -0700 (PDT)
Date: Mon, 10 Jun 2019 13:36:04 -0700
From: Kees Cook <keescook@chromium.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v16 02/16] arm64: untag user pointers in access_ok and
 __uaccess_mask_ptr
Message-ID: <201906101335.DF80D631@keescook>
References: <cover.1559580831.git.andreyknvl@google.com>
 <4327b260fb17c4776a1e3c844f388e4948cfb747.1559580831.git.andreyknvl@google.com>
 <20190610175326.GC25803@arrakis.emea.arm.com>
 <201906101106.3CA50745E3@keescook>
 <20190610185329.xhjawzfy4uddrkrj@mbp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610185329.xhjawzfy4uddrkrj@mbp>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_133606_928317_6FE2772D 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Khalid Aziz <khalid.aziz@oracle.com>, linux-kselftest@vger.kernel.org,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, linux-kernel@vger.kernel.org,
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

On Mon, Jun 10, 2019 at 07:53:30PM +0100, Catalin Marinas wrote:
> On Mon, Jun 10, 2019 at 11:07:03AM -0700, Kees Cook wrote:
> > On Mon, Jun 10, 2019 at 06:53:27PM +0100, Catalin Marinas wrote:
> > > diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> > > index 3767fb21a5b8..fd191c5b92aa 100644
> > > --- a/arch/arm64/kernel/process.c
> > > +++ b/arch/arm64/kernel/process.c
> > > @@ -552,3 +552,18 @@ void arch_setup_new_exec(void)
> > >  
> > >  	ptrauth_thread_init_user(current);
> > >  }
> > > +
> > > +/*
> > > + * Enable the relaxed ABI allowing tagged user addresses into the kernel.
> > > + */
> > > +int untagged_uaddr_set_mode(unsigned long arg)
> > > +{
> > > +	if (is_compat_task())
> > > +		return -ENOTSUPP;
> > > +	if (arg)
> > > +		return -EINVAL;
> > > +
> > > +	set_thread_flag(TIF_UNTAGGED_UADDR);
> > > +
> > > +	return 0;
> > > +}
> > 
> > I think this should be paired with a flag clearing in copy_thread(),
> > yes? (i.e. each binary needs to opt in)
> 
> It indeed needs clearing though not in copy_thread() as that's used on
> clone/fork but rather in flush_thread(), called on the execve() path.

Ah! Yes, thanks.

> And a note to myself: I think PR_UNTAGGED_ADDR (not UADDR) looks better
> in a uapi header, the user doesn't differentiate between uaddr and
> kaddr.

Good point. I would agree. :)

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

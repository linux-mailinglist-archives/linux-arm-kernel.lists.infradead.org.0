Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 924F842380
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:09:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YOk/j0kWDHCB/GGsc81Tggtp5fd7bOpUNhJAoy0XmvA=; b=hPhuGg2gvT0GKL
	+OjkKCAD40JeLqnaxwXK3mhjklJ7QdYkUdpwLoOEFWw9Wh1Er0Dt6184l81dvqQAHb0hAfZrFNqgw
	0bfUUB8hqLXMND6OXfjzBNFU33qtpuaYv9DjnpxYE+DjuEDYrBEAkiMbhSQRFJB3zsjWVRrONRlO6
	9pLWJ9GH4/Z4GzO4P6bBwMqWEobXzgwAZlLo4xyLossRwZqqctutDEjF4/hCLYh3uJcDUkamY6JYG
	5AaSiryE+A7ZHNO5i/X/Jxs/kgDSONakEk9O6I5QLRx1SyTKvM8lK3c8tUt5IkTS3+3tlVqT/NS8P
	IAN0cPcXyhKH3JeZpAPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb17i-0003Jl-B7; Wed, 12 Jun 2019 11:08:58 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb17X-0003J7-GJ
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:08:48 +0000
Received: by mail-pg1-x541.google.com with SMTP id v11so8746424pgl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 04:08:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w620wCIkG8GXS/KYH0IDoZ7ej5kJ3WmWx8LtN+LbTUQ=;
 b=VggNUJ7a0brq2Ev6nAJQqO2O72gohucw8zeY5YtHck9VQOLSeh4HE1gegC/6IXwwZQ
 yGU57RiXcKZXz6rEKzU45Xf6W2ce+VRfcbyLnBuDiGAB0WY+oQBhpKyfWyvJoxfZX9DP
 yh5EZsvMAI815IqL/1YdyEKkghoO2fuJKDAzd5Q9y/OjjRwPS+GPbIwNDHqKiLuIYdn3
 FS/k/NQyAktrRCCDybeyESanVpXbjmTwdROU2U/U+lx1nc+kfxYxbzF+ximhp+/PoGPk
 LddaTqB/qiSjwgqbl0KdSRDedqW9qTDDWoaJfcFucWGR/PYqdZ87SzwkAPpr4TVyN7Wo
 N3Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w620wCIkG8GXS/KYH0IDoZ7ej5kJ3WmWx8LtN+LbTUQ=;
 b=XsK2zCmO1JbhmTz1ZkTMpUvwIHdNBLPdP4P/sOf352YS1R8zELq3XLq5FQ5eng5vRY
 1r4rR47X0LPAZuxVrk1xJg003rYGXZ2FD5fX/XZ7HT92lKXupbqQdyEoJ/9i33HcFvPo
 IFBzlt4Ym6fE7ISaIAqVzHNowiUcqKkT7A+s4OdCe7SGgb3xM3vJ2z/mDzFXzUnfthGS
 YujAx2BjmO6hNZJuwts8rBwTxHwmsesQ9jrjpHJSWIHQCb7wIuOQAgYHVNyO4kPHaG21
 Ntg0GMAPbDXIsuDjhuQTkuNaAneDQUc6Z9qJ1sA+YseJjS73YhowAFpNRk0/s+md7hgz
 emYQ==
X-Gm-Message-State: APjAAAUaGBgGmYixuFMZe9YxoIdjz1ERIQnpxWKTxgW1Cnmn/QV3l+Bi
 3lTp4JbUr6NVZN0GDnWTN8XEyiQkY2LFzwWB4Ik4TQ==
X-Google-Smtp-Source: APXvYqxvUwlKkJ1D0n5ZAgi1aKr005PngCLgks22Vr4JdWsBWlki9wY2M2Qsc1xcmNb71INK9Pq98aEQaKS4b6HnOls=
X-Received: by 2002:aa7:97bb:: with SMTP id d27mr18449962pfq.93.1560337726555; 
 Wed, 12 Jun 2019 04:08:46 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1559580831.git.andreyknvl@google.com>
 <e410843d00a4ecd7e525a7a949e605ffc6c394c4.1559580831.git.andreyknvl@google.com>
 <d0dffcf8-d7bf-a7b4-5766-3a6f87437851@oracle.com>
In-Reply-To: <d0dffcf8-d7bf-a7b4-5766-3a6f87437851@oracle.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Wed, 12 Jun 2019 13:08:35 +0200
Message-ID: <CAAeHK+yTmU9Vz0OB4b7bcgjU3W1v6NFxgpiy4tud7j0AHXkwtw@mail.gmail.com>
Subject: Re: [PATCH v16 04/16] mm: untag user pointers in do_pages_move
To: Khalid Aziz <khalid.aziz@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_040847_569464_073AD972 
X-CRM114-Status: GOOD (  19.29  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
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

On Tue, Jun 11, 2019 at 10:18 PM Khalid Aziz <khalid.aziz@oracle.com> wrote:
>
> On 6/3/19 10:55 AM, Andrey Konovalov wrote:
> > This patch is a part of a series that extends arm64 kernel ABI to allow to
> > pass tagged user pointers (with the top byte set to something else other
> > than 0x00) as syscall arguments.
> >
> > do_pages_move() is used in the implementation of the move_pages syscall.
> >
> > Untag user pointers in this function.
> >
> > Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
> > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> > ---
> >  mm/migrate.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/mm/migrate.c b/mm/migrate.c
> > index f2ecc2855a12..3930bb6fa656 100644
> > --- a/mm/migrate.c
> > +++ b/mm/migrate.c
> > @@ -1617,6 +1617,7 @@ static int do_pages_move(struct mm_struct *mm, nodemask_t task_nodes,
> >               if (get_user(node, nodes + i))
> >                       goto out_flush;
> >               addr = (unsigned long)p;
> > +             addr = untagged_addr(addr);
>
> Why not just "addr = (unsigned long)untagged_addr(p);"

Will do in the next version. I think I'll also merge this commit into
the "untag user pointers passed to memory syscalls" one.

>
> --
> Khalid
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12581705AA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 18:46:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EsiTQZrOtxmDRNcFFNnrabc2Vyfa8WUe7SvHS4gOX2A=; b=CWL1yvW7OV8srL
	UJvpMjjrm8Qy1dCwXX19RF9rI2dUof1JZoMkH643i79EkDh1Nl/Z5SfK1wf5Z1y8LlTx/eCMICAZy
	b6RJjE46sdNflyrfNnjZl32/qfUscVsTeROgaUz0zNdVfJIOL7T49Coiwz5ug8g2UHsYxO84zjAbY
	CnG8WcmXUdFvwNACeKutAug1wxcBAt8x8/OeLUT89ZVNCa6iZ1MvXJzVZRTIh+MDffLVo2BcKCxd+
	d5TbaAnUtuqPmDNoAYQiKBzRl6mapkCWah4oupf4EyfvhNCTwGVWgP4DaJtq75PqoQs6irMQkq9/L
	zxp8Q/2kUST5V95+i5Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpbSL-00032c-JZ; Mon, 22 Jul 2019 16:46:33 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpbRx-00031l-Hg
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 16:46:10 +0000
Received: by mail-pg1-x543.google.com with SMTP id u17so17927330pgi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 09:46:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=F8BugWPvgcU2u1kFFZKMyP/IOkg4/qodeykECt+PCWA=;
 b=VX6SSuVoSHuo5NAioif+DJtSSs1RJl179j5hlo4DTfAYF66Jgcx0vpiJB8eR+9HEL8
 +f/45Mc4lQN3jKnZezfzKg+yOPAVpcviTazcgmREFQYvaP41eWd/rYtiTmOP5jut4IGW
 UsbCxeU7Nx57xcR3YkKPrTzMk7AWS/2VcXYuY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=F8BugWPvgcU2u1kFFZKMyP/IOkg4/qodeykECt+PCWA=;
 b=sLNODjIWpLl5EIEaSQc6inVJ+rE8FOx57zGCOok+txtsxuog268g2Mi2SKQD8vklVi
 HDEAs+JP7guIWhZ0ewC6owraF+6YG9kCUtopfGs41k/2c4iFyhenR47fQ6+A5JEupo0T
 BYO/h2m7gNF4Zc1GeE3C2W5TeAahbKGmTBespiU3BROAHtHe1wsnfKlgIB1B/qqxoUR5
 ipzTcMb9FaUM+v85ULr+hYFMLjARcSJNTrWKqWKbun+XUkfwWlsXGJnwXomCbQ3nnMEs
 UxLMPzTK4Gcft0JeClF+eQK//5/J6GxN/AN771o9N+JNATJbhKzUTXV5VwlqMcVOIu4V
 FXnw==
X-Gm-Message-State: APjAAAWjkHyshwjdV0eoz9e7A5hgQXpze0DRzFo2S1VbSLJsQ94y1aru
 f9EomVc0VwTbKjZNZeRhvwMj2Q==
X-Google-Smtp-Source: APXvYqzl1okfrN5zPZDspTEQta/i5+YABh20qrSg3GL1AN5406TswuRoR6v+V+I5B+11TbFoYh/o0Q==
X-Received: by 2002:a17:90a:ff17:: with SMTP id
 ce23mr77676431pjb.47.1563813968675; 
 Mon, 22 Jul 2019 09:46:08 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 4sm48411440pfc.92.2019.07.22.09.46.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 22 Jul 2019 09:46:07 -0700 (PDT)
Date: Mon, 22 Jul 2019 09:46:06 -0700
From: Kees Cook <keescook@chromium.org>
To: Andrey Konovalov <andreyknvl@google.com>
Subject: Re: [PATCH v18 07/15] fs/namespace: untag user pointers in
 copy_mount_options
Message-ID: <201907220944.5821C92518@keescook>
References: <cover.1561386715.git.andreyknvl@google.com>
 <41e0a911e4e4d533486a1468114e6878e21f9f84.1561386715.git.andreyknvl@google.com>
 <20190624175009.GM29120@arrakis.emea.arm.com>
 <CAAeHK+x2TL057Fr0K7FZBTYgeEPVU3cC6scEeiSYk-Jkb3xgfg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAeHK+x2TL057Fr0K7FZBTYgeEPVU3cC6scEeiSYk-Jkb3xgfg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_094609_589063_442EABF7 
X-CRM114-Status: GOOD (  26.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Khalid Aziz <khalid.aziz@oracle.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Al Viro <viro@zeniv.linux.org.uk>, Yishai Hadas <yishaih@mellanox.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Eric Biederman <ebiederm@xmission.com>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+Eric Biederman too, who might be able to Ack this...

On Mon, Jul 15, 2019 at 06:00:04PM +0200, Andrey Konovalov wrote:
> On Mon, Jun 24, 2019 at 7:50 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
> >
> > On Mon, Jun 24, 2019 at 04:32:52PM +0200, Andrey Konovalov wrote:
> > > This patch is a part of a series that extends kernel ABI to allow to pass
> > > tagged user pointers (with the top byte set to something else other than
> > > 0x00) as syscall arguments.
> > >
> > > In copy_mount_options a user address is being subtracted from TASK_SIZE.
> > > If the address is lower than TASK_SIZE, the size is calculated to not
> > > allow the exact_copy_from_user() call to cross TASK_SIZE boundary.
> > > However if the address is tagged, then the size will be calculated
> > > incorrectly.
> > >
> > > Untag the address before subtracting.
> > >
> > > Reviewed-by: Khalid Aziz <khalid.aziz@oracle.com>
> > > Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> > > Reviewed-by: Kees Cook <keescook@chromium.org>
> > > Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
> > > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> > > ---
> > >  fs/namespace.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/fs/namespace.c b/fs/namespace.c
> > > index 7660c2749c96..ec78f7223917 100644
> > > --- a/fs/namespace.c
> > > +++ b/fs/namespace.c
> > > @@ -2994,7 +2994,7 @@ void *copy_mount_options(const void __user * data)
> > >        * the remainder of the page.
> > >        */
> > >       /* copy_from_user cannot cross TASK_SIZE ! */
> > > -     size = TASK_SIZE - (unsigned long)data;
> > > +     size = TASK_SIZE - (unsigned long)untagged_addr(data);
> > >       if (size > PAGE_SIZE)
> > >               size = PAGE_SIZE;
> >
> > I think this patch needs an ack from Al Viro (cc'ed).
> >
> > --
> > Catalin
> 
> Hi Al,
> 
> Could you take a look and give your acked-by?
> 
> Thanks!

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

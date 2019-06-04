Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58372346AA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 14:27:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qk3G/ED1AzaYpKqmqPGeBqjdER0Ykg/Z0/51Fb9KELE=; b=nUcdriIeSnBKN8
	iVlk2HG9aHxxsFqWXwrtqrMClNHBmjf9j9wWJc826Zo//R8v3rDOyVm+nCF4EIZ+zpJJ0s9ZydyRN
	uC/UhwHYw/QnvDrxGJSjrHIxXDL07nJvBvWW8NlKJqCqG095Lq8CgvD6+lJ4sMUyIdsbbLZtyeebr
	BmgpsflRbTYstkEU3VAmNYD7t99RQCoirk5VLxT1rjdLFwtKIYXZHz4RvI7+nYYUWN4QZPCRis+Ak
	g83UR52PmnkwaR+HJAwAYa2YOp1N1ISNAygn9ZAU+8GKPs2JFqMj7+w5QyPZ0eoyGcbE4Bs0Jslun
	YY0yxciUOPX5fmodhF1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY8XI-0004fR-Bo; Tue, 04 Jun 2019 12:27:28 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY8X8-0004eX-Ly
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 12:27:20 +0000
Received: by mail-qt1-x841.google.com with SMTP id j19so9708856qtr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 05:27:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wnsJg5IBUcpd0uvGih9L7zWjhXAHb1EJO0yOEExZSzo=;
 b=dcNC7UmtypwgYv25SVviVAOUG7URTCQh95rjKD+gc1HkGG0jrMjWKvaHqgOqnkLXCe
 CmoljchytuIVIDVbprMz3tL0S5wF3BfmVPwpXMEcKwEKuopvqQDwmPbpLySBrTe+5P0P
 +zjXSkVABYGjw15OrEI3UNK6X3hEEYJ5lmU4VodgY1OGgetHeu4xf6gu/Drrr5PoUFZD
 NGszqORq933qFqUy4wxVOf9PkDJzNBd6Vt6SxvMrx9KcQhBJruI+UAnsanyndNgyFsW8
 SfJHC+U7tiqZ4PP8CoYnZCXFGYoMymsmvspjQbzELX76TfLMwbqeFyJLFyTuqJIB4Dhp
 ZF+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wnsJg5IBUcpd0uvGih9L7zWjhXAHb1EJO0yOEExZSzo=;
 b=GMIlxi57/9yk+8Y3xW6nhMtJmwnNTGji0098SFEUdIUqWhJNYAkaREjaeUCVpFz0/4
 3U0o33Ml5WQeic41jfsR3OWuPqeH6MBpIvYtDHOPsmig8uCqq5rVh+NFwuueKjcURMN8
 nc3Zo6PRXwdvZ+KHooFzoQSenPnI+Bga6MPG5MxJOjhq3kWP2uhld0K5mwJ2Q2cpW5yl
 SGqw1HN/InYCYlYZdrc5rSUg5LVW3elHKx6BWnHzNwdkApIj8UsYEVpVu7lcUUP7jpAc
 4tpd7qXcTpRCPWAmAQr18MGH+XC5eR1x/AWBl+T7yXrtsWH+DyYsaPz96y9q0yDH4MWL
 03Og==
X-Gm-Message-State: APjAAAWGfDfaQsJdPiq5IM5GsxYCAVJ7sC8n5DcF4DWPsVNsucYaiHll
 ZX4zC6Hr53KL30XM8VO89zXpWg==
X-Google-Smtp-Source: APXvYqyQKZsajkt/gWb5hfUpWdj5TzMt6KfoFh/bz/W6aTLwqi1dm4Rk21CH5MrcGrt3uoh1Lu64hg==
X-Received: by 2002:aed:3a87:: with SMTP id o7mr27583430qte.310.1559651236150; 
 Tue, 04 Jun 2019 05:27:16 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-55-100.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.55.100])
 by smtp.gmail.com with ESMTPSA id c18sm4454633qkm.78.2019.06.04.05.27.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 04 Jun 2019 05:27:15 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hY8X4-000416-LN; Tue, 04 Jun 2019 09:27:14 -0300
Date: Tue, 4 Jun 2019 09:27:14 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Andrey Konovalov <andreyknvl@google.com>
Subject: Re: [PATCH v16 12/16] IB, arm64: untag user pointers in
 ib_uverbs_(re)reg_mr()
Message-ID: <20190604122714.GA15385@ziepe.ca>
References: <cover.1559580831.git.andreyknvl@google.com>
 <c829f93b19ad6af1b13be8935ce29baa8e58518f.1559580831.git.andreyknvl@google.com>
 <20190603174619.GC11474@ziepe.ca>
 <CAAeHK+xy-dx4dLDLLj9dRzRNSVG9H5nDPPnjpYF38qKZNNCh_g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAeHK+xy-dx4dLDLLj9dRzRNSVG9H5nDPPnjpYF38qKZNNCh_g@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_052718_833079_FDDED957 
X-CRM114-Status: GOOD (  25.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 Khalid Aziz <khalid.aziz@oracle.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Dmitry Vyukov <dvyukov@google.com>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 linux-media@vger.kernel.org, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
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

On Tue, Jun 04, 2019 at 02:18:19PM +0200, Andrey Konovalov wrote:
> On Mon, Jun 3, 2019 at 7:46 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
> >
> > On Mon, Jun 03, 2019 at 06:55:14PM +0200, Andrey Konovalov wrote:
> > > This patch is a part of a series that extends arm64 kernel ABI to allow to
> > > pass tagged user pointers (with the top byte set to something else other
> > > than 0x00) as syscall arguments.
> > >
> > > ib_uverbs_(re)reg_mr() use provided user pointers for vma lookups (through
> > > e.g. mlx4_get_umem_mr()), which can only by done with untagged pointers.
> > >
> > > Untag user pointers in these functions.
> > >
> > > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> > >  drivers/infiniband/core/uverbs_cmd.c | 4 ++++
> > >  1 file changed, 4 insertions(+)
> > >
> > > diff --git a/drivers/infiniband/core/uverbs_cmd.c b/drivers/infiniband/core/uverbs_cmd.c
> > > index 5a3a1780ceea..f88ee733e617 100644
> > > +++ b/drivers/infiniband/core/uverbs_cmd.c
> > > @@ -709,6 +709,8 @@ static int ib_uverbs_reg_mr(struct uverbs_attr_bundle *attrs)
> > >       if (ret)
> > >               return ret;
> > >
> > > +     cmd.start = untagged_addr(cmd.start);
> > > +
> > >       if ((cmd.start & ~PAGE_MASK) != (cmd.hca_va & ~PAGE_MASK))
> > >               return -EINVAL;
> >
> > I feel like we shouldn't thave to do this here, surely the cmd.start
> > should flow unmodified to get_user_pages, and gup should untag it?
> >
> > ie, this sort of direction for the IB code (this would be a giant
> > patch, so I didn't have time to write it all, but I think it is much
> > saner):
> 
> Hi Jason,
> 
> ib_uverbs_reg_mr() passes cmd.start to mlx4_get_umem_mr(), which calls
> find_vma(), which only accepts untagged addresses. Could you explain
> how your patch helps?

That mlx4 is just a 'weird duck', it is not the normal flow, and I
don't think the core code should be making special consideration for
it.

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

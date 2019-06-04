Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CEE934779
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 15:02:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BHRSXQ5eIlb3W2/spoQgijIzxP2ojZ/xYUQUIhWOzlk=; b=ixYnPg7GJsB0MP
	4DvpZ3TQ2p4feKEogCzgc2QmYFdAELfkaqr0h1ABYhhr+owwBuPKNmhgJ4urQKNzJK5pOAWodOsjg
	ReZXWa8S4yD6KWUUZzbT3xnUhKOnQHo57pghWGIv8w13/QnDUf0lzDDa4pAqA4Zte4yuyO6gPvGi1
	Nd5P/AG4sqBLUc4UHkqdJheErwmhJcrYqkYey7d5z9+q02W3ATAiubJBJvitl/XmznbvZCDEPXddy
	FipkbajgforIVPIlKVhAHF49Eymcrei/B8EH2RLNiIXfEdQa7PCcGM8nvRfsw9mdnk33o21TZsLCG
	Z1PIn0xNPBLTR1GSY/Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY950-0004Xd-LN; Tue, 04 Jun 2019 13:02:18 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY94s-0004Wd-2j
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 13:02:11 +0000
Received: by mail-qt1-x842.google.com with SMTP id y57so13584683qtk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 06:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ROjiC3s0siagx/fi+MGJXNVgc6kDjODdOY/lcLdmBIY=;
 b=Yjg83FKmLcCoTK1qNZRWt/34Ia4Vlgl4OzEswRBoqTA1q96rWHjxDfVIh6O7xWTGYS
 eTwCJcntFH46Tx+/cfSa7gWeHuAwOuGBn+X1jMdn5S6DRrFvNPM6afZ9JtFGwDFoFWKd
 IItwYcOZFv/0waUdBmD+9vX5g+lauIFC8gWQwZqeWZqiLI8MWTWgKqH10ZguaFNyDwaJ
 a6BouIbR+z5GvWPUxO/910/OPmm0It1HqckTeip+hRX/UhVQAxatTT7lXUHm0zw2yFJW
 DkwJjMsTV0HME+BgheyUHlaQClPbcE8mHooI7fCmf534f4AYixHfdR0GOmoGClDBYuEf
 l/5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ROjiC3s0siagx/fi+MGJXNVgc6kDjODdOY/lcLdmBIY=;
 b=SSSUs99TPwcBwafQLWcEOXR4lQmJDmGd1t8OH4mWwgTVqKXiKFjgN9vf6GOcaAomFw
 4IgvUzSGyLYzZknSwkp9iBHURcAmYiiEyl8q7mYT69vYGzSFhkBS2yg1Sow08cwAFCDF
 gLjlF7uTYiA3RxOSTsujNQMmRkm+VxFh5rbrsflsyJcq4qXBF19o1eFi0mt/hA06cwcQ
 OQ/5hqhDS6gPVPeKd10bpR+bDlh+amSHTQjmFLJruh7HaSm7kmMPc/ME4dPfjhXcnTjM
 VsxoJ7Ou/aBzTAmY9bydA+xdEg2n9Pcm0M/ELZePy5iprvbw0ftYLYPN0/yBSdYINqsN
 9iEA==
X-Gm-Message-State: APjAAAW1yNj0n9QWbIkvs5tKRaVowP0u5vKkyZJLrwrEUaMOrOvhs+dh
 i+nS9hQkjrJlZay9giVA0SYNvA==
X-Google-Smtp-Source: APXvYqz5RimUEjNtxNzzaaY0SoKGmFHRAnKhf0PPTePbHdJhsA1MCZNciExOvF95WwVoO+r2X/Sqlw==
X-Received: by 2002:a0c:c94d:: with SMTP id v13mr706065qvj.211.1559653328976; 
 Tue, 04 Jun 2019 06:02:08 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-55-100.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.55.100])
 by smtp.gmail.com with ESMTPSA id m5sm10984580qke.25.2019.06.04.06.02.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 04 Jun 2019 06:02:08 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hY94p-0004U3-JD; Tue, 04 Jun 2019 10:02:07 -0300
Date: Tue, 4 Jun 2019 10:02:07 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Andrey Konovalov <andreyknvl@google.com>
Subject: Re: [PATCH v16 12/16] IB, arm64: untag user pointers in
 ib_uverbs_(re)reg_mr()
Message-ID: <20190604130207.GD15385@ziepe.ca>
References: <cover.1559580831.git.andreyknvl@google.com>
 <c829f93b19ad6af1b13be8935ce29baa8e58518f.1559580831.git.andreyknvl@google.com>
 <20190603174619.GC11474@ziepe.ca>
 <CAAeHK+xy-dx4dLDLLj9dRzRNSVG9H5nDPPnjpYF38qKZNNCh_g@mail.gmail.com>
 <20190604122714.GA15385@ziepe.ca>
 <CAAeHK+xyqwuJyviGhvU7L1wPZQF7Mf9g2vgKSsYmML3fV6NrXg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAeHK+xyqwuJyviGhvU7L1wPZQF7Mf9g2vgKSsYmML3fV6NrXg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_060210_119881_F70DEB2D 
X-CRM114-Status: GOOD (  29.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
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

On Tue, Jun 04, 2019 at 02:45:32PM +0200, Andrey Konovalov wrote:
> On Tue, Jun 4, 2019 at 2:27 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
> >
> > On Tue, Jun 04, 2019 at 02:18:19PM +0200, Andrey Konovalov wrote:
> > > On Mon, Jun 3, 2019 at 7:46 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
> > > >
> > > > On Mon, Jun 03, 2019 at 06:55:14PM +0200, Andrey Konovalov wrote:
> > > > > This patch is a part of a series that extends arm64 kernel ABI to allow to
> > > > > pass tagged user pointers (with the top byte set to something else other
> > > > > than 0x00) as syscall arguments.
> > > > >
> > > > > ib_uverbs_(re)reg_mr() use provided user pointers for vma lookups (through
> > > > > e.g. mlx4_get_umem_mr()), which can only by done with untagged pointers.
> > > > >
> > > > > Untag user pointers in these functions.
> > > > >
> > > > > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> > > > >  drivers/infiniband/core/uverbs_cmd.c | 4 ++++
> > > > >  1 file changed, 4 insertions(+)
> > > > >
> > > > > diff --git a/drivers/infiniband/core/uverbs_cmd.c b/drivers/infiniband/core/uverbs_cmd.c
> > > > > index 5a3a1780ceea..f88ee733e617 100644
> > > > > +++ b/drivers/infiniband/core/uverbs_cmd.c
> > > > > @@ -709,6 +709,8 @@ static int ib_uverbs_reg_mr(struct uverbs_attr_bundle *attrs)
> > > > >       if (ret)
> > > > >               return ret;
> > > > >
> > > > > +     cmd.start = untagged_addr(cmd.start);
> > > > > +
> > > > >       if ((cmd.start & ~PAGE_MASK) != (cmd.hca_va & ~PAGE_MASK))
> > > > >               return -EINVAL;
> > > >
> > > > I feel like we shouldn't thave to do this here, surely the cmd.start
> > > > should flow unmodified to get_user_pages, and gup should untag it?
> > > >
> > > > ie, this sort of direction for the IB code (this would be a giant
> > > > patch, so I didn't have time to write it all, but I think it is much
> > > > saner):
> > >
> > > Hi Jason,
> > >
> > > ib_uverbs_reg_mr() passes cmd.start to mlx4_get_umem_mr(), which calls
> > > find_vma(), which only accepts untagged addresses. Could you explain
> > > how your patch helps?
> >
> > That mlx4 is just a 'weird duck', it is not the normal flow, and I
> > don't think the core code should be making special consideration for
> > it.
> 
> How do you think we should do untagging (or something else) to deal
> with this 'weird duck' case?

mlx4 should handle it around the call to find_vma like other patches
do, ideally as part of the cast from a void __user * to the unsigned
long that find_vma needs

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFF4347B2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 15:09:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xi2A2jVU5XmwWHwqT6VWzibyXRTVoNf0ksb6ITTeZh8=; b=Cj+m20EDR0ObGq
	nh1z+fZCd6iIRzZ9UaqhmDBvsJMxyHbZeTd4+9K9ng7fH9ekApZ9HGxcrnE2XidOJuuY5WRcwF9pC
	aUDuD80ieuMec85hXLPoxwGQTSEg3fm5ngOPS/vylhBhkSPO7+Lm45odKUrWiNxSVzS4Sjv/AMJyM
	kMSqwe11G7KmeG+dekWvGv445RrgO+NN79QpI13rXwrpAjqw8mQ1IUMwEj/wRx/rUL8lNssHWcpCT
	WOZYcz8WrbaLOvD/eJNBbo54ZXAj24Q9LLi6J8ex4A32Bt+QtdsDgP411DIgWDH78wzqUzwmLNDyt
	iYoImo97gjSCzgn3niAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9CJ-0007XN-57; Tue, 04 Jun 2019 13:09:51 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9CA-0007VS-R8
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 13:09:44 +0000
Received: by mail-pg1-x543.google.com with SMTP id s27so4731899pgl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 06:09:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zBLpk28DZpa5o94Q/0/LiLBGCkVoEs9cAD1KugSM2WY=;
 b=Lkz8dpKPRyddE/5l1SxtFW2tJDVJSIsNFYCOD1eigwQMuFNNmYLAz8pfUb/eNChwZF
 OH2h9RaIuTJvzD4zfwI4In+YKCusdO0C+/wNdpvUvPZXC2iOOrHIqrrS+koi+fxYqD+r
 iK2Zgy43Tahmq3qaqGtP4n+xMyhj8Yk3JvazolAsNKLfjKj1GXO3dAAQy063Hi2tMAsN
 GhJY2yKC3BApNCj1AkvEe/6mz6FyJyIhhdR95z/RQ7El5pARzqaaKppkgNvLbKRJzKwz
 N+Va7sAICkGdL463idSaVxKwCH7V2NZvNaXeQHS+go3oLu7b/Bj32cawMXuwRC+DSWx3
 9rBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zBLpk28DZpa5o94Q/0/LiLBGCkVoEs9cAD1KugSM2WY=;
 b=GfwL4CfLss/JzTbahMhfscvV1ZRYzB68GjhCCgQS/knwIZNXyfiiYxMllCTgWY1M19
 UkEQdRBI6e1EO+YE6WuruguT+A8DAXVas5GWe7D0kKBrigKOMpuHAzIPNW8vTsvT4m1a
 o3BPLG0LNRYdU+NWHBhH3dtDv82oMH6uQ7chC/p6rIylWFh+iN5emrWsbx2dwALdH9L4
 RXgoTEIdynImTUlH1V2Rf0dk70/6BCH3rNitlyNVLSboe6iFbCgUNF2gz6i0f/RJadqi
 IxL5wZddl/Ln9mvnRCutaxQqSfP/JG/+CESECv5YyHQQtmlPZhW84lo1zrNe6dYUCvaT
 FH0g==
X-Gm-Message-State: APjAAAVrISzEzs7g+7sR0DMLCK0t02zz/885wsdT5FJx3V6DUVDjSdvW
 ftLseFXLXOGIN3yVSWVDRoTnXhVCTLXMV5SjSROuYA==
X-Google-Smtp-Source: APXvYqwE+yY3fi9MHe5pAmjH6ujV7dnKQuJJ2mvTpcdW82/qczftH0mUauffZu6ryTn350uiR7ngmmR4ga1rtqlB5p8=
X-Received: by 2002:aa7:8491:: with SMTP id u17mr25575697pfn.93.1559653777333; 
 Tue, 04 Jun 2019 06:09:37 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1559580831.git.andreyknvl@google.com>
 <c829f93b19ad6af1b13be8935ce29baa8e58518f.1559580831.git.andreyknvl@google.com>
 <20190603174619.GC11474@ziepe.ca>
 <CAAeHK+xy-dx4dLDLLj9dRzRNSVG9H5nDPPnjpYF38qKZNNCh_g@mail.gmail.com>
 <20190604122714.GA15385@ziepe.ca>
 <CAAeHK+xyqwuJyviGhvU7L1wPZQF7Mf9g2vgKSsYmML3fV6NrXg@mail.gmail.com>
 <20190604130207.GD15385@ziepe.ca>
In-Reply-To: <20190604130207.GD15385@ziepe.ca>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Tue, 4 Jun 2019 15:09:26 +0200
Message-ID: <CAAeHK+xBxDB-OBuzPDcNaTHCNJqu6djHwqoVGSYpxG33w-YR9g@mail.gmail.com>
Subject: Re: [PATCH v16 12/16] IB,
 arm64: untag user pointers in ib_uverbs_(re)reg_mr()
To: Jason Gunthorpe <jgg@ziepe.ca>, Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_060942_884026_6336F1D7 
X-CRM114-Status: GOOD (  31.14  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

On Tue, Jun 4, 2019 at 3:02 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
>
> On Tue, Jun 04, 2019 at 02:45:32PM +0200, Andrey Konovalov wrote:
> > On Tue, Jun 4, 2019 at 2:27 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
> > >
> > > On Tue, Jun 04, 2019 at 02:18:19PM +0200, Andrey Konovalov wrote:
> > > > On Mon, Jun 3, 2019 at 7:46 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
> > > > >
> > > > > On Mon, Jun 03, 2019 at 06:55:14PM +0200, Andrey Konovalov wrote:
> > > > > > This patch is a part of a series that extends arm64 kernel ABI to allow to
> > > > > > pass tagged user pointers (with the top byte set to something else other
> > > > > > than 0x00) as syscall arguments.
> > > > > >
> > > > > > ib_uverbs_(re)reg_mr() use provided user pointers for vma lookups (through
> > > > > > e.g. mlx4_get_umem_mr()), which can only by done with untagged pointers.
> > > > > >
> > > > > > Untag user pointers in these functions.
> > > > > >
> > > > > > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> > > > > >  drivers/infiniband/core/uverbs_cmd.c | 4 ++++
> > > > > >  1 file changed, 4 insertions(+)
> > > > > >
> > > > > > diff --git a/drivers/infiniband/core/uverbs_cmd.c b/drivers/infiniband/core/uverbs_cmd.c
> > > > > > index 5a3a1780ceea..f88ee733e617 100644
> > > > > > +++ b/drivers/infiniband/core/uverbs_cmd.c
> > > > > > @@ -709,6 +709,8 @@ static int ib_uverbs_reg_mr(struct uverbs_attr_bundle *attrs)
> > > > > >       if (ret)
> > > > > >               return ret;
> > > > > >
> > > > > > +     cmd.start = untagged_addr(cmd.start);
> > > > > > +
> > > > > >       if ((cmd.start & ~PAGE_MASK) != (cmd.hca_va & ~PAGE_MASK))
> > > > > >               return -EINVAL;
> > > > >
> > > > > I feel like we shouldn't thave to do this here, surely the cmd.start
> > > > > should flow unmodified to get_user_pages, and gup should untag it?
> > > > >
> > > > > ie, this sort of direction for the IB code (this would be a giant
> > > > > patch, so I didn't have time to write it all, but I think it is much
> > > > > saner):
> > > >
> > > > Hi Jason,
> > > >
> > > > ib_uverbs_reg_mr() passes cmd.start to mlx4_get_umem_mr(), which calls
> > > > find_vma(), which only accepts untagged addresses. Could you explain
> > > > how your patch helps?
> > >
> > > That mlx4 is just a 'weird duck', it is not the normal flow, and I
> > > don't think the core code should be making special consideration for
> > > it.
> >
> > How do you think we should do untagging (or something else) to deal
> > with this 'weird duck' case?
>
> mlx4 should handle it around the call to find_vma like other patches
> do, ideally as part of the cast from a void __user * to the unsigned
> long that find_vma needs

So essentially what we had a few versions ago
(https://lkml.org/lkml/2019/4/30/785) plus changing unsigned longs to
__user * across all IB code? I think the second part is something
that's not related to this series and needs to be done separately. I
can move untagging back to mlx4_get_umem_mr() though.

Catalin, you've initially asked to to move untagging out of
mlx4_get_umem_mr(), do you have any comments on this?

>
> Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

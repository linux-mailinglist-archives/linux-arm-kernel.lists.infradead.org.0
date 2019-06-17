Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C823548161
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 13:58:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F+jxfQnmTqDcIvkIJhdstfwHxdoizir05yUr2mV/YgQ=; b=oAbh8pvDojgM6t
	thd4AmfX4Io9q2XLzom2laHr7rUc7rXbvo5aC2gsBDtFnb3DZQxkNMyR1rCOoITthgKIXkP7e5eMR
	fsg1pKg78QL5qPH579IYIp6jbBsKCnNXyNw4TkFcG/R9ORxF3whaEdEY46UDEld+C1g6IdD7lwfI9
	l8INDWugHXafdlPsJq8Dv9SCdXY31heipFVlbuHSciis1YRWgzvxvfQynsevdHompsz6vp+WarhSM
	vONQyk/+4BOe9i7SvbRyhiur8PrKO9HnHGVSqr/iL0p5g1p6/CcR+BPP1uVOUYQ+aS3DJS0QZAjQw
	pAV2V6Xo82kyo7eIGnKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcqHJ-0008Ss-TR; Mon, 17 Jun 2019 11:58:25 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqH6-0008Qw-EO
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 11:58:13 +0000
Received: by mail-io1-xd42.google.com with SMTP id r185so14535041iod.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 04:58:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ueOYS1wFyeCCBxDCVsPVG5+an3vWjzFueCDlI0BJDTQ=;
 b=m/nic/1gMsqRM3aXpp3S0P7cl9f86+N1HuW0xsCIUi26svfLi1qjvD8/zHDJfv4CtC
 agTG9FTFwES2e6fKPNgesel4PIaXyheHVvmzttqU9n3CyDEI5yYSs0KzLEhRXDmkIDiU
 BoHvb5PH7lF6fHNpMMcZCbfokLgEMLHe9fSGVjgWlkE+tshkqtTNJW8XqsM7EiTbmZYV
 zY9Uiv1rua98ZWBS7vxyFk1D1Qek2WDw0hPW2R1nacVvqRmslLdyg7GzuKjnyjdUSKAy
 n8cKtLfeAZ7oUirrutBaSPmjmPh9zhy8sGDCjUK9FZlC0Yr3nw5q6M2O+M/R+2cooSGO
 gHDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ueOYS1wFyeCCBxDCVsPVG5+an3vWjzFueCDlI0BJDTQ=;
 b=kvO/Yu6iyfI9FdrS84z4XILgnm/OAgfSFG33lyH0HZ9s8m3JCXLTeI1JF3SW8Q8STG
 j86n1tI4kTrHb8nB7iXxCT0dW+LiJ/7HrMQXVk+kwB5U+VVCJgZ53nNdcmV2mfJoaTXB
 aNvf/4N0erA9pdGJ0s9dNREwXNqFfEamrFYAkIo/FQlPy2UPBvRsoAOL20LPq9OCXWZF
 YGwbTz76xVuwWnauBI/L8io9wQRG1Yi4+eKKq3oPKGgCTFPVZGx2wQDTNXD0s+YJD9zp
 SgI1ej9Hl/vwZ31/uStn0mXuGkDrjq7k6FYv1qgxjK/O2GTnTC9BlNSBBa3Vb1oAwpt7
 WdHA==
X-Gm-Message-State: APjAAAX8vdLQ6fOcYtfMyYVxiisnwJNipxuIO4qrMZWXG4zpiw+GA423
 Zib7nMWzYeHUOzhavTvITP6bq5wQp79H6g5Qx1mEcA==
X-Google-Smtp-Source: APXvYqyOINj8pYwe8/fYWKy7ldMuXS6N4CTb8JVK/ENXznnn8FSbnUbfvDwebsRKohu4YhwgVY4D0h3ZXjEurUCWfuY=
X-Received: by 2002:a6b:fb0f:: with SMTP id h15mr2795600iog.266.1560772688590; 
 Mon, 17 Jun 2019 04:58:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190613081357.1360-1-walter-zh.wu@mediatek.com>
 <da7591c9-660d-d380-d59e-6d70b39eaa6b@virtuozzo.com>
 <1560447999.15814.15.camel@mtksdccf07>
 <1560479520.15814.34.camel@mtksdccf07> <1560744017.15814.49.camel@mtksdccf07>
In-Reply-To: <1560744017.15814.49.camel@mtksdccf07>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 17 Jun 2019 13:57:57 +0200
Message-ID: <CACT4Y+Y3uS59rXf92ByQuFK_G4v0H8NNnCY1tCbr4V+PaZF3ag@mail.gmail.com>
Subject: Re: [PATCH v3] kasan: add memory corruption identification for
 software tag-based mode
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_045812_511977_07DA0A41 
X-CRM114-Status: GOOD (  27.56  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 "Jason A . Donenfeld" <Jason@zx2c4.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Arnd Bergmann <arnd@arndb.de>, Linux-MM <linux-mm@kvack.org>,
 Andrey Konovalov <andreyknvl@google.com>, linux-mediatek@lists.infradead.org,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 Pekka Enberg <penberg@kernel.org>, Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Miles Chen <miles.chen@mediatek.com>, Alexander Potapenko <glider@google.com>,
 David Rientjes <rientjes@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Christoph Lameter <cl@linux.com>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 6:00 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
>
> On Fri, 2019-06-14 at 10:32 +0800, Walter Wu wrote:
> > On Fri, 2019-06-14 at 01:46 +0800, Walter Wu wrote:
> > > On Thu, 2019-06-13 at 15:27 +0300, Andrey Ryabinin wrote:
> > > >
> > > > On 6/13/19 11:13 AM, Walter Wu wrote:
> > > > > This patch adds memory corruption identification at bug report for
> > > > > software tag-based mode, the report show whether it is "use-after-free"
> > > > > or "out-of-bound" error instead of "invalid-access" error.This will make
> > > > > it easier for programmers to see the memory corruption problem.
> > > > >
> > > > > Now we extend the quarantine to support both generic and tag-based kasan.
> > > > > For tag-based kasan, the quarantine stores only freed object information
> > > > > to check if an object is freed recently. When tag-based kasan reports an
> > > > > error, we can check if the tagged addr is in the quarantine and make a
> > > > > good guess if the object is more like "use-after-free" or "out-of-bound".
> > > > >
> > > >
> > > >
> > > > We already have all the information and don't need the quarantine to make such guess.
> > > > Basically if shadow of the first byte of object has the same tag as tag in pointer than it's out-of-bounds,
> > > > otherwise it's use-after-free.
> > > >
> > > > In pseudo-code it's something like this:
> > > >
> > > > u8 object_tag = *(u8 *)kasan_mem_to_shadow(nearest_object(cacche, page, access_addr));
> > > >
> > > > if (access_addr_tag == object_tag && object_tag != KASAN_TAG_INVALID)
> > > >   // out-of-bounds
> > > > else
> > > >   // use-after-free
> > >
> > > Thanks your explanation.
> > > I see, we can use it to decide corruption type.
> > > But some use-after-free issues, it may not have accurate free-backtrace.
> > > Unfortunately in that situation, free-backtrace is the most important.
> > > please see below example
> > >
> > > In generic KASAN, it gets accurate free-backrace(ptr1).
> > > In tag-based KASAN, it gets wrong free-backtrace(ptr2). It will make
> > > programmer misjudge, so they may not believe tag-based KASAN.
> > > So We provide this patch, we hope tag-based KASAN bug report is the same
> > > accurate with generic KASAN.
> > >
> > > ---
> > >     ptr1 = kmalloc(size, GFP_KERNEL);
> > >     ptr1_free(ptr1);
> > >
> > >     ptr2 = kmalloc(size, GFP_KERNEL);
> > >     ptr2_free(ptr2);
> > >
> > >     ptr1[size] = 'x';  //corruption here
> > >
> > >
> > > static noinline void ptr1_free(char* ptr)
> > > {
> > >     kfree(ptr);
> > > }
> > > static noinline void ptr2_free(char* ptr)
> > > {
> > >     kfree(ptr);
> > > }
> > > ---
> > >
> > We think of another question about deciding by that shadow of the first
> > byte.
> > In tag-based KASAN, it is immediately released after calling kfree(), so
> > the slub is easy to be used by another pointer, then it will change
> > shadow memory to the tag of new pointer, it will not be the
> > KASAN_TAG_INVALID, so there are many false negative cases, especially in
> > small size allocation.
> >
> > Our patch is to solve those problems. so please consider it, thanks.
> >
> Hi, Andrey and Dmitry,
>
> I am sorry to bother you.
> Would you tell me what you think about this patch?
> We want to use tag-based KASAN, so we hope its bug report is clear and
> correct as generic KASAN.
>
> Thanks your review.
> Walter

Hi Walter,

I will probably be busy till the next week. Sorry for delays.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

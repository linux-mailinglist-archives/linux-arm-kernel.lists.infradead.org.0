Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F6B1D0BB8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 11:16:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a194Vloo+ofROBTKXd294tMM7odVHLuVCnv5t2ZSrQ8=; b=BF+7jYZZELC5BV
	UflRaym4k6GLPw82Dhn/Z/xoqjkEAaNYcW8cAXUhPK/v61rwjpDyXlE03kyqu8oiARk98L/hjh3E3
	xQdVH8i7Zws4Rcnysdx6ikPtXa08d7rsoOyBPJM9rfIsedTjqCREXL92JVU5YY6SoladciYsVZIcT
	NUjqW5dCC20EDXUqWUGnNu9yv+XoLafDEb3TKKgjVfOJ+jh5jEwlfKZ2amUmAWOUr46OBFz0sk9Ll
	fJZnA05Bmphhk77hyipJVgKnxx1u20lgyXLrWWAQ2Jsl7w0fs8vIZL3++wTJsIjI6nnr0GTP5XwEI
	gHxrFa62igQ6Z6UNW72A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYnV0-0005lj-Os; Wed, 13 May 2020 09:16:22 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYnUt-0005lF-5G
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 09:16:16 +0000
Received: by mail-qk1-x742.google.com with SMTP id a136so7635247qkg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 02:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=itos8LHRnARIlzXTWR1kJY/omxPbBoUWPcSfUqjsoA4=;
 b=A5K6VoJjI1dL1KN/df5QAgoFGmJhl6hWdd6tZEPcPBTKXaPrdVWtwhgh8whNo4BjYe
 bm+xeV36/ASRg95TApfRBFZ6lB1iULFvHksmM/H4aSPXFYUIshFowGhO6YmjyogHCYkh
 0Q8LujaVHkcfsfLQDRh3E6L2ke6nGUOYrADpgIpAXMeMZOCIHCypUbWJFzyIPmN5Mq+x
 +1A4YD7OT1Xz0L1cZ/z848MWlGSbO3bosMDEeR9ZYiGZzzArSWG8X8G0pSWj1sYo6FZl
 MabnV+0zbmVxYJsgjX5/iHjXfmdXLBYwRV0OZzQ3T7Xn4UDHhm4a66yvWMlwC6HoKgcb
 2G6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=itos8LHRnARIlzXTWR1kJY/omxPbBoUWPcSfUqjsoA4=;
 b=bgpamGkKAjnTu5eTgXmMINHxEaikjnzIdFLrJ5AeVfI2JXLNjjQb0aimPf+xBg1sXz
 JlWC4YIJV76Q03IX3t+BPE/uRR5OKdIis0oeuZE1rHEIIrUVyjq8LaMCgYKrHJNz8qD3
 qc/epUshDskg5AbN6t0/GKocvSO1ZgPo7tI3B6Etzpj93vGjsZLu33VMffxBa6Jom/sl
 hnngejsIBIc49fhHcr/NmIGlD0i+dcqltYO2O9/T1CZHLqetsEQWbXxnEUOjyIu4GUQR
 wjBX10e3A48If5BF297m2vfbh1eEuNgBlCKqCSCRvPPAvP29a3uCyYfQZXafHDopdtk1
 7TMg==
X-Gm-Message-State: AGi0PuZI1l4eKHgEX7c5rt66vY3pH4cMqn5moxJHFUxPHCs2YnGaPxce
 1yuS3yVhQDQugjuxGQ+R94rjizXmSKrzvZiA4kUO5A==
X-Google-Smtp-Source: APiQypIE87rxAxLEvN7Ltlce+BhZ2RRfTe25rMKOww/RPsuGzoqNr6115x+MMkD1jTpUE32u2OzrCXzfozbHr3GSb/w=
X-Received: by 2002:a37:9d55:: with SMTP id g82mr21819383qke.407.1589361373420; 
 Wed, 13 May 2020 02:16:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200511023111.15310-1-walter-zh.wu@mediatek.com>
 <CACT4Y+YWNwTSoheJhc3nMdQi9m719F3PzpGo3TfRY3zAg9EwuQ@mail.gmail.com>
 <CACT4Y+bO1Zg_jgFHbOWgp7fLAADOQ_-AZmjEHz0WG7=oyOt4Gg@mail.gmail.com>
 <1589203771.21284.22.camel@mtksdccf07>
 <CACT4Y+aOkuH6Dn+L+wv1qVOLgXyCY_Ck4hecAMw3DgyBgC9qHw@mail.gmail.com>
 <1589254720.19238.36.camel@mtksdccf07>
 <CACT4Y+aibZEBR-3bos3ox5Tuu48TnHC20mDDN0AkWeRUKrT0aw@mail.gmail.com>
 <1589334472.19238.44.camel@mtksdccf07>
 <CACT4Y+Zv3rCZs8z56NHM0hHWMwQr_2AT8nx0vUigzMG2v3Rt8Q@mail.gmail.com>
 <1589360744.14554.10.camel@mtksdccf07>
In-Reply-To: <1589360744.14554.10.camel@mtksdccf07>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 13 May 2020 11:16:01 +0200
Message-ID: <CACT4Y+ZycfHeP5xqqkihRHx-aOoBhN9XdhUmzCdTfaYPXTCzAA@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] rcu/kasan: record and print call_rcu() call stack
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_021615_225946_E6D52260 
X-CRM114-Status: GOOD (  29.14  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "Paul E . McKenney" <paulmck@kernel.org>, Linux-MM <linux-mm@kvack.org>,
 Lai Jiangshan <jiangshanlai@gmail.com>, Josh Triplett <josh@joshtriplett.org>,
 kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>,
 Joel Fernandes <joel@joelfernandes.org>,
 Alexander Potapenko <glider@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 11:05 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
>
> On Wed, 2020-05-13 at 08:51 +0200, 'Dmitry Vyukov' via kasan-dev wrote:
> > On Wed, May 13, 2020 at 3:48 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > > > > > Are you sure it will increase object size?
> > > > > > I think we overlap kasan_free_meta with the object as well. The only
> > > > > > case we don't overlap kasan_free_meta with the object are
> > > > > > SLAB_TYPESAFE_BY_RCU || cache->ctor. But these are rare and it should
> > > > > > only affect small objects with small redzones.
> > > > > > And I think now we simply have a bug for these objects, we check
> > > > > > KASAN_KMALLOC_FREE and then assume object contains free stack, but for
> > > > > > objects with ctor, they still contain live object data, we don't store
> > > > > > free stack in them.
> > > > > > Such objects can be both free and still contain user data.
> > > > > >
> > > > >
> > > > > Overlay kasan_free_meta. I see. but overlay it only when the object was
> > > > > freed. kasan_free_meta will be used until free object.
> > > > > 1). When put object into quarantine, it need kasan_free_meta.
> > > > > 2). When the object exit from quarantine, it need kasan_free_meta
> > > > >
> > > > > If we choose to overlay kasan_free_meta, then the free stack will be
> > > > > stored very late. It may has no free stack in report.
> > > >
> > > > Sorry, I don't understand what you mean.
> > > >
> > > > Why will it be stored too late?
> > > > In __kasan_slab_free() putting into quarantine and recording free
> > > > stack are literally adjacent lines of code:
> > > >
> > > > static bool __kasan_slab_free(struct kmem_cache *cache, void *object,
> > > >       unsigned long ip, bool quarantine)
> > > > {
> > > >     ...
> > > >     kasan_set_free_info(cache, object, tag);
> > > >     quarantine_put(get_free_info(cache, object), cache);
> > > >
> > > >
> > > > Just to make sure, what I meant is that we add free_track to kasan_free_meta:
> > > >
> > > > struct kasan_free_meta {
> > > >     struct qlist_node quarantine_link;
> > > > +  struct kasan_track free_track;
> > > > };
> > > >
> > >
> > > When I see above struct kasan_free_meta, I know why you don't understand
> > > my meaning, because I thought you were going to overlay the
> > > quarantine_link by free_track, but it seems like to add free_track to
> > > kasan_free_meta. Does it enlarge meta-data size?
> >
> > I would assume it should not increase meta-data size. In both cases we
> > store exactly the same information inside of the object: quarantine
> > link and free track.
> > I see it more as a question of code organization. We already have a
> > concept of "this data is placed inside of the freed object", we
> > already have a name for it (kasan_free_meta), we already have code to
> > choose where to place it, we already have helper functions to access
> > it. And your change effectively duplicates all of this to place the
> > free track.
> >
>
> I want to make a summary. Which of the following is the approach we
> want? or if I have some misunderstandings, please help me to correct.
> Thanks.
>
> 1) For different object, then it will has two ways.
> 1.a) When object are LAB_TYPESAFE_BY_RCU || cache->ctor, then store free
> stack into free track of struct kasan_free_meta.
> 2.b) Except 1.a), store free stack into freed object.
>
> or
>
> 2) We always store free stack into free track of struct kasan_free_meta

I meant 2): We always store free stack into free track of struct
kasan_free_meta.
I think it will do the same as other options but just with less code
(and simpler code).

Maybe I am missing something here?




> > > > And I think its life-time and everything should be exactly what we need.
> > > >
> > > > Also it should help to fix the problem with ctors: kasan_free_meta is
> > > > already allocated on the side for such objects, and that's exactly
> > > > what we need for objects with ctor's.
> > >
> > > I see.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

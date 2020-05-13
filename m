Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3C91D0BF3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 11:23:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4gc3x8Rc67bpAcyMfpgX+NaBb/1xpGIkkPUFYnZ4R8E=; b=jkM/6+W3wKt5vX
	5Wp3sraBqb91ps/wM5NmmPojAxwN8yKN1CQ+o25Dht5EIekXxXi9Bjtyoc2hZ/06QrCvjXrQ10w8P
	58AIMMj2ETIRc2st5lAcIkKnkwjZPimeGRVOTAXJvxQ5bZvSobFa4/byt3p55OKAmbHnd/1BqCWR7
	yO0f0IcFDnae3+2A8eGUREQIPZC7KLV7hITEy3M3G3Df/IvJMojMdFbyK9bGxMEB7RrWAS+zKD8pO
	avzNgDysASC9RdBSLNiIuuj4hdRRn5ILdcpfZ5NWZxBYFx+ZYy5ucQP2TmgumMREBj5T29RomsS8o
	yG6G928BlqsxIPC/eD6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYnbX-00011K-5h; Wed, 13 May 2020 09:23:07 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYnbN-00010i-8D
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 09:22:58 +0000
X-UUID: 752c9227677640bcbb68b42fb96c3222-20200513
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=22zgrRi/oC9kwqIZbeIKNy00cAVePxq0U9heHWhbe+s=; 
 b=IZpjxncNWXK3xwFx41z+SfE4GNDiAZeE5in/eI1Q31Ldj7bL1R3To1A3JJCLQf3m5rWKlhOv5/hJr9e7chLVkHCYzFkMsJKtOZBn4Y2b4AuQNvq9q4uYjnwznEgHxg0ZdBv+83jKm4wWo2bbYudzu0YZNj0/1pkJbfXBduJRFZ4=;
X-UUID: 752c9227677640bcbb68b42fb96c3222-20200513
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 225439650; Wed, 13 May 2020 01:22:41 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 13 May 2020 02:22:50 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 13 May 2020 17:22:51 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 13 May 2020 17:22:48 +0800
Message-ID: <1589361771.15912.3.camel@mtksdccf07>
Subject: Re: [PATCH v2 1/3] rcu/kasan: record and print call_rcu() call stack
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 13 May 2020 17:22:51 +0800
In-Reply-To: <CACT4Y+ZycfHeP5xqqkihRHx-aOoBhN9XdhUmzCdTfaYPXTCzAA@mail.gmail.com>
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
 <CACT4Y+ZycfHeP5xqqkihRHx-aOoBhN9XdhUmzCdTfaYPXTCzAA@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_022257_303063_245DCBCF 
X-CRM114-Status: GOOD (  29.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Andrew
 Morton <akpm@linux-foundation.org>, Linux
 ARM <linux-arm-kernel@lists.infradead.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-05-13 at 11:16 +0200, Dmitry Vyukov wrote:
> On Wed, May 13, 2020 at 11:05 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> >
> > On Wed, 2020-05-13 at 08:51 +0200, 'Dmitry Vyukov' via kasan-dev wrote:
> > > On Wed, May 13, 2020 at 3:48 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > > > > > > Are you sure it will increase object size?
> > > > > > > I think we overlap kasan_free_meta with the object as well. The only
> > > > > > > case we don't overlap kasan_free_meta with the object are
> > > > > > > SLAB_TYPESAFE_BY_RCU || cache->ctor. But these are rare and it should
> > > > > > > only affect small objects with small redzones.
> > > > > > > And I think now we simply have a bug for these objects, we check
> > > > > > > KASAN_KMALLOC_FREE and then assume object contains free stack, but for
> > > > > > > objects with ctor, they still contain live object data, we don't store
> > > > > > > free stack in them.
> > > > > > > Such objects can be both free and still contain user data.
> > > > > > >
> > > > > >
> > > > > > Overlay kasan_free_meta. I see. but overlay it only when the object was
> > > > > > freed. kasan_free_meta will be used until free object.
> > > > > > 1). When put object into quarantine, it need kasan_free_meta.
> > > > > > 2). When the object exit from quarantine, it need kasan_free_meta
> > > > > >
> > > > > > If we choose to overlay kasan_free_meta, then the free stack will be
> > > > > > stored very late. It may has no free stack in report.
> > > > >
> > > > > Sorry, I don't understand what you mean.
> > > > >
> > > > > Why will it be stored too late?
> > > > > In __kasan_slab_free() putting into quarantine and recording free
> > > > > stack are literally adjacent lines of code:
> > > > >
> > > > > static bool __kasan_slab_free(struct kmem_cache *cache, void *object,
> > > > >       unsigned long ip, bool quarantine)
> > > > > {
> > > > >     ...
> > > > >     kasan_set_free_info(cache, object, tag);
> > > > >     quarantine_put(get_free_info(cache, object), cache);
> > > > >
> > > > >
> > > > > Just to make sure, what I meant is that we add free_track to kasan_free_meta:
> > > > >
> > > > > struct kasan_free_meta {
> > > > >     struct qlist_node quarantine_link;
> > > > > +  struct kasan_track free_track;
> > > > > };
> > > > >
> > > >
> > > > When I see above struct kasan_free_meta, I know why you don't understand
> > > > my meaning, because I thought you were going to overlay the
> > > > quarantine_link by free_track, but it seems like to add free_track to
> > > > kasan_free_meta. Does it enlarge meta-data size?
> > >
> > > I would assume it should not increase meta-data size. In both cases we
> > > store exactly the same information inside of the object: quarantine
> > > link and free track.
> > > I see it more as a question of code organization. We already have a
> > > concept of "this data is placed inside of the freed object", we
> > > already have a name for it (kasan_free_meta), we already have code to
> > > choose where to place it, we already have helper functions to access
> > > it. And your change effectively duplicates all of this to place the
> > > free track.
> > >
> >
> > I want to make a summary. Which of the following is the approach we
> > want? or if I have some misunderstandings, please help me to correct.
> > Thanks.
> >
> > 1) For different object, then it will has two ways.
> > 1.a) When object are LAB_TYPESAFE_BY_RCU || cache->ctor, then store free
> > stack into free track of struct kasan_free_meta.
> > 2.b) Except 1.a), store free stack into freed object.
> >
> > or
> >
> > 2) We always store free stack into free track of struct kasan_free_meta
> 
> I meant 2): We always store free stack into free track of struct
> kasan_free_meta.
> I think it will do the same as other options but just with less code
> (and simpler code).
> 
> Maybe I am missing something here?
> 

You are right, I only make a final confirmation with you. Now there
should be no problems, I will try to implement it.

Thank you for your good suggestion.

> 
> 
> 
> > > > > And I think its life-time and everything should be exactly what we need.
> > > > >
> > > > > Also it should help to fix the problem with ctors: kasan_free_meta is
> > > > > already allocated on the side for such objects, and that's exactly
> > > > > what we need for objects with ctor's.
> > > >
> > > > I see.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

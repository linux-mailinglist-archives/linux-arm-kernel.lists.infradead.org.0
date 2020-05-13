Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 116AD1D0483
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 03:48:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QdJojmLufhvmFFV9CR8e2VBs6KkbDBfgoYbkkG2qpao=; b=fEKD0gVS+ztCvp
	p9y/Epm1GlxUydNVVc3EVfR3m/pe9tVR3EtNLKFTfWbkeifaw7WuL+IOHlS6YJPBYKh8mepOZmkzv
	lbdb8uVyaBBPch7j+1Ly+exqWKcdKjWwGlioQXVxnVAMIRO2Y02/iVNQU2NMO5wb/EqGhRDgfCusm
	W+IEmhIYmeYgmlUTzpojkFl3/GwpK+WA+fJvqJjwcUJouXI+sSHzOjlVQ6vJpdrcel/AD+DB5Mn8k
	+GF9qE9agEBoCUgXtvq75CPGohT3XJn1YgnDYhvFiRMYi9DXoQ9F3WtTuR/qn+VolsbN9GwbAQHpP
	lXqdnSmbUjCWPXwToVDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYgVJ-00055Q-2Z; Wed, 13 May 2020 01:48:13 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYgV8-00054k-I9
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 01:48:04 +0000
X-UUID: d9dcd627a45740e4b64866c82338d4e3-20200512
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=o7JP9AdWJu6YlfE0C1p8Mhx9/TUpPDMGmCuMKKblwlg=; 
 b=DU2MZ9wwW3qTu8oDQZT66TASPYtZnA3M+g0rBEm5DPeLR+nbeftLSdI9LC+6LJPtZL6OOWWhSi8IQgw552WtpJx3PgTiBrCVRe8EOlfj3oaM6IOtp+97/iDJBf+E4NSlbUptIaYs7rkz4ot4HJ1sV2Gc11KUXjr/BwQxYneb6bA=;
X-UUID: d9dcd627a45740e4b64866c82338d4e3-20200512
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 891098539; Tue, 12 May 2020 17:47:52 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 12 May 2020 18:47:49 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 13 May 2020 09:47:52 +0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 13 May 2020 09:47:52 +0800
Message-ID: <1589334472.19238.44.camel@mtksdccf07>
Subject: Re: [PATCH v2 1/3] rcu/kasan: record and print call_rcu() call stack
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 13 May 2020 09:47:52 +0800
In-Reply-To: <CACT4Y+aibZEBR-3bos3ox5Tuu48TnHC20mDDN0AkWeRUKrT0aw@mail.gmail.com>
References: <20200511023111.15310-1-walter-zh.wu@mediatek.com>
 <CACT4Y+YWNwTSoheJhc3nMdQi9m719F3PzpGo3TfRY3zAg9EwuQ@mail.gmail.com>
 <CACT4Y+bO1Zg_jgFHbOWgp7fLAADOQ_-AZmjEHz0WG7=oyOt4Gg@mail.gmail.com>
 <1589203771.21284.22.camel@mtksdccf07>
 <CACT4Y+aOkuH6Dn+L+wv1qVOLgXyCY_Ck4hecAMw3DgyBgC9qHw@mail.gmail.com>
 <1589254720.19238.36.camel@mtksdccf07>
 <CACT4Y+aibZEBR-3bos3ox5Tuu48TnHC20mDDN0AkWeRUKrT0aw@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_184802_608365_E7890C5E 
X-CRM114-Status: GOOD (  20.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Tue, 2020-05-12 at 16:03 +0200, Dmitry Vyukov wrote:
> On Tue, May 12, 2020 at 5:38 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > > Are you sure it will increase object size?
> > > I think we overlap kasan_free_meta with the object as well. The only
> > > case we don't overlap kasan_free_meta with the object are
> > > SLAB_TYPESAFE_BY_RCU || cache->ctor. But these are rare and it should
> > > only affect small objects with small redzones.
> > > And I think now we simply have a bug for these objects, we check
> > > KASAN_KMALLOC_FREE and then assume object contains free stack, but for
> > > objects with ctor, they still contain live object data, we don't store
> > > free stack in them.
> > > Such objects can be both free and still contain user data.
> > >
> >
> > Overlay kasan_free_meta. I see. but overlay it only when the object was
> > freed. kasan_free_meta will be used until free object.
> > 1). When put object into quarantine, it need kasan_free_meta.
> > 2). When the object exit from quarantine, it need kasan_free_meta
> >
> > If we choose to overlay kasan_free_meta, then the free stack will be
> > stored very late. It may has no free stack in report.
> 
> Sorry, I don't understand what you mean.
> 
> Why will it be stored too late?
> In __kasan_slab_free() putting into quarantine and recording free
> stack are literally adjacent lines of code:
> 
> static bool __kasan_slab_free(struct kmem_cache *cache, void *object,
>       unsigned long ip, bool quarantine)
> {
>     ...
>     kasan_set_free_info(cache, object, tag);
>     quarantine_put(get_free_info(cache, object), cache);
> 
> 
> Just to make sure, what I meant is that we add free_track to kasan_free_meta:
> 
> struct kasan_free_meta {
>     struct qlist_node quarantine_link;
> +  struct kasan_track free_track;
> };
> 

When I see above struct kasan_free_meta, I know why you don't understand
my meaning, because I thought you were going to overlay the
quarantine_link by free_track, but it seems like to add free_track to
kasan_free_meta. Does it enlarge meta-data size?

> And I think its life-time and everything should be exactly what we need.
> 
> Also it should help to fix the problem with ctors: kasan_free_meta is
> already allocated on the side for such objects, and that's exactly
> what we need for objects with ctor's.

I see.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

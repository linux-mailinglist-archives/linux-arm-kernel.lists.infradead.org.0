Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 359C81CF662
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 16:03:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vfArdQb71pBNd3mKO13QpEHKBQMdeb8DQx1pVnpegOk=; b=hSa4u2TmsQYZEc
	2razKHMzqT0LnzpC24B+0oGbWVl29Pay+cRMjAvsghDxz0OvnDqcEUG1+2utKVUI1zdjH338/GOnA
	Ev7HiFjF3W3aduAHWmFRe6sKhidSOL73qKralBkRGTLxYz2Z1YfSnuibYPndS5DAB6DrzVPD051Zj
	bF3DLsZw44j/5sQZkKl0AC/rbOyFrBhLsK3F7hqtYjrGVJjcstcOhHX+eNrqEEnobtFzbPhIyBd+m
	b4VGrmpiSwuaW9M6o3JS53KPJQ1R/qdBoYiaaLjNlaSsF+79HtNubueMBlcwJeQa9hMm0Cj/6lt9+
	yHNh9V2Z5PZ2V6/F9zsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYVVN-0000s3-JT; Tue, 12 May 2020 14:03:33 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYVV8-0000qM-Sq
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 14:03:20 +0000
Received: by mail-qv1-xf42.google.com with SMTP id v15so2212654qvr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 07:03:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HdL0PoelnNwC+IbWuQ/qzw1k9SeDaMleYXr87Z/Ant4=;
 b=QQawiJ16cJoOdX0v2O/nrybNFbweTZ9aWk/wAttBFTUWRgH/uywBEmgJJ3u+gYjdHG
 dIPfgBZVU75hHbpayW0czEXxkxEh/A5qfr1ZsTdqgRWFiK9+8OC+AWGCyOzUQUcbVeLK
 tHy1StevFR2QW2LRSkYwbXwSIJz8ZyEyRyjeRFgKDl9WCS++62M7d9VDQYbZW8ZQiy4N
 8cn2evMhjL/a4EoYxDJEVZ72F+pdtNbnWyP+hHtRCCHCvn4NdY1ndpZBrX98ivNdAmNm
 UsrZjKOhnc6ozhKsb4K5sEE3WTthuFvFkcFoU1rmmii8PPNouLKmwZGVUUkRbQwXrbSb
 tI1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HdL0PoelnNwC+IbWuQ/qzw1k9SeDaMleYXr87Z/Ant4=;
 b=QjsvTxaWK2pOVtag68aN6A9MThCYGo8FbpJw2yHprDWq2s3tYePgV2sqjZi5yIAiAL
 VMUg+ffNFg/88k9mxHVdmESbeiQummdVNRtywqL6y6aouq/7W0xQTYgcGQva98o8Z46c
 j/MYomFIRKcuzBZDX0NdJtM1zGTgDJ1UhMxB6wYYI/HIdpBK7Qr3Etj/9Jx+8qf1Yh/Q
 PD8del9pxt4uV3Mzp84E/ou0WhtkaEuTSMh9hv9ZlBAce4HwcCaecWp6F9+p0Jj95IIa
 MSNmI/B42gkXxdIhCFr6FkQwAOZ1Cvg70LeEgRrHoopWCXrHfAFTcV1S2Z589RectgZ9
 80Tw==
X-Gm-Message-State: AGi0PuYBtQxdg5IXavj1JV4txlm2Hut4RCAgt7tA1omVOj+fz+HGKb5n
 AhK0C4xt5/9Rjlu3owhb4sbbMm+x5RfaIGlnhKrAsQ==
X-Google-Smtp-Source: APiQypLeYRdXP9XHSuSKifMwGDuYtaRqyPQRWpx7Vs6/N1ChFkyDoVmidHX3CJDHhIV3yP+8cu5pPFKpdHj7jZgor0Y=
X-Received: by 2002:ad4:4d06:: with SMTP id l6mr21334959qvl.34.1589292197432; 
 Tue, 12 May 2020 07:03:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200511023111.15310-1-walter-zh.wu@mediatek.com>
 <CACT4Y+YWNwTSoheJhc3nMdQi9m719F3PzpGo3TfRY3zAg9EwuQ@mail.gmail.com>
 <CACT4Y+bO1Zg_jgFHbOWgp7fLAADOQ_-AZmjEHz0WG7=oyOt4Gg@mail.gmail.com>
 <1589203771.21284.22.camel@mtksdccf07>
 <CACT4Y+aOkuH6Dn+L+wv1qVOLgXyCY_Ck4hecAMw3DgyBgC9qHw@mail.gmail.com>
 <1589254720.19238.36.camel@mtksdccf07>
In-Reply-To: <1589254720.19238.36.camel@mtksdccf07>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Tue, 12 May 2020 16:03:06 +0200
Message-ID: <CACT4Y+aibZEBR-3bos3ox5Tuu48TnHC20mDDN0AkWeRUKrT0aw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] rcu/kasan: record and print call_rcu() call stack
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_070318_965214_BAC0D8A4 
X-CRM114-Status: GOOD (  16.41  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f42 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Tue, May 12, 2020 at 5:38 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > Are you sure it will increase object size?
> > I think we overlap kasan_free_meta with the object as well. The only
> > case we don't overlap kasan_free_meta with the object are
> > SLAB_TYPESAFE_BY_RCU || cache->ctor. But these are rare and it should
> > only affect small objects with small redzones.
> > And I think now we simply have a bug for these objects, we check
> > KASAN_KMALLOC_FREE and then assume object contains free stack, but for
> > objects with ctor, they still contain live object data, we don't store
> > free stack in them.
> > Such objects can be both free and still contain user data.
> >
>
> Overlay kasan_free_meta. I see. but overlay it only when the object was
> freed. kasan_free_meta will be used until free object.
> 1). When put object into quarantine, it need kasan_free_meta.
> 2). When the object exit from quarantine, it need kasan_free_meta
>
> If we choose to overlay kasan_free_meta, then the free stack will be
> stored very late. It may has no free stack in report.

Sorry, I don't understand what you mean.

Why will it be stored too late?
In __kasan_slab_free() putting into quarantine and recording free
stack are literally adjacent lines of code:

static bool __kasan_slab_free(struct kmem_cache *cache, void *object,
      unsigned long ip, bool quarantine)
{
    ...
    kasan_set_free_info(cache, object, tag);
    quarantine_put(get_free_info(cache, object), cache);


Just to make sure, what I meant is that we add free_track to kasan_free_meta:

struct kasan_free_meta {
    struct qlist_node quarantine_link;
+  struct kasan_track free_track;
};

And I think its life-time and everything should be exactly what we need.

Also it should help to fix the problem with ctors: kasan_free_meta is
already allocated on the side for such objects, and that's exactly
what we need for objects with ctor's.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

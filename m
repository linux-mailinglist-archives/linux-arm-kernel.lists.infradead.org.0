Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 272ECD605D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 12:38:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5KbqGIM8RqXUFeoyley/9Mn8e52QJAjbDWwL12IR1AU=; b=k/B5atM+bC5P2l
	gr0fspB5T0+Xw9QAr14Kdbi1mDfxgm+k1rvdIsrf1KVbRuaWfXpSpaDfAh35unk0BrOpvQmVKggaw
	a3LWyu9rLXJtUsl5v9fMQH+kxZXWh2jpj9bfi7PHI8UqnYkXyssKzJBmMT9CVzKUHX4h6x6lK0z+8
	hQOS1ciyCR6WCsVUWJJW7mlS4YXO2UdOiKzQiYk+8oM6YpbylxT8ls08jOWmhqugsmZIp8zxOoKaC
	EJoSbIKIq1e0EI3p8E3rh2LVuIhYGEhPxrthuVeeTiV25RS8w1buV5mvynEC8M/3Nc1zWOW5p25aL
	Z+yyFQYNKrS639k+L2AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJxjp-0000VG-Ua; Mon, 14 Oct 2019 10:38:06 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJxja-0000TK-C9
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 10:37:52 +0000
Received: by mail-qk1-x744.google.com with SMTP id h126so15401014qke.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 03:37:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Xb4r1wuhDtOoPbUBnl8EutTh4mh6Tp7aWVqMVQujZhw=;
 b=ncAdm5p62dlyPVnbhlG8Ia8TOY8Bj9kzLoEPG8kBn98/b8IfkhIVulK5Sep05pIK1O
 a8o0B3t0aBxh0xAqIOcEfeSXp13CEtfHNcab6d7/193DUVfmkz6KLTW7BNnGSznYniOC
 OrQZYXwNQfNq6OFKV5BbBiaTmdDdA/KzwRrZQgY2d88OFjuIVU2/uImhKHWnlurIyJTf
 NP0R4emwQfuBb5AFCb0fsCrPv+n4gOBYVydhYj5Mse1CI1LeqzszvjYKB1kegwn/09dD
 ncJyFdOgxfUX5QfpE14HpJht0iIDCoje7GqrMD9p9QhnHQ3UxkeRvYSV9f1KCk9Dy3Wa
 IlLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Xb4r1wuhDtOoPbUBnl8EutTh4mh6Tp7aWVqMVQujZhw=;
 b=SnwGnm3JsRGENqYyHkYryIkPHmT+XqgEr1sJNYaKXfKJ8r/+ZSKs0sTEccqoz20Pnu
 u4X+FkNJBXV4APr5WGd9nXr48A9UXpvnQ2IU7JZCA1heSISO25t+TjdHsYGlDEUQsx4V
 G+wyKabnX3mCj4s5ksRoZ6NUaxaL/9HCXEH5weUAKzU1V2BYhn1RV63YOE0qxoIWCppo
 5nKqYqxGhA+EwWAR3ov7IVYwORlhk0f8r9nQlV/tC3P4F82GGxqPN8SLoGjrgGq6RdQ3
 iVBKLjjnwWMDsSY9W4JF5fY+l20vDZ6kJF7KbaXI3lkoNNg7Qk8VA0Xjxcnl3Mugwx8a
 EMBA==
X-Gm-Message-State: APjAAAWEG8+Cle97NyRjaKPiX8zfLb2Y0E0vwVtCP1M0ZusDI7qdBrai
 kUwzYA2Au0vQzf1yc4z/9O8DpxtHMycDp82QR+c7MQ==
X-Google-Smtp-Source: APXvYqxYd8Es1sxTY+VJ2ATWYdlj9YU4K41B4R2sul1P3y5YoKeVysrLikKwT7pXtYzOTHQ/ki/Sr8bYKKH4sdYYyHs=
X-Received: by 2002:a05:620a:2158:: with SMTP id
 m24mr29448433qkm.250.1571049468723; 
 Mon, 14 Oct 2019 03:37:48 -0700 (PDT)
MIME-Version: 1.0
References: <20191014103148.17816-1-walter-zh.wu@mediatek.com>
 <CACT4Y+aSybD6Z0YHuhbaTKK+fd4c3t4z8WneYdRRqA4N-G0fkA@mail.gmail.com>
In-Reply-To: <CACT4Y+aSybD6Z0YHuhbaTKK+fd4c3t4z8WneYdRRqA4N-G0fkA@mail.gmail.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 14 Oct 2019 12:37:37 +0200
Message-ID: <CACT4Y+aj20xfJ4nSR1piWcZTmANJ-kS8+ZcBfz6jG4ZTjR51yw@mail.gmail.com>
Subject: Re: [PATCH 0/2] fix the missing underflow in memory operation function
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_033750_413394_70FBC084 
X-CRM114-Status: GOOD (  20.59  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-mediatek@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, Linux-MM <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 12:36 PM Dmitry Vyukov <dvyukov@google.com> wrote:
>
> On Mon, Oct 14, 2019 at 12:32 PM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> >
> > The patchsets help to produce KASAN report when size is negative numbers
> > in memory operation function. It is helpful for programmer to solve the
> > undefined behavior issue. Patch 1 based on Dmitry's review and
> > suggestion, patch 2 is a test in order to verify the patch 1.
>
> Hi Walter,
>
> I only received this cover letter, but not the actual patches. I also
> don't see them in the group:
> https://groups.google.com/forum/#!forum/kasan-dev
> nor on internet. Have you mailed them? Where are they?

OK, received them just now.

> > [1]https://bugzilla.kernel.org/show_bug.cgi?id=199341
> > [2]https://lore.kernel.org/linux-arm-kernel/20190927034338.15813-1-walter-zh.wu@mediatek.com/
> >
> > Walter Wu (2):
> > kasan: detect negative size in memory operation function
> > kasan: add test for invalid size in memmove
> >
> > ---
> >  lib/test_kasan.c          | 18 ++++++++++++++++++
> >  mm/kasan/common.c         | 13 ++++++++-----
> >  mm/kasan/generic.c        |  5 +++++
> >  mm/kasan/generic_report.c | 18 ++++++++++++++++++
> >  mm/kasan/tags.c           |  5 +++++
> >  mm/kasan/tags_report.c    | 17 +++++++++++++++++
> >  6 files changed, 71 insertions(+), 5 deletions(-)
> >
> > --
> > 2.18.0
> >
> > --
> > You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/20191014103148.17816-1-walter-zh.wu%40mediatek.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

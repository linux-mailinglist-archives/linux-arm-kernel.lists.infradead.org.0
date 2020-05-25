Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0771E1379
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 19:37:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hMz1dK3WKPe/wK4Rcr2eoU5Skb1PZLyyVztnP1+54zY=; b=P9lpF7QeTuJ2T2
	NLl5xSgUbZfohQ3JMkuywD3gXcTcDou7mm+Pth/HeIg5w/EMhuqvVya8oUfJoqrvFu4L4TWzLT9YA
	CukKJ4J+Mr8qM2v1xy4Kjqbha9N6pYQ6AjGZwPPUAjDilkFTL+uXxjKaVhpISv2wh5DYOGFVrW3Js
	1j5Y9Cr9LC8wd3Z48W4RwqRmn/hVnIHOq/z25WCMX0i2etdfmn0QPnaGtL0cbIbTZiXwIK5MSe6FX
	ACtIvl/EWMYHaCI89LY+Tz/ZI9EyAs+c6XygJAY5lqbq84W9iRwx4eQdZzXJCo5mTVxEgjJowlOLW
	GifE8x73eVFYSD2W9xDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdH28-0008JC-Fe; Mon, 25 May 2020 17:37:04 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdH1m-00087p-Hl
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 17:36:44 +0000
Received: by mail-pj1-x1043.google.com with SMTP id q9so203580pjm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 10:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IJjU5AD78PQmMgIoxlhUE3XdqOGH2pnJ5GvxPy/ZWeA=;
 b=vrKxB8Ua+XZv4ykKGQgav6FhXKVJzsqZQi6l56ji2rRpxEXy+U0uFSAqqvLXB59YM0
 2msyq81bVTgHfqK1FdOumNDJOpeqzHcN+anyUyzdYd1b44EJu0EE+KyyQGK2cmGJCoIG
 ctxMlfJr9abZC4SFziuymzvUKKJ3ffJQ51PZUNeRBB084rim2V8/Aiq2ro76qwYi4XMO
 eHmtL/MBn5MCH5n6wnNm607QikhtfJzzD/tQLjCxlPOyYb9rfABOUj02gOqim7FQMVPb
 xd9nqr3CPh4Zc2mpGJTmD1gG6o+DuyFWZxpTMcTd86jxAvYgrndO34XI5WQhegqcftN7
 iV1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IJjU5AD78PQmMgIoxlhUE3XdqOGH2pnJ5GvxPy/ZWeA=;
 b=LpnR/7isjpUz7Nq3lOkLpnmjXEM1sB+FbGoq9tvQRja8VEKwk30kVzA0Twnxy2tq1Q
 w6DjmRzbhK6xkVCevp0q6AjE0RR9AL1EUCB44ON3C96q/ouozB9m4gvlbQal5YVawY6Q
 1AiJz2j1Zfl7JdVv78ZcWCXXlGAbweHFMFnZWkfaKIokFaMEwdpFVBvjbaHEfW20losG
 IiNj6R8mur8H9TcOTjlinFfly0QD03E12IN6YG4rVdLgkfEkd3yDG438FFg037FcKNlf
 5dN/pM7xcegUn1bbUMc2zaO4/Z1yqWc1J40grOgeZ5v7D1DNXBcDCWt6Y9z83jMg+8DE
 LptA==
X-Gm-Message-State: AOAM532XufdNpJn9zopTy7E4jMR5S/xZ6eJmS2FO8Ol1HkRJ77WUQoaz
 VtOMXCdjkJaWUa1b3j+TCyfCGsyKROrNhNCoSEqyvA==
X-Google-Smtp-Source: ABdhPJz0kSa4s6ANDBb+YqExevdOdc33aV3eoTivjXP7z1lS4l97h5suRM2uOi232ee0BDQo2/+CwFWu+Jw4ExRID7M=
X-Received: by 2002:a17:90b:1994:: with SMTP id
 mv20mr21281595pjb.41.1590428198538; 
 Mon, 25 May 2020 10:36:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200522015757.22267-1-walter-zh.wu@mediatek.com>
In-Reply-To: <20200522015757.22267-1-walter-zh.wu@mediatek.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Mon, 25 May 2020 19:36:27 +0200
Message-ID: <CAAeHK+y9qz5P-WCWEGwUx__XVzPXTddcOXsFDnFvh_1-k4Opxw@mail.gmail.com>
Subject: Re: [PATCH v6 0/4] kasan: memorize and print call_rcu stack
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_103642_653591_D26A7AF2 
X-CRM114-Status: GOOD (  23.27  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 "Paul E . McKenney" <paulmck@kernel.org>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Lai Jiangshan <jiangshanlai@gmail.com>, Josh Triplett <josh@joshtriplett.org>,
 kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>,
 Joel Fernandes <joel@joelfernandes.org>, linux-mediatek@lists.infradead.org,
 Alexander Potapenko <glider@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 3:58 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
>
> This patchset improves KASAN reports by making them to have
> call_rcu() call stack information. It is useful for programmers
> to solve use-after-free or double-free memory issue.
>
> The KASAN report was as follows(cleaned up slightly):
>
> BUG: KASAN: use-after-free in kasan_rcu_reclaim+0x58/0x60
>
> Freed by task 0:
>  kasan_save_stack+0x24/0x50
>  kasan_set_track+0x24/0x38
>  kasan_set_free_info+0x18/0x20
>  __kasan_slab_free+0x10c/0x170
>  kasan_slab_free+0x10/0x18
>  kfree+0x98/0x270
>  kasan_rcu_reclaim+0x1c/0x60
>
> Last call_rcu():
>  kasan_save_stack+0x24/0x50
>  kasan_record_aux_stack+0xbc/0xd0
>  call_rcu+0x8c/0x580
>  kasan_rcu_uaf+0xf4/0xf8
>
> Generic KASAN will record the last two call_rcu() call stacks and
> print up to 2 call_rcu() call stacks in KASAN report. it is only
> suitable for generic KASAN.
>
> This feature considers the size of struct kasan_alloc_meta and
> kasan_free_meta, we try to optimize the structure layout and size
> , let it get better memory consumption.
>
> [1]https://bugzilla.kernel.org/show_bug.cgi?id=198437
> [2]https://groups.google.com/forum/#!searchin/kasan-dev/better$20stack$20traces$20for$20rcu%7Csort:date/kasan-dev/KQsjT_88hDE/7rNUZprRBgAJ

Reviewed-by: Andrey Konovalov <andreyknvl@google.com>

for the series.

Thanks!

>
> Changes since v2:
> - remove new config option, default enable it in generic KASAN
> - test this feature in SLAB/SLUB, it is pass.
> - modify macro to be more clearly
> - modify documentation
>
> Changes since v3:
> - change recording from first/last to the last two call stacks
> - move free track into kasan free meta
> - init slab_free_meta on object slot creation
> - modify documentation
>
> Changes since v4:
> - change variable name to be more clearly
> - remove the redundant condition
> - remove init free meta-data and increasing object condition
>
> Changes since v5:
> - add a macro KASAN_KMALLOC_FREETRACK in order to check whether
>   print free stack
> - change printing message
> - remove descriptions in Kocong.kasan
>
> Changes since v6:
> - reuse print_stack() in print_track()
>
> Walter Wu (4):
> rcu/kasan: record and print call_rcu() call stack
> kasan: record and print the free track
> kasan: add tests for call_rcu stack recording
> kasan: update documentation for generic kasan
>
> Documentation/dev-tools/kasan.rst |  3 +++
> include/linux/kasan.h             |  2 ++
> kernel/rcu/tree.c                 |  2 ++
> lib/test_kasan.c                  | 30 ++++++++++++++++++++++++++++++
> mm/kasan/common.c                 | 26 ++++----------------------
> mm/kasan/generic.c                | 43 +++++++++++++++++++++++++++++++++++++++++++
> mm/kasan/generic_report.c         |  1 +
> mm/kasan/kasan.h                  | 23 +++++++++++++++++++++--
> mm/kasan/quarantine.c             |  1 +
> mm/kasan/report.c                 | 54 +++++++++++++++++++++++++++---------------------------
> mm/kasan/tags.c                   | 37 +++++++++++++++++++++++++++++++++++++
> 11 files changed, 171 insertions(+), 51 deletions(-)
>
> --
> You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/20200522015757.22267-1-walter-zh.wu%40mediatek.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

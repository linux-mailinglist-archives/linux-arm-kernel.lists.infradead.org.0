Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C697D1CD5CB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 12:01:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a50drhYvgbOZUtBaTAkWs88gw3PffQNLYRLqsZ7LAuI=; b=iL9ozmFlDpDZJM
	yfLnJs3WuDnBLTEsqK6r38ZqjhXDiI8oOqV5piWKKZzsLgWltga/1DDOhTawcMQlp1phuPUDtMWPZ
	Nt0OfHFcU2WswnKYV4uonx1tWY7Mpwxf87CsNRLrIoHplFhws8qeEHemYRdXoaYZo7BTvs3dRrIR+
	YEeM7DaqiMfD/GMJ4eIZo1KMmoqnFgstJXzCJBWHfE/kYzdZbMxKF9twUb86GPjIq3jQIEIDsmVF+
	fW6nGB+vHemvXiaQnkmqxFRVKTJ8WzRFuOPXHjqmv76ubcrt/IHCmzXbQ+RRXslhPmuP+eeooFfB6
	ObAegQUkZPvbEeAw2kjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY5Fk-0008Ff-9U; Mon, 11 May 2020 10:01:40 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY5Fc-0008Da-L5
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 10:01:34 +0000
Received: by mail-qv1-xf44.google.com with SMTP id 59so4257668qva.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 03:01:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dEBQw3076mBvIY7CBwoK5uqpgbduOcTYtDKSbai7h/o=;
 b=Fc1FlTQbTssxu2TxqBIzl+6Xlu+t3hasOFsdn49nv21GLo9Z8aBGG/ltllQ5Mqv3vs
 /cS1DoIzzoA0etpn9Wb1dNWhoo4a7PnSU9gFA/dVQZkuny77X/CNk7hdQFyQxT8H3DVE
 EoV6Ku67L0CdgauG4BIN5MwiXPgC4FyhVfqLLtuUmawjRwNgqWpzTu0V3aeonSzSRMtL
 8R9P8SURGv9c8w0VL0TDSiPfiUAE1V/xB68UPSMA7ViHFp2ND2ft3yukF1C5a44SZ8PL
 nkAwzrc+hrrENogaw8HqC+e+2No138vdOykTEcUxjE1xBWU0GiZOAnz+kfac1whzdwd7
 J8OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dEBQw3076mBvIY7CBwoK5uqpgbduOcTYtDKSbai7h/o=;
 b=MPXNCXUkMUDwq5MXYdrAu+hkaiMw2BT5gEwJA6VAI3L7MYecq9ce0vNrWV1pvv5umS
 M2gTs0hcvIBUazRr/yLab/b851oaLkvXhILoNaYcFGtnURWbdfg9iQ7e2IWeDcmn1MA2
 xSKHT9Z/F8p0NqkPIWbmic3l+jfpw6uxeOGhzDwKlRnvnGaOLb6nzUASazTYYMmkfgnD
 LK4/WruVPPpdUsz8QvUuKSi69nGuLag8vlNc25ZpZdHzx8T/sKoFleu6HypwZdkLf3Gr
 5/o+JPGDxhSP5AiAwurRxfxLxhQRIM3xx7PkLaOulbC5rz+13zhbQFhPnrSsUcRHG5Bh
 38oA==
X-Gm-Message-State: AGi0PuZoSYxZ5xmZEHVxpDt2R7J7q0tpGpj4fkSO/c66E1KI/983+1z2
 dQ2kE2CGyuxEDYfInw3ikDJWWrVBW2j2LY7FTCd/JQ==
X-Google-Smtp-Source: APiQypK3J4Uss9hZs4ShXGbm1QYq+YrrdMGKWDeQyyrRLVZFWF+P7Ohh0VDwlQa19CWjtVyUyFUBSpLqPPKQVLzi6XA=
X-Received: by 2002:ad4:5a48:: with SMTP id ej8mr15299087qvb.122.1589191286510; 
 Mon, 11 May 2020 03:01:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200511022359.15063-1-walter-zh.wu@mediatek.com>
In-Reply-To: <20200511022359.15063-1-walter-zh.wu@mediatek.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 11 May 2020 12:01:14 +0200
Message-ID: <CACT4Y+aC4i8cAVFu2-s82RczWCjYMpPVJLwS0OBLELR9qF8SYg@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] kasan: memorize and print call_rcu stack
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_030132_688588_3A6A088E 
X-CRM114-Status: GOOD (  21.17  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 "Paul E . McKenney" <paulmck@kernel.org>, Linux-MM <linux-mm@kvack.org>,
 Lai Jiangshan <jiangshanlai@gmail.com>, Josh Triplett <josh@joshtriplett.org>,
 kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>,
 Joel Fernandes <joel@joelfernandes.org>, linux-mediatek@lists.infradead.org,
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

On Mon, May 11, 2020 at 4:24 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
>
> This patchset improves KASAN reports by making them to have
> call_rcu() call stack information. It is useful for programmers
> to solve use-after-free or double-free memory issue.

Hi Walter,

I am looking at this now.

I've upload the change to gerrit [1]
https://linux-review.googlesource.com/c/linux/kernel/git/torvalds/linux/+/2458

I am not capable enough to meaningfully review such changes in this format...

[1] https://linux.googlesource.com/Documentation


> The KASAN report was as follows(cleaned up slightly):
>
> BUG: KASAN: use-after-free in kasan_rcu_reclaim+0x58/0x60
>
> Freed by task 0:
>  save_stack+0x24/0x50
>  __kasan_slab_free+0x110/0x178
>  kasan_slab_free+0x10/0x18
>  kfree+0x98/0x270
>  kasan_rcu_reclaim+0x1c/0x60
>  rcu_core+0x8b4/0x10f8
>  rcu_core_si+0xc/0x18
>  efi_header_end+0x238/0xa6c
>
> First call_rcu() call stack:
>  save_stack+0x24/0x50
>  kasan_record_callrcu+0xc8/0xd8
>  call_rcu+0x190/0x580
>  kasan_rcu_uaf+0x1d8/0x278
>
> Last call_rcu() call stack:
> (stack is not available)
>
> Generic KASAN will record first and last call_rcu() call stack
> and print two call_rcu() call stack in KASAN report.
>
> This feature doesn't increase the cost of memory consumption. It is
> only suitable for generic KASAN.
>
> [1]https://bugzilla.kernel.org/show_bug.cgi?id=198437
> [2]https://groups.google.com/forum/#!searchin/kasan-dev/better$20stack$20traces$20for$20rcu%7Csort:date/kasan-dev/KQsjT_88hDE/7rNUZprRBgAJ
>
> Changes since v2:
> - remove new config option, default enable it in generic KASAN
> - test this feature in SLAB/SLUB, it is pass.
> - modify macro to be more clearly
> - modify documentation
>
> Walter Wu (3):
> rcu/kasan: record and print call_rcu() call stack
> kasan: record and print the free track
> kasan: update documentation for generic kasan
>
> Documentation/dev-tools/kasan.rst |  6 ++++++
> include/linux/kasan.h             |  2 ++
> kernel/rcu/tree.c                 |  4 ++++
> lib/Kconfig.kasan                 |  2 ++
> mm/kasan/common.c                 | 26 ++++----------------------
> mm/kasan/generic.c                | 50 ++++++++++++++++++++++++++++++++++++++++++++++++++
> mm/kasan/kasan.h                  | 23 +++++++++++++++++++++++
> mm/kasan/report.c                 | 47 +++++++++++++++++++++--------------------------
> mm/kasan/tags.c                   | 37 +++++++++++++++++++++++++++++++++++++
> 9 files changed, 149 insertions(+), 48 deletions(-)
>
> --
> You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/20200511022359.15063-1-walter-zh.wu%40mediatek.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

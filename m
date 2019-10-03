Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD979CA0A9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 16:54:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9+rHIfxA6u2zgPTcIj0IoMFxNT4gPTYQ7TgJRe6/wqE=; b=QfD8u96WLgpK5U
	BFquzh25BhM+wYdLA3ZLOTBVB9LJDQSQSyF3Bat3akjX/OQcDeltHhM4FEyBOaSDyHYO7BUw20g9a
	8MlU4QlUKy/Ba174b/S7zLbV4GdfNDFy1P9mlBxw+2410acUDefSIdiOMmHKOdWNAxMUHv8TYEf9F
	wir2BRi1sjLo+t6YUJqGeqYWKluJcREqV3rKi53lMaVhbcDzNJs2e7PtsGGVhMspCATpRjnqjRaFA
	BhVsym9ibAIA1S/XDlO/k92JocwaBcq9Dk1E2lNO0t8oVAyy40jzkK82AP0VGl3GYHuXVY5Rl95V1
	h6eKaxsxxiynf+Vz/Nxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG2Ut-00009F-FF; Thu, 03 Oct 2019 14:54:27 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG2Uj-00006o-C4
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 14:54:19 +0000
Received: by mail-qk1-x741.google.com with SMTP id y189so2656238qkc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 07:54:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BTr3LSymDwJchkLEsnB04LTDGo5fRwiRd1Hl9vtA70A=;
 b=R/HBctXOh2b5gWcxNHLyJTCkeKva5iwYrCxrcE6R5Y1O9nlRDO4z/lGH13YGw75OfM
 6YSngGCepkVmyIwZpc9TGweSQSORBzKXu49gCWDbAoBB0japKvEayqDsQOkTZ95lWJQB
 ReKTL14Cbr3rq8L2cJvaCq1fQZ8crfreSySCM2juzebn+6I+HgkdxoU9zYzFaP/Bw0/a
 Flo3SYHBZP/jzyTlEo8mqLaIFYo4RNN5IPpOKIlWzCrYF+P7TqAuiWcxYliuGb4RzwGB
 ctRZKPcuz+xoBv88DpG+lhZRJu8YzA4iHn1w4Gib8tRWzq+tjG68IVw4P4IorU/hWkgw
 uB3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BTr3LSymDwJchkLEsnB04LTDGo5fRwiRd1Hl9vtA70A=;
 b=YJHucSHw73znY0zko75LcHR9l1N9h/PATwOtaa+Ag9GQh698uFFh9b1OQZVdoVvCDs
 41jrEa7lVx9nU8K2F+f/XCg09pk375qJunp2ciOoo30UfDpjPbW2a/UbKqi2RHqMYA2s
 UDTw3I8Q8BV8bg8G/onu+zVhA9+WH947NvsfoZACZlgkP/hNO2aP1FlNawE8+GU7c89x
 abHhP8CLhNdnB/9krrj/ZG8hmATU2qI7YYmlnltWKZkUC9L0CozT9AOOxm7VJKBMaVDp
 s/99lAd5AfFlilFzWY2NmWG6IMjLVGAAoncCGjls/3YfajyvvSNWsI+s94231kF2D+F1
 //uA==
X-Gm-Message-State: APjAAAUajX/9aEY0pZDmRR5RTPPQfoCnuMPn1NAEg1v0ILzPvG14yQra
 ZKFXEqKUlNb11s+SyKMoBIX9cCmXbu5L63vIRc286w==
X-Google-Smtp-Source: APXvYqyL9WizUhZ+DgNHZ+OGEYdpizeohMbvftFIrAKWc94nnZw7UjpfApEzrSxwJaXoT0kur5Yzh12qcoxvOrP4t0k=
X-Received: by 2002:a37:985:: with SMTP id 127mr4662844qkj.43.1570114451897;
 Thu, 03 Oct 2019 07:54:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190927034338.15813-1-walter-zh.wu@mediatek.com>
 <CACT4Y+Zxz+R=qQxSMoipXoLjRqyApD3O0eYpK0nyrfGHE4NNPw@mail.gmail.com>
 <1569594142.9045.24.camel@mtksdccf07>
 <CACT4Y+YuAxhKtL7ho7jpVAPkjG-JcGyczMXmw8qae2iaZjTh_w@mail.gmail.com>
 <1569818173.17361.19.camel@mtksdccf07> <1570018513.19702.36.camel@mtksdccf07>
 <CACT4Y+bbZhvz9ZpHtgL8rCCsV=ybU5jA6zFnJBL7gY2cNXDLyQ@mail.gmail.com>
 <1570069078.19702.57.camel@mtksdccf07>
 <CACT4Y+ZwNv2-QBrvuR2JvemovmKPQ9Ggrr=ZkdTg6xy_Ki6UAg@mail.gmail.com>
 <1570095525.19702.59.camel@mtksdccf07> <1570110681.19702.64.camel@mtksdccf07>
In-Reply-To: <1570110681.19702.64.camel@mtksdccf07>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Thu, 3 Oct 2019 16:53:59 +0200
Message-ID: <CACT4Y+aKrC8mtcDTVhM-So-TTLjOyFCD7r6jryWFH6i2he1WJA@mail.gmail.com>
Subject: Re: [PATCH] kasan: fix the missing underflow in memmove and memcpy
 with CONFIG_KASAN_GENERIC=y
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_075417_411238_B6D4CF3F 
X-CRM114-Status: GOOD (  25.36  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Thu, Oct 3, 2019 at 3:51 PM Walter Wu <walter-zh.wu@mediatek.com> wrote:>
> how about this?
>
> commit fd64691026e7ccb8d2946d0804b0621ac177df38
> Author: Walter Wu <walter-zh.wu@mediatek.com>
> Date:   Fri Sep 27 09:54:18 2019 +0800
>
>     kasan: detect invalid size in memory operation function
>
>     It is an undefined behavior to pass a negative value to
> memset()/memcpy()/memmove()
>     , so need to be detected by KASAN.
>
>     KASAN report:
>
>      BUG: KASAN: invalid size 18446744073709551614 in
> kmalloc_memmove_invalid_size+0x70/0xa0
>
>      CPU: 1 PID: 91 Comm: cat Not tainted
> 5.3.0-rc1ajb-00001-g31943bbc21ce-dirty #7
>      Hardware name: linux,dummy-virt (DT)
>      Call trace:
>       dump_backtrace+0x0/0x278
>       show_stack+0x14/0x20
>       dump_stack+0x108/0x15c
>       print_address_description+0x64/0x368
>       __kasan_report+0x108/0x1a4
>       kasan_report+0xc/0x18
>       check_memory_region+0x15c/0x1b8
>       memmove+0x34/0x88
>       kmalloc_memmove_invalid_size+0x70/0xa0
>
>     [1] https://bugzilla.kernel.org/show_bug.cgi?id=199341
>
>     Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
>     Reported-by: Dmitry Vyukov <dvyukov@google.com>
>
> diff --git a/lib/test_kasan.c b/lib/test_kasan.c
> index b63b367a94e8..e4e517a51860 100644
> --- a/lib/test_kasan.c
> +++ b/lib/test_kasan.c
> @@ -280,6 +280,23 @@ static noinline void __init
> kmalloc_oob_in_memset(void)
>         kfree(ptr);
>  }
>
> +static noinline void __init kmalloc_memmove_invalid_size(void)
> +{
> +       char *ptr;
> +       size_t size = 64;
> +
> +       pr_info("invalid size in memmove\n");
> +       ptr = kmalloc(size, GFP_KERNEL);
> +       if (!ptr) {
> +               pr_err("Allocation failed\n");
> +               return;
> +       }
> +
> +       memset((char *)ptr, 0, 64);
> +       memmove((char *)ptr, (char *)ptr + 4, -2);
> +       kfree(ptr);
> +}
> +
>  static noinline void __init kmalloc_uaf(void)
>  {
>         char *ptr;
> @@ -734,6 +751,7 @@ static int __init kmalloc_tests_init(void)
>         kmalloc_oob_memset_4();
>         kmalloc_oob_memset_8();
>         kmalloc_oob_memset_16();
> +       kmalloc_memmove_invalid_size;
>         kmalloc_uaf();
>         kmalloc_uaf_memset();
>         kmalloc_uaf2();
> diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> index 2277b82902d8..5fd377af7457 100644
> --- a/mm/kasan/common.c
> +++ b/mm/kasan/common.c
> @@ -102,7 +102,8 @@ EXPORT_SYMBOL(__kasan_check_write);
>  #undef memset
>  void *memset(void *addr, int c, size_t len)
>  {
> -       check_memory_region((unsigned long)addr, len, true, _RET_IP_);
> +       if(!check_memory_region((unsigned long)addr, len, true, _RET_IP_))
> +               return NULL;

Overall approach looks good to me.
A good question is what we should return here. All bets are off after
a report, but we still try to "minimize damage". One may argue for
returning addr here and in other functions. But the more I think about
this, the more I think it does not matter.


>         return __memset(addr, c, len);
>  }
> @@ -110,7 +111,8 @@ void *memset(void *addr, int c, size_t len)
>  #undef memmove
>  void *memmove(void *dest, const void *src, size_t len)
>  {
> -       check_memory_region((unsigned long)src, len, false, _RET_IP_);
> +       if(!check_memory_region((unsigned long)src, len, false, _RET_IP_))
> +               return NULL;
>         check_memory_region((unsigned long)dest, len, true, _RET_IP_);
>
>         return __memmove(dest, src, len);
> @@ -119,7 +121,8 @@ void *memmove(void *dest, const void *src, size_t
> len)
>  #undef memcpy
>  void *memcpy(void *dest, const void *src, size_t len)
>  {
> -       check_memory_region((unsigned long)src, len, false, _RET_IP_);
> +       if(!check_memory_region((unsigned long)src, len, false, _RET_IP_))
> +               return NULL;
>         check_memory_region((unsigned long)dest, len, true, _RET_IP_);
>
>         return __memcpy(dest, src, len);
> diff --git a/mm/kasan/generic.c b/mm/kasan/generic.c
> index 616f9dd82d12..02148a317d27 100644
> --- a/mm/kasan/generic.c
> +++ b/mm/kasan/generic.c
> @@ -173,6 +173,11 @@ static __always_inline bool
> check_memory_region_inline(unsigned long addr,
>         if (unlikely(size == 0))
>                 return true;
>
> +       if (unlikely((long)size < 0)) {
> +               kasan_report(addr, size, write, ret_ip);
> +               return false;
> +       }
> +
>         if (unlikely((void *)addr <
>                 kasan_shadow_to_mem((void *)KASAN_SHADOW_START))) {
>                 kasan_report(addr, size, write, ret_ip);
> diff --git a/mm/kasan/report.c b/mm/kasan/report.c
> index 0e5f965f1882..0cd317ef30f5 100644
> --- a/mm/kasan/report.c
> +++ b/mm/kasan/report.c
> @@ -68,11 +68,16 @@ __setup("kasan_multi_shot", kasan_set_multi_shot);
>
>  static void print_error_description(struct kasan_access_info *info)
>  {
> -       pr_err("BUG: KASAN: %s in %pS\n",
> -               get_bug_type(info), (void *)info->ip);
> -       pr_err("%s of size %zu at addr %px by task %s/%d\n",
> -               info->is_write ? "Write" : "Read", info->access_size,
> -               info->access_addr, current->comm, task_pid_nr(current));
> +       if ((long)info->access_size < 0) {
> +               pr_err("BUG: KASAN: invalid size %zu in %pS\n",
> +                       info->access_size, (void *)info->ip);

I would not introduce a new bug type.
These are parsed and used by some systems, e.g. syzbot. If size is
user-controllable, then a new bug type for this will mean 2 bug
reports.
It also won't harm to print Read/Write, definitely the address, so no
reason to special case this out of a dozen of report formats.
This can qualify as out-of-bounds (definitely will cross some
bounds!), so I would change get_bug_type() to return
"slab-out-of-bounds" (as the most common OOB) in such case (with a
comment).


> +       } else {
> +               pr_err("BUG: KASAN: %s in %pS\n",
> +                       get_bug_type(info), (void *)info->ip);
> +               pr_err("%s of size %zu at addr %px by task %s/%d\n",
> +                       info->is_write ? "Write" : "Read", info->access_size,
> +                       info->access_addr, current->comm, task_pid_nr(current));
> +       }
>  }
>
>  static DEFINE_SPINLOCK(report_lock);
> diff --git a/mm/kasan/tags.c b/mm/kasan/tags.c
> index 0e987c9ca052..b829535a3ad7 100644
> --- a/mm/kasan/tags.c
> +++ b/mm/kasan/tags.c
> @@ -86,6 +86,11 @@ bool check_memory_region(unsigned long addr, size_t
> size, bool write,
>         if (unlikely(size == 0))
>                 return true;
>
> +       if (unlikely((long)size < 0)) {
> +               kasan_report(addr, size, write, ret_ip);
> +               return false;
> +       }
> +
>         tag = get_tag((const void *)addr);
>
>         /*
>
>
> --
> You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/1570110681.19702.64.camel%40mtksdccf07.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

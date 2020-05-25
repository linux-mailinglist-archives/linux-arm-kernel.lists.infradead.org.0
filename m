Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 836F81E0B22
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 11:57:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qNaN/sCTrXmBwmRGJYdpUs33ltVDTWqtdWOQ73ITjQY=; b=BM8E1IX2NG44OL
	j+CCrD3reTVQEg1d91vztQd2l8sRqT028/soKhnAEdYoG4uJHo4eSfNbg5eWJ7i9rPpYuLYsxSxIv
	UEM8Qk4vhE2L7H8JZsPP25JHrVSJGitUfpNZNdIL0ckobmpc88XODmpyVhLuZ9gPQ+lnXgfv+6SQS
	dbJ0wyKn5QbCQ4UV83GUOGzToAciZYlHirTWZNOXmpPNIRikq5Qo6aB4piiEwD9dp6eOQxLKHdbKY
	Y38e7je93lq45C1S9f+Tkt8ziQFztEq5RUkyIHUB1K2x0Wz02bKnoi0E/D+GRaJGtrgvhn7wOBE3U
	yriRViuwxllm0PO5+zag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd9rZ-0004lr-5M; Mon, 25 May 2020 09:57:41 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd9qp-0004Ii-73
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 09:56:56 +0000
Received: by mail-qk1-x742.google.com with SMTP id 205so3868354qkg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 02:56:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=W3OPQj+6MaWJ3brcNW2aa4WZVKniXvFNcmel059rH8E=;
 b=Jy+KUYg4h6yqEgXZCmyC1r7hZaPjIJ5NbD8kOSB7ANDSGTcv/cxI7IqondbwUcYIx4
 YDawj4yAqtGCTp0JhlLeUar5y5gF5ERMxMtMxT9kSvZxxMG4qNqP+DMsADzyMxnVKbjp
 Qp5JMPqDS0aZAK6jAL+ldHNC8V3WS0Ap82mFULselou6eQNZR6sUCTVknKoKe+7skkSe
 dQeDlVCIHtIQn2PZEtJqdGm5TlcgmE0EGSNqzldorS8mctTWozaYEL/goXdYZEUy6XHq
 b1ZewotnWXEtHoJ8G6kTfaYc7CdNtQvcQjiQnRuegORWPKpgBsNANNWjDA7f82Y4NWg5
 MWzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W3OPQj+6MaWJ3brcNW2aa4WZVKniXvFNcmel059rH8E=;
 b=WpGD11045RcKHZtAV0zT3LW58mtAPSDtD929+ayvLYZIDPxSSVK3LXagorupvHd8ZM
 NfKtLmlQ5r5DEWuc4Rb18mWmIQ6AfxQZYSG03G5olsAcnWB0p0IknvNsYitXRweiqj/7
 fn7QYtMUT0d3BYnQhSZwQVd4Y2EAMCmZVisEbWREmVB7KaxFkjb4UHcfaEC32mFXuHRS
 k52j+I0sDxRAD8hWizOVs48ILXrjoPutpQY39fs4KnkJHK4tj4Rnmoiqaxr5VYGQMmMP
 3nAT7RAypEWEQn8fuklWKRQpU6M89oISuUyoZOT/SmAPJ4t6zJZiyIzodn/8jkvSlzG3
 90hg==
X-Gm-Message-State: AOAM530DSkgPEtqbDXAJ9jOCeykGBIXTR5W1YwFFJLagIDEvmShdEncv
 nJc/zKZrlbBZ49AcYU9I70rjSAmgguzuAQeFu2IRv7eBv34=
X-Google-Smtp-Source: ABdhPJxqSbuF0F9MjNbi/qpdSowpX/KR1shgHH8LS5OI24MEwe9xv7ADZ1UvXqDFHd6kocEjU/m+KLakA52EHSzuhyQ=
X-Received: by 2002:a05:620a:786:: with SMTP id
 6mr1210763qka.407.1590400613522; 
 Mon, 25 May 2020 02:56:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200522020151.23405-1-walter-zh.wu@mediatek.com>
In-Reply-To: <20200522020151.23405-1-walter-zh.wu@mediatek.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 25 May 2020 11:56:42 +0200
Message-ID: <CACT4Y+axrVeCwdEg_yWH57jF7gcKT429J4wVwsNGPuARcPMiLg@mail.gmail.com>
Subject: Re: [PATCH v6 3/4] kasan: add tests for call_rcu stack recording
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_025655_266010_A3A2317B 
X-CRM114-Status: GOOD (  20.35  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
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

On Fri, May 22, 2020 at 4:02 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
>
> Test call_rcu() call stack recording and verify whether it correctly
> is printed in KASAN report.

Reviewed-and-tested-by: Dmitry Vyukov <dvyukov@google.com>

> Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
> Cc: Dmitry Vyukov <dvyukov@google.com>
> Cc: Alexander Potapenko <glider@google.com>
> Cc: Matthias Brugger <matthias.bgg@gmail.com>
> ---
>  lib/test_kasan.c | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
>
> diff --git a/lib/test_kasan.c b/lib/test_kasan.c
> index e3087d90e00d..6e5fb05d42d8 100644
> --- a/lib/test_kasan.c
> +++ b/lib/test_kasan.c
> @@ -792,6 +792,35 @@ static noinline void __init vmalloc_oob(void)
>  static void __init vmalloc_oob(void) {}
>  #endif
>
> +static struct kasan_rcu_info {
> +       int i;
> +       struct rcu_head rcu;
> +} *global_ptr;
> +
> +static noinline void __init kasan_rcu_reclaim(struct rcu_head *rp)
> +{
> +       struct kasan_rcu_info *fp = container_of(rp,
> +                                               struct kasan_rcu_info, rcu);
> +
> +       kfree(fp);
> +       fp->i = 1;
> +}
> +
> +static noinline void __init kasan_rcu_uaf(void)
> +{
> +       struct kasan_rcu_info *ptr;
> +
> +       pr_info("use-after-free in kasan_rcu_reclaim\n");
> +       ptr = kmalloc(sizeof(struct kasan_rcu_info), GFP_KERNEL);
> +       if (!ptr) {
> +               pr_err("Allocation failed\n");
> +               return;
> +       }
> +
> +       global_ptr = rcu_dereference_protected(ptr, NULL);
> +       call_rcu(&global_ptr->rcu, kasan_rcu_reclaim);
> +}
> +
>  static int __init kmalloc_tests_init(void)
>  {
>         /*
> @@ -839,6 +868,7 @@ static int __init kmalloc_tests_init(void)
>         kasan_bitops();
>         kmalloc_double_kzfree();
>         vmalloc_oob();
> +       kasan_rcu_uaf();
>
>         kasan_restore_multi_shot(multishot);
>
> --
> 2.18.0
>
> --
> You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/20200522020151.23405-1-walter-zh.wu%40mediatek.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0BE1C6D94
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 11:50:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1JQh6Wc/CDTp9HfHcBeK53MeNPQmqD60cMP+HtO6ZzI=; b=Zx804acB4q64EU
	4KZuaX8+zRmQUpgAmDXT3R7/lw5JiNZxxhGhE1ZysbCa27FL1PzjSLZyk5+gr38orMYpuBKg6ephb
	xYYsWPzBSXVHbVJ3eEUWKTXuIRHtwMzwP/PVlr7sNsOqbL8anybm+K8ZyvO3INponkvx4X0HeAtYu
	FSXDDuGipfqmY7FoS6EqHFFV7Didar7TjTBwjm+H+iEjAa73eQR/LAc6aXo+QPeXIF3VmwOiKdbBv
	kNg3OXQ61i6FbA3d5y1DDkn2GZ1Dx4JLud7DGF4Rm1wNnh8Xk8NPMCTy4GV2HJSaDA6nChncpZPTj
	a9SpxzChioqnMgGZERCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWGhR-0006e4-W8; Wed, 06 May 2020 09:50:46 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWGhK-0006dE-Ih
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 09:50:40 +0000
Received: by mail-qv1-xf41.google.com with SMTP id 59so360464qva.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 02:50:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j5iMU2d4N/4y18awBTt8gjljQLvXQSdia/Cv9QIxeQc=;
 b=WpjHBPWXGTysRpxifjir4tXVCuKqA1X+l/deTz186nKbtDUTwu3h5569FI40ufr7Y0
 jelE3jp7G8bz9axcn6AXPJXy6yfrpiDVcXv0zhsWqOhRjsO3WgmfH7ZCZnmkigqa4CSc
 q5bLcMsoWaA+5a+SMWP7taOFMyIwdHJvpRFbVP4FxIiipCJgab6ceIi695Dt4wA+u3yL
 GbRaFkMKtyllv59YmxI8lsW8o+eq1DZmYfTlIEYNwMT1+thAJ7nAoGws0qpEBQnuZFMb
 iJi5Q5bF59al+NHZaNPO/j/U3J1D8HIFH/czkNrVkDGUd8O1qc/wX+u/6bj+EjX1BhxR
 oB5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j5iMU2d4N/4y18awBTt8gjljQLvXQSdia/Cv9QIxeQc=;
 b=GHhDMgOAq4fDSoxeUhE04i6ugAHmjrXnZRES99sPFsT5/oDsnJMT1qm4fc5DxZuALI
 NJORRIJ79/g1CckDAp/sOPH4wHYthm+jRVLYIrQKWz43tyX0Rj8O2A+HPkNylX212PUn
 zb2b1PU59ZMpJ2RWtH3wk9t7/QXSDfUc5NHvK32ua1mgiO7K5lHq6F+4wpH3OawpfdeL
 gzfdxaZtMoN/q5TV4SSph6al6a0O7d3bWSRCn+uRivoGb9JRuzo0gZbRLV/UAX7MJZyw
 7DH4zgWCZutBUAq9JzfSFxr+FHuey3UqCS7GJ4HxMpbwF3gft5SrT8d3G/OGTb7YRFHu
 NmrA==
X-Gm-Message-State: AGi0Pua9okJZNxQ1sbECL5vni+DNPPyYY5+B6Wcn3HZnkp8GpPm2/7y6
 spc//QmZveK1mWlnU0jyKLGHSpSPTDKox0EBcxXzmA==
X-Google-Smtp-Source: APiQypJznpPYxdfEFeeA/QM+9LIu8pWPgSCbjVVq0Lf5+We9+p6YyIWg00C4LnkrqUZfh4/TEvzyLyHWExLaxty7q4s=
X-Received: by 2002:ad4:5a48:: with SMTP id ej8mr7241682qvb.122.1588758636814; 
 Wed, 06 May 2020 02:50:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200506052155.14515-1-walter-zh.wu@mediatek.com>
In-Reply-To: <20200506052155.14515-1-walter-zh.wu@mediatek.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 6 May 2020 11:50:25 +0200
Message-ID: <CACT4Y+ajKJpwNXd1V17bOT_ZShXm8h2eepxx_g4hAqk78SxCDA@mail.gmail.com>
Subject: Re: [PATCH 2/3] kasan: record and print the free track
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_025038_642145_888383E9 
X-CRM114-Status: GOOD (  26.41  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
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

On Wed, May 6, 2020 at 7:22 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
>
> We add new KASAN_RCU_STACK_RECORD configuration option. It will move
> free track from slub meta-data (struct kasan_alloc_meta) into freed object.
> Because we hope this options doesn't enlarge slub meta-data size.
>
> This option doesn't enlarge struct kasan_alloc_meta size.
> - add two call_rcu() call stack into kasan_alloc_meta, size is 8 bytes.
> - remove free track from kasan_alloc_meta, size is 8 bytes.
>
> This option is only suitable for generic KASAN, because we move free track
> into the freed object, so free track is valid information only when it
> exists in quarantine. If the object is in-use state, then the KASAN report
> doesn't print call_rcu() free track information.
>
> [1]https://bugzilla.kernel.org/show_bug.cgi?id=198437
>
> Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
> Cc: Dmitry Vyukov <dvyukov@google.com>
> Cc: Alexander Potapenko <glider@google.com>
> ---
>  mm/kasan/common.c | 10 +++++++++-
>  mm/kasan/report.c | 24 +++++++++++++++++++++---
>  2 files changed, 30 insertions(+), 4 deletions(-)
>
> diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> index 32d422bdf127..13ec03e225a7 100644
> --- a/mm/kasan/common.c
> +++ b/mm/kasan/common.c
> @@ -321,8 +321,15 @@ void kasan_record_callrcu(void *addr)
>                 /* record last call_rcu() call stack */
>                 alloc_info->rcu_free_stack[1] = save_stack(GFP_NOWAIT);
>  }
> -#endif
>
> +static void kasan_set_free_info(struct kmem_cache *cache,
> +               void *object, u8 tag)
> +{
> +       /* store free track into freed object */
> +       set_track((struct kasan_track *)(object + BYTES_PER_WORD), GFP_NOWAIT);
> +}
> +
> +#else
>  static void kasan_set_free_info(struct kmem_cache *cache,
>                 void *object, u8 tag)
>  {
> @@ -339,6 +346,7 @@ static void kasan_set_free_info(struct kmem_cache *cache,
>
>         set_track(&alloc_meta->free_track[idx], GFP_NOWAIT);
>  }
> +#endif
>
>  void kasan_poison_slab(struct page *page)
>  {
> diff --git a/mm/kasan/report.c b/mm/kasan/report.c
> index 7aaccc70b65b..f2b0c6b9dffa 100644
> --- a/mm/kasan/report.c
> +++ b/mm/kasan/report.c
> @@ -175,8 +175,23 @@ static void kasan_print_rcu_free_stack(struct kasan_alloc_meta *alloc_info)
>         print_track(&free_track, "Last call_rcu() call stack", true);
>         pr_err("\n");
>  }
> -#endif
>
> +static struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
> +               void *object, u8 tag, const void *addr)
> +{
> +       u8 *shadow_addr = (u8 *)kasan_mem_to_shadow(addr);
> +
> +       /*
> +        * Only the freed object can get free track,
> +        * because free track information is stored to freed object.
> +        */
> +       if (*shadow_addr == KASAN_KMALLOC_FREE)
> +               return (struct kasan_track *)(object + BYTES_PER_WORD);

Humm... the other patch defines BYTES_PER_WORD as 4... I would assume
seeing 8 (or sizeof(long)) here. Why 4?
Have you tested all 4 modes (RCU/no-RCU x SLAB/SLUB)? As far as I
remember one of the allocators stored something in the object.

Also, does this work with objects with ctors and slabs destroyed by
rcu? kasan_track may smash other things in these cases.
Have you looked at the KASAN implementation when free_track was
removed? That may have useful details :)


> +       else
> +               return NULL;
> +}
> +
> +#else
>  static struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
>                 void *object, u8 tag, const void *addr)
>  {
> @@ -196,6 +211,7 @@ static struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
>
>         return &alloc_meta->free_track[i];
>  }
> +#endif
>
>  static void describe_object(struct kmem_cache *cache, void *object,
>                                 const void *addr, u8 tag)
> @@ -208,8 +224,10 @@ static void describe_object(struct kmem_cache *cache, void *object,
>                 print_track(&alloc_info->alloc_track, "Allocated", false);
>                 pr_err("\n");
>                 free_track = kasan_get_free_track(cache, object, tag, addr);
> -               print_track(free_track, "Freed", false);
> -               pr_err("\n");
> +               if (free_track) {
> +                       print_track(free_track, "Freed", false);
> +                       pr_err("\n");
> +               }
>  #ifdef CONFIG_KASAN_RCU_STACK_RECORD
>                 kasan_print_rcu_free_stack(alloc_info);
>  #endif
> --
> 2.18.0
>
> --
> You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/20200506052155.14515-1-walter-zh.wu%40mediatek.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

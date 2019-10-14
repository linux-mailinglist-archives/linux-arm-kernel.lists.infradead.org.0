Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8F1D6071
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 12:41:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ue5aqgtAqTS5veYG6LwmO+8SHR29K0j3MWIbTxSllA=; b=rIAYroRAdaLnjX
	h3HNpn6QFy+zyd4YtAmfudNagXpbC31/eRTEg3Y6fnQYAm+8UQbWPcEWScYUTaZsHKPbTYjlfSS+4
	QtJ8/3AjV6LzHzzyzba1J4ubvypYbD1ExDNdrKE4dYp7V5G0uf0GLBgNsRJHhVzRno/rKq8Ug/hp0
	o5azweb0utccugphJzbhQyUWe9BEgruP3z1bXbYzjnvAuFGr92kLOeZXxrsQKESTKga7/uoyvs/ZC
	YXCpHfwPfpAXrq0c8fCnUF/r187gT+S30OKnFfi9vXcFK7OTXpb1nWKNzUXw7xLipOddGmC+llWTS
	gXWWv0pumuy5qdU6JHKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJxnA-0002Zp-0z; Mon, 14 Oct 2019 10:41:32 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJxmv-0002Xl-4j
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 10:41:18 +0000
Received: by mail-qk1-x743.google.com with SMTP id y189so15442901qkc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 03:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/mDM4m3k7JTmmCNbrikY7f4R5yxUjjMcbeuuaXG2YC4=;
 b=rV8Qq1zTj/mqAQLscWN+hHRGrpBFQz7Ai/S3kljTyK03CLIDKNz06WjsMkRDVsYsx0
 RmVY8DA/49HQb7MYt5x9SFGsNGllrTYgA8Ovt2566vYlaypERUdHVWTBPNcITZVSoLmo
 BGGZvgkak+eoLS+ItIs2jU/vbtOhRpj+wNGDv8oBZJdDAJhqswAdYxHnPw9z+5TtnNqK
 WYHnSi4riwQnvt4Bk49k83Uzw02VE3C3tXXs928y+Z31zQLVLT6QFlyN4xyMpMJx3tXg
 zk1r/piFdMHJZHMmL3EqZg0iQhcTu7aeT0UUv+nGv2eBB4sH+J4WwMGr/gOSrEWl0zZv
 tI3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/mDM4m3k7JTmmCNbrikY7f4R5yxUjjMcbeuuaXG2YC4=;
 b=T8DtbjD0r9COF9XNJDE7Nzq6dRhZ1O81HuvOcgLwtrR/6v+/9Lq4ZnDRy6VblPtXsR
 nQvD9YY7FgMFwHyQOFtMeuvA3xC+v7rYDQAT0PDsrl43zaVefAj6rxAqKUxqRO6zee8y
 kIqvoG6ypSiJuM5/XxjeCDsbW2W2ZxFMu2CLi4rA5DcOcLEsnOUj6dYtR0cWlnn2t2F4
 8qwWhI/rNr8oPil+mUjSokAE1RXaXLoIJtn4m4oNUebovldRMlP5ZehMF6v70pC10bk1
 A+QccTH4EMC3ZOhKeYa4OO4OGReaK1zodtHPz1D9qhLdVugyQBET08Bgj2NIpJhrb/2f
 U0JQ==
X-Gm-Message-State: APjAAAXq/atqROSv0wUtKPfo3ZwHk4dPUNAbjoczX6sjN53elLqSX9eP
 wWII5bYF0Ga5Pa0IPrz2wToytj8et3ox7KFepQSl8Q==
X-Google-Smtp-Source: APXvYqwwwX+oLoGrnp0iO7Ph5lNAvWQm97LqjGAYSHmqnVtQ7XHdlMS8rQnbz4rzIgZfjST0xq01CRRxqEDpLybjQrI=
X-Received: by 2002:a37:4a87:: with SMTP id x129mr28464725qka.43.1571049675564; 
 Mon, 14 Oct 2019 03:41:15 -0700 (PDT)
MIME-Version: 1.0
References: <20191014103654.17982-1-walter-zh.wu@mediatek.com>
In-Reply-To: <20191014103654.17982-1-walter-zh.wu@mediatek.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 14 Oct 2019 12:41:04 +0200
Message-ID: <CACT4Y+YOwMB6bguUwpcgDeaenErqG+CeuqcV-9GmB72C13Fn5A@mail.gmail.com>
Subject: Re: [PATCH 2/2] kasan: add test for invalid size in memmove
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_034117_187006_E60EE172 
X-CRM114-Status: GOOD (  20.98  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
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

On Mon, Oct 14, 2019 at 12:37 PM Walter Wu <walter-zh.wu@mediatek.com> wrote:
>
> Test size is negative numbers in memmove in order to verify
> whether it correctly get KASAN report.
>
> Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>

Reviewed-by: Dmitry Vyukov <dvyukov@google.com>

Thanks!

> ---
>  lib/test_kasan.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>
> diff --git a/lib/test_kasan.c b/lib/test_kasan.c
> index 49cc4d570a40..06942cf585cc 100644
> --- a/lib/test_kasan.c
> +++ b/lib/test_kasan.c
> @@ -283,6 +283,23 @@ static noinline void __init kmalloc_oob_in_memset(void)
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
> @@ -773,6 +790,7 @@ static int __init kmalloc_tests_init(void)
>         kmalloc_oob_memset_4();
>         kmalloc_oob_memset_8();
>         kmalloc_oob_memset_16();
> +       kmalloc_memmove_invalid_size();
>         kmalloc_uaf();
>         kmalloc_uaf_memset();
>         kmalloc_uaf2();
> --
> 2.18.0
>
> --
> You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/20191014103654.17982-1-walter-zh.wu%40mediatek.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

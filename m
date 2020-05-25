Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61ACA1E0B24
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 11:58:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F+q45l/LqkHATWzfmxd6/xM5liop5L1+J8w0Tt2CR1I=; b=M60+9/qjxWcuCU
	E2rP1/BjP6fDEEeo4N4zd6v2uEe1VA19goSKqANI2Yd1FtnZ7SxQW9xMR2gLnoAg8hXOoGfZyyuHF
	9KnmBjvQ95mKbT0CtxE4RZ2MP/CkDVYurwKiD1J0wE8tuseoeoj+FhFUQ8JQf0rsJ7iIGURENbYQX
	+6W1SBKimW4RRElJofjyzGfZbg7L8eLkqwWj2CM2CL4yOps+UkoXkyv/j5z+uVcTRJBOOHhSrkZYe
	rlAkmuDbQFOA+630Nvj4XBGYWCNmZIyJjy2U8fiDjCkcRbFFfPTEgogIkwKcjy9YodAE8G1vNzNZm
	NXF0jIPJIgFmwh6MQt5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd9ro-00051N-Sy; Mon, 25 May 2020 09:57:56 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd9r0-0004So-Ex
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 09:57:12 +0000
Received: by mail-qv1-xf42.google.com with SMTP id v15so7815204qvr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 02:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lXJcON4uIxpNxBwaXZsOO47XJesOn1/BpUPO8EArG+w=;
 b=qvMmSe1XAwiiXDHUShXrjRlC8kHXfgYHjV+edzVEs9diOiTb51gVIu8DIFR7Kl1EEw
 5Y6sFR/4qt/etZj+zXMQpnJBCOEpUeTwjkyvlO8aenAuL6yYXWj5/o20G1wXUq4flko1
 0Adu+aOLsPFZhSXfJTg9dh9NB1pX3j29lBaIeuFGFuoJIBmUZdgqF8H4jTnEgquDqytC
 ME1ipTZN5l8O/AB/Fdssqx02XGyIdC7XSoDAlDbHzQ/3e7envCluBo7IUnF4+C/82B+t
 JcEk4VlBKK5Unrbf4qGqJeVpeleWSKtRNitNo1bP6Ul6mHjKPR/3XdUzUOIYp4Q/Az14
 0fTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lXJcON4uIxpNxBwaXZsOO47XJesOn1/BpUPO8EArG+w=;
 b=oO5gD3jHNmJ6Ap6zjw7GTavX1JlPaTvQblMC42xA2MQkl+X1mTOnVfkWkpY0RjsLf5
 v0wMJQ1G0dsUY5cK2IiGgjIy4ejCbnk4rsSNPIOoVrUh048fe6163vgnNoEM3CiIm03b
 5DkWzXbDlyjjRSu7PVDba58N5/cnND2wNdCQfbh1Q4J82LoLS4iTbvtefoYIOdRCoG47
 ZOkKkOXVj7xhdvhNlrZJC7swjG4xVlq+7LgCb9Yii5/vhKNl57cZm2W3zV2UMo3G50bI
 yxkIJK4rTl7yJBn7haMxi5K/1EWDI72xxLKhTuTdMgkf1Tfl7dEIGgYt4RtLdOrQsp6L
 2foQ==
X-Gm-Message-State: AOAM530a+HgMEqLXHpDmWSWqCdTTlth78ffzFSNEmbG3Ee6NdHz9qP5N
 a/6a8kh1U8tffy306eSomGdveJPyS3/s2YVDNbFF5Q==
X-Google-Smtp-Source: ABdhPJwu98seAlM8B/W6iEB7Cgc17dFjE0Ji2BN+7kajKF3ry3QeBw893G/4FHc1aJT4/bDywXnEMDItzUTJpwb33p8=
X-Received: by 2002:a05:6214:15ce:: with SMTP id
 p14mr15030956qvz.159.1590400624833; 
 Mon, 25 May 2020 02:57:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200522020212.23460-1-walter-zh.wu@mediatek.com>
In-Reply-To: <20200522020212.23460-1-walter-zh.wu@mediatek.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 25 May 2020 11:56:53 +0200
Message-ID: <CACT4Y+agmL5ZOWmNBJyLSTuhy7ekp4HTafABUsqqP+XFd7ErKw@mail.gmail.com>
Subject: Re: [PATCH v6 4/4] kasan: update documentation for generic kasan
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_025706_568892_A1A41905 
X-CRM114-Status: GOOD (  19.12  )
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>, Jonathan Corbet <corbet@lwn.net>,
 linux-mediatek@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, Linux-MM <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 4:02 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
>
> Generic KASAN will support to record the last two call_rcu() call stacks
> and print them in KASAN report. So that need to update documentation.

Reviewed-and-tested-by: Dmitry Vyukov <dvyukov@google.com>

> Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
> Cc: Dmitry Vyukov <dvyukov@google.com>
> Cc: Alexander Potapenko <glider@google.com>
> Cc: Jonathan Corbet <corbet@lwn.net>
> ---
>  Documentation/dev-tools/kasan.rst | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/dev-tools/kasan.rst b/Documentation/dev-tools/kasan.rst
> index c652d740735d..fede42e6536b 100644
> --- a/Documentation/dev-tools/kasan.rst
> +++ b/Documentation/dev-tools/kasan.rst
> @@ -193,6 +193,9 @@ function calls GCC directly inserts the code to check the shadow memory.
>  This option significantly enlarges kernel but it gives x1.1-x2 performance
>  boost over outline instrumented kernel.
>
> +Generic KASAN prints up to 2 call_rcu() call stacks in reports, the last one
> +and the second to last.
> +
>  Software tag-based KASAN
>  ~~~~~~~~~~~~~~~~~~~~~~~~
>
> --
> 2.18.0
>
> --
> You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/20200522020212.23460-1-walter-zh.wu%40mediatek.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

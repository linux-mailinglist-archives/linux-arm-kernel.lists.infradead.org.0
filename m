Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DE613D5AD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 09:08:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MDOkCcv5llmpLvVvS5yCBlVAGIRKuB3q/mQZ8kYOsbk=; b=VaziVOXNP+Bgo7
	wS96NkL3ZUDW+9aqgV34i8dGr1I5M/RhR6SBfWQZULR+aF6iAYLjvTk8nc2CR/EBqhKUpNHcNbY7u
	utm+TEc2r1af+2f7hMXD4geeWo8fGTi/RXdSh/TbWfH6Gq27252/jT/j5f6tUehEIFlRq5UMIcWoD
	22JeYlk1B68Wb5UfCj+vns2oGTYz5l2IsuYrgHvREFAEDVdwqsWDHgay8priI3zd094OwFoMpY+rT
	xgc+dl5LK25O5zvKiOtKCPGePGsT8W4lGQoPMhielzsyp3DCRoDm+fVq3DNIsFJsJVgdxVAhUIq0N
	xlYThefFAGlshUaFU4IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is0CD-0006Or-Kj; Thu, 16 Jan 2020 08:08:05 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is0Bs-0006A2-Qj
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 08:07:50 +0000
Received: by mail-qt1-x843.google.com with SMTP id e5so18175775qtm.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 00:07:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7IBdjvFRag9yZE/BKc5brHAQDARDtIXaGhkF8uJXRlQ=;
 b=qfoDxmehHt9zSJPjWabWfKApmNG47N0Q2/pjIts+XRh7UWc4ym2jspVC7dOFfypjnv
 qnIVrd6DHS4ExoKZLCfn7EiaWjc0VJ+thpAfGN13cJj50S+8ZZzG+BJuvVxj4+JMY4+Z
 R2R3sRy25/3S2Joee0sQyYVPnaXfnDYs0aGfjD1YGJjSt+TL0rdiQTLtodpF5kf/j6Pw
 othExYiiQoemDJnBkRX0X7T10o0baCnxfWlv3KwtSYdf0iHOwTBM8pggRIyGf5JBaiRK
 YBZSQa8lfcCAuhH2hwTvIHBU2LeyizZrqo97LUh1gq17vixbEJpIajFMOXrsvxxStmsS
 +BEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7IBdjvFRag9yZE/BKc5brHAQDARDtIXaGhkF8uJXRlQ=;
 b=SmvfTZFva+cfIeW7vptnMIm/QTeGpOeqO0DbNvixiCWJN6SDNPnPwr3eLX1NRAOs73
 wwKwyxcIiHG6QdkBs+peZWu0izScUvyQuWLFz1hSiyQoU31FjVJbwaeHI+9XY+wWg2Vf
 Y4ukbDAYliOCGAqhVmNqyvCDJvSMpDVhz4+KGqTysofukYvQUHeJwxncUPeiTkUMcCLq
 s1+sJjjC9xmdQQW5kG6EEqe32egt/kjzA+Y8Sfpt3tloWxoYwb6UHZ8a+ER/OPHg46tM
 6RrQlq5U8tukG0XCk3MnDu4jPzrMZyCUiLHiXvssl+ttaguKK7yBFAN3MF3GHd53Kq7g
 Zs+Q==
X-Gm-Message-State: APjAAAUUPllJtJ4xxmJzaI4JeFJWs6bELiFhCSfyaidFh+4pcEIrfRRN
 m+Q31rEOBBrkL0fLnxXJ9kk+p/yxlCCj8rLp58s77Q==
X-Google-Smtp-Source: APXvYqzAhF+/72Zrdu85/2jD42Zoi8Td02RrL0uBou/vlg73GMNKwc0ffgSpLNGBhaZsCL3tktCpzfELeo9cOZYU61U=
X-Received: by 2002:ac8:30f7:: with SMTP id w52mr1194993qta.380.1579162063680; 
 Thu, 16 Jan 2020 00:07:43 -0800 (PST)
MIME-Version: 1.0
References: <20200116062625.32692-1-dja@axtens.net>
 <20200116062625.32692-4-dja@axtens.net>
In-Reply-To: <20200116062625.32692-4-dja@axtens.net>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Thu, 16 Jan 2020 09:07:32 +0100
Message-ID: <CACT4Y+YpOm9cDk5Hi62iAwMFgiotzWjfiK4i9-9jkha_ZNwuvw@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] kasan: initialise array in kasan_memcmp test
To: Daniel Axtens <dja@axtens.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_000744_901435_1C22353F 
X-CRM114-Status: GOOD (  21.79  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 linux-s390 <linux-s390@vger.kernel.org>, linux-xtensa@linux-xtensa.org,
 the arch/x86 maintainers <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, Linux-MM <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 7:26 AM Daniel Axtens <dja@axtens.net> wrote:
>
> memcmp may bail out before accessing all the memory if the buffers
> contain differing bytes. kasan_memcmp calls memcmp with a stack array.
> Stack variables are not necessarily initialised (in the absence of a
> compiler plugin, at least). Sometimes this causes the memcpy to bail
> early thus fail to trigger kasan.
>
> Make sure the array initialised to zero in the code.
>
> No other test is dependent on the contents of an array on the stack.
>
> Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
> Cc: Alexander Potapenko <glider@google.com>
> Cc: Dmitry Vyukov <dvyukov@google.com>
> Signed-off-by: Daniel Axtens <dja@axtens.net>

Reviewed-by: Dmitry Vyukov <dvyukov@google.com>

> ---
>  lib/test_kasan.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/lib/test_kasan.c b/lib/test_kasan.c
> index a130d75b9385..519b0f259e97 100644
> --- a/lib/test_kasan.c
> +++ b/lib/test_kasan.c
> @@ -619,7 +619,7 @@ static noinline void __init kasan_memcmp(void)
>  {
>         char *ptr;
>         size_t size = 24;
> -       int arr[9];
> +       int arr[9] = {};
>
>         pr_info("out-of-bounds in memcmp\n");
>         ptr = kmalloc(size, GFP_KERNEL | __GFP_ZERO);
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/20200116062625.32692-4-dja%40axtens.net.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

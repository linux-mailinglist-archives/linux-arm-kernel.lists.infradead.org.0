Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CB61B05A0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 11:28:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vX4PAG/XdyhNExuTxsKHav7NrgI4EyUIsfhjGUg7uZw=; b=n3CpQNMnL9jFuF
	QRluA7d7qwIIf70G/+JMKmghks+BsqrN6KVy9y9Vo4stZqlIahFFwZWwHVSvqESF/yM3F77QCTp/V
	jGFiIBGZCZ5zFfisVH1iSCCsGTPpASXOnhYvI6RNqZLWyLxBraHvokJWdX32imjGje0e/lkXMhS6X
	3nVLuD6Q32AaEYVI7gndez6AZdbQmI/y60YpkmFiaDy2o6dWwkqvrfe1NgOgvD3qnQByFncCeJmbT
	WW8GhiR8r1X2zuWZ5yTw+gT1nTi7VO9YrtLu0sgTpWHERjGrHDXqHOkA5df8GBslxAP6DlIjrCMPS
	Y1+XkFJB+azLzEoWREaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQSj3-0003U8-B1; Mon, 20 Apr 2020 09:28:25 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQSim-0003N8-IM
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 09:28:10 +0000
Received: by mail-ot1-f65.google.com with SMTP id i22so7464357otp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 02:28:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XArWxGkJ+VyTPp7Wsn4dbWWlVRq/sh+tie0xFdY8Wzs=;
 b=G350pSsSPEAek7SU56H1c3shrUB69LqdYCKfc2qCRBY/j4BiB59FG2lGwONLvtu5iT
 q1adrLCrkIkQk1gfI3Jbv8hejrU5/WwDpDMc7D7sZtvoym9Bi8kwyDEAIV0+6jLY9rxo
 xqdWfOA1oNQ1NUVqru7VGFBwFZBKnRTp+K9DaFf6QehERpmkm1OPqfx28oTAyaw4wUFf
 cS+SoT1tkGK1PkpLrQdACB7GkqjV6syqaTNFYN1BJsD9VjPd1ztH7WdtyK3JK6JokBto
 yezhfXhSSurCML+TYnh7GeTwTK61UuswQF+JvzyUmFkPMYoTDZ8TUezOj2WPqljFcGGQ
 /kYw==
X-Gm-Message-State: AGi0PuY5t6C2cfCs7EncF4yfmIQwXaUCSdYQAqmlc/n3wHQoaNzRgrRo
 KlFJ48vDzTZCKAxl0wSu2l9K6QGYKUmYY4R689k=
X-Google-Smtp-Source: APiQypKjsC6EXYlE5GmPZ4cHorgIglv7peKg70tltLFRlUNMnXipnoVRB6R66Yu9R4xLAwziPHJaRnQ/4in6/miu0rc=
X-Received: by 2002:a05:6830:3104:: with SMTP id
 b4mr5224618ots.250.1587374887535; 
 Mon, 20 Apr 2020 02:28:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200414131348.444715-1-hch@lst.de>
 <20200414131348.444715-25-hch@lst.de>
In-Reply-To: <20200414131348.444715-25-hch@lst.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 20 Apr 2020 11:27:56 +0200
Message-ID: <CAMuHMdXktO=2n1tbE5RWRfE1CMd9bP-aHJQifO3J9HYxoQEuXQ@mail.gmail.com>
Subject: Re: [PATCH 24/29] mm: remove __vmalloc_node_flags_caller
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_022808_616719_A5BFD219 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-hyperv@vger.kernel.org, David Airlie <airlied@linux.ie>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Linux MM <linux-mm@kvack.org>, "K. Y. Srinivasan" <kys@microsoft.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Linux-Arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Wei Liu <wei.liu@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 the arch/x86 maintainers <x86@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Laura Abbott <labbott@redhat.com>,
 Nitin Gupta <ngupta@vflare.org>, Daniel Vetter <daniel@ffwll.ch>,
 Haiyang Zhang <haiyangz@microsoft.com>, linaro-mm-sig@lists.linaro.org,
 bpf <bpf@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Minchan Kim <minchan@kernel.org>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christoph,

On Tue, Apr 14, 2020 at 3:21 PM Christoph Hellwig <hch@lst.de> wrote:
> Just use __vmalloc_node instead which gets and extra argument.  To be
> able to to use __vmalloc_node in all caller make it available outside
> of vmalloc and implement it in nommu.c.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>

One more nommu failure below...

> --- a/mm/nommu.c
> +++ b/mm/nommu.c
> @@ -150,8 +150,8 @@ void *__vmalloc(unsigned long size, gfp_t gfp_mask)
>  }
>  EXPORT_SYMBOL(__vmalloc);
>
> -void *__vmalloc_node_flags_caller(unsigned long size, int node, gfp_t flags,
> -               void *caller)
> +void *__vmalloc_node(unsigned long size, unsigned long align, gfp_t gfp_mask,
> +               int node, const void *caller)
>  {
>         return __vmalloc(size, flags);

On Mon, Apr 20, 2020 at 10:39 AM <noreply@ellerman.id.au> wrote:
> FAILED linux-next/m5272c3_defconfig/m68k-gcc8 Mon Apr 20, 18:38
>
> http://kisskb.ellerman.id.au/kisskb/buildresult/14213623/
>
> mm/nommu.c:164:25: error: 'flags' undeclared (first use in this function); did you mean 'class'?

"return __vmalloc(size, gfp_mask);"

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

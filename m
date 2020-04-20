Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AFB1B0591
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 11:26:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FFuYaelvMeO1yQh/p3PTVmg2rcvJzwUmqk6eEMFHe0I=; b=g1glJOLxWyrV64
	PRjKz5HA3rkxkBpoUe2tlnof493nQuE+8m4li6fKoS2rvsu2LTJdcvitLr96LC7e+cH/W3Ee+63HT
	heojNs/hm2grd8STlNqK6PwUKavSzvNMZCl+jWq2zJ5/mzVeNiIUTt7HiJi31Dx9tozAJt1ys/jtv
	kAR9vrGpxcEKrlBac4jBPfUYDsdcdF34fzOGWJm1K3MgxaRHaUesUkje/XjbgEdic6+c0S9V4fOWg
	8Q3nkjLibS82X7WSQ7oMhCiR0nDn31SEL4vWl9b/LLsUelDaAQYUhYbZkxpq09IMNqv6VOI9WT7oW
	Cge6uADzn/cq2tURCqrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQShN-0002Zg-Nv; Mon, 20 Apr 2020 09:26:41 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQShD-0002TZ-Jq
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 09:26:33 +0000
Received: by mail-ot1-f67.google.com with SMTP id e20so7503362otl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 02:26:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vNmHcf3myzOB2u9F8M3SMwCNsUNlPCLfd3zAQRCW16Q=;
 b=J6Yrs9w1Gh0kBaOJm6yOgbG3cWgSl76YPa9Kc1DwHuPRYru/sGxZF0VMWYQv5XB+po
 Bsn3CAgpO2no377yzJVAoMDGO8CgrxjHyQkhZzjM3TsdSFZ5ljPeNDQULwLSPoQRqU7S
 KKOPZyb1VXvXwNj989L7f43u2mFCDlqa0Dwz806TmMxGPLIvZ1R2M0BIQeHdMiyYGpQX
 I40ZhoiQxBiwb35yh7WLmPWpyUmVWosJVDsUt5hSworhwrjtkFcTk2wEWz4RVB4FxONW
 y6yh1kB+hSoYkxC2Ni4KKeMgeVG7BIyUl60lQ5ps0MZu77OlFk3mcQy/NXES/PrhG+9C
 drmA==
X-Gm-Message-State: AGi0PuYwzdtJp2b5Ng/XM1i/j7oiwwJaQZ38XgdwcHMkXqaAg2QmNFNt
 02NbOJtAxyXOQO6rA5Xw9i9Da59rdNkxetFObvo=
X-Google-Smtp-Source: APiQypLK0nAWizIJ4tO6vPe5OvpMxqQr4fd7LV61E3+C9yzFgEDzCpkHgr7Sqg0Lx1T9RyK7Z05pBaDYg8OyPFQJ0Pw=
X-Received: by 2002:a05:6830:3104:: with SMTP id
 b4mr5221130ots.250.1587374790460; 
 Mon, 20 Apr 2020 02:26:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200414131348.444715-1-hch@lst.de>
 <20200414131348.444715-27-hch@lst.de>
In-Reply-To: <20200414131348.444715-27-hch@lst.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 20 Apr 2020 11:26:19 +0200
Message-ID: <CAMuHMdXO0TV09XYxyxjEA8YdvXVwg1u6Zs=z3PzCVb9Mw5boTQ@mail.gmail.com>
Subject: Re: [PATCH 26/29] mm: remove vmalloc_user_node_flags
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_022631_650530_0953322B 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
 Johannes Weiner <hannes@cmpxchg.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christoph,

On Tue, Apr 14, 2020 at 3:22 PM Christoph Hellwig <hch@lst.de> wrote:
> Open code it in __bpf_map_area_alloc, which is the only caller.  Also
> clean up __bpf_map_area_alloc to have a single vmalloc call with
> slightly different flags instead of the current two different calls.
>
> For this to compile for the nommu case add a __vmalloc_node_range stub
> to nommu.c.

Apparently your nommu-cross-compilers are in quarantaine? ;-)

> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
> Acked-by: Johannes Weiner <hannes@cmpxchg.org>

> --- a/mm/nommu.c
> +++ b/mm/nommu.c
> @@ -150,6 +150,14 @@ void *__vmalloc(unsigned long size, gfp_t gfp_mask)
>  }
>  EXPORT_SYMBOL(__vmalloc);
>
> +void *__vmalloc_node_range(unsigned long size, unsigned long align,
> +               unsigned long start, unsigned long end, gfp_t gfp_mask,
> +               pgprot_t prot, unsigned long vm_flags, int node,
> +               const void *caller)
> +{
> +       return __vmalloc(size, flags);

On Mon, Apr 20, 2020 at 10:39 AM <noreply@ellerman.id.au> wrote:
> FAILED linux-next/m5272c3_defconfig/m68k-gcc8 Mon Apr 20, 18:38
>
> http://kisskb.ellerman.id.au/kisskb/buildresult/14213623/
>
> mm/nommu.c:158:25: error: 'flags' undeclared (first use in this function); did you mean 'class'?

"return __vmalloc(size, gfp_mask);", I assume?

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

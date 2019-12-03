Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2571210F79C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 07:03:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Zcgm6BLMW5Q1CGm8pAORL8SD1DfLmrOsUW6zFkp2uI=; b=kZ/LjKlflCDWiS
	GY79cWagbXYnEJ+yQsQT2KU33SNxHdjsD9ln+RNh/0wbOsFmS7T9lh1nJMSzwPDfbXLSZbLBrway4
	gq8eAFQah7zFExlA0uNiI+UVGY1iE+9tXhmHCchPjMlYCuFlRL+QCmRp/c1h7laAbiMQtoYoaDBgt
	Yb6IUGPgHtqerDaHz8Gnr6BNBGtd2yQf4txQ4ZnW90Szv1ugXrRCYJsh4sqoSZClJLaMerD5lYk3E
	cZoKL1pbCXWNfO9NLND3NiTHWgSeAhsGhlYW5qKSfJ4iLSMZCUJjE1VrBbFCbpRQq7lhVB5aM3Mzs
	7mRxDC4PD0znD56diBKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic1Hd-0003sk-Sk; Tue, 03 Dec 2019 06:03:37 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic1HW-0003s4-Je
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 06:03:32 +0000
Received: by mail-ot1-x342.google.com with SMTP id i4so1924537otr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 22:03:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=em0mwcnekNPSrQ/TlvXcfMqa65n+WTC4RKGqGuPqh0E=;
 b=rwTTgtN9QbUVjkYn/DftNihRoNzWlKozTXKK/Oz6EFiI5FCqNX3eA84Ik8dRuF6uYZ
 fCpfslNuibOwIMTM8B6vcT82vvAxvndKCEQVWFa/W7ZYPo5Jzzxwd4YYtTRhOccZ+sd0
 v/KFd7bfR/bhY/p4sv6qW5SZLwZlHpEwTw59RoYxzG8SraSQxdLkXRL30s7tjJUFFcKZ
 qOTz6F+tUWH3tYfZC6ysvC5G4w28oNKF8gfoDV4lyrTARKXv8vUV2tB/AkcUPdmw2XbR
 h/huoCaLj6772I7cwpfHgH/ZdYGfc13dvkKgH3c9tA9IR/l8unPzFyY1pMcA42zsUTso
 /y+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=em0mwcnekNPSrQ/TlvXcfMqa65n+WTC4RKGqGuPqh0E=;
 b=XkT9/4/F0lIvRX/FZB3BJvCnlj9UsEvVJ5q8ijWZjJZLPkeWEJjK6J5wgRpVa/m+1j
 A3FwZvGPsJTqFPdj+5EdJKSsrHWRDtaN8LBBCuJaySGWRCtNK7K+2Erjj53rMUAO938p
 WQGbjbMFjj21IzDfqd6XSh+jDqUKajN5GQARdbYlG6HH1B/zsz8XPgNidh5P7q/o5UxF
 Wmryph8iSyUQugBbkMbrv0lmTC6+G2nvFfZzYRQh97K2ndbH0m2ZoWYQ3UvFqluJouEW
 bJX7QCSSgjPoOhM/qubizoULNFjSXBui6CVmjrUDfma25/DScl3O3ZHMw2aO5JcsHc5Q
 SaZQ==
X-Gm-Message-State: APjAAAUkUzR4qLG37vo5VwEWFkB9wAjIzAexBioXl0XqKHCqtOwzqYbv
 ssbvLqGHQ4nd967sH0AlAkOg+AP9B8KDA8X2JT3Ezg==
X-Google-Smtp-Source: APXvYqyUwjjUt6uilPV5TuiM+Ljl5ziWLr7U6mbVF1pTfEgj/j/jZ1ejlryeTCkLK1bytyv33a+7IyXMakumOsoc9E0=
X-Received: by 2002:a9d:3af:: with SMTP id f44mr1989987otf.332.1575353009553; 
 Mon, 02 Dec 2019 22:03:29 -0800 (PST)
MIME-Version: 1.0
References: <20190911182546.17094-1-nsaenzjulienne@suse.de>
 <20190911182546.17094-4-nsaenzjulienne@suse.de>
 <CALAqxLVVcsmFrDKLRGRq7GewcW405yTOxG=KR3csVzQ6bXutkA@mail.gmail.com>
 <CALAqxLUkPNf9JYyt+_VOrxq=Zq03veb1y-7aDx+_Vw+fF9i82A@mail.gmail.com>
In-Reply-To: <CALAqxLUkPNf9JYyt+_VOrxq=Zq03veb1y-7aDx+_Vw+fF9i82A@mail.gmail.com>
From: John Stultz <john.stultz@linaro.org>
Date: Mon, 2 Dec 2019 22:03:17 -0800
Message-ID: <CALAqxLW7RTif_NPxFXnxfTm2_ST+6aNmE6X=3v4XsuojKH2mtg@mail.gmail.com>
Subject: Re: [PATCH v6 3/4] arm64: use both ZONE_DMA and ZONE_DMA32
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_220330_778338_EACF79AE 
X-CRM114-Status: GOOD (  19.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Amit Pundir <amit.pundir@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Will Deacon <will@kernel.org>,
 mbrugger@suse.com, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, lkml <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-mm <linux-mm@kvack.org>,
 Rob Herring <robh+dt@kernel.org>, wahrenst@gmx.net,
 Nicolas Dechense <nicolas.dechesne@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 2, 2019 at 9:38 PM John Stultz <john.stultz@linaro.org> wrote:
> On Mon, Dec 2, 2019 at 9:08 PM John Stultz <john.stultz@linaro.org> wrote:
> > Hey Nicolas,
> >   Testing the db845c with linus/master, I found a regression causing
> > system hangs in early boot:
...
> > In the above log:
> > [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: -188245
> > looks the most suspect, and going back to the working a573cdd7973d +
> > build fix I see:
> > [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 957419
> >
> > Do you have any suggestions for what might be going wrong?
>
> Digging further, it seems the error is found in calculate_node_totalpages()
>  real_size = size - zone_absent_pages_in_node(pgdat->node_id, i,
>                                                   node_start_pfn, node_end_pfn,
>                                                   zholes_size);
>
> Where for zone DMA32 size is 262144, but real_size is calculated as -883520.
>
> I've not traced through to figure out why zone_absent_pages_in_node is
> coming up with such a large number yet, but I'm about to crash so I
> wanted to share.

Ok, narrowing it down further, it seems its the following bit from the patch:

> @@ -201,13 +212,18 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
>         struct memblock_region *reg;
>         unsigned long zone_size[MAX_NR_ZONES], zhole_size[MAX_NR_ZONES];
>         unsigned long max_dma32 = min;
> +       unsigned long max_dma = min;
>
>         memset(zone_size, 0, sizeof(zone_size));
>
> -       /* 4GB maximum for 32-bit only capable devices */
> +#ifdef CONFIG_ZONE_DMA
> +       max_dma = PFN_DOWN(arm64_dma_phys_limit);
> +       zone_size[ZONE_DMA] = max_dma - min;
> +       max_dma32 = max_dma;
> +#endif
>  #ifdef CONFIG_ZONE_DMA32
>         max_dma32 = PFN_DOWN(arm64_dma32_phys_limit);
> -       zone_size[ZONE_DMA32] = max_dma32 - min;
> +       zone_size[ZONE_DMA32] = max_dma32 - max_dma;
>  #endif
>         zone_size[ZONE_NORMAL] = max - max_dma32;
>
> @@ -219,11 +235,17 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
>
>                 if (start >= max)
>                         continue;
> -
> +#ifdef CONFIG_ZONE_DMA
> +               if (start < max_dma) {
> +                       unsigned long dma_end = min_not_zero(end, max_dma);
> +                       zhole_size[ZONE_DMA] -= dma_end - start;
> +               }
> +#endif
>  #ifdef CONFIG_ZONE_DMA32
>                 if (start < max_dma32) {
> -                       unsigned long dma_end = min(end, max_dma32);
> -                       zhole_size[ZONE_DMA32] -= dma_end - start;
> +                       unsigned long dma32_end = min(end, max_dma32);
> +                       unsigned long dma32_start = max(start, max_dma);
> +                       zhole_size[ZONE_DMA32] -= dma32_end - dma32_start;
>                 }
>  #endif
>                 if (end > max_dma32) {

The zhole_sizes end up being:
zhole_size: DMA: 67671, DMA32: 1145664 NORMAL: 0

This seems to be due to dma32_start being calculated as 786432 each
time - I'm guessing that's the max_dma value.
Where dma32_end is around 548800, but changes each iteration (so we
end up subtracting a negative value each pass, growing the size).

thanks
-john

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

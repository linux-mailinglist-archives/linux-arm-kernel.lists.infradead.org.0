Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 425A861E09
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 13:56:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SwORddOFO/itsICpijcpwAN8k8iGAhqLv2J2793wbVM=; b=PlCFc/qoFpVo7g
	7FtLZwmNVq8oYkwDk5Qvtc9NsmA8hecdz4Uq/beALV1hsO+fNvmN+6KpOLecttSj9+9avFxizUzzw
	UplIDSXknY//Osgo8Myv4Iv8RHNhGsKfIFWfley1EPoQ9bp81W2reAYvhskU77mAeE2//vl28Xomd
	c0OMNyCMJ7KPLcpCc/QmyH4a7w42TnJo/fjUm7jBWneDRm/8pN3+kT94NQkahg6TPauuoLR0bu2I8
	n81dd3hBMkDLadxU1RvlSpBVTou9O3bzdcXi1mHAohaS5HnKccAYo3WvkSCYHIowOMrfVMjN3zcS8
	svBUsr1ktl2JNzEgeFgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkSG8-0005iM-VF; Mon, 08 Jul 2019 11:56:41 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkSFv-0005gs-7M
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 11:56:28 +0000
Received: by mail-vs1-xe42.google.com with SMTP id m23so7994692vso.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 04:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=INqtaKqgJbsCXfOBlyhjMGZiHQUnucRAJNFBEd5g9d0=;
 b=n2aOuh4+2HfLrrQ/AerkGk8nPcV0a9lHD1biMG5L8xAvYkxmgeLA8NS7F25S5q3m4/
 PCxVdgp2Jf8w+c1ts10xe7qmXFh+7oane/qyxsSzTyhYVjYlUWbx7mj0ICC6+bojcHJI
 0SINwngWRJuBqkIGoFi8LSLM9AAf4cWCut+tz8LeJrgv1RvYMMYGzCJDEIEEotA8Lx4T
 ExMvH2gvUGRMH8HhXJ4gQBnh9YRG72rx3rbZCAk4XKuIF2dvHFVtWbEZbGdLt8u1/62E
 wvQoT932jJjfBcNytTV6L5O68aaoqrXemfhwy6DrUlk5jFD5bypBb8QcMyuWa0IaOma9
 Ed1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=INqtaKqgJbsCXfOBlyhjMGZiHQUnucRAJNFBEd5g9d0=;
 b=B3URL45ZU19iED/lVbGl5oEkyyjG6Msqr19Ds4A9ijnF6zwnF8g84GzUFDR6H3VCsV
 VdBYczTRQpmTmiwRRfuoOenXGPcUI32QYpbszvkH6hZIZNNE2YwpiyEfdbw2xYt80SrC
 aOPVeL888ihyR1k0xrO38jOwGvPynIofz5uszIhyULixTkJI9PK6G6w+f+L6wCmxPp4/
 TDvSt9iKK99pseu/bUTBZUVQ1A3oAMeknqM6XPozD+KZ6JzB0tAkMKyPezwHBbeN0mEG
 jo06U7geSrHv4Hccg4a9m7NAJzGvMEWZPMO/RLL8pvn3D1LTbEHQ/JMo6cnQRPdp4UJR
 7tDw==
X-Gm-Message-State: APjAAAUDc9taVCaC2LBDV4HcZt3D+79YfVafJg97gwg+kk+yioeH9huc
 v5fjsxHK1IZ8+HNT1m+kHsPjhEnviLDlAAIkk+7Wqg==
X-Google-Smtp-Source: APXvYqzuMQxu5Q5w1+tmz7XnrX4NkraXYwW+cB7xG+jvVxMPoX8GHek6Jxl9SAJweTu5ja02CrA++IPVX9ipqF+7hMA=
X-Received: by 2002:a67:ee5b:: with SMTP id g27mr9881440vsp.165.1562586984367; 
 Mon, 08 Jul 2019 04:56:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190625092042.19320-1-hch@lst.de>
 <20190625092042.19320-2-hch@lst.de>
In-Reply-To: <20190625092042.19320-2-hch@lst.de>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 8 Jul 2019 13:55:48 +0200
Message-ID: <CAPDyKFotnDCpt9k-r3D2uYRAzpFVA3woRQENLcNcDY0q8+8SVg@mail.gmail.com>
Subject: Re: [PATCH 1/2] mmc: let the dma map ops handle bouncing
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_045627_271053_27031F57 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 25 Jun 2019 at 11:21, Christoph Hellwig <hch@lst.de> wrote:
>
> Just like we do for all other block drivers.  Especially as the limit
> imposed at the moment might be way to pessimistic for iommus.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>

From your earlier reply, I decided to fold in the following
information to the changelog, as to clarify things a bit:

"This also means we are not going to set a bounce limit for the queue, in
case we have a dma mask. On most architectures it was never needed, the
major hold out was x86-32 with PAE, but that has been fixed by now."

Please tell, if you want me to change something.

Applied for next, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/core/queue.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/mmc/core/queue.c b/drivers/mmc/core/queue.c
> index 3557d5c51141..e327f80ebe70 100644
> --- a/drivers/mmc/core/queue.c
> +++ b/drivers/mmc/core/queue.c
> @@ -350,18 +350,15 @@ static const struct blk_mq_ops mmc_mq_ops = {
>  static void mmc_setup_queue(struct mmc_queue *mq, struct mmc_card *card)
>  {
>         struct mmc_host *host = card->host;
> -       u64 limit = BLK_BOUNCE_HIGH;
>         unsigned block_size = 512;
>
> -       if (mmc_dev(host)->dma_mask && *mmc_dev(host)->dma_mask)
> -               limit = (u64)dma_max_pfn(mmc_dev(host)) << PAGE_SHIFT;
> -
>         blk_queue_flag_set(QUEUE_FLAG_NONROT, mq->queue);
>         blk_queue_flag_clear(QUEUE_FLAG_ADD_RANDOM, mq->queue);
>         if (mmc_can_erase(card))
>                 mmc_queue_setup_discard(mq->queue, card);
>
> -       blk_queue_bounce_limit(mq->queue, limit);
> +       if (!mmc_dev(host)->dma_mask || !*mmc_dev(host)->dma_mask)
> +               blk_queue_bounce_limit(mq->queue, BLK_BOUNCE_HIGH);
>         blk_queue_max_hw_sectors(mq->queue,
>                 min(host->max_blk_count, host->max_req_size / 512));
>         blk_queue_max_segments(mq->queue, host->max_segs);
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

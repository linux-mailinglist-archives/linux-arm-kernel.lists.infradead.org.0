Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 814F58A791
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 21:53:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eMEdGK/zI8UM70kRtd8pT424cj/tM0bnYa/AXcYPLBE=; b=XvPLmkHgI5Q4v+
	18QIYu/3BMl8SCMSLUl3+UTMLGgIfGX8wvJIeEAfsBbYsu54WKrkX+37RdyYn6lERSJa3fbyWRMhM
	k5Ot3M50QLA0Qe2+nSoKb01yxT6gtwrzOyPdJYY4ApDesPGaiuM8sFSmnu1kxsmuqhC+SrD95fe6Z
	1+mmGtPKP7O1S3IBY2cxuLfLw/q/6apUKjwQBeC3CHVSKPJxEG8+SEefXLVygvaE4YGNHuu0Kd+XS
	/Rui2eIs75OJu2wpyM/uXposI32KsLsK87rfXkgIHgOH9RpI/vgNm8+0wpjKbLOwHPFeQzYFfpTRl
	RxqZqT78ia++zYU5qoDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxGNV-0002si-Ob; Mon, 12 Aug 2019 19:53:14 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxGMj-0002k8-Ql
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 19:52:27 +0000
Received: by mail-ot1-x342.google.com with SMTP id m24so10546699otp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 12:52:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xdTaSZFMc5c0WlaR2P3h3aNLmfWS7MtBN6nvtQBsHM0=;
 b=wOXQsMpKls2n2TWvbygbodoRbilCT7zxfywZx8W9fg1DsdaPvB+TWjAJKecI0MwLma
 HPkyKCzyphSBstyhyr2OoGDSiqolOIW4UYiEmDOYnlvbZs/T+IHfNmqjCEm0mUnV0zDN
 K66Rav+9mPw4nRCZh8YzfrZzyTewjwRc/YQatITPJNKwAlkwb2IbNsGNKetKp9nyyQ6L
 bu8DgM2Uccyr/Y0L/CuazZBwuIWOvb8pp/lrMVDZgK1+WuKSciTIRyvm4uO67nE5iCVA
 YYUjAE1TiFd1125P2QenAH5Wti81+Pj5qr9pBmKXoSiE6s0tWuBYW1+jD2R8nYKNvHzg
 rjOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xdTaSZFMc5c0WlaR2P3h3aNLmfWS7MtBN6nvtQBsHM0=;
 b=r7y5ij6VItYl2H/WgFEet+rh+v3BqgTtqL8bGbSureyfSHCerwf1FIh6PtmlFC6qUc
 UrEEHadLfP5exJJKc9EYioL06WrsmE8xMXnHdCwFP3GM4deJiQ3ROPPJ+Xtvj3xhz+yr
 JxXOg2bYpgi/zmDeaef1nSEa074GH57Y/5cpGXAyYYlxPgQp+LcrxRh1yJ6sSuhm58RT
 wYNLT1Y2fZs1ZDjo/VXP3cl/nx1/pFU9izluC3u9bFtYiIQVelUbMvn7Miad/4PrxR5P
 3jPK/F7GbK/LB51TMQFP3P/LgsDt5+LAanlj0+5IX229kLaWUWdXQRjEKieWvpD97sEG
 N26g==
X-Gm-Message-State: APjAAAVeuQcMgoG8OuZ7SBSslz2fnHPq2u16lcKuCQx3GieXRJq3MpdT
 TPhphBcmoC2wNfHqp80f7a7fCRmfR+fEzoVE/iK5NQmfDO4=
X-Google-Smtp-Source: APXvYqzinv8BUq2fw3XQtW9LprZZERQgtghAKjpvgwtfCTXV7yJ0blJuAWMqywLxj6o39rgOmGzFbULPKs7Hcam4rvM=
X-Received: by 2002:a02:8663:: with SMTP id e90mr40014405jai.98.1565639543943; 
 Mon, 12 Aug 2019 12:52:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190805233738.136357-1-yabinc@google.com>
In-Reply-To: <20190805233738.136357-1-yabinc@google.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Mon, 12 Aug 2019 13:52:12 -0600
Message-ID: <CANLsYkzdu9CBYhDmMwOC5azmQgyqcjCU-CM9R8JfnaF_KbQomg@mail.gmail.com>
Subject: Re: [PATCH] coresight: tmc-etr: Fix updating buffer in not-snapshot
 mode.
To: Yabin Cui <yabinc@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_125226_022692_BFD3343A 
X-CRM114-Status: GOOD (  18.81  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Good day Yabin,

With this patch you are addressing a long time itch I had - please read on.

On Mon, 5 Aug 2019 at 17:37, Yabin Cui <yabinc@google.com> wrote:
>
> TMC etr always copies all available data to perf aux buffer, which
> may exceed the available space in perf aux buffer. It isn't suitable
> for not-snapshot mode, because:
> 1) It may overwrite previously written data.
> 2) It may make the perf_event_mmap_page->aux_head report having more
> or less data than the reality.
>
> Signed-off-by: Yabin Cui <yabinc@google.com>
> ---
>  drivers/hwtracing/coresight/coresight-tmc-etr.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> index 17006705287a..697e68d492af 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> @@ -1410,9 +1410,10 @@ static void tmc_free_etr_buffer(void *config)
>   * tmc_etr_sync_perf_buffer: Copy the actual trace data from the hardware
>   * buffer to the perf ring buffer.
>   */
> -static void tmc_etr_sync_perf_buffer(struct etr_perf_buffer *etr_perf)
> +static void tmc_etr_sync_perf_buffer(struct etr_perf_buffer *etr_perf,
> +                                    unsigned long to_copy)
>  {
> -       long bytes, to_copy;
> +       long bytes;
>         long pg_idx, pg_offset, src_offset;
>         unsigned long head = etr_perf->head;
>         char **dst_pages, *src_buf;
> @@ -1423,7 +1424,6 @@ static void tmc_etr_sync_perf_buffer(struct etr_perf_buffer *etr_perf)
>         pg_offset = head & (PAGE_SIZE - 1);
>         dst_pages = (char **)etr_perf->pages;
>         src_offset = etr_buf->offset;
> -       to_copy = etr_buf->len;
>
>         while (to_copy > 0) {
>                 /*
> @@ -1501,7 +1501,11 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
>         spin_unlock_irqrestore(&drvdata->spinlock, flags);
>
>         size = etr_buf->len;
> -       tmc_etr_sync_perf_buffer(etr_perf);
> +       if (!etr_perf->snapshot && size > handle->size) {
> +               size = handle->size;
> +               lost = true;
> +       }

Perfect - this is in line with what is done for ETB and ETF.

> +       tmc_etr_sync_perf_buffer(etr_perf, size);

Here tmc_etr_sync_perf_buffer() will copy data to the perf ring buffer
starting at @etr_perf->offset for @size, clipping the _end_ of the
trace data accumulated in the trace buffer.  This is contrary to what
is done for ETB and ETF where the equivalent of @etr_perf->offset is
moved forward (clipping the _beginning_ of the trace data) in order to
keep as much of the end as possible.

I would rather enact the same heuristic here.

Thanks,
Mathieu

>
>         /*
>          * In snapshot mode we simply increment the head by the number of byte
> --
> 2.22.0.770.g0f2c4a37fd-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

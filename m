Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8D98DEFB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 22:38:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t+E4BeuV0GSK6Fm9Iv6QQkZZABo0QQMpdVmqodAFSeI=; b=lVoA0Y777MmnqT
	JUsKm/vrZz1CxxomtpTV+NxL+glI+xRaikRWprZtTOYOaiPDcJIgFlbKjXJQTF9OMbIft1BblQUsT
	Lq3v5Y+AiYFu3WGjRtGIVt3rgiZm+DqmJtrQEcjKIPUTTZ1KYBViYwWgEs7jri13i8dUyU9+8haue
	3N6wG3t88xj7VqjqDfC2hZP5A/ArC2jp22grburEfHUeE4BOaipBEnO+T8m7o18v0Ndu4/1YXWY7f
	8EVXlCm4zpHkVPNc/PeAecIrbYVBhGOS0V88EtoteTC80lBvODZ0uEZnlz8Bb/x1iNL+yOVqisR+N
	jWiQBm/kLNwxOmnbCBpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy02c-0008BM-Gg; Wed, 14 Aug 2019 20:38:42 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy02Q-0008AS-Gw
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 20:38:31 +0000
Received: by mail-oi1-x244.google.com with SMTP id h21so5696614oie.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 13:38:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8/VpPJuBcEAlBq5ppU9bWHqxCKnz3CDU+X2UU9Ge/5A=;
 b=iFtJZARBLqCuehUIIZ6AX53e0HLaQLvnEVXGI7Gaw53CJuIbJqqJ2/Gw91zRiWBiOr
 B+AT8Mwb7GgwRNuev7TOp6GfTfnZPTTilFQpSwTpcyVKzFk4xYK2i0026P902uwkbqRe
 AmebT2nh3FEJohKc7/43Er3nVTZ5QP3OxmuJFOuHgr+cceWB05yqa9nsj0G/KWRzXV8w
 dA5GGKSMGhAOc9EJP8uv33aO9C6SMwAhBje5dmq5hPod5JjNxJNvIcFy9C489z/Lm+gQ
 tJPg8UH9nm9pQnfmpw9ZrJPiaOBKfqLMLDLTmit1mVc3vpLGfCBoP+7SQvVheo7TjyXA
 MV+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8/VpPJuBcEAlBq5ppU9bWHqxCKnz3CDU+X2UU9Ge/5A=;
 b=DN5zbfPdvsG3kxTcU4Cqkfmfd/aWVJ5nd36NnoJ1HrShSz2askxzWWVU1RjVQlagc8
 8cui+Z3SSPyNtsZw/ahbWeOCCYsMjzEtsu1WAhoG+oqes9Y3BbIkzV/msAnwus05M+jM
 ndPCu5/Scgmx5vg8eQ/GTrkpPox+aTaFU56cvr7S1tOJ2Xi7Grn4j0e+cvobIlBlhYBC
 /cHZ2b5xIvuVQ+s8vWfjv1sU7wJw+NbN7GKuX0TDNcpW86JGRAgvuDkCg5jvZ2Xwy04S
 ltbDwS2j202tZmg6L38jXL9g04qCvw2kPrmAgsVbWJbDVqnYNhutOYauWeOvXGbSNyfo
 B0Rw==
X-Gm-Message-State: APjAAAX1ZlmjnTkSPfU3Aelp2otwQp7GSbfK35BsASvWfhB74pvX1pu4
 8NJwyGcRsRvDy8tOhIcF7ogBtzGyH3s5lx1Qyu1I1Q==
X-Google-Smtp-Source: APXvYqwgjATWeoTZJWJRcTxRDk/XD8i0qTAP3Z8rOiz73ozATuTBONe2NNqtPexULHsGgvc7iWEkUn9MnzC4V5O61aU=
X-Received: by 2002:a02:b609:: with SMTP id h9mr1322561jam.36.1565815109337;
 Wed, 14 Aug 2019 13:38:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190812221154.46875-1-yabinc@google.com>
In-Reply-To: <20190812221154.46875-1-yabinc@google.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 14 Aug 2019 14:38:18 -0600
Message-ID: <CANLsYkzxLi36JNsOCaEE-Dsm3f4k6RXkkKrdkdeJDivdeu6axQ@mail.gmail.com>
Subject: Re: [PATCH v2] coresight: tmc-etr: Fix updating buffer in
 not-snapshot mode.
To: Yabin Cui <yabinc@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_133830_572275_4534E7A4 
X-CRM114-Status: GOOD (  20.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Mon, 12 Aug 2019 at 16:11, Yabin Cui <yabinc@google.com> wrote:
>
> TMC etr always copies all available data to perf aux buffer, which
> may exceed the available space in perf aux buffer. It isn't suitable
> for not-snapshot mode, because:
> 1) It may overwrite previously written data.
> 2) It may make the perf_event_mmap_page->aux_head report having more
> or less data than the reality.
>
> So change to only copy the latest data fitting the available space in
> perf aux buffer.
>
> Signed-off-by: Yabin Cui <yabinc@google.com>
> ---
>
> v1 -> v2: copy the latest data instead of the earliest data.
>
> ---
>  .../hwtracing/coresight/coresight-tmc-etr.c    | 18 +++++++++++-------
>  1 file changed, 11 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> index 17006705287a..676dcb4cf0e2 100644
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
> @@ -1422,8 +1423,7 @@ static void tmc_etr_sync_perf_buffer(struct etr_perf_buffer *etr_perf)
>         pg_idx = head >> PAGE_SHIFT;
>         pg_offset = head & (PAGE_SIZE - 1);
>         dst_pages = (char **)etr_perf->pages;
> -       src_offset = etr_buf->offset;
> -       to_copy = etr_buf->len;
> +       src_offset = etr_buf->offset + etr_buf->len - to_copy;
>
>         while (to_copy > 0) {
>                 /*
> @@ -1434,6 +1434,8 @@ static void tmc_etr_sync_perf_buffer(struct etr_perf_buffer *etr_perf)
>                  *  3) what is available in the destination page.
>                  * in one iteration.
>                  */
> +               if (src_offset >= etr_buf->size)
> +                       src_offset -= etr_buf->size;
>                 bytes = tmc_etr_buf_get_data(etr_buf, src_offset, to_copy,
>                                              &src_buf);
>                 if (WARN_ON_ONCE(bytes <= 0))
> @@ -1454,8 +1456,6 @@ static void tmc_etr_sync_perf_buffer(struct etr_perf_buffer *etr_perf)
>
>                 /* Move source pointers */
>                 src_offset += bytes;
> -               if (src_offset >= etr_buf->size)
> -                       src_offset -= etr_buf->size;
>         }
>  }

Yes, much better now.  I have applied your work.

Thanks,
Mathieu

>
> @@ -1501,7 +1501,11 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
>         spin_unlock_irqrestore(&drvdata->spinlock, flags);
>
>         size = etr_buf->len;
> -       tmc_etr_sync_perf_buffer(etr_perf);
> +       if (!etr_perf->snapshot && size > handle->size) {
> +               size = handle->size;
> +               lost = true;
> +       }
> +       tmc_etr_sync_perf_buffer(etr_perf, size);
>
>         /*
>          * In snapshot mode we simply increment the head by the number of byte
> --
> 2.23.0.rc1.153.gdeed80330f-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

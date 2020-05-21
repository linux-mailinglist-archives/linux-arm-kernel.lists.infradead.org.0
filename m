Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3421DD3FA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 19:11:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mUKHgFqRMCiN9LN1QwKgYcWWeXUMw9clc5xjgtlBhmA=; b=clVyMV6p2nwfn2
	8YhXFccu92dwZpyRO64KBbLpG3QUnO2gbfZUtExmLjtBwijNs8Jk3n8B0gg/oUeERZ7CT2l/n7qFZ
	geKn0GVewdy6dNfJ7tRAuQcOCOwk/oEvwfenem4XaELliycmhkzmWndAZf0lV5UEJJdfO3VuU7MhC
	qU6iw68UW8Z3XbIhLvpbIIhw4cQBoudVT2i2AEt/zJiKs8zYH77/LLhdeBg5nGISKZSwjpihC3J2A
	n9XbiMsmcyhpPNk547Eb68qEp6es941zMQ3mEU7pcipJUPRkSGunYRDWguf3DColeH8OhgH46WJ10
	QOSb2jd60zF3zwRuo9OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jboiy-0006PC-0b; Thu, 21 May 2020 17:11:16 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jboio-0006OS-OE
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 17:11:08 +0000
Received: by mail-wr1-x444.google.com with SMTP id l18so7400500wrn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 10:11:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=2YwOR8lo9fEQo3/VcqBff/dFzuaCVkdrHNiMan7lYfs=;
 b=oMC3yZa52bcy2SsjHm4z8NPHD/7aVhSHTn2dQ2SQPI4UnBbD0Y4efwbIVa1l5oFepl
 gu+7e/bcOEIIAgqMME/+6QShCYVw/0M28lZztpLVGnVct+JCiM/xqiBnYgCTPsJhrdOs
 79Kktj7vtSesuSDdFJcNZF8FxFcThWWKu5FyA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2YwOR8lo9fEQo3/VcqBff/dFzuaCVkdrHNiMan7lYfs=;
 b=Ijlp6dQeEVcMPLvM6KMe5N0DA31ivy1ktE3zhKIAM9pkC5QijnUM+UWx6hcrUXHiqD
 slaZ+EeL73GCEucci9fh9n1hRRepI/td6oO3n9KnkbosI14h2bZbllY0lPyEpxOyANw1
 PAV9x0enDgPK63m0KvO9iwqG77ZUv/4rA/X6/Lw/2mcY4ZdXzHZ2DwkbCZQM+C7L9+8c
 SF0a3uiVtnbEh1KO+C2RUvx0jdX/pRj/DKk2NTxa1vA/eOeezonyFBEWGTfTpzFBP8P5
 3r80SEsTZpFOBGQAPVaiX2kxNylNsWIP84WOwEApHaIwh6Nwtw82fm0oQ9q5a1aJ9u5+
 jMvw==
X-Gm-Message-State: AOAM5339XGD9OyGjJvq3xseyta9gOHbvTZ6paalQqHi3IIGh+A3JsyLn
 8Fr95XPJrE3d7cXGjdd79FFcuA==
X-Google-Smtp-Source: ABdhPJyalFzY/329jsR0udLrkGAaMOvnHOWO2TScGUsIP0HOjdvvEOY1hhpVY3V7qytj0Q9F7A/KTw==
X-Received: by 2002:a5d:44c6:: with SMTP id z6mr2368580wrr.20.1590081064371;
 Thu, 21 May 2020 10:11:04 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id 81sm7682882wme.16.2020.05.21.10.11.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 10:11:03 -0700 (PDT)
Date: Thu, 21 May 2020 17:11:01 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Jerry-ch Chen <Jerry-Ch.chen@mediatek.com>,
 Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [RFC PATCH V4 1/4] media: v4l2-mem2mem: add v4l2_m2m_suspend,
 v4l2_m2m_resume
Message-ID: <20200521171101.GA243874@chromium.org>
References: <20191204124732.10932-1-Jerry-Ch.chen@mediatek.com>
 <20191204124732.10932-2-Jerry-Ch.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191204124732.10932-2-Jerry-Ch.chen@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_101106_810210_6C7C3C0B 
X-CRM114-Status: GOOD (  22.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 zwisler@chromium.org, srv_heupstream@mediatek.com,
 Jerry-ch Chen <jerry-ch.chen@mediatek.corp-partner.google.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, jungo.lin@mediatek.com,
 sj.huang@mediatek.com, yuzhao@chromium.org, linux-mediatek@lists.infradead.org,
 pihsun@chromium.org, frederic.chen@mediatek.com, matthias.bgg@gmail.com,
 christie.yu@mediatek.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jerry,

On Wed, Dec 04, 2019 at 08:47:29PM +0800, Jerry-ch Chen wrote:
> From: Pi-Hsun Shih <pihsun@chromium.org>
> 
> Add two functions that can be used to stop new jobs from being queued /
> continue running queued job. This can be used while a driver using m2m
> helper is going to suspend / wake up from resume, and can ensure that
> there's no job running in suspend process.
> 
> BUG=b:143046833
> TEST=build
> 
> Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
> Signed-off-by: Jerry-ch Chen <jerry-ch.chen@mediatek.corp-partner.google.com>
> ---
>  drivers/media/v4l2-core/v4l2-mem2mem.c | 40 ++++++++++++++++++++++++++
>  include/media/v4l2-mem2mem.h           | 22 ++++++++++++++
>  2 files changed, 62 insertions(+)
> 
> diff --git a/drivers/media/v4l2-core/v4l2-mem2mem.c b/drivers/media/v4l2-core/v4l2-mem2mem.c
> index 5bbdec55b7d7..76ba203e0035 100644
> --- a/drivers/media/v4l2-core/v4l2-mem2mem.c
> +++ b/drivers/media/v4l2-core/v4l2-mem2mem.c
> @@ -47,6 +47,10 @@ module_param(debug, bool, 0644);
>  #define TRANS_ABORT		(1 << 2)
>  
>  
> +/* The job queue is not running new jobs */
> +#define QUEUE_PAUSED		(1 << 0)
> +
> +
>  /* Offset base for buffers on the destination queue - used to distinguish
>   * between source and destination buffers when mmapping - they receive the same
>   * offsets but for different queues */
> @@ -88,6 +92,7 @@ static const char * const m2m_entity_name[] = {
>   * @job_queue:		instances queued to run
>   * @job_spinlock:	protects job_queue
>   * @job_work:		worker to run queued jobs.
> + * @job_queue_flags:	flags of the queue status, %QUEUE_PAUSED.
>   * @m2m_ops:		driver callbacks
>   */
>  struct v4l2_m2m_dev {
> @@ -105,6 +110,7 @@ struct v4l2_m2m_dev {
>  	struct list_head	job_queue;
>  	spinlock_t		job_spinlock;
>  	struct work_struct	job_work;
> +	unsigned long		job_queue_flags;
>  
>  	const struct v4l2_m2m_ops *m2m_ops;
>  };
> @@ -267,6 +273,12 @@ static void v4l2_m2m_try_run(struct v4l2_m2m_dev *m2m_dev)
>  		return;
>  	}
>  
> +	if (m2m_dev->job_queue_flags & QUEUE_PAUSED) {
> +		spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> +		dprintk("Running new jobs is paused\n");
> +		return;
> +	}
> +
>  	m2m_dev->curr_ctx = list_first_entry(&m2m_dev->job_queue,
>  				   struct v4l2_m2m_ctx, queue);
>  	m2m_dev->curr_ctx->job_flags |= TRANS_RUNNING;
> @@ -447,6 +459,34 @@ void v4l2_m2m_job_finish(struct v4l2_m2m_dev *m2m_dev,
>  }
>  EXPORT_SYMBOL(v4l2_m2m_job_finish);
>  
> +void v4l2_m2m_suspend(struct v4l2_m2m_dev *m2m_dev)
> +{
> +	unsigned long flags;
> +	struct v4l2_m2m_ctx *curr_ctx;
> +
> +	spin_lock_irqsave(&m2m_dev->job_spinlock, flags);
> +	m2m_dev->job_queue_flags |= QUEUE_PAUSED;
> +	curr_ctx = m2m_dev->curr_ctx;
> +	spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> +
> +	if (curr_ctx)
> +		wait_event(curr_ctx->finished,
> +			   !(curr_ctx->job_flags & TRANS_RUNNING));
> +}
> +EXPORT_SYMBOL(v4l2_m2m_suspend);
> +
> +void v4l2_m2m_resume(struct v4l2_m2m_dev *m2m_dev)
> +{
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&m2m_dev->job_spinlock, flags);
> +	m2m_dev->job_queue_flags &= ~QUEUE_PAUSED;
> +	spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> +
> +	v4l2_m2m_try_run(m2m_dev);
> +}
> +EXPORT_SYMBOL(v4l2_m2m_resume);
> +
>  int v4l2_m2m_reqbufs(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
>  		     struct v4l2_requestbuffers *reqbufs)
>  {
> diff --git a/include/media/v4l2-mem2mem.h b/include/media/v4l2-mem2mem.h
> index 5467264771ec..119a195da390 100644
> --- a/include/media/v4l2-mem2mem.h
> +++ b/include/media/v4l2-mem2mem.h
> @@ -183,6 +183,28 @@ v4l2_m2m_buf_done(struct vb2_v4l2_buffer *buf, enum vb2_buffer_state state)
>  	vb2_buffer_done(&buf->vb2_buf, state);
>  }
>  
> +/**
> + * v4l2_m2m_suspend() - stop new jobs from being run and wait for current job
> + * to finish
> + *
> + * @m2m_dev: opaque pointer to the internal data to handle M2M context
> + *
> + * Called by a driver in the suspend hook. Stop new jobs from being run, and
> + * wait for current running job to finish.
> + */
> +void v4l2_m2m_suspend(struct v4l2_m2m_dev *m2m_dev);
> +
> +/**
> + * v4l2_m2m_resume() - resume job running and try to run a queued job
> + *
> + * @m2m_dev: opaque pointer to the internal data to handle M2M context
> + *
> + * Called by a driver in the resume hook. This reverts the operation of
> + * v4l2_m2m_suspend() and allows job to be run. Also try to run a queued job if
> + * there is any.
> + */
> +void v4l2_m2m_resume(struct v4l2_m2m_dev *m2m_dev);
> +
>  /**
>   * v4l2_m2m_reqbufs() - multi-queue-aware REQBUFS multiplexer
>   *
> -- 
> 2.18.0

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

[Corrected Hans's email address.]
Hans, does this look good to you?

Best regards,
Tomasz


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

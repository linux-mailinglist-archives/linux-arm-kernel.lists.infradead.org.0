Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E397B15DE01
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:02:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3r+LhNKWReDlrFTqZEw/n/urGZVMr/v9UTVgp/HtJLA=; b=Wu/AK9HBltJ4J/
	EDzSYiT5uUHR3wq57v9qoLHIdfaVq8tOMr02E6CQKu/cQH8SpWkAROPgBGEKwKVm6lYAJ0o05p7Cv
	hKnQXqs2cP1dw5NqAk61OCngYjU2d+PoHqQi2MbRsaAN0iWRtdDpJOhP1sZz0t+WROVApzq7rpsiW
	wDgteb2yXj7QRnFDmR0Kg2dUYalQKmn2kofd0slzGadvAhKOe1W1+V2o1RADP1E9AF7D8UHue+k8Y
	y0prdQe1crTd8/PNMSmbTh79xeki2ieIpYqz7XlzmiIij2LkhzIsTWMxdnOEGnXCO6HEHnv6qPtmQ
	s+qJVW/36VR6k1ArzoHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dPp-0008QI-Jj; Fri, 14 Feb 2020 16:02:05 +0000
Received: from lb2-smtp-cloud8.xs4all.net ([194.109.24.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dIV-0007R7-Ob; Fri, 14 Feb 2020 15:54:35 +0000
Received: from [IPv6:2001:983:e9a7:1:bd23:d5c7:5f0e:7bef]
 ([IPv6:2001:983:e9a7:1:bd23:d5c7:5f0e:7bef])
 by smtp-cloud8.xs4all.net with ESMTPA
 id 2dIRjJhLW8i432dISjQXxH; Fri, 14 Feb 2020 16:54:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1581695668; bh=hW7dfz8z9Qlb9TH6+JjcMKlu2ZiSef6fHVvvIETBqEw=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=tSdEMuf+SvTzgq9RIgxuZZ275Ezdc3O8FUyC9MszEHyPtSPsskDwxVCDHv1jVL2jt
 cMM95EAMtBFkxvBrw4G5Nm1uNkNWcrdkBE9TLOHnPWf3oOctUu84Tj2Ysw9bAHitS+
 SosJmLyzYg+YggOiOH3kiq5gKE/tHmQEuvL/1ZTNTIDurHz08oB8+ivarWjkvfELH6
 FzFb2nMYU1qB4Ti9QvXoNoEBsMKRFcvIBmiGntIggpOLhaqV9s9+FFfbfEte2PVMOP
 uC2Ia3JycJFiY9OdsPTrvs7lvoJqc7827Aj35xDqnLLzaGjG0WwBEc7bcxPDUUiZI+
 XbB2kxqK1WFKg==
Subject: Re: [PATCH v5 1/4] media: v4l2-mem2mem: handle draining, stopped and
 next-buf-is-last states
To: Neil Armstrong <narmstrong@baylibre.com>, mchehab@kernel.org
References: <20200206082648.25184-1-narmstrong@baylibre.com>
 <20200206082648.25184-2-narmstrong@baylibre.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <487e02e9-d7e3-04b6-7f30-ee0c4f154a1f@xs4all.nl>
Date: Fri, 14 Feb 2020 16:54:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200206082648.25184-2-narmstrong@baylibre.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfJxpYd7bbN7z5PbOSu9Fp0hFTh0i1jOVflw1z7Qccnc/szBK0L158/YGcT+yXjimj8kq4vYrBUy5J/to++IfWoNQYpUhXZDQ+q068gyHvsylXNmuX0Vm
 8eMlctcNbLtBUjp1efufskZE13d0AY8h5Fp19rKToBY4tKi6CR0JrIqwDssBG7wKi1rx0XrAFjJC79EcDJ5vrk68/Uge8ViNJpxXFhJ3mtz+ff3s8uC5UPme
 Ye2TzgU+V+dDA2NHsnDk+KX8wBH//EMiI/MzZqjgRQL2LAg9Y74I0RY1Gt7zaOBhuVLvHEOeGkgW2ChgAzBMS/KMP2CrtX+oQdMeuEoDl4+aSqnG2iUXDnNK
 6gA7uDU8+SDeTJ8rbTzHtdeV2Ajhc6siCm8aZWom/N+VIXl/oUz8cMXKVKxC6TGljITjZR7OstmMG9msZ1yq+GnP6uWr8+ZyTbC4voHLCfaE+SdUNyxFFI+L
 VZg6fT9LfMOTtzjC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_075432_195475_1B870CF9 
X-CRM114-Status: GOOD (  34.19  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.25 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.25 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/6/20 9:26 AM, Neil Armstrong wrote:
> Since the draining and stop phase of the HW decoder mem2mem bahaviour is

behavior

> now clearly defined, we can move handling of the following states to the
> common v4l2-mem2mem core code:
> - draining
> - stopped
> - next-buf-is-last
> 
> By introducing the following v4l2-mem2mem APIS:

APIs

> - v4l2_m2m_encoder_cmd/v4l2_m2m_ioctl_encoder_cmd to handle start/stop command
> - v4l2_m2m_decoder_cmd/v4l2_m2m_ioctl_decoder_cmd to handle start/stop command
> - v4l2_m2m_start_streaming to handle start of streaming of the de/encoder queue
> - v4l2_m2m_stop_streaming to handle stop of streaming of the de/encoder queue
> - v4l2_m2m_last_buffer_done to maek the current dest buffer as the last one

make

> 
> And inline helpers:
> - v4l2_m2m_mark_stopped to mark the de/encoding process as stopped
> - v4l2_m2m_clear_state to clear the de/encoding state
> - v4l2_m2m_dst_buf_is_last to detect the current dequeud dst_buf is the last

dequeued

> - v4l2_m2m_has_stopped to detect the de/encoding stopped state
> - v4l2_m2m_is_last_draining_src_buf to detect the currect source buffer should

current

>  be the last processing before stopping the de/encoding process
> 
> The special next-buf-is-last when min_buffers != 1 case is also handled
> in v4l2_m2m_qbuf() by reusing the other introduced APIs.
> 
> This state management has been stolen from the vicodec implementation,
> and is no-op for drivers not calling the v4l2_m2m_encoder_cmd or
> v4l2_m2m_decoder_cmd and v4l2_m2m_start_streaming/v4l2_m2m_stop_streaming.

Documenting these new helpers in the commit log is not very useful, they should
be documented in v4l2-mem2mem.h.

Since this is all fairly complex, I would like to see more comments in the
source as well, explaining what is happening and how/when to use it.

> 
> The vicodec will be the first one to be converted as an example.
> 
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  drivers/media/v4l2-core/v4l2-mem2mem.c | 172 ++++++++++++++++++++++++-
>  include/media/v4l2-mem2mem.h           |  95 ++++++++++++++
>  2 files changed, 265 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/media/v4l2-core/v4l2-mem2mem.c b/drivers/media/v4l2-core/v4l2-mem2mem.c
> index 1afd9c6ad908..f221d6c7a137 100644
> --- a/drivers/media/v4l2-core/v4l2-mem2mem.c
> +++ b/drivers/media/v4l2-core/v4l2-mem2mem.c
> @@ -340,6 +340,11 @@ static void __v4l2_m2m_try_queue(struct v4l2_m2m_dev *m2m_dev,
>  		m2m_ctx->new_frame = !dst->vb2_buf.copied_timestamp ||
>  			dst->vb2_buf.timestamp != src->vb2_buf.timestamp;
>  
> +	if (m2m_ctx->has_stopped) {
> +		dprintk("Device has stopped\n");
> +		goto job_unlock;
> +	}
> +
>  	if (m2m_dev->m2m_ops->job_ready
>  		&& (!m2m_dev->m2m_ops->job_ready(m2m_ctx->priv))) {
>  		dprintk("Driver not ready\n");
> @@ -556,6 +561,99 @@ int v4l2_m2m_querybuf(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
>  }
>  EXPORT_SYMBOL_GPL(v4l2_m2m_querybuf);
>  
> +void v4l2_m2m_last_buffer_done(struct v4l2_m2m_ctx *m2m_ctx,
> +			       struct vb2_v4l2_buffer *vbuf)
> +{
> +	vbuf->flags |= V4L2_BUF_FLAG_LAST;
> +	vb2_buffer_done(&vbuf->vb2_buf, VB2_BUF_STATE_DONE);
> +
> +	v4l2_m2m_mark_stopped(m2m_ctx);
> +}
> +EXPORT_SYMBOL_GPL(v4l2_m2m_last_buffer_done);
> +
> +static int v4l2_mark_last_buf(struct v4l2_m2m_ctx *m2m_ctx)

The name of this function is not very clear and actually confusing given
the name of the previous function v4l2_m2m_last_buffer_done(). Hopefully
you can come up with something a bit more descriptive.

> +{
> +	struct vb2_v4l2_buffer *next_dst_buf;
> +
> +	if (m2m_ctx->is_draining)
> +		return -EBUSY;
> +
> +	if (m2m_ctx->has_stopped)
> +		return 0;
> +
> +	m2m_ctx->last_src_buf = v4l2_m2m_last_src_buf(m2m_ctx);
> +	m2m_ctx->is_draining = true;
> +
> +	if (m2m_ctx->last_src_buf)
> +		return 0;
> +
> +	next_dst_buf = v4l2_m2m_dst_buf_remove(m2m_ctx);
> +	if (!next_dst_buf) {
> +		m2m_ctx->next_buf_last = true;
> +		return 0;
> +	}
> +
> +	v4l2_m2m_last_buffer_done(m2m_ctx, next_dst_buf);
> +
> +	return 0;
> +}
> +
> +void v4l2_m2m_start_streaming(struct v4l2_m2m_ctx *m2m_ctx, struct vb2_queue *q)
> +{
> +	if (V4L2_TYPE_IS_OUTPUT(q->type))
> +		m2m_ctx->last_src_buf = NULL;
> +}
> +EXPORT_SYMBOL_GPL(v4l2_m2m_start_streaming);
> +
> +void v4l2_m2m_stop_streaming(struct v4l2_m2m_ctx *m2m_ctx, struct vb2_queue *q)
> +{
> +	if (V4L2_TYPE_IS_OUTPUT(q->type)) {
> +		if (m2m_ctx->is_draining) {
> +			struct vb2_v4l2_buffer *next_dst_buf;
> +
> +			m2m_ctx->last_src_buf = NULL;
> +			next_dst_buf = v4l2_m2m_dst_buf_remove(m2m_ctx);
> +			if (!next_dst_buf)
> +				m2m_ctx->next_buf_last = true;
> +			else
> +				v4l2_m2m_last_buffer_done(m2m_ctx,
> +							  next_dst_buf);
> +		}
> +	} else {
> +		v4l2_m2m_clear_state(m2m_ctx);
> +	}
> +}
> +EXPORT_SYMBOL_GPL(v4l2_m2m_stop_streaming);

Same for these two functions: the names suggest that these implement start and stop
streaming, but instead they are called from start and stop streaming to update the
state.

> +
> +static void v4l2_m2m_force_last_buf_done(struct v4l2_m2m_ctx *m2m_ctx,
> +					 struct vb2_queue *q)
> +{
> +	struct vb2_buffer *vb;
> +	struct vb2_v4l2_buffer *vbuf;
> +	unsigned int i;
> +
> +	if (WARN_ON(q->is_output))
> +		return;
> +	if (list_empty(&q->queued_list))
> +		return;
> +
> +	vb = list_first_entry(&q->queued_list, struct vb2_buffer, queued_entry);
> +	for (i = 0; i < vb->num_planes; i++)
> +		vb2_set_plane_payload(vb, i, 0);
> +
> +	/*
> +	 * Since the buffer hasn't been queued to the ready queue,
> +	 * mark is active and owned before marking it LAST and DONE
> +	 */
> +	vb->state = VB2_BUF_STATE_ACTIVE;
> +	atomic_inc(&q->owned_by_drv_count);
> +
> +	vbuf = to_vb2_v4l2_buffer(vb);
> +	vbuf->field = V4L2_FIELD_NONE;
> +
> +	v4l2_m2m_last_buffer_done(m2m_ctx, vbuf);
> +}
> +
>  int v4l2_m2m_qbuf(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
>  		  struct v4l2_buffer *buf)
>  {
> @@ -570,11 +668,25 @@ int v4l2_m2m_qbuf(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
>  			__func__);
>  		return -EPERM;
>  	}
> +
>  	ret = vb2_qbuf(vq, vdev->v4l2_dev->mdev, buf);
> -	if (!ret && !(buf->flags & V4L2_BUF_FLAG_IN_REQUEST))
> +	if (ret)
> +		return ret;
> +
> +	/*
> +	 * If the capture queue is streaming, but streaming hasn't started
> +	 * on the device, but was asked to stop, mark the previously queued
> +	 * buffer as DONE with LAST flag since it won't be queued on the
> +	 * device.
> +	 */
> +	if (!V4L2_TYPE_IS_OUTPUT(vq->type) &&
> +	    vb2_is_streaming(vq) && !vb2_start_streaming_called(vq) &&
> +	   (v4l2_m2m_has_stopped(m2m_ctx) || v4l2_m2m_dst_buf_is_last(m2m_ctx)))
> +		v4l2_m2m_force_last_buf_done(m2m_ctx, vq);
> +	else if (!(buf->flags & V4L2_BUF_FLAG_IN_REQUEST))
>  		v4l2_m2m_try_schedule(m2m_ctx);
>  
> -	return ret;
> +	return 0;
>  }
>  EXPORT_SYMBOL_GPL(v4l2_m2m_qbuf);
>  
> @@ -1225,6 +1337,62 @@ int v4l2_m2m_ioctl_try_decoder_cmd(struct file *file, void *fh,
>  }
>  EXPORT_SYMBOL_GPL(v4l2_m2m_ioctl_try_decoder_cmd);
>  
> +int v4l2_m2m_encoder_cmd(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
> +			 struct v4l2_encoder_cmd *ec)
> +{
> +	if (ec->cmd != V4L2_ENC_CMD_STOP && ec->cmd != V4L2_ENC_CMD_START)
> +		return -EINVAL;
> +
> +	if (ec->cmd == V4L2_ENC_CMD_STOP)
> +		return v4l2_mark_last_buf(m2m_ctx);
> +
> +	if (m2m_ctx->is_draining)
> +		return -EBUSY;
> +
> +	if (m2m_ctx->has_stopped)
> +		m2m_ctx->has_stopped = false;
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(v4l2_m2m_encoder_cmd);

The next patch uses this function as follows in vicodec:

+	ret = v4l2_m2m_ioctl_encoder_cmd(file, fh, ec);
+	if (ret < 0)
+		return ret;
+
+	if (ec->cmd == V4L2_ENC_CMD_STOP &&
+	    v4l2_m2m_has_stopped(ctx->fh.m2m_ctx))
+		v4l2_event_queue_fh(&ctx->fh, &vicodec_eos_event);
+
+	if (ec->cmd == V4L2_ENC_CMD_START &&
+	    v4l2_m2m_has_stopped(ctx->fh.m2m_ctx))
 		vb2_clear_last_buffer_dequeued(&ctx->fh.m2m_ctx->cap_q_ctx.q);

I was wondering if that would be standard behavior for codecs and should
be added to v4l2_m2m_encoder_cmd. Ditto for decoder_cmd below.

> +
> +int v4l2_m2m_decoder_cmd(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
> +			 struct v4l2_decoder_cmd *dc)
> +{
> +	if (dc->cmd != V4L2_DEC_CMD_STOP && dc->cmd != V4L2_DEC_CMD_START)
> +		return -EINVAL;
> +
> +	if (dc->cmd == V4L2_DEC_CMD_STOP)
> +		return v4l2_mark_last_buf(m2m_ctx);
> +
> +	if (m2m_ctx->is_draining)
> +		return -EBUSY;
> +
> +	if (m2m_ctx->has_stopped)
> +		m2m_ctx->has_stopped = false;
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(v4l2_m2m_decoder_cmd);
> +
> +int v4l2_m2m_ioctl_encoder_cmd(struct file *file, void *priv,
> +			       struct v4l2_encoder_cmd *ec)
> +{
> +	struct v4l2_fh *fh = file->private_data;
> +
> +	return v4l2_m2m_encoder_cmd(file, fh->m2m_ctx, ec);
> +}
> +EXPORT_SYMBOL_GPL(v4l2_m2m_ioctl_encoder_cmd);
> +
> +int v4l2_m2m_ioctl_decoder_cmd(struct file *file, void *priv,
> +			       struct v4l2_decoder_cmd *dc)
> +{
> +	struct v4l2_fh *fh = file->private_data;
> +
> +	return v4l2_m2m_decoder_cmd(file, fh->m2m_ctx, dc);
> +}
> +EXPORT_SYMBOL_GPL(v4l2_m2m_ioctl_decoder_cmd);
> +
>  int v4l2_m2m_ioctl_stateless_try_decoder_cmd(struct file *file, void *fh,
>  					     struct v4l2_decoder_cmd *dc)
>  {
> diff --git a/include/media/v4l2-mem2mem.h b/include/media/v4l2-mem2mem.h
> index 1d85e24791e4..3476889af46c 100644
> --- a/include/media/v4l2-mem2mem.h
> +++ b/include/media/v4l2-mem2mem.h
> @@ -80,6 +80,10 @@ struct v4l2_m2m_queue_ctx {
>   *		for an existing frame. This is always true unless
>   *		V4L2_BUF_CAP_SUPPORTS_M2M_HOLD_CAPTURE_BUF is set, which
>   *		indicates slicing support.
> + * @is_draining: indicates device is in draining phase
> + * @last_src_buf: indicate the last source buffer for draining
> + * @next_buf_last: next capture queud buffer will be tagged as last
> + * @has_stopped: indicate the device has been stopped
>   * @m2m_dev: opaque pointer to the internal data to handle M2M context
>   * @cap_q_ctx: Capture (output to memory) queue context
>   * @out_q_ctx: Output (input from memory) queue context
> @@ -98,6 +102,11 @@ struct v4l2_m2m_ctx {
>  
>  	bool				new_frame;
>  
> +	bool				is_draining;
> +	struct vb2_v4l2_buffer		*last_src_buf;
> +	bool				next_buf_last;
> +	bool				has_stopped;
> +
>  	/* internal use only */
>  	struct v4l2_m2m_dev		*m2m_dev;
>  
> @@ -215,6 +224,50 @@ v4l2_m2m_buf_done(struct vb2_v4l2_buffer *buf, enum vb2_buffer_state state)
>  	vb2_buffer_done(&buf->vb2_buf, state);
>  }
>  
> +static inline void
> +v4l2_m2m_clear_state(struct v4l2_m2m_ctx *m2m_ctx)
> +{
> +	m2m_ctx->next_buf_last = false;
> +	m2m_ctx->is_draining = false;
> +	m2m_ctx->has_stopped = false;
> +}
> +
> +static inline void
> +v4l2_m2m_mark_stopped(struct v4l2_m2m_ctx *m2m_ctx)
> +{
> +	m2m_ctx->next_buf_last = false;
> +	m2m_ctx->is_draining = false;
> +	m2m_ctx->has_stopped = true;
> +}
> +
> +static inline bool
> +v4l2_m2m_dst_buf_is_last(struct v4l2_m2m_ctx *m2m_ctx)
> +{
> +	return m2m_ctx->is_draining && m2m_ctx->next_buf_last;
> +}
> +
> +static inline bool
> +v4l2_m2m_has_stopped(struct v4l2_m2m_ctx *m2m_ctx)
> +{
> +	return m2m_ctx->has_stopped;
> +}
> +
> +static inline bool
> +v4l2_m2m_is_last_draining_src_buf(struct v4l2_m2m_ctx *m2m_ctx,
> +				       struct vb2_v4l2_buffer *buf)
> +{
> +	return m2m_ctx->is_draining && buf == m2m_ctx->last_src_buf;
> +}

Comments are needed for all 5 functions above.

> +
> +/**
> + * v4l2_m2m_last_buffer_done() - marks the buffer with LAST flag and DONE
> + *
> + * @m2m_ctx: m2m context assigned to the instance given by struct &v4l2_m2m_ctx
> + * @vbuf: pointer to struct &v4l2_buffer
> + */
> +void v4l2_m2m_last_buffer_done(struct v4l2_m2m_ctx *m2m_ctx,
> +			       struct vb2_v4l2_buffer *vbuf);
> +
>  /**
>   * v4l2_m2m_reqbufs() - multi-queue-aware REQBUFS multiplexer
>   *
> @@ -312,6 +365,44 @@ int v4l2_m2m_streamon(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
>  int v4l2_m2m_streamoff(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
>  		       enum v4l2_buf_type type);
>  
> +/**
> + * v4l2_m2m_start_streaming() - handle start of streaming of a video queue
> + *
> + * @m2m_ctx: m2m context assigned to the instance given by struct &v4l2_m2m_ctx
> + * @q: queue
> + */
> +void v4l2_m2m_start_streaming(struct v4l2_m2m_ctx *m2m_ctx,
> +			      struct vb2_queue *q);
> +
> +/**
> + * v4l2_m2m_stop_streaming() - handle stop of streaming of a video queue
> + *
> + * @m2m_ctx: m2m context assigned to the instance given by struct &v4l2_m2m_ctx
> + * @q: queue
> + */
> +void v4l2_m2m_stop_streaming(struct v4l2_m2m_ctx *m2m_ctx,
> +			     struct vb2_queue *q);
> +
> +/**
> + * v4l2_m2m_encoder_cmd() - execute an encoder command
> + *
> + * @file: pointer to struct &file
> + * @m2m_ctx: m2m context assigned to the instance given by struct &v4l2_m2m_ctx
> + * @ec: pointer to the encoder command
> + */
> +int v4l2_m2m_encoder_cmd(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
> +			 struct v4l2_encoder_cmd *ec);
> +
> +/**
> + * v4l2_m2m_decoder_cmd() - execute a decoder command
> + *
> + * @file: pointer to struct &file
> + * @m2m_ctx: m2m context assigned to the instance given by struct &v4l2_m2m_ctx
> + * @dc: pointer to the decoder command
> + */
> +int v4l2_m2m_decoder_cmd(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
> +			 struct v4l2_decoder_cmd *dc);
> +
>  /**
>   * v4l2_m2m_poll() - poll replacement, for destination buffers only
>   *
> @@ -704,6 +795,10 @@ int v4l2_m2m_ioctl_streamon(struct file *file, void *fh,
>  				enum v4l2_buf_type type);
>  int v4l2_m2m_ioctl_streamoff(struct file *file, void *fh,
>  				enum v4l2_buf_type type);
> +int v4l2_m2m_ioctl_encoder_cmd(struct file *file, void *fh,
> +			       struct v4l2_encoder_cmd *ec);
> +int v4l2_m2m_ioctl_decoder_cmd(struct file *file, void *fh,
> +			       struct v4l2_decoder_cmd *dc);
>  int v4l2_m2m_ioctl_try_encoder_cmd(struct file *file, void *fh,
>  				   struct v4l2_encoder_cmd *ec);
>  int v4l2_m2m_ioctl_try_decoder_cmd(struct file *file, void *fh,
> 

Regards,

	Hans

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

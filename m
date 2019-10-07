Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E139CDBB9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 08:02:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d2BdqhCBpdQ61Es4Y8cy7GT8wV2IDl/FQcf8RILm+R4=; b=lRyoVvmKbJrcSI
	8VCgzsKqpaN+RCwfVPn1nlChkithbZd7eMZzIbWWflguGA8s918DTLeA8/XOVBR+KQnx2etCLHFo+
	oqb30PXqBFFJ8B5btwuIkkLCQGk3hUGy+bOncsmWl9CVfz7UBkkc5gE++1aaDpdZOkCHXYzQ7Tiaj
	QfsnBKvJmIGz+HSK8pIPAf4t7MXpCQP3RIa3bdfXQmzWzwIkLlJK31MHKATG1OL+7JcWtvdOPXvVE
	xLN/nWGooHcNhCXzhPbefqXpH3AGqaJk8teXzxAbbDhLfTqxVC/yGzvyGnIhQO563bhBAQ36v46eU
	COuTxpLr3KkYlaDki54Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHM6P-0004c3-Ps; Mon, 07 Oct 2019 06:02:37 +0000
Received: from mailoutvs34.siol.net ([185.57.226.225] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHM6I-0004a5-Cm
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 06:02:32 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id 9592A521630;
 Mon,  7 Oct 2019 08:02:16 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id vcF-zkhEbduB; Mon,  7 Oct 2019 08:02:16 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id 2224752160B;
 Mon,  7 Oct 2019 08:02:16 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Zimbra) with ESMTPA id 4A222521630;
 Mon,  7 Oct 2019 08:02:13 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: Re: [PATCH v2 3/6] media: v4l2-mem2mem: add
 stateless_(try_)decoder_cmd ioctl helpers
Date: Mon, 07 Oct 2019 08:02:12 +0200
Message-ID: <2840939.OS9t7MgvnY@jernej-laptop>
In-Reply-To: <6c7eeaf1-18bb-1c7e-7938-a3eb5af100b6@xs4all.nl>
References: <20190929200023.215831-1-jernej.skrabec@siol.net>
 <20190929200023.215831-4-jernej.skrabec@siol.net>
 <6c7eeaf1-18bb-1c7e-7938-a3eb5af100b6@xs4all.nl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_230230_759884_6E54C3D2 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.225 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devel@driverdev.osuosl.org, linux-media@vger.kernel.org, pawel@osciak.com,
 jonas@kwiboo.se, gregkh@linuxfoundation.org, wens@csie.org, mripard@kernel.org,
 tfiga@chromium.org, paul.kocialkowski@bootlin.com, kyungmin.park@samsung.com,
 boris.brezillon@collabora.com, linux-arm-kernel@lists.infradead.org,
 mchehab@kernel.org, ezequiel@collabora.com, linux-kernel@vger.kernel.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne petek, 04. oktober 2019 ob 11:21:12 CEST je Hans Verkuil napisal(a):
> On 9/29/19 10:00 PM, Jernej Skrabec wrote:
> > These helpers are used by stateless codecs when they support multiple
> > slices per frame and hold capture buffer flag is set. It's expected that
> > all such codecs will use this code.
> > 
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> > 
> >  drivers/media/v4l2-core/v4l2-mem2mem.c | 35 ++++++++++++++++++++++++++
> >  include/media/v4l2-mem2mem.h           |  4 +++
> >  2 files changed, 39 insertions(+)
> > 
> > diff --git a/drivers/media/v4l2-core/v4l2-mem2mem.c
> > b/drivers/media/v4l2-core/v4l2-mem2mem.c index 19937dd3c6f6..2677a07e4c9b
> > 100644
> > --- a/drivers/media/v4l2-core/v4l2-mem2mem.c
> > +++ b/drivers/media/v4l2-core/v4l2-mem2mem.c
> > @@ -1154,6 +1154,41 @@ int v4l2_m2m_ioctl_try_decoder_cmd(struct file
> > *file, void *fh,> 
> >  }
> >  EXPORT_SYMBOL_GPL(v4l2_m2m_ioctl_try_decoder_cmd);
> > 
> > +int v4l2_m2m_ioctl_stateless_try_decoder_cmd(struct file *file, void *fh,
> > +					     struct 
v4l2_decoder_cmd *dc)
> > +{
> > +	if (dc->cmd != V4L2_DEC_CMD_FLUSH)
> > +		return -EINVAL;
> > +
> > +	dc->flags = 0;
> > +
> > +	return 0;
> > +}
> > +EXPORT_SYMBOL_GPL(v4l2_m2m_ioctl_stateless_try_decoder_cmd);
> > +
> > +int v4l2_m2m_ioctl_stateless_decoder_cmd(struct file *file, void *priv,
> > +					 struct 
v4l2_decoder_cmd *dc)
> > +{
> > +	struct v4l2_fh *fh = file->private_data;
> > +	struct vb2_v4l2_buffer *out_vb, *cap_vb;
> > +	int ret;
> > +
> > +	ret = v4l2_m2m_ioctl_stateless_try_decoder_cmd(file, priv, dc);
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	out_vb = v4l2_m2m_last_src_buf(fh->m2m_ctx);
> > +	cap_vb = v4l2_m2m_last_dst_buf(fh->m2m_ctx);
> 
> I think this should be v4l2_m2m_next_dst_buf. If multiple capture buffers
> were queued up, then it can only be the first capture buffer that can be
> 'HELD'.

I'm pretty sure v4l2_m2m_last_dst_buf() is correct. We want to affect last job 
in the queue, all jobs before are already properly handled by comparing 
timestamps.

> 
> This might solve the race condition you saw with ffmpeg.

This actually doesn't change anything. ffmpeg currently queues only one job and 
then waits until it's executed. In this case it actually doesn't matter if 
"last" or "next" variant is used.

Best regards,
Jernej

> 
> Regards,
> 
> 	Hans
> 
> > +
> > +	if (out_vb)
> > +		out_vb->flags &= ~V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
> > +	else if (cap_vb && cap_vb->is_held)
> > +		v4l2_m2m_buf_done(cap_vb, VB2_BUF_STATE_DONE);
> > +
> > +	return 0;
> > +}
> > +EXPORT_SYMBOL_GPL(v4l2_m2m_ioctl_stateless_decoder_cmd);
> > +
> > 
> >  /*
> >  
> >   * v4l2_file_operations helpers. It is assumed here same lock is used
> >   * for the output and the capture buffer queue.
> > 
> > diff --git a/include/media/v4l2-mem2mem.h b/include/media/v4l2-mem2mem.h
> > index c9fa96c8eed1..8ae2f56c7fa3 100644
> > --- a/include/media/v4l2-mem2mem.h
> > +++ b/include/media/v4l2-mem2mem.h
> > @@ -714,6 +714,10 @@ int v4l2_m2m_ioctl_try_encoder_cmd(struct file *file,
> > void *fh,> 
> >  				   struct v4l2_encoder_cmd *ec);
> >  
> >  int v4l2_m2m_ioctl_try_decoder_cmd(struct file *file, void *fh,
> >  
> >  				   struct v4l2_decoder_cmd *dc);
> > 
> > +int v4l2_m2m_ioctl_stateless_try_decoder_cmd(struct file *file, void *fh,
> > +					     struct 
v4l2_decoder_cmd *dc);
> > +int v4l2_m2m_ioctl_stateless_decoder_cmd(struct file *file, void *priv,
> > +					 struct 
v4l2_decoder_cmd *dc);
> > 
> >  int v4l2_m2m_fop_mmap(struct file *file, struct vm_area_struct *vma);
> >  __poll_t v4l2_m2m_fop_poll(struct file *file, poll_table *wait);





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

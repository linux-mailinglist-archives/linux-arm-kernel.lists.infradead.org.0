Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 362001C5ADE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 17:19:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UJY+1NfnlEfFo0tite6mpViO4kLhD46SvfnOffb3IWM=; b=q8mAVFaGc2IxoG
	nGxASlvg8uhM1tlOM3msL8yioiQPDgUbM5bbFSbeNvNMVfeKsAuLQqy1SKIKxfqmbJYLuLQkHNZjr
	GUdYe6xBJgvoPjinSOiy4RL9xCJOK5dHESWUSYdcH9OSyGkF9AttVq1GYZu2lL3FoZedldVJ0bXIb
	vBsrGC7pompjKo2AcnVlPW+iqGNlGmkqd3qHiZ3P75V1gV/5J7zw6g/+xApuqk8ImjXHknjxKcuPl
	pXWN8UTHeT8tzr2QmVkqNkwNZzh3iWdwCz2Eyx8cOpEG0UzCdOvGPZ45vD76p89kjyu5ea9BXF9Cz
	+2WWzOVqhWkQBGWKhpTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVzLT-00017e-OO; Tue, 05 May 2020 15:18:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVzLK-00016B-9U; Tue, 05 May 2020 15:18:47 +0000
Received: from coco.lan (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BA10420661;
 Tue,  5 May 2020 15:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588691925;
 bh=Qb+bFTrIW/turrfytG4Xj+vuZ0yQCBJTHqIHLSzr85Q=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=vgkcg/8OufOHNA/2a7yMDXATx+PzttSLb25/eJdAKF635garePY8s8lLNraw1LRv6
 VXNNiWfiOPCm7i6BI2TzgXY3EDcLnB6o/GKh+xT4o5gbbPmo4irXC6kU8wvHp0jtZL
 SiRllWraLVhN0ZoS77AmMUO3RZWimOB35NegYes4=
Date: Tue, 5 May 2020 17:18:40 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 2/3] media: meson: vdec: fix another case of VP9 buffer
 shortage
Message-ID: <20200505171840.48d89ccc@coco.lan>
In-Reply-To: <20200428125036.9401-3-narmstrong@baylibre.com>
References: <20200428125036.9401-1-narmstrong@baylibre.com>
 <20200428125036.9401-3-narmstrong@baylibre.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_081846_344355_D1FAE801 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Maxime Jourdan <mjourdan@baylibre.com>, linux-kernel@vger.kernel.org,
 hverkuil-cisco@xs4all.nl, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Tue, 28 Apr 2020 14:50:35 +0200
Neil Armstrong <narmstrong@baylibre.com> escreveu:

> From: Maxime Jourdan <mjourdan@baylibre.com>
> 
> - Redo the logic where VP9 gets fresh CAPTURE buffers. The previous code
>   could lead to a hardlock.
> - Reserve 4 margin buffers instead of 3, as apparently there are corner
>   cases where 3 is not enough.
> 
> Fixes: e9a3eb4819ca ("media: meson: vdec: add VP9 input support")
> Fixes: 00c43088aa68 ("media: meson: vdec: add VP9 decoder support")
> Signed-off-by: Maxime Jourdan <mjourdan@baylibre.com>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

> +static struct vb2_v4l2_buffer *get_free_vbuf(struct amvdec_session *sess)
> +{
> +	struct codec_vp9 *vp9 = sess->priv;
> +	struct vb2_v4l2_buffer *vbuf = v4l2_m2m_dst_buf_remove(sess->m2m_ctx);
> +	struct vb2_v4l2_buffer *vbuf2;
> +
> +	if (!vbuf)
> +		return NULL;
> +
> +	if (!codec_vp9_get_frame_by_idx(vp9, vbuf->vb2_buf.index))
> +		return vbuf;
> +
> +	vbuf2 = get_free_vbuf(sess);

Huh!!!!

Never use recursive functions inside the Kernel! Kernel stack is too
limited.

Also, even if Kernel stack would be unlimited, the above logic
would endlessly be calling get_free_vbuf(sess).

Thanks,
Mauro

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

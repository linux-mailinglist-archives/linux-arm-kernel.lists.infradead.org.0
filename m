Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D6B17B70F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 07:53:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K9ORRqrbzYz3ANrzjgNwq34stcIQqu6fhSWoMkjRZZs=; b=OGKylsCP8gw3Pt
	QKRfQlqecXMFgGOfqzBmLP0Yutpt5mKe3D+uZj5T35maBjtYXuqvsi+T+B0ILaPQ6R1mKPI3Jpm14
	tv567iinBHmtsbb6TAOe8GHahvsIY8repAPnRsOf3MQR3IKvZobpX4JJIhPfzPEQdgcCVSfOakRZ0
	qVBg6V8xFhTR3r7+DJPJ8Hj68GFb3Sk5/ttv65aQQi7fHmv0RlOqiyUyqi8LDjTEbabx1fWzAc4kJ
	9nUnzhT002opqHO47SvfhRdA3ot5IDj8pA/zo/wQ2OZeRChlLXQhFn8U6gHmoNFXiuWYHE2oIjhIx
	OisRQ3l0NRA/NOOLXZ4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA6rD-0006Ix-VK; Fri, 06 Mar 2020 06:53:15 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA6r1-0006Gk-Sw
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 06:53:05 +0000
Received: by mail-io1-xd41.google.com with SMTP id s24so1079976iog.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 22:53:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/mARJYGslAJ8V9v0TPSw6dreIR1LiKX4t1V7F/dU3ew=;
 b=YRWfWW+PdyHfSJi8ExaraGhfeX3ywJEpqzVaR0lechfwGLoxZMXLGK1taQExIrWiG8
 f7PX1JZaQ5oqFVc9EK+KAIuiZw4ej3DT0TAQsbrspHVY7K30dxLJtrHvU0R08CgCdRZM
 5fVxO4+8GdjL2jH1+edlQ+EuSO9YD5E36+OZM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/mARJYGslAJ8V9v0TPSw6dreIR1LiKX4t1V7F/dU3ew=;
 b=jcvPW+3t2xk2G0qL6jkel8EmpUuXh/kaxXK62pHg4u2n+YXtub5MfsKwYJIVjVPjEy
 +PBKywUM3wvzO8NPkfu6nuyFVI5PyaKQIY7e3Brkbt6EwUwalIuzpuPtXSuVliaN6KRY
 3lFGBfSZzbNIu2g1nkImA7G+minfxtYwkC45v+ioyESQ/V2HlHy4looyA41SfRamfLWs
 M2mCPAf2+saj1fM32O8ll5Cwxgf5SwHttCX4KwwWfQnhQLoJFc+/THjbHqO1bMCvKxJe
 Z9wpQnONiZYtclNSfd3MU81t2zm0kBuNDY+Q8+nRtpwtlnUSF8Ww5UKMlyL7OnBCJ8t3
 u94w==
X-Gm-Message-State: ANhLgQ28pwRqVTNbc0HXlfmsF0HO7S4NruBqcb4W7zWlQqLeyXB8SV39
 NpLKNHUJqGEf7QixgWNXROaMMNfcrmJhZYFDerHBYQ==
X-Google-Smtp-Source: ADFU+vtNwg97u+UdTWVYb6/mwYd7ahxnbfnrbtAicFiBrYZA15JA9SwdltGuhno/l4EXfmmq9upRMGTPd78cxG76KAI=
X-Received: by 2002:a6b:5b15:: with SMTP id v21mr1895802ioh.100.1583477581773; 
 Thu, 05 Mar 2020 22:53:01 -0800 (PST)
MIME-Version: 1.0
References: <20200302044021.97415-1-hsinyi@chromium.org>
 <46f27a3b-de4c-8d43-d6d7-d6332ee30451@xs4all.nl>
In-Reply-To: <46f27a3b-de4c-8d43-d6d7-d6332ee30451@xs4all.nl>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Fri, 6 Mar 2020 14:52:35 +0800
Message-ID: <CAJMQK-i2Cht5YMMMQsyz0UGhpiU3kF67C_j8pD0pHDwzkyz6VA@mail.gmail.com>
Subject: Re: [PATCH v4] media: mtk-vpu: avoid unaligned access to DTCM buffer.
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_225303_936939_C0FF5921 
X-CRM114-Status: GOOD (  19.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 lkml <linux-kernel@vger.kernel.org>, Houlong Wei <houlong.wei@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 3, 2020 at 10:24 PM Hans Verkuil <hverkuil-cisco@xs4all.nl> wrote:
>
> On 02/03/2020 05:40, Hsin-Yi Wang wrote:
> > media: mtk-vpu: avoid unaligned access to DTCM buffer.
> >
> > Previously, vpu->recv_buf and send_buf are forced cast from
> > void __iomem *tcm. vpu->recv_buf->share_buf is passed to
> > vpu_ipi_desc.handler(). It's not able to do unaligned access. Otherwise
> > kernel would crash due to unable to handle kernel paging request.
> >
> > struct vpu_run {
> >       u32 signaled;
> >       char fw_ver[VPU_FW_VER_LEN];
> >       unsigned int    dec_capability;
> >       unsigned int    enc_capability;
> >       wait_queue_head_t wq;
> > };
> >
> > fw_ver starts at 4 byte boundary. If system enables
> > CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS, strscpy() will do
> > read_word_at_a_time(), which tries to read 8-byte: *(unsigned long *)addr
> >
> > vpu_init_ipi_handler() calls strscpy(), which would lead to crash.
> >
> > vpu_init_ipi_handler() and several other handlers (eg.
> > vpu_dec_ipi_handler) only do read access to this data, so they can be
> > const, and we can use memcpy_fromio() to copy the buf to another non iomem
> > buffer then pass to handler.
> >
> > Fixes: 85709cbf1524 ("media: replace strncpy() by strscpy()")
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > ---
> > Change in v4:
> > - Remove forced casting recv_buf from tcm. Copy iomem data before passing
> >   to handler.
> > Change in v2, v3:
> > - fix sparse warnings.
> > ---
> >  drivers/media/platform/mtk-mdp/mtk_mdp_vpu.c  |  9 ++--
> >  .../media/platform/mtk-vcodec/vdec_vpu_if.c   |  6 +--
> >  .../media/platform/mtk-vcodec/venc_vpu_if.c   | 12 ++---
> >  drivers/media/platform/mtk-vpu/mtk_vpu.c      | 45 ++++++++++---------
> >  drivers/media/platform/mtk-vpu/mtk_vpu.h      |  2 +-
> >  5 files changed, 38 insertions(+), 36 deletions(-)
> >
> > diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_vpu.c b/drivers/media/platform/mtk-mdp/mtk_mdp_vpu.c
> > index 6720d11f50cf..dc95b8a44759 100644
> > --- a/drivers/media/platform/mtk-mdp/mtk_mdp_vpu.c
> > +++ b/drivers/media/platform/mtk-mdp/mtk_mdp_vpu.c
> > @@ -15,7 +15,7 @@ static inline struct mtk_mdp_ctx *vpu_to_ctx(struct mtk_mdp_vpu *vpu)
> >       return container_of(vpu, struct mtk_mdp_ctx, vpu);
> >  }
> >
> > -static void mtk_mdp_vpu_handle_init_ack(struct mdp_ipi_comm_ack *msg)
> > +static void mtk_mdp_vpu_handle_init_ack(const struct mdp_ipi_comm_ack *msg)
> >  {
> >       struct mtk_mdp_vpu *vpu = (struct mtk_mdp_vpu *)
> >                                       (unsigned long)msg->ap_inst;
> > @@ -26,10 +26,11 @@ static void mtk_mdp_vpu_handle_init_ack(struct mdp_ipi_comm_ack *msg)
> >       vpu->inst_addr = msg->vpu_inst_addr;
> >  }
> >
> > -static void mtk_mdp_vpu_ipi_handler(void *data, unsigned int len, void *priv)
> > +static void mtk_mdp_vpu_ipi_handler(const void *data, unsigned int len,
> > +                                 void *priv)
> >  {
> > -     unsigned int msg_id = *(unsigned int *)data;
> > -     struct mdp_ipi_comm_ack *msg = (struct mdp_ipi_comm_ack *)data;
> > +     unsigned int msg_id = *(const unsigned int *)data;
> > +     const struct mdp_ipi_comm_ack *msg = data;
>
> Why not just do:
>
>         const struct mdp_ipi_comm_ack *msg = data;
>         unsigned int msg_id = msg->msg_id;
>
> Much cleaner.
>
> Other than this small issue this patch looks nice. No more sparse/smatch warnings
> and no more weird casts :-)
>
> Regards,
>
>         Hans
>
Updated in V5, thanks :)

https://lore.kernel.org/lkml/20200304025851.173570-1-hsinyi@chromium.org/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

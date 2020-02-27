Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1072F1721F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 16:14:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2NzN+SXS5sXCBGWdfbZNtYfw+qShIJGDBbA+eQcRC2o=; b=MrUlR86NOwS8eM
	dMlOO9B/EJdknG8cHCStTCF74oj4ynSTeOvwSQ+teiD9ayL2lfQU/vCFBJZ6lIgfzaz0ghG+mSZMP
	YC/TEeCC++noVUQNDPzkWiSNCxY8k07B4xf1gDpADBoIAKJiS+Da/nVRow8WN/Vgu5RyiJVnPLuPj
	hEzry3iCMEwQ7ct/Jxjgp273fHMCpUlKmFWb46zRHt8nmvjzBamjm1QgA/LA2vibkVa9k5YmHmWPF
	O3jA5AQEefL/gl0eGAVXk/oee7WR4Gpw8iu9wQVGuW1MEd+W94816wf5MjNf1rjJz9pS9U+MKuDht
	WW0m4Lhzf41zguYACbIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7KrN-0008CO-7r; Thu, 27 Feb 2020 15:13:57 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7KrB-0008Ay-Uf
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 15:13:47 +0000
Received: by mail-il1-x141.google.com with SMTP id i7so2719425ilr.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 07:13:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=m+kylmRZdQ7kHJRK9lKNLqwlSVhHwyYol2gsDgRlfLA=;
 b=G2r3t7rraJO/jHNvyP5CFwnplNk9lJtpT9K3gnayhn4rcbOA3gSXoz8oCLeE81E/Wt
 no0Zh7DuWczVpOtO+5F+bZ/zXJJtqem4r07fo5SkxDWfHb9mDBp6nKik1l4JDM8KN/al
 qqemDCNP9bkaEgHme33rJac7E7n0rUJSoO+8E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=m+kylmRZdQ7kHJRK9lKNLqwlSVhHwyYol2gsDgRlfLA=;
 b=CghxHtp4/XxTTu/Cu+Wt2r9P/83PEfRRd3aOHH/Lf5SL/FDN9+cyWYZS3QaayEqweu
 SouIC4WWLYiyENQMFUJG/hvb7qzsak8Mj8cCu26OGIvt1NCe5yB/xrE4VXbXZUj4Izvd
 yrpy5fikS7zeVEHrqwhwu7zjcf/uiEngd7snnErxxxZWY8QGHvOx7BtiP5x71pys/D5k
 H5zHYDK5yDMSF165sFGExoy8NQTpMlWdDJidBMMGqSlZcUM1Jp3Wiw3bmP8el3JDV4Fn
 nA/DmIlB350HbQPQ8z79kVjowLs3kkyP50Da1bLbV+nghQBeRpby59XeKsY2Rs+5XXcn
 HBjA==
X-Gm-Message-State: APjAAAU13OD2wPyfePnarfjViloYYGGMOs1yJrUgKEwikUrQmQO/f8HW
 K2gewnb850eZx+jyek92OwMiZ5iLnf+6W0UXoavCsg==
X-Google-Smtp-Source: APXvYqx6ZTgm/JnuJem8YlsSHDER8b5Wil6I0Af4SkhwFk++vp7lU3TdAvSta4JoAfspzedl//Jug2AVYKDt3UXKMdc=
X-Received: by 2002:a92:d610:: with SMTP id w16mr5875950ilm.283.1582816420405; 
 Thu, 27 Feb 2020 07:13:40 -0800 (PST)
MIME-Version: 1.0
References: <20200225172437.106679-1-hsinyi@chromium.org>
 <6986e879-cf35-13a5-baae-9ab09ba1a0d7@xs4all.nl>
In-Reply-To: <6986e879-cf35-13a5-baae-9ab09ba1a0d7@xs4all.nl>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Thu, 27 Feb 2020 23:13:14 +0800
Message-ID: <CAJMQK-hFQ8ZMAH=C9suud81gwXQaG_=4mx69qeQP=eCFgAXhTQ@mail.gmail.com>
Subject: Re: [PATCH v3] media: mtk-vpu: avoid unaligned access to DTCM buffer.
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_071346_015881_268D18C6 
X-CRM114-Status: GOOD (  21.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Thu, Feb 27, 2020 at 5:50 PM Hans Verkuil <hverkuil-cisco@xs4all.nl> wrote:
>
> On 2/25/20 6:24 PM, Hsin-Yi Wang wrote:
> > struct vpu_run *run in vpu_init_ipi_handler() is an ioremapped DTCM (Data
> > Tightly Coupled Memory) buffer shared with AP.  It's not able to do
> > unaligned access. Otherwise kernel would crash due to unable to handle
> > kernel paging request.
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
> > Copy the string by memcpy_fromio() for this buffer to avoid unaligned
> > access.
> >
> > Fixes: 85709cbf1524 ("media: replace strncpy() by strscpy()")
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > ---
> > Change in v3:
> > - fix sparse warnings.
> > Change in v2:
> > - fix sparse warnings.
> > ---
> >  drivers/media/platform/mtk-vpu/mtk_vpu.c | 14 ++++++++------
> >  1 file changed, 8 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/media/platform/mtk-vpu/mtk_vpu.c b/drivers/media/platform/mtk-vpu/mtk_vpu.c
> > index a768707abb94..e3fd2d1814f3 100644
> > --- a/drivers/media/platform/mtk-vpu/mtk_vpu.c
> > +++ b/drivers/media/platform/mtk-vpu/mtk_vpu.c
> > @@ -603,12 +603,14 @@ EXPORT_SYMBOL_GPL(vpu_load_firmware);
> >  static void vpu_init_ipi_handler(void *data, unsigned int len, void *priv)
> >  {
> >       struct mtk_vpu *vpu = (struct mtk_vpu *)priv;
> > -     struct vpu_run *run = (struct vpu_run *)data;
> > -
> > -     vpu->run.signaled = run->signaled;
> > -     strscpy(vpu->run.fw_ver, run->fw_ver, sizeof(vpu->run.fw_ver));
> > -     vpu->run.dec_capability = run->dec_capability;
> > -     vpu->run.enc_capability = run->enc_capability;
> > +     struct vpu_run __iomem *run = (struct vpu_run __iomem __force *)data;
>
> The use of __force is generally a bad sign. Shouldn't the 'void *data' be a
> 'void __iomem *data'? And vpu->recv_buf should be 'struct share_obj __iomem *recv_buf;'.
> Probably send_buf as well.
>
> In other words, the __iomem attribute should be wired up correctly throughout the
> driver code, and not forcibly applied in one place. That is asking for trouble in
> the future. Also, sparse only works well in detecting problems if such attributes
> are applied at the right level.
>
> Regards,
>
>         Hans
>
Thanks for your comments. I should check the whole code more
thoroughly. I do see that vpu->recv_buf is forced cast from void
__iomem *tcm:
vpu->recv_buf = (__force struct share_obj *)(vpu->reg.tcm +VPU_DTCM_OFFSET);
I'll use struct share_obj __iomem *recv_buf; as you suggested. Thanks

Since all handlers (vpu_init_ipi_handler, vpu_enc_ipi_handler,
vpu_dec_ipi_handler, and mtk_mdp_vpu_ipi_handler) only do read access
to this buffer, I think we can also change 'void *data' as 'const void
*data', and pass another buffer copied from vpu->recv_buf->share_buf
to handler. In this way we don't have to change to use iomem APIs in
those handlers.

 static void vpu_ipi_handler(struct mtk_vpu *vpu)
 {
-       struct share_obj *rcv_obj = vpu->recv_buf;
+       struct share_obj __iomem *rcv_obj = vpu->recv_buf;
        struct vpu_ipi_desc *ipi_desc = vpu->ipi_desc;
-
-       if (rcv_obj->id < IPI_MAX && ipi_desc[rcv_obj->id].handler) {
-               ipi_desc[rcv_obj->id].handler(rcv_obj->share_buf,...
...
+       unsigned char data[SHARE_BUF_SIZE];
+       s32 id = readl(&rcv_obj->id);
+
+       memcpy_fromio(data, rcv_obj->share_buf, sizeof(data));
+       if (id < IPI_MAX && ipi_desc[id].handler) {
+               ipi_desc[id].handler(data, readl(&rcv_obj->len), ...
...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

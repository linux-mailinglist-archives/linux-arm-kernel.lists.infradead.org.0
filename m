Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C897D13B8E8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 06:23:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=69Eck/qFoJFsFweDiEG1dX0intbApbVQCVkkwZJJ29A=; b=przxhh1CTUpdWx
	bdHYiWgp0UMfOfrUFksPgzeyJM8KIeh7vr+JyEtyGQc2d1hy+Q634bvdtzxQ9O/e5v8ZstoCIxhks
	DJV7AZ35Vo39q32ffZVKxykUuorIRGxOrkeMPhXkIHFL4gzyFvsqvfsxlSLeFZyEq5f3kWol+RDQn
	WG9VVYXy2MYhdoHPM0xta1pePBHx1QFglDbMR+Y9nJG6ilBdQLZf6S+BsN3MbIo7U3QZda9FW35t2
	OgPmBGqgR9iE5BpQwuXYA32o7uVMcJvSZskaKD2lcV0pZSKEwOpEeB6s3wOXSgNIxXN+ho4K0nSMy
	IebPiFEwou9SwHRm226Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irb8o-0006JY-Fx; Wed, 15 Jan 2020 05:22:54 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irb8d-0006HY-BN
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 05:22:45 +0000
Received: by mail-ot1-x341.google.com with SMTP id a15so15058426otf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 21:22:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1V7MW/ylG5HH52qKYnJfjENVm5zMbyLo/1xAyipVPNU=;
 b=Toqv6jeGfvvxWRkr5nvZFkzGlWyXW0qh9bEcuwG/GucvkAKkjZSDtLzEWNyuJz0kAn
 3LFtDjFZjvJ7Cjg7QuoSNUcSCrCzCprhHwc/fgBE3nhH6SR9YUsAAdK89gezNLJwSh+u
 U2JRzqaD9IF3wcMHh/XVE6mg6as3ybZqHT9UQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1V7MW/ylG5HH52qKYnJfjENVm5zMbyLo/1xAyipVPNU=;
 b=jnD8BzwCvxI2g9phPxR0i5A0i90raaS/dviapCvxg+NOa2HQig3Q+mZZmIh6OBUbd5
 Wtcdup/dgMcYb1fjfVw3/7VySarbzkaAKPUVWzp7RSpJrP3pDtMeJ9GNAS3sWrNCs8hQ
 aMLSrD8dpEDRLxY9IQgxQBSSeen21V7N/hIfax2BwN6pHgqSLcTVWc9k5l0iy/ZOXx7I
 e24B4IT7lKMHz8ck47wfeTAHkBQ9b+WK+7altGIWR3LJmIY1pyFjgzpz9KjQ5nt5ZhKv
 WDZjZBHNWzuFBnyAiECg/5M0tw1VT954bKLZR41eOV9nW1fPqBeP+leZw6Lw0rKvd4ZQ
 Ng7Q==
X-Gm-Message-State: APjAAAW/yr4/C1edu3lJB5OawEgnyBfaIeoUS8vFj7MIedH7jT13KFGd
 1nYU548NEpOvinw9xgx7Ipwi2GGj288FCA==
X-Google-Smtp-Source: APXvYqwBgB43EjNFvp+2foW+RE96sJGTlKM8DAUOscc9MeVFGSE/rOGvTYTrAAllvb9TVObUZ2lnKQ==
X-Received: by 2002:a05:6830:2057:: with SMTP id
 f23mr1583983otp.110.1579065761626; 
 Tue, 14 Jan 2020 21:22:41 -0800 (PST)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com.
 [209.85.167.170])
 by smtp.gmail.com with ESMTPSA id s83sm5355245oif.33.2020.01.14.21.22.41
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Jan 2020 21:22:41 -0800 (PST)
Received: by mail-oi1-f170.google.com with SMTP id l9so14253532oii.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 21:22:41 -0800 (PST)
X-Received: by 2002:aca:d0b:: with SMTP id 11mr19753910oin.71.1579065262776;
 Tue, 14 Jan 2020 21:14:22 -0800 (PST)
MIME-Version: 1.0
References: <20200114033226.16786-1-gtk_ruiwang@mediatek.com>
 <CAPBb6MXhiNK84PuUy8=RUUeSh5j4VXw-Ar5SbZDHZAobp7xpEQ@mail.gmail.com>
In-Reply-To: <CAPBb6MXhiNK84PuUy8=RUUeSh5j4VXw-Ar5SbZDHZAobp7xpEQ@mail.gmail.com>
From: Alexandre Courbot <acourbot@chromium.org>
Date: Wed, 15 Jan 2020 14:14:11 +0900
X-Gmail-Original-Message-ID: <CAPBb6MXu9+9C7iUZST_OCwfren7kggFTG41DArF6yzRa_0hf4w@mail.gmail.com>
Message-ID: <CAPBb6MXu9+9C7iUZST_OCwfren7kggFTG41DArF6yzRa_0hf4w@mail.gmail.com>
Subject: Re: media: mtk-vcodec: reset segment data then trig decoder
To: gtk_ruiwang <gtk_ruiwang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_212243_416252_6C50CEF4 
X-CRM114-Status: GOOD (  23.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tiffany Lin <tiffany.lin@mediatek.com>, srv_heupstream@mediatek.com,
 Yunfei Dong <yunfei.dong@mediatek.com>,
 Longfei Wang <longfei.wang@mediatek.com>, LKML <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 Maoguang Meng <maoguang.meng@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 12:47 PM Alexandre Courbot
<acourbot@chromium.org> wrote:
>
> On Tue, Jan 14, 2020 at 12:32 PM <gtk_ruiwang@mediatek.com> wrote:
> >
> > From: gtk_ruiwang <gtk_ruiwang@mediatek.com>
> >
> > VP9 bitstream specification indicate segment data should reset to
> > default when meet key frames, intra only frames or enable error
> > resilience mode. So memset segmentation map buffer before every
> > decode process is not appropriate.
> >
> > Reset segment data only when needed, then trig decoder hardware
> >
> > Signed-off-by: Rui Wang <gtk_ruiwang@mediatek.com>
> > ---
> >  .../platform/mtk-vcodec/vdec/vdec_vp9_if.c    | 19 +++++++++++++++----
> >  1 file changed, 15 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c b/drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c
> > index 24c1f0bf2147..42c9c3c98076 100644
> > --- a/drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c
> > +++ b/drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c
> > @@ -110,7 +110,9 @@ struct vp9_sf_ref_fb {
> >   * @buf_len_sz_c : size used to store cbcr plane ufo info (AP-R, VPU-W)
> >
> >   * @profile : profile sparsed from vpu (AP-R, VPU-W)
> > - * @show_frame : display this frame or not (AP-R, VPU-W)
> > + * @show_frame : [BIT(0)] display this frame or not (AP-R, VPU-W)
> > + *     [BIT(14)] reset segment data or not (AP-R, VPU-W)
> > + *     [BIT(15)] trig decoder hardware or not (AP-R, VPU-W)
> >   * @show_existing_frame : inform this frame is show existing frame
> >   *     (AP-R, VPU-W)
> >   * @frm_to_show_idx : index to show frame (AP-R, VPU-W)
> > @@ -494,12 +496,12 @@ static void vp9_swap_frm_bufs(struct vdec_vp9_inst *inst)
> >                                         frm_to_show->fb->base_y.size);
> >                 }
> >                 if (!vp9_is_sf_ref_fb(inst, inst->cur_fb)) {
> > -                       if (vsi->show_frame)
> > +                       if (vsi->show_frame & BIT(0))
> >                                 vp9_add_to_fb_disp_list(inst, inst->cur_fb);
> >                 }
> >         } else {
> >                 if (!vp9_is_sf_ref_fb(inst, inst->cur_fb)) {
> > -                       if (vsi->show_frame)
> > +                       if (vsi->show_frame & BIT(0))
> >                                 vp9_add_to_fb_disp_list(inst, frm_to_show->fb);
> >                 }
> >         }
> > @@ -870,13 +872,22 @@ static int vdec_vp9_decode(void *h_vdec, struct mtk_vcodec_mem *bs,
> >                                         vsi->sf_frm_sz[idx]);
> >                         }
> >                 }
> > -               memset(inst->seg_id_buf.va, 0, inst->seg_id_buf.size);
> >                 ret = vpu_dec_start(&inst->vpu, data, 3);
> >                 if (ret) {
> >                         mtk_vcodec_err(inst, "vpu_dec_start failed");
> >                         goto DECODE_ERROR;
> >                 }
> >
> > +               if ((vsi->show_frame & BIT(15)) &&
> > +                   (vsi->show_frame & BIT(14))) {
>
> Using the new bits in this manner means this patch is not compatible
> with the older firmware.
>
> On an older firmware, these bits will be 0, which means the decoder
> will never be started. To preserve compatibility, the behavior should
> be reversed: *do not* reset and/or start the decoder if the bits are
> set.
>
> Also both bits are only used together - we should either separate the
> data segment reset and decoder start, or rely on only one bit for
> this.

Ah, looks like I missed the fact that the decoder is still started
even when these bits are not set. So this indeed looks
backward-compatible. Please ignore my comment.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

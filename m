Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E6BA83AD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 15:21:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mEeLzMxJ9fLqCgHRnE34nm3oZ3jqMmqiU8KqoxJKyRw=; b=Er5UxN2zAio0XW
	cT/mMbk6IRQL2vasERJUb7/wfss3zX8uRb3blwoJhGOmVkYdMh+CRIR9Uyhg0XqLD7OA4G7PppqZ3
	xvoQmoTqJOUzvgtIDrXiEfaa8VrkNHy4Vxsk3qGv/AIgmCkkFCwlah1ju3997pDDxCbv4m0rdKBSy
	JneqPZSoTuS9uwb1ryA7VCW6bThHduuF/UeuA/KrAR+1uNtvB6QnjtNnLqb6b3sVZvzaPV+v8vSbF
	WUbOnjD0HQtw8TJ+d0BTb0q2r6M36K2mr/B43nY++bJx4wV6QXPgKG+w2BaIzOnkoCTXjy7bFJHod
	dPYFfbTgY2h3sprL/OyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5VEA-00064g-S8; Wed, 04 Sep 2019 13:21:39 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5VCc-0003UA-Ay
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 13:20:04 +0000
Received: by mail-ed1-x541.google.com with SMTP id v38so16520306edm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 06:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MOV4cHwCeXmCSAFYb8khVqjm5n/Qa64rF9TWXojizKk=;
 b=PJ0fgm8dX3lI+ptfzwJhpzD5dViSsoSfH04P0c8+uQF9GmGmqOfGKHBsEbf1DZdmh4
 90GpHGsJHCeUhKZ+tT+3PuaIkK38Nml2mbUWGZ78/iQhiyLGYkcpP+DFxlQJbR4+u3C3
 Z1UjBOmgLjevM+8mMGDEELdpLHigvnd4v0flU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MOV4cHwCeXmCSAFYb8khVqjm5n/Qa64rF9TWXojizKk=;
 b=VVozcdeXaAakQW4wFQLxzUAdx02B1jQ9/fu+CZ8TawIgdrJ8cxM8LgwX43Mu6E9vKd
 z/blPlUvdTxgB7/nLIA1x0/LvogDspdwPYp/tj9Z8GyMQjBKIk8doWbGTzSvws5stjNa
 3PWmbrX9/fLvD9vemWa/ftAIh36CMng2+5+XWmDy8pG7vdiNlRf5qpWn0ApwMWsBt29L
 n8ZJys+9hCW6l1a44AToymxQ2prJuky9nCV/vIgAsp6yfA5IInj1S06uL01sZS83EbDa
 fk8Lo/BKNGlWfWBBpANC7UgVBhfgbDRxqSlhVxf/9PugeDOk0B+iPq4cFp1Q4N6htb+a
 mBMA==
X-Gm-Message-State: APjAAAXcLFxKq4Gnd3NplPm3d7qVRw7dSdIK+SXXNpEI8xSu19RNiyDB
 YmgqqnnHsg7QGgSAA/6Fo0DnN6ZkKog8wA==
X-Google-Smtp-Source: APXvYqwHTWPNoMglrMkKKrarbMyVICQEPnDU3upMpfRGyAAYhtIaobciCIVYMC1K1spoNCOSxUIRIw==
X-Received: by 2002:a17:906:2458:: with SMTP id
 a24mr3583953ejb.69.1567603200359; 
 Wed, 04 Sep 2019 06:20:00 -0700 (PDT)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com.
 [209.85.128.41])
 by smtp.gmail.com with ESMTPSA id j5sm1550938edj.62.2019.09.04.06.20.00
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Sep 2019 06:20:00 -0700 (PDT)
Received: by mail-wm1-f41.google.com with SMTP id t9so3716347wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 06:20:00 -0700 (PDT)
X-Received: by 2002:a1c:c012:: with SMTP id q18mr2592884wmf.116.1567602782491; 
 Wed, 04 Sep 2019 06:13:02 -0700 (PDT)
MIME-Version: 1.0
References: <1562661672-22439-1-git-send-email-Jerry-Ch.chen@mediatek.com>
 <1562661672-22439-5-git-send-email-Jerry-Ch.chen@mediatek.com>
 <20190802082815.GA203993@chromium.org> <1566724680.20680.8.camel@mtksdccf07>
 <CAAFQd5Dw+jaT-+LAUEVeB8W1zdnOgPw7u+aCfDWhYW1SfbzO8g@mail.gmail.com>
 <1566957625.20680.33.camel@mtksdccf07>
 <CAAFQd5D-Yg1FjUE_rwmqfS1gvfE0=MZ=r-ziueU_37-uo9QTbw@mail.gmail.com>
 <1567424859.18318.32.camel@mtksdccf07>
 <CAAFQd5AGgeFbto6V1KkL0dp1QPziOKV3pWQDU2OJ+S1QKvnBdg@mail.gmail.com>
 <1567493081.18318.49.camel@mtksdccf07>
 <CAAFQd5DWM=R7sFHYGhhR_rXrzgRnc4xtH_t8Pig-4tcP9KTSYg@mail.gmail.com>
 <1567511169.18318.65.camel@mtksdccf07>
 <CAAFQd5DiPcUxd+R-v_-BdRx+QqZ35Riii_jpgbqr5mc3BnQvDw@mail.gmail.com>
 <1567568281.18318.80.camel@mtksdccf07>
 <CAAFQd5CRC2cyV30B4Qv59HdrJ7Cpe_yK5aY-BecQQ3J3i0PtCQ@mail.gmail.com>
 <1567577389.18318.100.camel@mtksdccf07>
 <CAAFQd5AxTQPD+nP9CJs45QTzGHKssjv3vRtMqHONABfp12afYw@mail.gmail.com>
 <1567584577.22453.11.camel@mtksdccf07>
 <CAAFQd5Dzxy10g-MKHMnNbVO6kp9_L_jm1m+gtN+p=YF2LyBiag@mail.gmail.com>
 <1567587708.22453.15.camel@mtksdccf07>
 <CAAFQd5DWfEEiGthPi=qoxD-mpAWa68GOCi55mqpmagS-tsGYkA@mail.gmail.com>
 <1567589188.22453.24.camel@mtksdccf07>
In-Reply-To: <1567589188.22453.24.camel@mtksdccf07>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 4 Sep 2019 22:12:51 +0900
X-Gmail-Original-Message-ID: <CAAFQd5Ckz9qH7AnLNM4HRTM2gJQP1HXRS09+o6Prf++D1PQhng@mail.gmail.com>
Message-ID: <CAAFQd5Ckz9qH7AnLNM4HRTM2gJQP1HXRS09+o6Prf++D1PQhng@mail.gmail.com>
Subject: Re: [RFC PATCH V2 4/4] platform: mtk-isp: Add Mediatek FD driver
To: Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_062002_570613_50E707DA 
X-CRM114-Status: GOOD (  21.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= <Sean.Cheng@mediatek.com>,
 "laurent.pinchart+renesas@ideasonboard.com"
 <laurent.pinchart+renesas@ideasonboard.com>,
 =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <Rynn.Wu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 =?UTF-8?B?UG8tWWFuZyBIdWFuZyAo6buD5p+P6Zm9KQ==?= <po-yang.huang@mediatek.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "suleiman@chromium.org" <suleiman@chromium.org>,
 "shik@chromium.org" <shik@chromium.org>,
 =?UTF-8?B?SnVuZ28gTGluICjmnpfmmI7kv4op?= <jungo.lin@mediatek.com>,
 =?UTF-8?B?U2ogSHVhbmcgKOm7g+S/oeeSiyk=?= <sj.huang@mediatek.com>,
 "yuzhao@chromium.org" <yuzhao@chromium.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "zwisler@chromium.org" <zwisler@chromium.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 =?UTF-8?B?Q2hyaXN0aWUgWXUgKOa4uOmbheaDoCk=?= <christie.yu@mediatek.com>,
 =?UTF-8?B?RnJlZGVyaWMgQ2hlbiAo6Zmz5L+K5YWDKQ==?= <Frederic.Chen@mediatek.com>,
 "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 4, 2019 at 6:26 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
>
> Hi Tomasz,
>
> On Wed, 2019-09-04 at 17:03 +0800, Tomasz Figa wrote:
> > On Wed, Sep 4, 2019 at 6:02 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> > >
> > > Hi Tomasz,
> > >
> > > On Wed, 2019-09-04 at 16:25 +0800, Tomasz Figa wrote:
> > > > On Wed, Sep 4, 2019 at 5:09 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> > > > >
> > > > > Hi Tomasz,
> > > > >
> > > > > On Wed, 2019-09-04 at 14:34 +0800, Tomasz Figa wrote:
> > > > > > On Wed, Sep 4, 2019 at 3:09 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > >
> > > > > > > Hi Tomasz,
> > > > > > >
> > > > > > > On Wed, 2019-09-04 at 12:15 +0800, Tomasz Figa wrote:
> > > > > > > > On Wed, Sep 4, 2019 at 12:38 PM Jerry-ch Chen
> > > > > > > > <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > > > >
> > > > > > > > > Hi Tomasz,
> > > > > > > > >
> > > > > > > > > On Tue, 2019-09-03 at 20:05 +0800, Tomasz Figa wrote:
> > > > > > > > > > On Tue, Sep 3, 2019 at 8:46 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > > > > > >
> > > > > > > > > > > Hi Tomasz,
> > > > > > > > > > >
> > > > > > > > > > > On Tue, 2019-09-03 at 15:04 +0800, Tomasz Figa wrote:
> > > > > > > > > > > > On Tue, Sep 3, 2019 at 3:44 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > > > > > > > >
> > > > > > > > > > > > > On Tue, 2019-09-03 at 13:19 +0800, Tomasz Figa wrote:
> > > > > > > > > > > > > > On Mon, Sep 2, 2019 at 8:47 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > Hi Tomasz,
> > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > On Fri, 2019-08-30 at 16:33 +0800, Tomasz Figa wrote:
> > > > > > > > > > > > > > > > On Wed, Aug 28, 2019 at 11:00 AM Jerry-ch Chen
> > > > > > > > > > > > > > > > <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > Hi Tomasz,
> > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > On Mon, 2019-08-26 at 14:36 +0800, Tomasz Figa wrote:
> > > > > > > > > > > > > > > > > > Hi Jerry,
> > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > On Sun, Aug 25, 2019 at 6:18 PM Jerry-ch Chen
> > > > > > > > > > > > > > > > > > <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > Hi Tomasz,
> > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > On Fri, 2019-08-02 at 16:28 +0800, Tomasz Figa wrote:
> > > > > > > > > > > > > > > > > > > > Hi Jerry,
> > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > On Tue, Jul 09, 2019 at 04:41:12PM +0800, Jerry-ch Chen wrote:
> [snip]
> > > > > static void mtk_fd_vb2_stop_streaming(struct vb2_queue *vq)
> > > > > {
> > > > >         struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
> > > > >         struct mtk_fd_dev *fd = ctx->fd_dev;
> > > > >         struct vb2_v4l2_buffer *vb;
> > > > >         struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
> > > > >         struct v4l2_m2m_queue_ctx *queue_ctx;
> > > > >         u32 ret;
> > > > >
> > > > >         if (!fd->fd_irq_done.done)
> > > >
> > > > We shouldn't access internal fields of completion.
> > > >
> > > > >                 ret = wait_for_completion_timeout(&fd->fd_irq_done,
> > > > >                                                   msecs_to_jiffies(
> > > > >                                                         MTK_FD_HW_TIMEOUT));
> > > > >         queue_ctx = V4L2_TYPE_IS_OUTPUT(vq->type) ?
> > > > >                                         &m2m_ctx->out_q_ctx :
> > > > >                                         &m2m_ctx->cap_q_ctx;
> > > > >         while ((vb = v4l2_m2m_buf_remove(queue_ctx)))
> > > > >                 v4l2_m2m_buf_done(vb, VB2_BUF_STATE_ERROR);
> > > > >
> > > > >         if (vq->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
> > > > >                 mtk_fd_hw_disconnect(fd);
> > > > > }
> > > > >
> > > > > I've also tried to wait completion unconditionally for both queues and
> > > > > the second time will wait until timeout, as a result, it takes longer to
> > > > > swap the camera every time and close the camera app.
> > > >
> > > > I think it should work better if we call complete_all() instead of complete().
> > > >
> > > Thanks,
> > >
> > > I use complete_all(), and it works fine now.
> > >
> > > static void mtk_fd_vb2_stop_streaming(struct vb2_queue *vq)
> > > {
> > >         struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
> > >         struct mtk_fd_dev *fd = ctx->fd_dev;
> > >         struct vb2_v4l2_buffer *vb;
> > >         struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
> > >         struct v4l2_m2m_queue_ctx *queue_ctx;
> > >
> > >         wait_for_completion_timeout(&fd->fd_irq_done,
> > >                                           msecs_to_jiffies(MTK_FD_HW_TIMEOUT));
> >
> > Shouldn't we still send some command to the hardware to stop? Like a
> > reset. Otherwise we don't know if it isn't still accessing the memory.
> >
> I thought no more jobs will be enqueued here when stop_streaming so we
> don't need it.

That's true for the case when the wait completed successfully, but we
also need to ensure the hardware is stopped even if a timeout happens.

> We still could send an ipi command to reset the HW, and wait for it's
> callback or we could set the register MTK_FD_REG_OFFSET_HW_ENABLE to
> zero to disable the HW.

Since it's for handling a timeout, a reset should be more likely to
bring the hardware back to a reasonable state.

>
> Best regards,
> Jerry
>
> > >         queue_ctx = V4L2_TYPE_IS_OUTPUT(vq->type) ?
> > >                                         &m2m_ctx->out_q_ctx :
> > >                                         &m2m_ctx->cap_q_ctx;
> > >         while ((vb = v4l2_m2m_buf_remove(queue_ctx)))
> > >                 v4l2_m2m_buf_done(vb, VB2_BUF_STATE_ERROR);
> > >
> > >         if (vq->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
> > >                 mtk_fd_hw_disconnect(fd);
> > > }
> > >
> > > Best regards,
> > > Jerry
> > >
> > > > Best regards,
> > > > Tomasz
> > >
> > >
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

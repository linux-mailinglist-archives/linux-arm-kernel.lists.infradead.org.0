Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6419A83AB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 15:21:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+sA96iIOo/olnQgu4pWLXVDPrB4D4H5A38MIJhGWu/I=; b=sKr4xTt6jWkzhO
	T9B8mCQ598oIOCBZoiDLdPjlKXUabt50xsHogs5g69XRWIB+flUev6QUdvXIAavXVMkK5x84tNEvg
	Fviq46/cp1Jw0yO+VrKKAKQbYzWn03GjiAdfvJIYzbIwCMHvqHpu3JlZJlWoa0sYnEEqOGX/7y7ln
	lB8GA9if+TJC/SoTMIvfv6pMxiv3AUzU4U5XEMx4LMdcD6a0fEpiodldE2X5aHwtr9gJSyyhlkdXn
	Z64CtCoXp4GU4jT38HmWGElJwX5HqOCEJAMjZiwxVixn+HCy3ZiX6fp8l3TSapDBXRw3dOyg80M+R
	K/W/mTc6TWsTpN9B8R+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5VDt-0005kj-5s; Wed, 04 Sep 2019 13:21:21 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5VBm-0002jh-69; Wed, 04 Sep 2019 13:19:12 +0000
X-UUID: 7263d8b8fe7f4b03b30bd141dbace133-20190904
X-UUID: 7263d8b8fe7f4b03b30bd141dbace133-20190904
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <jerry-ch.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 715792008; Wed, 04 Sep 2019 05:19:05 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Sep 2019 06:19:03 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Sep 2019 21:19:02 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 4 Sep 2019 21:19:02 +0800
Message-ID: <1567603143.22453.27.camel@mtksdccf07>
Subject: Re: [RFC PATCH V2 4/4] platform: mtk-isp: Add Mediatek FD driver
From: Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 4 Sep 2019 21:19:03 +0800
In-Reply-To: <CAAFQd5Ckz9qH7AnLNM4HRTM2gJQP1HXRS09+o6Prf++D1PQhng@mail.gmail.com>
References: <1562661672-22439-1-git-send-email-Jerry-Ch.chen@mediatek.com>
 <1562661672-22439-5-git-send-email-Jerry-Ch.chen@mediatek.com>
 <20190802082815.GA203993@chromium.org>
 <1566724680.20680.8.camel@mtksdccf07>
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
 <CAAFQd5Ckz9qH7AnLNM4HRTM2gJQP1HXRS09+o6Prf++D1PQhng@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_061910_299183_CF9847DB 
X-CRM114-Status: GOOD (  21.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Sean Cheng =?UTF-8?Q?=28=E9=84=AD=E6=98=87=E5=BC=98=29?=
 <Sean.Cheng@mediatek.com>, "laurent.pinchart+renesas@ideasonboard.com"
 <laurent.pinchart+renesas@ideasonboard.com>,
 Rynn Wu =?UTF-8?Q?=28=E5=90=B3=E8=82=B2=E6=81=A9=29?= <Rynn.Wu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Po-Yang Huang =?UTF-8?Q?=28=E9=BB=83=E6=9F=8F=E9=99=BD=29?=
 <po-yang.huang@mediatek.com>, "mchehab@kernel.org" <mchehab@kernel.org>,
 "suleiman@chromium.org" <suleiman@chromium.org>,
 "shik@chromium.org" <shik@chromium.org>,
 Jungo Lin =?UTF-8?Q?=28=E6=9E=97=E6=98=8E=E4=BF=8A=29?=
 <jungo.lin@mediatek.com>, Sj
 Huang =?UTF-8?Q?=28=E9=BB=83=E4=BF=A1=E7=92=8B=29?= <sj.huang@mediatek.com>,
 "yuzhao@chromium.org" <yuzhao@chromium.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "zwisler@chromium.org" <zwisler@chromium.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 Christie Yu =?UTF-8?Q?=28=E6=B8=B8=E9=9B=85=E6=83=A0=29?=
 <christie.yu@mediatek.com>,
 Frederic Chen =?UTF-8?Q?=28=E9=99=B3=E4=BF=8A=E5=85=83=29?=
 <Frederic.Chen@mediatek.com>,
 "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-09-04 at 21:12 +0800, Tomasz Figa wrote:
> On Wed, Sep 4, 2019 at 6:26 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> >
> > Hi Tomasz,
> >
> > On Wed, 2019-09-04 at 17:03 +0800, Tomasz Figa wrote:
> > > On Wed, Sep 4, 2019 at 6:02 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> > > >
> > > > Hi Tomasz,
> > > >
> > > > On Wed, 2019-09-04 at 16:25 +0800, Tomasz Figa wrote:
> > > > > On Wed, Sep 4, 2019 at 5:09 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > >
> > > > > > Hi Tomasz,
> > > > > >
> > > > > > On Wed, 2019-09-04 at 14:34 +0800, Tomasz Figa wrote:
> > > > > > > On Wed, Sep 4, 2019 at 3:09 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > > >
> > > > > > > > Hi Tomasz,
> > > > > > > >
> > > > > > > > On Wed, 2019-09-04 at 12:15 +0800, Tomasz Figa wrote:
> > > > > > > > > On Wed, Sep 4, 2019 at 12:38 PM Jerry-ch Chen
> > > > > > > > > <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > > > > >
> > > > > > > > > > Hi Tomasz,
> > > > > > > > > >
> > > > > > > > > > On Tue, 2019-09-03 at 20:05 +0800, Tomasz Figa wrote:
> > > > > > > > > > > On Tue, Sep 3, 2019 at 8:46 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > > > > > > >
> > > > > > > > > > > > Hi Tomasz,
> > > > > > > > > > > >
> > > > > > > > > > > > On Tue, 2019-09-03 at 15:04 +0800, Tomasz Figa wrote:
> > > > > > > > > > > > > On Tue, Sep 3, 2019 at 3:44 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > > > > > > > > >
> > > > > > > > > > > > > > On Tue, 2019-09-03 at 13:19 +0800, Tomasz Figa wrote:
> > > > > > > > > > > > > > > On Mon, Sep 2, 2019 at 8:47 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > Hi Tomasz,
> > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > On Fri, 2019-08-30 at 16:33 +0800, Tomasz Figa wrote:
> > > > > > > > > > > > > > > > > On Wed, Aug 28, 2019 at 11:00 AM Jerry-ch Chen
> > > > > > > > > > > > > > > > > <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > Hi Tomasz,
> > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > On Mon, 2019-08-26 at 14:36 +0800, Tomasz Figa wrote:
> > > > > > > > > > > > > > > > > > > Hi Jerry,
> > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > On Sun, Aug 25, 2019 at 6:18 PM Jerry-ch Chen
> > > > > > > > > > > > > > > > > > > <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > Hi Tomasz,
> > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > On Fri, 2019-08-02 at 16:28 +0800, Tomasz Figa wrote:
> > > > > > > > > > > > > > > > > > > > > Hi Jerry,
> > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > On Tue, Jul 09, 2019 at 04:41:12PM +0800, Jerry-ch Chen wrote:
> > [snip]
> > > > > > static void mtk_fd_vb2_stop_streaming(struct vb2_queue *vq)
> > > > > > {
> > > > > >         struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
> > > > > >         struct mtk_fd_dev *fd = ctx->fd_dev;
> > > > > >         struct vb2_v4l2_buffer *vb;
> > > > > >         struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
> > > > > >         struct v4l2_m2m_queue_ctx *queue_ctx;
> > > > > >         u32 ret;
> > > > > >
> > > > > >         if (!fd->fd_irq_done.done)
> > > > >
> > > > > We shouldn't access internal fields of completion.
> > > > >
> > > > > >                 ret = wait_for_completion_timeout(&fd->fd_irq_done,
> > > > > >                                                   msecs_to_jiffies(
> > > > > >                                                         MTK_FD_HW_TIMEOUT));
> > > > > >         queue_ctx = V4L2_TYPE_IS_OUTPUT(vq->type) ?
> > > > > >                                         &m2m_ctx->out_q_ctx :
> > > > > >                                         &m2m_ctx->cap_q_ctx;
> > > > > >         while ((vb = v4l2_m2m_buf_remove(queue_ctx)))
> > > > > >                 v4l2_m2m_buf_done(vb, VB2_BUF_STATE_ERROR);
> > > > > >
> > > > > >         if (vq->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
> > > > > >                 mtk_fd_hw_disconnect(fd);
> > > > > > }
> > > > > >
> > > > > > I've also tried to wait completion unconditionally for both queues and
> > > > > > the second time will wait until timeout, as a result, it takes longer to
> > > > > > swap the camera every time and close the camera app.
> > > > >
> > > > > I think it should work better if we call complete_all() instead of complete().
> > > > >
> > > > Thanks,
> > > >
> > > > I use complete_all(), and it works fine now.
> > > >
> > > > static void mtk_fd_vb2_stop_streaming(struct vb2_queue *vq)
> > > > {
> > > >         struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
> > > >         struct mtk_fd_dev *fd = ctx->fd_dev;
> > > >         struct vb2_v4l2_buffer *vb;
> > > >         struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
> > > >         struct v4l2_m2m_queue_ctx *queue_ctx;
> > > >
> > > >         wait_for_completion_timeout(&fd->fd_irq_done,
> > > >                                           msecs_to_jiffies(MTK_FD_HW_TIMEOUT));
> > >
> > > Shouldn't we still send some command to the hardware to stop? Like a
> > > reset. Otherwise we don't know if it isn't still accessing the memory.
> > >
> > I thought no more jobs will be enqueued here when stop_streaming so we
> > don't need it.
> 
> That's true for the case when the wait completed successfully, but we
> also need to ensure the hardware is stopped even if a timeout happens.
> 
> > We still could send an ipi command to reset the HW, and wait for it's
> > callback or we could set the register MTK_FD_REG_OFFSET_HW_ENABLE to
> > zero to disable the HW.
> 
> Since it's for handling a timeout, a reset should be more likely to
> bring the hardware back to a reasonable state.
> 

Ok, I will send the ipi command to reset the HW.

Thanks and best regards,
Jerry
> >
> > Best regards,
> > Jerry
> >
> > > >         queue_ctx = V4L2_TYPE_IS_OUTPUT(vq->type) ?
> > > >                                         &m2m_ctx->out_q_ctx :
> > > >                                         &m2m_ctx->cap_q_ctx;
> > > >         while ((vb = v4l2_m2m_buf_remove(queue_ctx)))
> > > >                 v4l2_m2m_buf_done(vb, VB2_BUF_STATE_ERROR);
> > > >
> > > >         if (vq->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
> > > >                 mtk_fd_hw_disconnect(fd);
> > > > }
> > > >
> > > > Best regards,
> > > > Jerry
> > > >
> > > > > Best regards,
> > > > > Tomasz
> > > >
> > > >
> >
> >



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

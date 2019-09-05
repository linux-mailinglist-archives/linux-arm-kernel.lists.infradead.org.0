Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF39AA498
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 15:36:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yo05b3r5bcrw2cRhge+uWC1go2chmMJub/H92SkjYg0=; b=r/4nJnnJntR1YQ
	w1htY6G4XS7sJvPHjOkrWTLm37r/soSkwng5/8YUGdxB1/Pl/m9m6RLR9ONH3YJVU86BEZx+t0mNG
	5E6Hkvj7J6KorPpIfFMUfADdgEUIM3AzReeFg7R3lBRKPNHLVU5Skif1etBNNzuoUl6UjS/vSum2A
	Wn+CGMAmIG38L7G/86L8n7ARChb6cNROr5KTLfFuP+XwVZggYpIYJTVgz+/3UIETCieZ4xlJAjm4r
	PtPgFLfPEWJZSfGfw2CCeOIp/ypxyGajRNVe7d9S7iP8LKuTHZSpEiKBSvOdCK6rlj+MoGglHenGr
	+SSwDNajLsrqJncoDNaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5rwJ-0004na-UC; Thu, 05 Sep 2019 13:36:44 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5rw3-0004ks-Pj; Thu, 05 Sep 2019 13:36:30 +0000
X-UUID: d0b9221cc195404388cffaa083738f99-20190905
X-UUID: d0b9221cc195404388cffaa083738f99-20190905
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <jerry-ch.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1893509683; Thu, 05 Sep 2019 05:36:19 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Sep 2019 06:36:17 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Sep 2019 21:36:15 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 5 Sep 2019 21:36:15 +0800
Message-ID: <1567690577.22453.45.camel@mtksdccf07>
Subject: Re: [RFC PATCH V2 4/4] platform: mtk-isp: Add Mediatek FD driver
From: Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 5 Sep 2019 21:36:17 +0800
In-Reply-To: <CAAFQd5D2ketE19RPr20BVYGhqg2Lh2ZNTtAr5J2GoWU9RiSAsA@mail.gmail.com>
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
 <1567603143.22453.27.camel@mtksdccf07>
 <1567666940.22453.31.camel@mtksdccf07>
 <CAAFQd5A=D33nUWTyYjt3acV43r3fqjSEkLbt3_Sr1YG1PzQgqQ@mail.gmail.com>
 <1567671418.22453.41.camel@mtksdccf07>
 <CAAFQd5D2ketE19RPr20BVYGhqg2Lh2ZNTtAr5J2GoWU9RiSAsA@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_063627_847672_5830F203 
X-CRM114-Status: GOOD (  26.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Thu, 2019-09-05 at 16:52 +0800, Tomasz Figa wrote:
> On Thu, Sep 5, 2019 at 5:17 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> >
> > Hi Tomasz,
> >
> > On Thu, 2019-09-05 at 15:13 +0800, Tomasz Figa wrote:
> > > On Thu, Sep 5, 2019 at 4:02 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> > > >
> > > > Hi Tomasz,
> > > >
> > > > On Wed, 2019-09-04 at 21:19 +0800, Jerry-ch Chen wrote:
> > > > > On Wed, 2019-09-04 at 21:12 +0800, Tomasz Figa wrote:
> > > > > > On Wed, Sep 4, 2019 at 6:26 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > >
> > > > > > > Hi Tomasz,
> > > > > > >
> > > > > > > On Wed, 2019-09-04 at 17:03 +0800, Tomasz Figa wrote:
> > > > > > > > On Wed, Sep 4, 2019 at 6:02 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > > > >
> > > > > > > > > Hi Tomasz,
> > > > > > > > >
> > > > > > > > > On Wed, 2019-09-04 at 16:25 +0800, Tomasz Figa wrote:
> > > > > > > > > > On Wed, Sep 4, 2019 at 5:09 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > > > > > >
> > > > > > > > > > > Hi Tomasz,
> > > > > > > > > > >
> > > > > > > > > > > On Wed, 2019-09-04 at 14:34 +0800, Tomasz Figa wrote:
> > > > > > > > > > > > On Wed, Sep 4, 2019 at 3:09 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > > > > > > > >
> > > > > > > > > > > > > Hi Tomasz,
> > > > > > > > > > > > >
> > > > > > > > > > > > > On Wed, 2019-09-04 at 12:15 +0800, Tomasz Figa wrote:
> > > > > > > > > > > > > > On Wed, Sep 4, 2019 at 12:38 PM Jerry-ch Chen
> > > > > > > > > > > > > > <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > Hi Tomasz,
> > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > On Tue, 2019-09-03 at 20:05 +0800, Tomasz Figa wrote:
> > > > > > > > > > > > > > > > On Tue, Sep 3, 2019 at 8:46 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > Hi Tomasz,
> > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > On Tue, 2019-09-03 at 15:04 +0800, Tomasz Figa wrote:
> > > > > > > > > > > > > > > > > > On Tue, Sep 3, 2019 at 3:44 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > On Tue, 2019-09-03 at 13:19 +0800, Tomasz Figa wrote:
> > > > > > > > > > > > > > > > > > > > On Mon, Sep 2, 2019 at 8:47 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > Hi Tomasz,
> > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > On Fri, 2019-08-30 at 16:33 +0800, Tomasz Figa wrote:
> > > > > > > > > > > > > > > > > > > > > > On Wed, Aug 28, 2019 at 11:00 AM Jerry-ch Chen
> > > > > > > > > > > > > > > > > > > > > > <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > Hi Tomasz,
> > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > On Mon, 2019-08-26 at 14:36 +0800, Tomasz Figa wrote:
> > > > > > > > > > > > > > > > > > > > > > > > Hi Jerry,
> > > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > > On Sun, Aug 25, 2019 at 6:18 PM Jerry-ch Chen
> > > > > > > > > > > > > > > > > > > > > > > > <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > > > Hi Tomasz,
> > > > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > > > On Fri, 2019-08-02 at 16:28 +0800, Tomasz Figa wrote:
> > > > > > > > > > > > > > > > > > > > > > > > > > Hi Jerry,
> > > > > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > > > > On Tue, Jul 09, 2019 at 04:41:12PM +0800, Jerry-ch Chen wrote:
> > > > > > > [snip]
> > > > > > > > > > > static void mtk_fd_vb2_stop_streaming(struct vb2_queue *vq)
> > > > > > > > > > > {
> > > > > > > > > > >         struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
> > > > > > > > > > >         struct mtk_fd_dev *fd = ctx->fd_dev;
> > > > > > > > > > >         struct vb2_v4l2_buffer *vb;
> > > > > > > > > > >         struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
> > > > > > > > > > >         struct v4l2_m2m_queue_ctx *queue_ctx;
> > > > > > > > > > >         u32 ret;
> > > > > > > > > > >
> > > > > > > > > > >         if (!fd->fd_irq_done.done)
> > > > > > > > > >
> > > > > > > > > > We shouldn't access internal fields of completion.
> > > > > > > > > >
> > > > > > > > > > >                 ret = wait_for_completion_timeout(&fd->fd_irq_done,
> > > > > > > > > > >                                                   msecs_to_jiffies(
> > > > > > > > > > >                                                         MTK_FD_HW_TIMEOUT));
> > > > > > > > > > >         queue_ctx = V4L2_TYPE_IS_OUTPUT(vq->type) ?
> > > > > > > > > > >                                         &m2m_ctx->out_q_ctx :
> > > > > > > > > > >                                         &m2m_ctx->cap_q_ctx;
> > > > > > > > > > >         while ((vb = v4l2_m2m_buf_remove(queue_ctx)))
> > > > > > > > > > >                 v4l2_m2m_buf_done(vb, VB2_BUF_STATE_ERROR);
> > > > > > > > > > >
> > > > > > > > > > >         if (vq->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
> > > > > > > > > > >                 mtk_fd_hw_disconnect(fd);
> > > > > > > > > > > }
> > > > > > > > > > >
> > > > > > > > > > > I've also tried to wait completion unconditionally for both queues and
> > > > > > > > > > > the second time will wait until timeout, as a result, it takes longer to
> > > > > > > > > > > swap the camera every time and close the camera app.
> > > > > > > > > >
> > > > > > > > > > I think it should work better if we call complete_all() instead of complete().
> > > > > > > > > >
> > > > > > > > > Thanks,
> > > > > > > > >
> > > > > > > > > I use complete_all(), and it works fine now.
> > > > > > > > >
> > > > > > > > > static void mtk_fd_vb2_stop_streaming(struct vb2_queue *vq)
> > > > > > > > > {
> > > > > > > > >         struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
> > > > > > > > >         struct mtk_fd_dev *fd = ctx->fd_dev;
> > > > > > > > >         struct vb2_v4l2_buffer *vb;
> > > > > > > > >         struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
> > > > > > > > >         struct v4l2_m2m_queue_ctx *queue_ctx;
> > > > > > > > >
> > > > > > > > >         wait_for_completion_timeout(&fd->fd_irq_done,
> > > > > > > > >                                           msecs_to_jiffies(MTK_FD_HW_TIMEOUT));
> > > > > > > >
> > > > > > > > Shouldn't we still send some command to the hardware to stop? Like a
> > > > > > > > reset. Otherwise we don't know if it isn't still accessing the memory.
> > > > > > > >
> > > > > > > I thought no more jobs will be enqueued here when stop_streaming so we
> > > > > > > don't need it.
> > > > > >
> > > > > > That's true for the case when the wait completed successfully, but we
> > > > > > also need to ensure the hardware is stopped even if a timeout happens.
> > > > > >
> > > > > > > We still could send an ipi command to reset the HW, and wait for it's
> > > > > > > callback or we could set the register MTK_FD_REG_OFFSET_HW_ENABLE to
> > > > > > > zero to disable the HW.
> > > > > >
> > > > > > Since it's for handling a timeout, a reset should be more likely to
> > > > > > bring the hardware back to a reasonable state.
> > > > > >
> > > > >
> > > > > Ok, I will send the ipi command to reset the HW.
> > > > >
> > > > > Thanks and best regards,
> > > > > Jerry
> > > > I've tested and will refine as following:
> > > >
> > > > static void mtk_fd_vb2_stop_streaming(struct vb2_queue *vq)
> > > > {
> > > >         struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
> > > >         struct mtk_fd_dev *fd = ctx->fd_dev;
> > > >         struct vb2_v4l2_buffer *vb;
> > > >         struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
> > > >         struct v4l2_m2m_queue_ctx *queue_ctx;
> > > >         u32 ret;
> > > >
> > > >         ret = wait_for_completion_timeout(&fd->fd_irq_done,
> > > >                                           msecs_to_jiffies(MTK_FD_HW_TIMEOUT));
> > > >         /* Disable FD HW */
> > > >         if(!ret) {
> > > >                 struct ipi_message fd_ipi_msg;
> > > >
> > > >                 fd_ipi_msg.cmd_id = MTK_FD_IPI_CMD_RESET;
> > > >                 ret = scp_ipi_send(fd->scp_pdev, SCP_IPI_FD_CMD, &fd_ipi_msg,
> > > >                                    sizeof(fd_ipi_msg), MTK_FD_IPI_SEND_TIMEOUT);
> > > >                 if (ret)
> > > >                         dev_err(fd->dev, "FD Reset HW error\n");
> > > >         }
> > >
> > > Would you also put the same code in suspend handler? If so, perhaps
> > > it's better to keep this in a helper function (mtk_fd_job_abort()) as
> > > we had before?
> > >
> >
> > Ok, done, It will reset the HW and return ETIMEOUT if the last job is
> > timeout, the return value will be used in suspend for further action.
> >
> > static int mtk_fd_job_abort(struct mtk_fd_dev *fd)
> > {
> >         u32 ret;
> >
> >         ret = wait_for_completion_timeout(&fd->fd_irq_done,
> >                                           msecs_to_jiffies(MTK_FD_HW_TIMEOUT));
> >         /* Reset FD HW */
> >         if (!ret) {
> >                 struct ipi_message fd_ipi_msg;
> >
> >                 fd_ipi_msg.cmd_id = MTK_FD_IPI_CMD_RESET;
> >                 if (scp_ipi_send(fd->scp_pdev, SCP_IPI_FD_CMD, &fd_ipi_msg,
> >                                  sizeof(fd_ipi_msg), MTK_FD_IPI_SEND_TIMEOUT))
> >                         dev_err(fd->dev, "FD Reset HW error\n");
> >                 return -ETIMEDOUT;
> >         }
> >         return 0;
> > }
> >
> > static void mtk_fd_vb2_stop_streaming(struct vb2_queue *vq)
> > {
> >         struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
> >         struct mtk_fd_dev *fd = ctx->fd_dev;
> >         struct vb2_v4l2_buffer *vb;
> >         struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
> >         struct v4l2_m2m_queue_ctx *queue_ctx;
> >
> >         mtk_fd_job_abort(fd);
> >         queue_ctx = V4L2_TYPE_IS_OUTPUT(vq->type) ?
> >                                         &m2m_ctx->out_q_ctx :
> >                                         &m2m_ctx->cap_q_ctx;
> >         while ((vb = v4l2_m2m_buf_remove(queue_ctx)))
> >                 v4l2_m2m_buf_done(vb, VB2_BUF_STATE_ERROR);
> >
> >         if (vq->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
> >                 mtk_fd_hw_disconnect(fd);
> > }
> >
> > static int mtk_fd_suspend(struct device *dev)
> > {
> >         struct mtk_fd_dev *fd = dev_get_drvdata(dev);
> >
> >         if (pm_runtime_suspended(dev))
> >                 return 0;
> >
> >         if (fd->fd_stream_count)
> >                 if (mtk_fd_job_abort(fd))
> >                         mtk_fd_hw_job_finish(fd, VB2_BUF_STATE_ERROR);
> 
> Wouldn't this cause the next job to be run?
> 
> >
> >         /* suspend FD HW */
> >         writel(0x0, fd->fd_base + MTK_FD_REG_OFFSET_INT_EN);
> >         writel(0x0, fd->fd_base + MTK_FD_REG_OFFSET_HW_ENABLE);
> >         clk_disable_unprepare(fd->fd_clk);
> >         dev_dbg(dev, "%s:disable clock\n", __func__);
> >
> >         return 0;
> > }
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
> > > > If there is no other concern, may I send the RFC v3 patch for review?
> > >
> > > Thanks, technically it looks good now. Just one comment about avoiding
> > > code duplication above.
> > >
> >
> > Thanks,
> >
> > I will send the v3 if the above fix-up is accepted,
> 
> I think there is a bigger issue here actually, related to how the m2m
> helpers work. Let's just keep the code as you proposed and post v3.
> 
> We can continue the discussion there.
> 

Ok, I will send v3 soon.

Thanks and best regards,
Jerry

> Best regards,
> Tomasz



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

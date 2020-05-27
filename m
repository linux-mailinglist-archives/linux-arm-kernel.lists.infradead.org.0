Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6131E350D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 03:54:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=txtiY6fc9yf4X4BPklTpW6mjZo83qJttgRvf4BcPJzY=; b=Rhoey/xnGW3en4
	wv/uXqRMuzE7hkr4vOGL9VXG1D4SK4T5ZVj928yTBu1DfmcR/DExoSUXgq1FVdyC+KZGKqEAGIoo8
	vN9bBF/0Kyw+75oP48nx+Qqv1MP9z41Gm8pqLG2p0JYzlk6Lc62ZVG+Bu+NQPAQOz4gvkhH8mBlDa
	mj55E7BtJLwI7TBw9YPidCJg2gklYmTu8ve3Fo1xdxvirg3j+ALP/yckWIfe8bQtSRHi+v9web4yv
	4hPKRNI9i4NGN/TEXOYgJ+UkE5SAcqHW5RiUv7WCt0iFPh9v3GhZcSz2l5Dz3wV91RiloF6o0SI/o
	pVmItWXvIRHZrN3gjdRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdlGm-0007VZ-BY; Wed, 27 May 2020 01:54:12 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdlGW-0007Tv-F9; Wed, 27 May 2020 01:53:58 +0000
X-UUID: 70968973716b4ec48519c7d51480beb1-20200526
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=ZKrqKJ1L5uEpCnzzklpqeT5Qk2zFyQCkc/heYv9ITnM=; 
 b=XUpTR3U9I2ql6YbBD1AN1sf+a1IszagSd55v/wuip50S9/YIF8rA9dVIwyETT7qsAB4UioxxjiJl2jorkFc3bTQscHdkOM5PYG3KJALZhcLw5rs7aCpEHTRlLV/5R55JuwVqICKGca09ozObWc59DmiNt3f5/kisqeSm05yxpfA=;
X-UUID: 70968973716b4ec48519c7d51480beb1-20200526
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 328047851; Tue, 26 May 2020 17:53:47 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 26 May 2020 18:53:43 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Wed, 27 May 2020 09:53:46 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 27 May 2020 09:53:45 +0800
Message-ID: <1590544320.12671.10.camel@mhfsdcap03>
Subject: Re: [PATCH v8 06/14] media: platform: Improve the implementation of
 the system PM ops
From: Xia Jiang <xia.jiang@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 27 May 2020 09:52:00 +0800
In-Reply-To: <20200521153257.GF209565@chromium.org>
References: <20200403094033.8288-1-xia.jiang@mediatek.com>
 <20200403094033.8288-7-xia.jiang@mediatek.com>
 <20200521153257.GF209565@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 31B56BA102CB296BF42975F3308432FBE35B5776613BCF49476A31BDC9D305D32000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_185356_517193_3EB30BA8 
X-CRM114-Status: GOOD (  23.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: drinkcat@chromium.org, devicetree@vger.kernel.org, mojahsu@chromium.org,
 srv_heupstream@mediatek.com, Rick Chang <rick.chang@mediatek.com>,
 senozhatsky@chromium.org, linux-kernel@vger.kernel.org,
 maoguang.meng@mediatek.com, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 sj.huang@mediatek.com, Rob Herring <robh+dt@kernel.org>, Matthias
 Brugger <matthias.bgg@gmail.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 linux-mediatek@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-05-21 at 15:32 +0000, Tomasz Figa wrote:
> Hi Xia,
> 
> On Fri, Apr 03, 2020 at 05:40:25PM +0800, Xia Jiang wrote:
> > Cancel reset hw operation in suspend and resume function because this
> > will be done in device_run().
> 
> This and...
> 
> > Add spin_lock and unlock operation in irq and resume function to make
> > sure that the current frame is processed completely before suspend.
> 
> ...this are two separate changes. Please split.
> 
> > 
> > Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> > ---
> >  drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c | 11 +++++++++--
> >  1 file changed, 9 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> > index dd5cadd101ef..2fa3711fdc9b 100644
> > --- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> > +++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> > @@ -911,6 +911,8 @@ static irqreturn_t mtk_jpeg_dec_irq(int irq, void *priv)
> >  	u32 dec_ret;
> >  	int i;
> >  
> > +	spin_lock(&jpeg->hw_lock);
> > +
> 
> nit: For consistency, it is recommended to always use the same, i.e. the
> strongest, spin_(un)lock_ primitives when operating on the same spinlock.
> In this case it would be the irqsave(restore) variants.
> 
> >  	dec_ret = mtk_jpeg_dec_get_int_status(jpeg->dec_reg_base);
> >  	dec_irq_ret = mtk_jpeg_dec_enum_result(dec_ret);
> >  	ctx = v4l2_m2m_get_curr_priv(jpeg->m2m_dev);
> > @@ -941,6 +943,7 @@ static irqreturn_t mtk_jpeg_dec_irq(int irq, void *priv)
> >  	v4l2_m2m_buf_done(src_buf, buf_state);
> >  	v4l2_m2m_buf_done(dst_buf, buf_state);
> >  	v4l2_m2m_job_finish(jpeg->m2m_dev, ctx->fh.m2m_ctx);
> > +	spin_unlock(&jpeg->hw_lock);
> >  	pm_runtime_put_sync(ctx->jpeg->dev);
> >  	return IRQ_HANDLED;
> >  }
> > @@ -1191,7 +1194,6 @@ static __maybe_unused int mtk_jpeg_pm_suspend(struct device *dev)
> >  {
> >  	struct mtk_jpeg_dev *jpeg = dev_get_drvdata(dev);
> >  
> > -	mtk_jpeg_dec_reset(jpeg->dec_reg_base);
> >  	mtk_jpeg_clk_off(jpeg);
> >  
> >  	return 0;
> > @@ -1202,19 +1204,24 @@ static __maybe_unused int mtk_jpeg_pm_resume(struct device *dev)
> >  	struct mtk_jpeg_dev *jpeg = dev_get_drvdata(dev);
> >  
> >  	mtk_jpeg_clk_on(jpeg);
> > -	mtk_jpeg_dec_reset(jpeg->dec_reg_base);
> >  
> >  	return 0;
> >  }
> >  
> >  static __maybe_unused int mtk_jpeg_suspend(struct device *dev)
> >  {
> > +	struct mtk_jpeg_dev *jpeg = dev_get_drvdata(dev);
> > +	unsigned long flags;
> >  	int ret;
> >  
> >  	if (pm_runtime_suspended(dev))
> >  		return 0;
> >  
> > +	spin_lock_irqsave(&jpeg->hw_lock, flags);
> 
> What does this spinlock protect us from? I can see that it would prevent
> the interrupt handler from being called, but is it okay to suspend the
> system without handling the interrupt?
Dear Tomasz,
I mean that if current image is processed in irq handler,suspend
function can not get the lock(it was locked in irq handler).Should I
move the spin_lock_irqsave(&jpeg->hw_lock, flags) to the start location
of suspend function or use wait_event_timeout() to handle the interrupt
before suspend?

Best Regards,
Xia Jiang
> 
> > +
> >  	ret = mtk_jpeg_pm_suspend(dev);
> > +
> 
> Looking at the implementation of mtk_jpeg_pm_suspend(), all it does is
> disabling the clock. How do we make sure that there is no frame currently
> being processed by the hardware?
> 
> Best regards,
> Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

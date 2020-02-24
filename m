Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5342616A344
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:56:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wO3HUfvlagl27GPCDBOAWPCaeDcD+iQBW5SANNc47lo=; b=brBt4aIgaw6M0V
	94DZMiQWGoo6DslKE++A/0mezP3asBQ2xW2oIgvICgwQURzLj9TqEIHDv9M4IbpXKl185etu/fKaz
	hyf/6WodqaBDxr/PThT+WeLLNmRZWDeN5hCahv2yc6j22TwaRYpY4shg7fYvxtz7YM2bXuOZrtwjV
	u7bSSjY3l7wlWNthdGsVqghJFFZXR+q8LeGKChn+0a4g/XKiALJjOlRh81n/dHa0tIs6578u7hH3f
	kCJqiFq3UgGeQcIC5VD4xEUeAubFfCGgsrZ7jt3HhXH270WC6VChUV1wCQ5llF+JXgCsfcGoOxHTz
	eAaETM1+4YeQfNTacpCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ATl-0003qi-IA; Mon, 24 Feb 2020 09:56:45 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6AJj-00005g-2S; Mon, 24 Feb 2020 09:46:27 +0000
X-UUID: bb61422c5fe74795b16a67022e54837b-20200224
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=JJObHOiFNWZrMDB8kq3sMti+Ri6V2M0iYaOtSYj8HuU=; 
 b=hr23lqTthINWXnyqH4FlJZ93clckrD8c2YBD5KQCbAwl1+cMWaGGMF3XqR8jIgyEIQ4ESiynsunRR/peYZmkPZvdQevHMU7s9jWu3khE9ievaw3b0LSAgAFiNMwlYyn3V3uCt9CB5Zq/z+Frm0e33tQA2eZvSaA7HFGoVNyfd2Y=;
X-UUID: bb61422c5fe74795b16a67022e54837b-20200224
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 143668408; Mon, 24 Feb 2020 01:46:17 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 24 Feb 2020 01:46:49 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs07n2.mediatek.inc
 (172.21.101.141) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Mon, 24 Feb 2020 17:45:26 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 24 Feb 2020 17:44:58 +0800
Message-ID: <1582537569.859.14.camel@mhfsdcap03>
Subject: Re: [PATCH v6 1/5] media: platform: Fix jpeg dec driver bug and
 improve code quality
From: Xia Jiang <xia.jiang@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 24 Feb 2020 17:46:09 +0800
In-Reply-To: <20200214093506.GA193786@chromium.org>
References: <20200121095320.32258-1-xia.jiang@mediatek.com>
 <20200121095320.32258-2-xia.jiang@mediatek.com>
 <20200214093506.GA193786@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_014623_223131_79C71AE6 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 Rick Chang <rick.chang@mediatek.com>, linux-kernel@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Matthias
 Brugger <matthias.bgg@gmail.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 linux-mediatek@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-02-14 at 18:35 +0900, Tomasz Figa wrote:
> Hi Xia,
> 
> On Tue, Jan 21, 2020 at 05:53:17PM +0800, Xia Jiang wrote:
> > Fix v4l2-compliance test bug and improve code quality of jpeg decode
> > driver, because the jpeg encode driver will base on it.
> > 
> > Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> > ---
> > v6: alignment 'MTK_JPEG_DCTSIZE' match open parenthesis.
> >                                            
> > v5: Use clamp()to replace mtk_jpeg_bound_align_image() and round_up()
> >     to replace mtk_jpeg_align().
> >     Get correct compose value in mtk_jpeg_selection().
> >     Cancel spin lock and unlock operation in device run function.
> >     Change register offset hex numberals from upercase to lowercase.
> > 
> > v4: new add patch for v4l2-compliance test bug fix.
> 
> Thanks for the patch. The changes look good to me, but each of the
> unrelated changes should be split into its own patch, with proper
> explanation in its commit message. Especially the ones that introduce
> behavior changes, such as the S_SELECTION or locking change.
> 
> Also please see one comment inline.
> 
> [snip]
> 
> > @@ -801,7 +778,6 @@ static void mtk_jpeg_device_run(void *priv)
> >  	struct mtk_jpeg_dev *jpeg = ctx->jpeg;
> >  	struct vb2_v4l2_buffer *src_buf, *dst_buf;
> >  	enum vb2_buffer_state buf_state = VB2_BUF_STATE_ERROR;
> > -	unsigned long flags;
> >  	struct mtk_jpeg_src_buf *jpeg_src_buf;
> >  	struct mtk_jpeg_bs bs;
> >  	struct mtk_jpeg_fb fb;
> > @@ -829,13 +805,11 @@ static void mtk_jpeg_device_run(void *priv)
> >  	if (mtk_jpeg_set_dec_dst(ctx, &jpeg_src_buf->dec_param, &dst_buf->vb2_buf, &fb))
> >  		goto dec_end;
> >  
> > -	spin_lock_irqsave(&jpeg->hw_lock, flags);
> 
> Why is it safe to remove the locking here?
Dear Tomasz,

I will split unrelated changes into different patches.

My opinion about remove locking is following(after deep thinking):

The device_run function can be only called once for one instance.
For multi-instance,is there any posssibility of hw override if removing locking?I think so.
What about your further opinion?

Best Regards,
Xia Jiang
> >  	mtk_jpeg_dec_reset(jpeg->dec_reg_base);
> >  	mtk_jpeg_dec_set_config(jpeg->dec_reg_base,
> >  				&jpeg_src_buf->dec_param, &bs, &fb);
> >  
> >  	mtk_jpeg_dec_start(jpeg->dec_reg_base);
> > -	spin_unlock_irqrestore(&jpeg->hw_lock, flags);
> >  	return;
> >  
> >  dec_end:
> 
> Best regards,
> Tomasz
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32EE83C68C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 10:52:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aBTv/a6h2mP/9I2STjie8PrqrQJM1pZ/cUBNh6dsAiQ=; b=pRb9pWVJY2kGp0
	0r/K4y8kRgUrM7oTnPOSZqU3yrtwCzKlFqflHAtfBqTXoP7tKeqJqeKew6/QnCeyT/+lQlE9KUIKF
	VReaMrdz1uKBucLoD7wIty4PjXKKKri5FaKVKibgz5hn08+OgQAO9On9Xc3J+UFfI6j4ocSv/tjk5
	os32LKkZzvNpyH/weF5CqcSmIwUPmLYrrZ/AbZ093XLxmq3d5kY6V7hR0ruLA4N2YfVXIaKBjq61/
	Qgr08IWc5Us2OULYOXBZIp+OswdTxT2aq7+13HjZATVci6SKFRnje8vMhuv2ri+EvaPkt9durDywZ
	5ds8oqvEA/e1JlRzXsUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hacVt-0008O9-3E; Tue, 11 Jun 2019 08:52:17 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hacTb-0005gp-Ts; Tue, 11 Jun 2019 08:49:57 +0000
X-UUID: f353609e421a4977aa36d7e28e26afa2-20190611
X-UUID: f353609e421a4977aa36d7e28e26afa2-20190611
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <frederic.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 96128542; Tue, 11 Jun 2019 00:48:09 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 01:48:07 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 16:48:05 +0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 11 Jun 2019 16:48:06 +0800
Message-ID: <1560242886.23799.13.camel@mtksdccf07>
Subject: Re: [RFC PATCH V1 6/6] platform: mtk-isp: Add Mediatek DIP driver
From: Frederic Chen <frederic.chen@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 11 Jun 2019 16:48:06 +0800
In-Reply-To: <1558466055.15388.342.camel@mtksdccf07>
References: <20190417104511.21514-1-frederic.chen@mediatek.com>
 <20190417104511.21514-7-frederic.chen@mediatek.com>
 <20190509094846.GA65444@google.com> <1558466055.15388.342.camel@mtksdccf07>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_014956_004303_9D3C5898 
X-CRM114-Status: GOOD (  19.89  )
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
Cc: shik@chromium.org, devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 srv_heupstream@mediatek.com, holmes.chiou@mediatek.com, suleiman@chromium.org,
 Jerry-ch.Chen@mediatek.com, jungo.lin@mediatek.com, sj.huang@mediatek.com,
 yuzhao@chromium.org, linux-mediatek@lists.infradead.org, zwisler@chromium.org,
 matthias.bgg@gmail.com, christie.yu@mediatek.com, mchehab@kernel.org,
 hans.verkuil@cisco.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear Tomasz,

I'd like to elaborate more about the tuning_data.va.
Would you like to give us some advice about our improvement proposal inline?

Thank you very much.


On Wed, 2019-05-22 at 03:14 +0800, Frederic Chen wrote:
> Dear Tomasz,
> 
> I appreciate your comment. It is very helpful for us.
> 
> 
> > > diff --git a/drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-sys.c b/drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-sys.c
> > > new file mode 100644
> > > index 000000000000..54d2b5f5b802
> > > --- /dev/null
> > > +++ b/drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-sys.c
> > > @@ -0,0 +1,1384 @@

[snip]

> > > +static void dip_submit_worker(struct work_struct *work)
> > > +{
> > > +       struct mtk_dip_hw_submit_work *dip_submit_work =
> > > +               container_of(work, struct mtk_dip_hw_submit_work, frame_work);
> > > +       struct mtk_dip_hw *dip_hw = dip_submit_work->dip_hw;
> > > +       struct mtk_dip_dev *dip_dev = mtk_dip_hw_to_dev(dip_hw);
> > > +       struct mtk_dip_hw_work *dip_work;
> > > +       struct mtk_dip_hw_subframe *buf;
> > > +       u32 len, num;
> > > +       int ret;
> > > +
> > > +       num  = atomic_read(&dip_hw->num_composing);
> > > +
> > > +       mutex_lock(&dip_hw->dip_worklist.queuelock);
> > > +       dip_work = list_first_entry(&dip_hw->dip_worklist.queue,

[snip]

> > > +
> > > +       if (dip_work->frameparams.tuning_data.pa == 0) {
> > > +               dev_dbg(&dip_dev->pdev->dev,
> > > +                       "%s: frame_no(%d) has no tuning_data\n",
> > > +                       __func__, dip_work->frameparams.frame_no);
> > > +
> > > +               memcpy(&dip_work->frameparams.tuning_data,
> > > +                      &buf->tuning_buf, sizeof(buf->tuning_buf));
> > 
> > Ditto.
> > 
> 
> I got it.
> 
> > > +               memset((char *)buf->tuning_buf.va, 0, DIP_TUNING_SZ);
> > 
> > Ditto.
> 
> I got it.
> 
> > 
> > > +               /*
> > > +                * When user enqueued without tuning buffer,
> > > +                * it would use driver internal buffer.
> > > +                * So, tuning_data.va should be 0
> > > +                */
> > > +               dip_work->frameparams.tuning_data.va = 0;
> > 
> > I don't understand this. We just zeroed the buffer via this kernel VA few
> > lines above, so why would it have to be set to 0?
> > 
> 
> I will remove this unnecessary line.
> 
> > > +       }

After confirming the firmware part, I found that we use this field
(tuning_data.va) to notify firmware if there is no tuning data from
user.

- frameparams.tuning_data.va is 0: use the default tuning data in
				   SCP, but we still need to pass
				   frameparams.tuning_data.pa because
				   the buffer contains some working
				   buffer required.
- frameparams.tuning_data.va is not 0: the tuning data was passed from
				       the user

Since we should not pass cpu addres to SCP, could I rename tuning_data.va
as tuning_data.cookie, and write a constant value to indicate if SCP
should use its internal default setting or not here?

For example,
/* SCP uses tuning data passed from userspace*/
dip_work->frameparams.tuning_data.cookie = MTK_DIP_USER_TUNING_DATA;

/* SCP uses internal tuning data */
dip_work->frameparams.tuning_data.cookie = MTK_DIP_DEFAULT_TUNING_DATA;


> > > +
> > > +       dip_work->frameparams.drv_data = (u64)dip_hw;
> > 
> > Passing kernel pointers to firmware?
> 
> I will remove this line.
> 
> > 
> > > +       dip_work->frameparams.state = FRAME_STATE_COMPOSING;
> > > +
> > > +       memcpy((void *)buf->frameparam.va, &dip_work->frameparams,
> > > +              sizeof(dip_work->frameparams));
> > 
> > There shouldn't be a need to type cast the pointer.
> > 
> 
> I will fix it.
> 
> > > +
> > > +       dip_send(dip_hw->vpu_pdev, SCP_IPI_DIP_FRAME,
> > > +                (void *)&dip_work->frameparams,
> > 

[snip]


Sincerely,

Frederic Chen




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D1D3C818
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 12:08:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QnuNd1nAOev/7OjZKaOKM+XEdcgYpmmLFo+CT/XOMys=; b=JCUIv4zd1qNaNO
	+J/k89kjx4PFcZ0THI4p3GEvKyzxzFxsM1QpRLNShq3196l0i7hZlyBsmNsiNCdPvPAkOeedZ/7PC
	wSeEGQG/WLqogTiQemQ3MYwIjypPuOyiHmMn02+AtbdTO1/yLGHrNX95J3ReHgRfAYOZUPKr/WJRc
	bHpbru88XjFu4FNW2t6iTrH/YPeX2OdKTD9zhpZckihw1kGXnprs4a1iioSjseX8NrewIYz8yVzvz
	iRG3a+CAytV3atDUHCygXW0j5eBo8c2wV+q4bDHiY/9E6lM/mez6lpvQYcNddJWZmbVEmxphl8/yG
	PnFA2xEAlYeNaNODd94Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadhE-0003HD-5o; Tue, 11 Jun 2019 10:08:04 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadgu-0003BD-55; Tue, 11 Jun 2019 10:07:46 +0000
X-UUID: 1eebb54173614f0ea9b36d6569eabfac-20190611
X-UUID: 1eebb54173614f0ea9b36d6569eabfac-20190611
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <frederic.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1662409900; Tue, 11 Jun 2019 02:07:32 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 03:07:30 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 18:07:28 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 11 Jun 2019 18:07:28 +0800
Message-ID: <1560247648.23799.16.camel@mtksdccf07>
Subject: Re: [RFC PATCH V1 6/6] platform: mtk-isp: Add Mediatek DIP driver
From: Frederic Chen <frederic.chen@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 11 Jun 2019 18:07:28 +0800
In-Reply-To: <CAAFQd5CReiPOySyk-eFkgiQMDMoqB3Uhd=bcho2Qtsv74y8fmg@mail.gmail.com>
References: <20190417104511.21514-1-frederic.chen@mediatek.com>
 <20190417104511.21514-7-frederic.chen@mediatek.com>
 <20190509094846.GA65444@google.com> <1558466055.15388.342.camel@mtksdccf07>
 <1560242886.23799.13.camel@mtksdccf07>
 <CAAFQd5CReiPOySyk-eFkgiQMDMoqB3Uhd=bcho2Qtsv74y8fmg@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 5ED40D27C30423F39500EA588F8B6C4E721AD9EC0DC6044ED445B557EAC08DC62000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_030744_227378_9A672818 
X-CRM114-Status: GOOD (  26.42  )
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
Cc: Shik Chen <shik@chromium.org>, devicetree@vger.kernel.org,
 Sean Cheng =?UTF-8?Q?=28=E9=84=AD=E6=98=87=E5=BC=98=29?=
 <Sean.Cheng@mediatek.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Rynn Wu =?UTF-8?Q?=28=E5=90=B3=E8=82=B2=E6=81=A9=29?= <Rynn.Wu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Holmes Chiou =?UTF-8?Q?=28=E9=82=B1=E6=8C=BA=29?= <holmes.chiou@mediatek.com>,
 suleiman@chromium.org, Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>,
 Jungo Lin =?UTF-8?Q?=28=E6=9E=97=E6=98=8E=E4=BF=8A=29?=
 <jungo.lin@mediatek.com>, Sj
 Huang <sj.huang@mediatek.com>, yuzhao@chromium.org,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 zwisler@chromium.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Christie Yu =?UTF-8?Q?=28=E6=B8=B8=E9=9B=85=E6=83=A0=29?=
 <christie.yu@mediatek.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>, "list@263.net:IOMMU DRIVERS
 <iommu@lists.linux-foundation.org>, Joerg  Roedel <joro@8bytes.org>,
 " <linux-arm-kernel@lists.infradead.org>, Linux
 Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tomasz,


On Tue, 2019-06-11 at 17:59 +0900, Tomasz Figa wrote:
> On Tue, Jun 11, 2019 at 5:48 PM Frederic Chen
> <frederic.chen@mediatek.com> wrote:
> >
> > Dear Tomasz,
> >
> > I'd like to elaborate more about the tuning_data.va.
> > Would you like to give us some advice about our improvement proposal inline?
> >
> > Thank you very much.
> >
> >
> > On Wed, 2019-05-22 at 03:14 +0800, Frederic Chen wrote:
> > > Dear Tomasz,
> > >
> > > I appreciate your comment. It is very helpful for us.
> > >
> > >
> > > > > diff --git a/drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-sys.c b/drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-sys.c
> > > > > new file mode 100644
> > > > > index 000000000000..54d2b5f5b802
> > > > > --- /dev/null
> > > > > +++ b/drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-sys.c
> > > > > @@ -0,0 +1,1384 @@
> >
> > [snip]
> >
> > > > > +static void dip_submit_worker(struct work_struct *work)
> > > > > +{
> > > > > +       struct mtk_dip_hw_submit_work *dip_submit_work =
> > > > > +               container_of(work, struct mtk_dip_hw_submit_work, frame_work);
> > > > > +       struct mtk_dip_hw *dip_hw = dip_submit_work->dip_hw;
> > > > > +       struct mtk_dip_dev *dip_dev = mtk_dip_hw_to_dev(dip_hw);
> > > > > +       struct mtk_dip_hw_work *dip_work;
> > > > > +       struct mtk_dip_hw_subframe *buf;
> > > > > +       u32 len, num;
> > > > > +       int ret;
> > > > > +
> > > > > +       num  = atomic_read(&dip_hw->num_composing);
> > > > > +
> > > > > +       mutex_lock(&dip_hw->dip_worklist.queuelock);
> > > > > +       dip_work = list_first_entry(&dip_hw->dip_worklist.queue,
> >
> > [snip]
> >
> > > > > +
> > > > > +       if (dip_work->frameparams.tuning_data.pa == 0) {
> > > > > +               dev_dbg(&dip_dev->pdev->dev,
> > > > > +                       "%s: frame_no(%d) has no tuning_data\n",
> > > > > +                       __func__, dip_work->frameparams.frame_no);
> > > > > +
> > > > > +               memcpy(&dip_work->frameparams.tuning_data,
> > > > > +                      &buf->tuning_buf, sizeof(buf->tuning_buf));
> > > >
> > > > Ditto.
> > > >
> > >
> > > I got it.
> > >
> > > > > +               memset((char *)buf->tuning_buf.va, 0, DIP_TUNING_SZ);
> > > >
> > > > Ditto.
> > >
> > > I got it.
> > >
> > > >
> > > > > +               /*
> > > > > +                * When user enqueued without tuning buffer,
> > > > > +                * it would use driver internal buffer.
> > > > > +                * So, tuning_data.va should be 0
> > > > > +                */
> > > > > +               dip_work->frameparams.tuning_data.va = 0;
> > > >
> > > > I don't understand this. We just zeroed the buffer via this kernel VA few
> > > > lines above, so why would it have to be set to 0?
> > > >
> > >
> > > I will remove this unnecessary line.
> > >
> > > > > +       }
> >
> > After confirming the firmware part, I found that we use this field
> > (tuning_data.va) to notify firmware if there is no tuning data from
> > user.
> >
> > - frameparams.tuning_data.va is 0: use the default tuning data in
> >                                    SCP, but we still need to pass
> >                                    frameparams.tuning_data.pa because
> >                                    the buffer contains some working
> >                                    buffer required.
> > - frameparams.tuning_data.va is not 0: the tuning data was passed from
> >                                        the user
> >
> > Since we should not pass cpu addres to SCP, could I rename tuning_data.va
> > as tuning_data.cookie, and write a constant value to indicate if SCP
> > should use its internal default setting or not here?
> >
> > For example,
> > /* SCP uses tuning data passed from userspace*/
> > dip_work->frameparams.tuning_data.cookie = MTK_DIP_USER_TUNING_DATA;
> >
> > /* SCP uses internal tuning data */
> > dip_work->frameparams.tuning_data.cookie = MTK_DIP_DEFAULT_TUNING_DATA;
> 
> Perhaps we could just call it "present" and set to true or false?
> 

Yes. I would like to use "present" here.

Original:
  struct img_addr {
      u64 va; /* Used by Linux OS access */
      u32 pa; /* Used by CM4 access */
      u32 iova; /* Used by IOMMU HW access */
  } __attribute__ ((__packed__));

  struct img_ipi_frameparam {
      u32 index;
      u32 frame_no;
      u64 timestamp;
      u8 type;	/* enum mdp_stream_type */
      u8 state;
      u8 num_inputs;
      u8 num_outputs;
      u64 drv_data;
      struct img_input inputs[IMG_MAX_HW_INPUTS];
      struct img_output	outputs[IMG_MAX_HW_OUTPUTS];
      struct img_addr tuning_data;
      struct img_addr subfrm_data;
      struct img_sw_addr config_data;
      struct img_sw_addr self_data;
  } __attribute__ ((__packed__));


Modified:
  struct tuning_buf {
      u8 present;
      u32 pa;	/* Used by CM4 access */
      u32 iova;	/* Used by IOMMU HW access */
  } __attribute__ ((__packed__));
	
  struct img_ipi_frameparam {
      /* ... */
      struct tuning_buf	tuning_data;
      /* ... */
  } __attribute__ ((__packed__));


> Best regards,
> Tomasz


Sincerely,

Frederic Chen



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

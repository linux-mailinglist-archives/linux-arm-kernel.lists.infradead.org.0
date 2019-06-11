Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 308F23C853
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 12:13:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mNfKT5oSOypJbIRAZwNVQZoayY86uNtDhZyiflS/xa8=; b=G0mYt2XnwjyyBK
	4ALxTcEHwikgK02qJ5VLePKNLr8jvd2ewTiiTRtq50BhOvPOkEGN62fx4F6xsimxgzeyRWscQrAfo
	PaZnyN6wmnQYBqtpdBSFUw38QITxl0awxNUVrRpyIhfVuVulFE4QtAPGVNOD1oDYPeF1F8wlGH/9/
	9LLwS3JMQCaQt1ji3Guq5iHbttxjyszwwgibGYAzl0ZD223iauZvUVFwowiiRGiq/ooiZJCqCSJBh
	xCRswO+J/YX/N1gvZiASqwbQ/zxfEM1b9yzwzSPS0/uCftX2upBLIKbVFukYzaoSwHUJ7HSDxMuEu
	Zb90to5hRl6tEnM6d1Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadmY-0007bD-Vr; Tue, 11 Jun 2019 10:13:35 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadmM-0007ae-7G
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 10:13:23 +0000
Received: by mail-ed1-x542.google.com with SMTP id k8so19189484edr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 03:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X0C5tQts1L+LXt2Q6k9c6ouRJcr990w6/a3NoyIORNQ=;
 b=hMSEhr1Ibx3hCZ1fwXTjoT0WNF47kP/wJklo2hoCJz1xUYosHQcyhZduBi4ldMd4u5
 E1DFtj7cgLW/CRLILv3exZPt3kEXlkD3pLqVUz+QF2sMXilMvWtC3DtptVfHdjGIuxi2
 y8sVqaA5Phb46+tnfHdR/Z1k05JiQ36ou7x8Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X0C5tQts1L+LXt2Q6k9c6ouRJcr990w6/a3NoyIORNQ=;
 b=YLAfJ6M/11Svj7Oodfc9icJ9IYDdzjj/3V88QhXlU476zRDOyFlq476qDJnhomxd6Z
 si8QDw2DP1Aqd84HvKJSQdfpdXZ7H3B0ko1IheM8bOSj2PStf66pc8mIfZl0/1K8eMY8
 hYHnp9bfUZwc9doB/QeMHloGJyj9rkSGVCrIrizbYQZP6gAhultSgMIrSpK5zQPiNtWL
 ZqD8sW5WX/1Af4qpr1DwReaROWuMc7T5/QLA6sGrV4EnRrfsjV4Mx2uNpUUArmVYeb6s
 1bwHna1YoswHe2XZsjKz8p8pirZzBd0tvxMcBgJiBaaOmx+0ggpshQjHLP40H6CDhIuy
 TOHA==
X-Gm-Message-State: APjAAAUXJutc2FfjZhGadGJNd9oxJ+oygj9Fa/tzUJ0CiGCd0eHyZEkt
 C+bJIyJEqslorzIK4KzngTupg8GwPmkl3g==
X-Google-Smtp-Source: APXvYqwdMCoimLlutKtGy13ACJ1a0oRQJjRzds/zkaQ4ijmdtpgVOLJbe8KTU4BV/g99wJ5vTEzl6g==
X-Received: by 2002:a17:906:55d6:: with SMTP id
 z22mr15020391ejp.154.1560248000476; 
 Tue, 11 Jun 2019 03:13:20 -0700 (PDT)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com.
 [209.85.221.53])
 by smtp.gmail.com with ESMTPSA id a17sm3581203edt.63.2019.06.11.03.13.18
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 03:13:19 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id n4so12372484wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 03:13:18 -0700 (PDT)
X-Received: by 2002:a5d:514d:: with SMTP id u13mr32683805wrt.77.1560247997738; 
 Tue, 11 Jun 2019 03:13:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190417104511.21514-1-frederic.chen@mediatek.com>
 <20190417104511.21514-7-frederic.chen@mediatek.com>
 <20190509094846.GA65444@google.com>
 <1558466055.15388.342.camel@mtksdccf07> <1560242886.23799.13.camel@mtksdccf07>
 <CAAFQd5CReiPOySyk-eFkgiQMDMoqB3Uhd=bcho2Qtsv74y8fmg@mail.gmail.com>
 <1560247648.23799.16.camel@mtksdccf07>
In-Reply-To: <1560247648.23799.16.camel@mtksdccf07>
From: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 11 Jun 2019 19:13:06 +0900
X-Gmail-Original-Message-ID: <CAAFQd5Ai2JmwY+_inA-WkE1rKhTOyvJeLM8XG3E6BsYCrp4pnw@mail.gmail.com>
Message-ID: <CAAFQd5Ai2JmwY+_inA-WkE1rKhTOyvJeLM8XG3E6BsYCrp4pnw@mail.gmail.com>
Subject: Re: [RFC PATCH V1 6/6] platform: mtk-isp: Add Mediatek DIP driver
To: Frederic Chen <frederic.chen@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_031322_261292_DA0FAA18 
X-CRM114-Status: GOOD (  28.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= <Sean.Cheng@mediatek.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <Rynn.Wu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 =?UTF-8?B?SG9sbWVzIENoaW91ICjpgrHmjLop?= <holmes.chiou@mediatek.com>,
 suleiman@chromium.org, Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>,
 =?UTF-8?B?SnVuZ28gTGluICjmnpfmmI7kv4op?= <jungo.lin@mediatek.com>,
 Sj Huang <sj.huang@mediatek.com>, yuzhao@chromium.org,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 zwisler@chromium.org, Matthias Brugger <matthias.bgg@gmail.com>,
 =?UTF-8?B?Q2hyaXN0aWUgWXUgKOa4uOmbheaDoCk=?= <christie.yu@mediatek.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 7:07 PM Frederic Chen
<frederic.chen@mediatek.com> wrote:
>
> Hi Tomasz,
>
>
> On Tue, 2019-06-11 at 17:59 +0900, Tomasz Figa wrote:
> > On Tue, Jun 11, 2019 at 5:48 PM Frederic Chen
> > <frederic.chen@mediatek.com> wrote:
> > >
> > > Dear Tomasz,
> > >
> > > I'd like to elaborate more about the tuning_data.va.
> > > Would you like to give us some advice about our improvement proposal inline?
> > >
> > > Thank you very much.
> > >
> > >
> > > On Wed, 2019-05-22 at 03:14 +0800, Frederic Chen wrote:
> > > > Dear Tomasz,
> > > >
> > > > I appreciate your comment. It is very helpful for us.
> > > >
> > > >
> > > > > > diff --git a/drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-sys.c b/drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-sys.c
> > > > > > new file mode 100644
> > > > > > index 000000000000..54d2b5f5b802
> > > > > > --- /dev/null
> > > > > > +++ b/drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-sys.c
> > > > > > @@ -0,0 +1,1384 @@
> > >
> > > [snip]
> > >
> > > > > > +static void dip_submit_worker(struct work_struct *work)
> > > > > > +{
> > > > > > +       struct mtk_dip_hw_submit_work *dip_submit_work =
> > > > > > +               container_of(work, struct mtk_dip_hw_submit_work, frame_work);
> > > > > > +       struct mtk_dip_hw *dip_hw = dip_submit_work->dip_hw;
> > > > > > +       struct mtk_dip_dev *dip_dev = mtk_dip_hw_to_dev(dip_hw);
> > > > > > +       struct mtk_dip_hw_work *dip_work;
> > > > > > +       struct mtk_dip_hw_subframe *buf;
> > > > > > +       u32 len, num;
> > > > > > +       int ret;
> > > > > > +
> > > > > > +       num  = atomic_read(&dip_hw->num_composing);
> > > > > > +
> > > > > > +       mutex_lock(&dip_hw->dip_worklist.queuelock);
> > > > > > +       dip_work = list_first_entry(&dip_hw->dip_worklist.queue,
> > >
> > > [snip]
> > >
> > > > > > +
> > > > > > +       if (dip_work->frameparams.tuning_data.pa == 0) {
> > > > > > +               dev_dbg(&dip_dev->pdev->dev,
> > > > > > +                       "%s: frame_no(%d) has no tuning_data\n",
> > > > > > +                       __func__, dip_work->frameparams.frame_no);
> > > > > > +
> > > > > > +               memcpy(&dip_work->frameparams.tuning_data,
> > > > > > +                      &buf->tuning_buf, sizeof(buf->tuning_buf));
> > > > >
> > > > > Ditto.
> > > > >
> > > >
> > > > I got it.
> > > >
> > > > > > +               memset((char *)buf->tuning_buf.va, 0, DIP_TUNING_SZ);
> > > > >
> > > > > Ditto.
> > > >
> > > > I got it.
> > > >
> > > > >
> > > > > > +               /*
> > > > > > +                * When user enqueued without tuning buffer,
> > > > > > +                * it would use driver internal buffer.
> > > > > > +                * So, tuning_data.va should be 0
> > > > > > +                */
> > > > > > +               dip_work->frameparams.tuning_data.va = 0;
> > > > >
> > > > > I don't understand this. We just zeroed the buffer via this kernel VA few
> > > > > lines above, so why would it have to be set to 0?
> > > > >
> > > >
> > > > I will remove this unnecessary line.
> > > >
> > > > > > +       }
> > >
> > > After confirming the firmware part, I found that we use this field
> > > (tuning_data.va) to notify firmware if there is no tuning data from
> > > user.
> > >
> > > - frameparams.tuning_data.va is 0: use the default tuning data in
> > >                                    SCP, but we still need to pass
> > >                                    frameparams.tuning_data.pa because
> > >                                    the buffer contains some working
> > >                                    buffer required.
> > > - frameparams.tuning_data.va is not 0: the tuning data was passed from
> > >                                        the user
> > >
> > > Since we should not pass cpu addres to SCP, could I rename tuning_data.va
> > > as tuning_data.cookie, and write a constant value to indicate if SCP
> > > should use its internal default setting or not here?
> > >
> > > For example,
> > > /* SCP uses tuning data passed from userspace*/
> > > dip_work->frameparams.tuning_data.cookie = MTK_DIP_USER_TUNING_DATA;
> > >
> > > /* SCP uses internal tuning data */
> > > dip_work->frameparams.tuning_data.cookie = MTK_DIP_DEFAULT_TUNING_DATA;
> >
> > Perhaps we could just call it "present" and set to true or false?
> >
>
> Yes. I would like to use "present" here.
>
> Original:
>   struct img_addr {
>       u64 va; /* Used by Linux OS access */
>       u32 pa; /* Used by CM4 access */
>       u32 iova; /* Used by IOMMU HW access */
>   } __attribute__ ((__packed__));
>
>   struct img_ipi_frameparam {
>       u32 index;
>       u32 frame_no;
>       u64 timestamp;
>       u8 type;  /* enum mdp_stream_type */
>       u8 state;
>       u8 num_inputs;
>       u8 num_outputs;
>       u64 drv_data;
>       struct img_input inputs[IMG_MAX_HW_INPUTS];
>       struct img_output outputs[IMG_MAX_HW_OUTPUTS];
>       struct img_addr tuning_data;
>       struct img_addr subfrm_data;
>       struct img_sw_addr config_data;
>       struct img_sw_addr self_data;
>   } __attribute__ ((__packed__));
>
>
> Modified:
>   struct tuning_buf {
>       u8 present;

I'd make this u32 to keep the other fields aligned.

>       u32 pa;   /* Used by CM4 access */
>       u32 iova; /* Used by IOMMU HW access */
>   } __attribute__ ((__packed__));

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

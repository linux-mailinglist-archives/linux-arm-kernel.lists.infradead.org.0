Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDED73C6CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 11:00:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jB9EBRiUOs/BoschYC1edQ3+Go4YfyfRFjgHCDFwjh4=; b=LZMUw9LTOE/vli
	cLicjzWqGnhJ8MdwpAQI+8H9zSqJ69PhQEYIzfp3yOutYHAmoTWnN8gZcDQMcMQ6/dWqSZxT6V6RT
	uOUiybTwQGedHnr2K49Oag0Q5GfXnI+MVQrn7qz1ai3uPzo4cJhVe8AahgIoUEfN7CF8s7t8LyekN
	LGJFIEhcrxsKVtBiyzgmwjliGb4q88C3ms3i+WpEfFWgSLQcEujLAwPHIhrqlhEg42/jKfW3ywFab
	5sWBfr0ILxughzg5RGGf9oyFQv6ag01EY4FxEfhW3wxE0tzJU1l5NIQXbVbuE8FvM9sk1qNg7NfrF
	QDADui6Nh9Ez0B6FJriQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hacdZ-0004tt-4r; Tue, 11 Jun 2019 09:00:13 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hacdF-0004md-0F
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 08:59:55 +0000
Received: by mail-ed1-x544.google.com with SMTP id p15so18873897eds.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 01:59:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PASnnopO7T/n97vN91v+qyJWOS2KsO1RcpQqKw02sVo=;
 b=hKJ2KC6xZjCmH41h834KL9DBOKssuku0pkXd4y8LIUW+dgG8fzTRprMaW/jw8En3+E
 HubSnI4sKFaiMyrY/RWIo8CVwTCUAcz+BL7I2rOOBdmGaIKMAdSpdUuKCaAmQyfjWw+y
 XuE0Z3fbV6D3xsDJnfp9sCTE7bDzy+5JPjK1E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PASnnopO7T/n97vN91v+qyJWOS2KsO1RcpQqKw02sVo=;
 b=Yph0WDkdRi3Qepg9X7ZExMFRRtuspKf1gTv6AE5QtGOxGdG8nn3woKg1Lm8CNO3Rb/
 rRchVM4m1x/mfieIvTB/1Rsy3CU0bkFT0ScZn5XWSs32U9Kd6oERPU8aLp74sOE1GFEN
 +UBTb8AImgYXE/80O3gMlmimghnJDIyQ7VVRqjoPJSwAsNYghBtNT5IJN8wXT7TyilQK
 SjKQADPVn+xQNSIplprgP4nDozKUwyZYCJP+I8epu6W5Vca4P2vmFpIp1Vkom4tXGlXR
 2mj+z9aWHWwhqrur1tVvP9E5bZNwv2GWpvuwrHOpl2B8yQeZYeFiy06a6cmmq51QoQPl
 lRjg==
X-Gm-Message-State: APjAAAXJMz6G1r6UDefBX/8uHNFYZSFfq0itCq++zEPcePHMQtKEU3JT
 owvStDl2OeVDBPsERlZOwcIHXW3Kn1tOSg==
X-Google-Smtp-Source: APXvYqxbR8w7t5NQ7Wv97bmcu1lhRqRY2DRMw7akXLFC3f70ecOVlwn8XV9ePD0z3pQDzr1KX92Imw==
X-Received: by 2002:a50:fc18:: with SMTP id i24mr15012628edr.249.1560243591003; 
 Tue, 11 Jun 2019 01:59:51 -0700 (PDT)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com.
 [209.85.128.44])
 by smtp.gmail.com with ESMTPSA id j3sm3531136edh.82.2019.06.11.01.59.49
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 01:59:49 -0700 (PDT)
Received: by mail-wm1-f44.google.com with SMTP id 207so2021612wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 01:59:49 -0700 (PDT)
X-Received: by 2002:a1c:407:: with SMTP id 7mr17983312wme.113.1560243588440;
 Tue, 11 Jun 2019 01:59:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190417104511.21514-1-frederic.chen@mediatek.com>
 <20190417104511.21514-7-frederic.chen@mediatek.com>
 <20190509094846.GA65444@google.com>
 <1558466055.15388.342.camel@mtksdccf07> <1560242886.23799.13.camel@mtksdccf07>
In-Reply-To: <1560242886.23799.13.camel@mtksdccf07>
From: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 11 Jun 2019 17:59:36 +0900
X-Gmail-Original-Message-ID: <CAAFQd5CReiPOySyk-eFkgiQMDMoqB3Uhd=bcho2Qtsv74y8fmg@mail.gmail.com>
Message-ID: <CAAFQd5CReiPOySyk-eFkgiQMDMoqB3Uhd=bcho2Qtsv74y8fmg@mail.gmail.com>
Subject: Re: [RFC PATCH V1 6/6] platform: mtk-isp: Add Mediatek DIP driver
To: Frederic Chen <frederic.chen@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_015953_078672_4908F635 
X-CRM114-Status: GOOD (  24.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
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

On Tue, Jun 11, 2019 at 5:48 PM Frederic Chen
<frederic.chen@mediatek.com> wrote:
>
> Dear Tomasz,
>
> I'd like to elaborate more about the tuning_data.va.
> Would you like to give us some advice about our improvement proposal inline?
>
> Thank you very much.
>
>
> On Wed, 2019-05-22 at 03:14 +0800, Frederic Chen wrote:
> > Dear Tomasz,
> >
> > I appreciate your comment. It is very helpful for us.
> >
> >
> > > > diff --git a/drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-sys.c b/drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-sys.c
> > > > new file mode 100644
> > > > index 000000000000..54d2b5f5b802
> > > > --- /dev/null
> > > > +++ b/drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-sys.c
> > > > @@ -0,0 +1,1384 @@
>
> [snip]
>
> > > > +static void dip_submit_worker(struct work_struct *work)
> > > > +{
> > > > +       struct mtk_dip_hw_submit_work *dip_submit_work =
> > > > +               container_of(work, struct mtk_dip_hw_submit_work, frame_work);
> > > > +       struct mtk_dip_hw *dip_hw = dip_submit_work->dip_hw;
> > > > +       struct mtk_dip_dev *dip_dev = mtk_dip_hw_to_dev(dip_hw);
> > > > +       struct mtk_dip_hw_work *dip_work;
> > > > +       struct mtk_dip_hw_subframe *buf;
> > > > +       u32 len, num;
> > > > +       int ret;
> > > > +
> > > > +       num  = atomic_read(&dip_hw->num_composing);
> > > > +
> > > > +       mutex_lock(&dip_hw->dip_worklist.queuelock);
> > > > +       dip_work = list_first_entry(&dip_hw->dip_worklist.queue,
>
> [snip]
>
> > > > +
> > > > +       if (dip_work->frameparams.tuning_data.pa == 0) {
> > > > +               dev_dbg(&dip_dev->pdev->dev,
> > > > +                       "%s: frame_no(%d) has no tuning_data\n",
> > > > +                       __func__, dip_work->frameparams.frame_no);
> > > > +
> > > > +               memcpy(&dip_work->frameparams.tuning_data,
> > > > +                      &buf->tuning_buf, sizeof(buf->tuning_buf));
> > >
> > > Ditto.
> > >
> >
> > I got it.
> >
> > > > +               memset((char *)buf->tuning_buf.va, 0, DIP_TUNING_SZ);
> > >
> > > Ditto.
> >
> > I got it.
> >
> > >
> > > > +               /*
> > > > +                * When user enqueued without tuning buffer,
> > > > +                * it would use driver internal buffer.
> > > > +                * So, tuning_data.va should be 0
> > > > +                */
> > > > +               dip_work->frameparams.tuning_data.va = 0;
> > >
> > > I don't understand this. We just zeroed the buffer via this kernel VA few
> > > lines above, so why would it have to be set to 0?
> > >
> >
> > I will remove this unnecessary line.
> >
> > > > +       }
>
> After confirming the firmware part, I found that we use this field
> (tuning_data.va) to notify firmware if there is no tuning data from
> user.
>
> - frameparams.tuning_data.va is 0: use the default tuning data in
>                                    SCP, but we still need to pass
>                                    frameparams.tuning_data.pa because
>                                    the buffer contains some working
>                                    buffer required.
> - frameparams.tuning_data.va is not 0: the tuning data was passed from
>                                        the user
>
> Since we should not pass cpu addres to SCP, could I rename tuning_data.va
> as tuning_data.cookie, and write a constant value to indicate if SCP
> should use its internal default setting or not here?
>
> For example,
> /* SCP uses tuning data passed from userspace*/
> dip_work->frameparams.tuning_data.cookie = MTK_DIP_USER_TUNING_DATA;
>
> /* SCP uses internal tuning data */
> dip_work->frameparams.tuning_data.cookie = MTK_DIP_DEFAULT_TUNING_DATA;

Perhaps we could just call it "present" and set to true or false?

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

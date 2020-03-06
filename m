Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C18EB17B721
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 08:00:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I3239pFsnzM5hWTLQqvXJgGnCAGqI4rikAH/STblre0=; b=YESnQ/U+pKa4Bz
	Nd1p9hsLQeh85jGWN57BUxEgURbI/HcOOwYeJQbt9dj+oxFOu3nK/Z9TJ1/5XsqIGsp9m0K6lnc1C
	EDyK8/9rgDrAluusnwIXvObSf6Z9WG1CPmQa2JItHbUDWtp2Sb/4e8MrAWSNY0NTvvmxvNoEgoEBV
	DLKapSpR530pU+IgtNE/u0NEVhcUcyWOhu8DrXPW6618v50ojPwQRcBfIgNkBZNwXBgP8Fsn+R8pp
	RgBRFn8WDykWVmW6ihyTzRVN3LCZe4XbIbssCO+4a+yGkgFTnvtf0QOgqvgG8TTuYJZVWA62PqpSD
	z2H7Ifpf6a5FZZ3q+Oog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA6y0-0001Rq-Ag; Fri, 06 Mar 2020 07:00:16 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA6xn-0000M0-Se; Fri, 06 Mar 2020 07:00:05 +0000
X-UUID: 25f5f5e7d5b74ab68e9d1d23175efa6e-20200305
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=gkqDoOqHIrOTpmFheXHWiY15sLy0Mn7me1/+UDymw5E=; 
 b=Kxm/E3ZsOhX/RuR/e93d6rkyU7ocdTF8RrkzdLujLzUbfBUB5Sn26qOvsQjOTCFTnzzRN936F4iicr8U1gvbFAtLUCQNjOCdrntS+GddduiTmGgwJMXifXL7Q1cE9S80LUykGdCtBUsepFIiP9dUhoEHGiyQdocYGNXQPrEzqPk=;
X-UUID: 25f5f5e7d5b74ab68e9d1d23175efa6e-20200305
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1599998255; Thu, 05 Mar 2020 22:59:56 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Mar 2020 23:00:51 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 6 Mar 2020 14:58:27 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 6 Mar 2020 14:58:41 +0800
Message-ID: <1583477982.4784.37.camel@mhfsdcap03>
Subject: Re: [PATCH v3 03/14] iommu/mediatek: Add device_link between the
 consumer and the larb devices
From: Yong Wu <yong.wu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 6 Mar 2020 14:59:42 +0800
In-Reply-To: <CANMq1KAOHFF43708ktvhEU6EYZv_s7Wp+kUwFD7h0bwVrQpyqw@mail.gmail.com>
References: <1567503456-24725-1-git-send-email-yong.wu@mediatek.com>
 <1567503456-24725-4-git-send-email-yong.wu@mediatek.com>
 <CANMq1KAOHFF43708ktvhEU6EYZv_s7Wp+kUwFD7h0bwVrQpyqw@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: B84E2E8EC000FE6B20341D7962063DB72347CFF9209A3FBB475D95CD84B3A5AB2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_230003_946267_C77CEEBD 
X-CRM114-Status: GOOD (  28.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: maoguang.meng@mediatek.com, Will Deacon <will.deacon@arm.com>,
 youlin.pei@mediatek.com, Joerg Roedel <joro@8bytes.org>,
 Evan Green <evgreen@chromium.org>, Matthias Kaehlcke <mka@chromium.org>,
 Devicetree List <devicetree@vger.kernel.org>, cui.zhang@mediatek.com,
 houlong.wei@mediatek.com, Tomasz Figa <tfiga@google.com>,
 sj.huang@mediatek.com, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, ming-fan.chen@mediatek.com,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 anan.sun@mediatek.com, srv_heupstream <srv_heupstream@mediatek.com>,
 lkml <linux-kernel@vger.kernel.org>, chao.hao@mediatek.com,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-03-05 at 13:14 +0800, Nicolas Boichat wrote:
> On Tue, Sep 3, 2019 at 5:38 PM Yong Wu <yong.wu@mediatek.com> wrote:
> >
> > MediaTek IOMMU don't have its power-domain. all the consumer connect
> > with smi-larb, then connect with smi-common.
> >
> >         M4U
> >          |
> >     smi-common
> >          |
> >   -------------
> >   |         |    ...
> >   |         |
> > larb1     larb2
> >   |         |
> > vdec       venc
> >
> > When the consumer works, it should enable the smi-larb's power which
> > also need enable the smi-common's power firstly.
> >
> > Thus, First of all, use the device link connect the consumer and the
> > smi-larbs. then add device link between the smi-larb and smi-common.
> >
> > This patch adds device_link between the consumer and the larbs.
> >
> > When device_link_add, I add the flag DL_FLAG_STATELESS to avoid calling
> > pm_runtime_xx to keep the original status of clocks. It can avoid two
> > issues:
> > 1) Display HW show fastlogo abnormally reported in [1]. At the beggining,
> > all the clocks are enabled before entering kernel, but the clocks for
> > display HW(always in larb0) will be gated after clk_enable and clk_disable
> > called from device_link_add(->pm_runtime_resume) and rpm_idle. The clock
> > operation happened before display driver probe. At that time, the display
> > HW will be abnormal.
> >
> > 2) A deadlock issue reported in [2]. Use DL_FLAG_STATELESS to skip
> > pm_runtime_xx to avoid the deadlock.
> >
> > Corresponding, DL_FLAG_AUTOREMOVE_CONSUMER can't be added, then
> > device_link_removed should be added explicitly.
> >
> > [1] http://lists.infradead.org/pipermail/linux-mediatek/2019-July/
> > 021500.html
> > [2] https://lore.kernel.org/patchwork/patch/1086569/
> >
> > Suggested-by: Tomasz Figa <tfiga@chromium.org>
> > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > ---
> >  drivers/iommu/mtk_iommu.c    | 17 +++++++++++++++++
> >  drivers/iommu/mtk_iommu_v1.c | 18 +++++++++++++++++-
> >  2 files changed, 34 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> > index b138b94..2511b3c 100644
> > --- a/drivers/iommu/mtk_iommu.c
> > +++ b/drivers/iommu/mtk_iommu.c
> > @@ -450,6 +450,9 @@ static int mtk_iommu_add_device(struct device *dev)
> >         struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
> >         struct mtk_iommu_data *data;
> >         struct iommu_group *group;
> > +       struct device_link *link;
> > +       struct device *larbdev;
> > +       unsigned int larbid;
> >
> >         if (!fwspec || fwspec->ops != &mtk_iommu_ops)
> >                 return -ENODEV; /* Not a iommu client device */
> > @@ -461,6 +464,14 @@ static int mtk_iommu_add_device(struct device *dev)
> >         if (IS_ERR(group))
> >                 return PTR_ERR(group);
> >
> > +       /* Link the consumer device with the smi-larb device(supplier) */
> > +       larbid = MTK_M4U_TO_LARB(fwspec->ids[0]);
> 
> I'll mirror the comment I made on gerrit
> (https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/1361013):
> Maybe I'm missing something here, but for example, on MT8173,
> vcodec_enc: vcodec@18002000 needs to use both larb3 and larb5, isn't
> the code below just adding a link for larb3?

Yes. It only add larb3 here.

> 
> Do we need to iterate over all fwspecs->ids to figure out which larbs
> we need to add links to each of them?

We have checked this venc issue. Currently I have requested our venc guy
to seperate larb3-venc and larb5-venc in the driver[1] since they are
independent HW actually. I will put it into this series when I send next
version.

If there is some reasonable driver which have two larbs in it, then the
iterating is really necessary, But I don't see it right now. Only using
fwspec->ids[0] is enough for now.

[1]
https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/1958322

> 
> > +       larbdev = data->larb_imu[larbid].dev;
> > +       link = device_link_add(dev, larbdev,
> > +                              DL_FLAG_PM_RUNTIME | DL_FLAG_STATELESS);
> > +       if (!link)
> > +               dev_err(dev, "Unable to link %s\n", dev_name(larbdev));
> > +
> >         iommu_group_put(group);
> >         return 0;
> >  }
> > @@ -469,6 +480,8 @@ static void mtk_iommu_remove_device(struct device *dev)
> >  {
> >         struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
> >         struct mtk_iommu_data *data;
> > +       struct device *larbdev;
> > +       unsigned int larbid;
> >
> >         if (!fwspec || fwspec->ops != &mtk_iommu_ops)
> >                 return;
> > @@ -476,6 +489,10 @@ static void mtk_iommu_remove_device(struct device *dev)
> >         data = fwspec->iommu_priv;
> >         iommu_device_unlink(&data->iommu, dev);
> >
> > +       larbid = MTK_M4U_TO_LARB(fwspec->ids[0]);
> > +       larbdev = data->larb_imu[larbid].dev;
> > +       device_link_remove(dev, larbdev);
> > +
> >         iommu_group_remove_device(dev);
> >         iommu_fwspec_free(dev);
> >  }
> > diff --git a/drivers/iommu/mtk_iommu_v1.c b/drivers/iommu/mtk_iommu_v1.c
> > index 2034d72..a7f22a2 100644
> > --- a/drivers/iommu/mtk_iommu_v1.c
> > +++ b/drivers/iommu/mtk_iommu_v1.c
> > @@ -423,7 +423,9 @@ static int mtk_iommu_add_device(struct device *dev)
> >         struct of_phandle_iterator it;
> >         struct mtk_iommu_data *data;
> >         struct iommu_group *group;
> > -       int err;
> > +       struct device_link *link;
> > +       struct device *larbdev;
> > +       int err, larbid;
> >
> >         of_for_each_phandle(&it, err, dev->of_node, "iommus",
> >                         "#iommu-cells", 0) {
> > @@ -466,6 +468,14 @@ static int mtk_iommu_add_device(struct device *dev)
> >                 return err;
> >         }
> >
> > +       /* Link the consumer device with the smi-larb device(supplier) */
> > +       larbid = mt2701_m4u_to_larb(fwspec->ids[0]);
> > +       larbdev = data->larb_imu[larbid].dev;
> > +       link = device_link_add(dev, larbdev,
> > +                              DL_FLAG_PM_RUNTIME | DL_FLAG_STATELESS);
> > +       if (!link)
> > +               dev_err(dev, "Unable to link %s\n", dev_name(larbdev));
> > +
> >         return iommu_device_link(&data->iommu, dev);
> >  }
> >
> > @@ -473,6 +483,8 @@ static void mtk_iommu_remove_device(struct device *dev)
> >  {
> >         struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
> >         struct mtk_iommu_data *data;
> > +       struct device *larbdev;
> > +       unsigned int larbid;
> >
> >         if (!fwspec || fwspec->ops != &mtk_iommu_ops)
> >                 return;
> > @@ -480,6 +492,10 @@ static void mtk_iommu_remove_device(struct device *dev)
> >         data = fwspec->iommu_priv;
> >         iommu_device_unlink(&data->iommu, dev);
> >
> > +       larbid = mt2701_m4u_to_larb(fwspec->ids[0]);
> > +       larbdev = data->larb_imu[larbid].dev;
> > +       device_link_remove(dev, larbdev);
> > +
> >         iommu_group_remove_device(dev);
> >         iommu_fwspec_free(dev);
> >  }
> > --
> > 1.9.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

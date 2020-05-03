Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 838D51C2A61
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 08:16:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jku2035EOU0M9UI2xpGjkbBqT39Vd2fZJdZu5s+n664=; b=f4n7loAqcijOIM
	FSc/BE/FPC9B5kavkkDXS4g9F6pSd1zIC3HwQ0PJTCAQQ3Vf1J6BgYmiC4RFfglBffPFokt3R7Z1J
	xoGe3rnCHEK61aESHJ0PtuWpYW/N/p8OmM4D/uG9NK4rfDqUAT2Tj5Jlx2b/CJQ9pcVmSNhPhlv+2
	veCPxZW3vmSlMGl1k9Sn+Of4NguuJeqrNhp902A4+dcMq2Kmku+jtWn9dVfGFu+iqGO1vZ1oOQdvZ
	xmRiIAqu/Xkto+LlZsMQrqIt1EwOb93BTCBrMXRMJts9ilPtQjEaeSwNQ/tF4M4xbFE+m537Knf0C
	DX1wOX1qDszkPXJ5Y0Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jV7vT-00066T-Gk; Sun, 03 May 2020 06:16:31 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jV7vK-00064W-JG; Sun, 03 May 2020 06:16:24 +0000
X-UUID: 8500eb0b0b12401c97df29b05589b7b9-20200502
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=BhgzvLLTj79OZPZMOGUjo5xTfdmz+3IwdyU49QTRGew=; 
 b=Lb76hT7thZ1JaT4qEdoObOrG2GIG734yfZali6LwJsZbBm+SbFmAHVcmMHrUBXdOV8Y+V3rMAm9ohLR5ScwlH9JMPIkWH01wNSs7nfLk14BUR8bOVCM/sJWGJeeNXjVc/hqdM+Rk40U6vWQp/Wi67aywML1MOU0fbiA6r4n1Lio=;
X-UUID: 8500eb0b0b12401c97df29b05589b7b9-20200502
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 366690248; Sat, 02 May 2020 22:16:21 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 2 May 2020 23:06:16 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 3 May 2020 14:06:15 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sun, 3 May 2020 14:06:15 +0800
Message-ID: <1588485976.3197.7.camel@mtkswgap22>
Subject: RE: [PATCH v3 3/5] scsi: ufs: add LU Dedicated buffer mode support
 for WriteBooster
From: Stanley Chu <stanley.chu@mediatek.com>
To: Avri Altman <Avri.Altman@wdc.com>
Date: Sun, 3 May 2020 14:06:16 +0800
In-Reply-To: <SN6PR04MB4640A20146AFE35717580149FCA80@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200501143835.26032-1-stanley.chu@mediatek.com>
 <20200501143835.26032-4-stanley.chu@mediatek.com>
 <SN6PR04MB4640A20146AFE35717580149FCA80@SN6PR04MB4640.namprd04.prod.outlook.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_231622_646992_6D0CA419 
X-CRM114-Status: GOOD (  19.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Avri,

On Sat, 2020-05-02 at 15:32 +0000, Avri Altman wrote:
> Hi Stanley,
> Few more nits.
> Thanks,
> Avri

All fixed in v4.
Thanks for these suggestions.

Stanley Chu

> 
> > 
> > According to UFS specification, there are two WriteBooster mode of
> > operations: "LU dedicated buffer" mode and "shared buffer" mode.
> > In the "LU dedicated buffer" mode, the WriteBooster Buffer is
> > dedicated to a logical unit.
> > 
> > If the device supports the "LU dedicated buffer" mode, this mode is
> > configured by setting bWriteBoosterBufferType to 00h. The logical
> > unit WriteBooster Buffer size is configured by setting the
> > dLUNumWriteBoosterBufferAllocUnits field of the related Unit
> > Descriptor. Only a value greater than zero enables the WriteBooster
> > feature in the logical unit.
> > 
> > Modify ufshcd_wb_probe() as above description to support LU Dedicated
> > buffer mode.
> > 
> > Note that according to UFS 3.1 specification, the valid value of
> > bDeviceMaxWriteBoosterLUs parameter in Geometry Descriptor is 1,
> > which means at most one LUN can have WriteBooster buffer in "LU
> > dedicated buffer mode". Therefore this patch supports only one
> > LUN with WriteBooster enabled. All WriteBooster related sysfs nodes
> > are specifically mapped to the LUN with WriteBooster enabled in
> > LU Dedicated buffer mode.
> > 
> > Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> > ---
> >  drivers/scsi/ufs/ufs-sysfs.c | 14 ++++++++-
> >  drivers/scsi/ufs/ufs.h       |  7 +++++
> >  drivers/scsi/ufs/ufshcd.c    | 60 +++++++++++++++++++++++++++++-------
> >  drivers/scsi/ufs/ufshcd.h    |  1 +
> >  4 files changed, 70 insertions(+), 12 deletions(-)
> > 
> > diff --git a/drivers/scsi/ufs/ufs-sysfs.c b/drivers/scsi/ufs/ufs-sysfs.c
> > index b86b6a40d7e6..a162f63098e5 100644
> > --- a/drivers/scsi/ufs/ufs-sysfs.c
> > +++ b/drivers/scsi/ufs/ufs-sysfs.c
> > @@ -622,16 +622,28 @@ static const struct attribute_group
> > ufs_sysfs_string_descriptors_group = {
> >         .attrs = ufs_sysfs_string_descriptors,
> >  };
> > 
> > +static bool ufshcd_is_wb_flags(enum flag_idn idn)
> Inline?
> And just return (idn >= QUERY_FLAG_IDN_WB_EN &&  idn <= QUERY_FLAG_IDN_WB_BUFF_FLUSH_DURING_HIBERN8)
> 
> > +{
> > +       if (idn >= QUERY_FLAG_IDN_WB_EN &&
> > +           idn <= QUERY_FLAG_IDN_WB_BUFF_FLUSH_DURING_HIBERN8)
> > +               return true;
> > +       else
> > +               return false;
> > +}
> > +
> 
> 
> > 
> > +int ufshcd_wb_get_flag_index(struct ufs_hba *hba)
> > +{
> > +       if (hba->dev_info.b_wb_buffer_type ==
> > WB_BUF_MODE_LU_DEDICATED)
> > +               return hba->dev_info.wb_dedicated_lu;
> > +       else
> No need for else.
> Maybe make this static inline in ufshcd.h?
> 
> > +               return 0;
> > +}
> > +

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

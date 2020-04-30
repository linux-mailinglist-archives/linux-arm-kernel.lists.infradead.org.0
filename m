Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 945201BF332
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 10:43:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D4fQu1C7Z1VXvVhul5gNbysn13gseORmIayqsxP4dko=; b=n6UryPt7kWwgbI
	YVmu9z7lypzaZ9jkTzLAO7XAgje8eWNdbm/HUqu556PqpZitWTrPh66wH5EvcDzAx5faCf+y9UZpA
	oAnGPRB5FAhe7JiMseck3Zkg/A9uAi1eeelqPPHUezVm6uHyQY2PHA4SM13MzkPRF0faSv1+s4BkO
	dEQqucU6fhMCgTn3wTFQCKOO827S6iIYaTa43iruNaxpyREEYtzEcRcQF7SXNLqe2n98oNEXGprrx
	XWAtBDHJ6JZNZ9V1grxKrUdCkQnIPb2UQwBrNiPQvrOKXVUG3kFxeSmVkIKWH9Pm5KTDytk+f69aC
	IpSMFxlwiIXMpCbToz5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU4mx-0002ex-NN; Thu, 30 Apr 2020 08:43:23 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU4mo-0002eB-Op; Thu, 30 Apr 2020 08:43:15 +0000
X-UUID: 746fe4cf64174fd68ab9bc2aa6eefce3-20200430
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=6fuLsSr7ht5XTQtQNi2tUVonpMMOQGnUTyqQfCtGbyc=; 
 b=HoJiajnysPjLiHqP3nXrg4uXQYs/P3Y2XWVD/MPYwOyG6sIWnCM3uFsHLnY6FDnFf6Gm1YOB15ZVrhTgJkhtvaRbN/v4bH0ndFD5yw4TAkSQjp8mBORqiovtlvrl0yYejJRNz0jQC2WIly/ym8DqY/2cjDQoA6vo5/0hmtAj+No=;
X-UUID: 746fe4cf64174fd68ab9bc2aa6eefce3-20200430
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 461366170; Thu, 30 Apr 2020 00:43:05 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 30 Apr 2020 01:37:39 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 30 Apr 2020 16:37:33 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 30 Apr 2020 16:37:34 +0800
Message-ID: <1588235853.3197.6.camel@mtkswgap22>
Subject: RE: [PATCH v2 3/5] scsi: ufs: add LU Dedicated buffer mode support
 for WriteBooster
From: Stanley Chu <stanley.chu@mediatek.com>
To: Avri Altman <Avri.Altman@wdc.com>
Date: Thu, 30 Apr 2020 16:37:33 +0800
In-Reply-To: <BYAPR04MB462991CBE166B51BFAF2E6B3FCAA0@BYAPR04MB4629.namprd04.prod.outlook.com>
References: <20200429135610.23750-1-stanley.chu@mediatek.com>
 <20200429135610.23750-4-stanley.chu@mediatek.com>
 <BYAPR04MB462991CBE166B51BFAF2E6B3FCAA0@BYAPR04MB4629.namprd04.prod.outlook.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 830AF5C7FA77C69071E5C6943126B4BF8D7E7B2D8CE0B39DC1FC316DFF1272C52000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_014314_810373_701DAA8E 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Thu, 2020-04-30 at 08:30 +0000, Avri Altman wrote:
> > 
> >  static void ufshcd_wb_probe(struct ufs_hba *hba, u8 *desc_buf)
> >  {
> > +       int ret;
> > +       u8 lun;
> > +       u32 d_lu_wb_buf_alloc = 0;
> > +
> >         if (hba->desc_size.dev_desc <=
> > DEVICE_DESC_PARAM_EXT_UFS_FEATURE_SUP)
> >                 goto wb_disabled;
> > 
> > @@ -6821,15 +6842,35 @@ static void ufshcd_wb_probe(struct ufs_hba
> > *hba, u8 *desc_buf)
> >         hba->dev_info.b_wb_buffer_type =
> >                 desc_buf[DEVICE_DESC_PARAM_WB_TYPE];
> > 
> > -       hba->dev_info.d_wb_alloc_units =
> > -               get_unaligned_be32(desc_buf +
> > -                                  DEVICE_DESC_PARAM_WB_SHARED_ALLOC_UNITS);
> >         hba->dev_info.b_presrv_uspc_en =
> >                 desc_buf[DEVICE_DESC_PARAM_WB_PRESRV_USRSPC_EN];
> > 
> > -       if (!(hba->dev_info.b_wb_buffer_type &&
> > -             hba->dev_info.d_wb_alloc_units))
> > -               goto wb_disabled;
> > +       if (hba->dev_info.b_wb_buffer_type == WB_BUF_MODE_SHARED) {
> > +               hba->dev_info.d_wb_alloc_units =
> > +               get_unaligned_be32(desc_buf +
> > +                                  DEVICE_DESC_PARAM_WB_SHARED_ALLOC_UNITS);
> > +               if (!hba->dev_info.d_wb_alloc_units)
> > +                       goto wb_disabled;
> > +       } else {
> > +               for (lun = 0; lun < hba->dev_info.max_lu_supported; lun++) {
> > +                       ret = ufshcd_read_unit_desc_param(hba,
> > +                                       lun,
> > +                                       UNIT_DESC_PARAM_WB_BUF_ALLOC_UNITS,
> > +                                       (u8 *)&d_lu_wb_buf_alloc,
> > +                                       sizeof(d_lu_wb_buf_alloc));
> > +                       if (ret)
> > +                               goto wb_disabled;
> > +                       if (d_lu_wb_buf_alloc) {
> > +                               hba->dev_info.wb_dedicated_lu = lun;
> > +                               break;
> Why are you allowing only a single WB lun?
> You should allow those buffers for lun0..lun7

In UFS 3.1 specification, the valid value of bDeviceMaxWriteBoosterLUs
is 1. Therefore only one LU can have WriteBooster buffer.

Thanks,
Stanley


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

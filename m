Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4931BF321
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 10:41:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0uxYotZ+G3p2Uji7lxhMsAtGTvqEUw9m2+YKUMW8nL4=; b=bI2AdmcYAmo01s
	Ft7hPMXEJAiR/EL+ZryDjQphqcPWfU1S8FW8cPFxVkqmGzZSQKfFXTWCTcegedCdMDqXcEP6PlFub
	ByJmC7hAG7We8SRzkDJR9C0VsnQn/Sj96ZcwUjvXQoG9uHTm+tW7vxRkJkRFGPIVD1a2eTAvEjPfn
	2IAzrxq36VmMWR/AhE4z+MydQov7Rzfevxg5UAGAnr8PWXzsqjFJpST9dGj5VbN7JesZUH2j3446W
	/+K/n/ArycOUWut8+e1gdngXSBVtgg1nyrDrgkFcn8f4/F26ZEdQr9oIXu0kYu+FMk1GHIY3aFFo+
	jkiMrOUcG1ApfHUcofIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU4lK-0002Cs-Qf; Thu, 30 Apr 2020 08:41:42 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU4lB-0002Bi-8X; Thu, 30 Apr 2020 08:41:34 +0000
X-UUID: 9be725c7c28e44188be80d8205102d36-20200430
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=BJN1G2vRhoJNm8shc3cGM0UiBE2w5KQJhfntwPFsV7Y=; 
 b=UqYKJj7S0jitWVlmvMmXxXq6PkpznZPra5UVpDvoHLKE1L1Rj41f65pCwITOGBca9aVJqP2z5pR5/6tntGP49t0+yUZTABM3TIj7ffp8c89KFAR24gucIKveOyH+U5qUjWHUc8s4dJ/jNApBUOVnwZyfBLVQPgG5/4a/cQKVcBA=;
X-UUID: 9be725c7c28e44188be80d8205102d36-20200430
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 250260998; Thu, 30 Apr 2020 00:41:16 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 30 Apr 2020 01:35:25 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 30 Apr 2020 16:35:25 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 30 Apr 2020 16:35:26 +0800
Message-ID: <1588235725.3197.3.camel@mtkswgap22>
Subject: RE: [PATCH v2 2/5] scsi: ufs: add "index" in parameter list of
 ufshcd_query_flag()
From: Stanley Chu <stanley.chu@mediatek.com>
To: Avri Altman <Avri.Altman@wdc.com>
Date: Thu, 30 Apr 2020 16:35:25 +0800
In-Reply-To: <BYAPR04MB46296FE5C0C4AE0CE7B24478FCAA0@BYAPR04MB4629.namprd04.prod.outlook.com>
References: <20200429135610.23750-1-stanley.chu@mediatek.com>
 <20200429135610.23750-3-stanley.chu@mediatek.com>
 <BYAPR04MB46296FE5C0C4AE0CE7B24478FCAA0@BYAPR04MB4629.namprd04.prod.outlook.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_014133_309842_FA80129C 
X-CRM114-Status: GOOD (  11.31  )
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
Cc: "bvanassche@acm.org" <bvanassche@acm.org>,
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
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "beanhuo@micron.com" <beanhuo@micron.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Avri,

On Thu, 2020-04-30 at 07:56 +0000, Avri Altman wrote:
> > 
> > For preparation of LU Dedicated buffer mode support on WriteBooster
> > feature, "index" parameter shall be added and allowed to be specified
> > by callers.
> > 
> > Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> > Reviewed-by: Bean Huo <beanhuo@micron.com>
> > ---
> >  drivers/scsi/ufs/ufs-sysfs.c |  2 +-
> >  drivers/scsi/ufs/ufshcd.c    | 28 +++++++++++++++-------------
> >  drivers/scsi/ufs/ufshcd.h    |  2 +-
> >  3 files changed, 17 insertions(+), 15 deletions(-)
> > 
> > diff --git a/drivers/scsi/ufs/ufs-sysfs.c b/drivers/scsi/ufs/ufs-sysfs.c
> > index 93484408bc40..b86b6a40d7e6 100644
> > --- a/drivers/scsi/ufs/ufs-sysfs.c
> > +++ b/drivers/scsi/ufs/ufs-sysfs.c
> > @@ -631,7 +631,7 @@ static ssize_t _name##_show(struct device *dev,
> > \
> >         struct ufs_hba *hba = dev_get_drvdata(dev);                     \
> >         pm_runtime_get_sync(hba->dev);                                  \
> >         ret = ufshcd_query_flag(hba, UPIU_QUERY_OPCODE_READ_FLAG,       \
> > -               QUERY_FLAG_IDN##_uname, &flag);                         \
> > +               QUERY_FLAG_IDN##_uname, 0, &flag);                      \
> The sysfs entries for flags needs to get an _index argument now

Sure, I will fix this in next version.

Thanks,
Stanley Chu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

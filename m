Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A63612395E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:05:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TI/J5Js55HHYpgQ24i8/Di2+sSP0aoK4RCYW0gvWHwA=; b=RDWgP4NJae2AEd
	yLxDS3BRYF0KcGbuCV6dvThaDoU7nZsFTvZmnerqTfh1E6XNGgyJyQFQeVdStkZFzl3WW6S4EcLj/
	kBpazDEQCLdBOnsTRUaTU59ehMqzOD8qZxEMKYdSFxmxfeV7sCutLRwzoo9q1kKPGpNsLeIR718F0
	Av3+MrqdEEfboWtriHBqxpH1lHKaVY3KoM+6Z8eAWbshP09DRaPuC7bg4b0tsaYkC/j6XS7UVtFNH
	WnDcTwl+YkPK2bHleIutCNT7GsTwQyi/CDPkgzknwLGGj6u6HfdWzkVQdd6GqrhzXxqdVW7abM7GH
	boM73qIWVlJrRLQO/cpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSivF-0004qX-Sz; Mon, 20 May 2019 14:05:49 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSiv7-0004pZ-Ie; Mon, 20 May 2019 14:05:42 +0000
X-UUID: 3c9ec5f8585644329577aa91e7d57e5f-20190520
X-UUID: 3c9ec5f8585644329577aa91e7d57e5f-20190520
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 662098336; Mon, 20 May 2019 06:05:32 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 07:05:30 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 22:05:29 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 20 May 2019 22:05:29 +0800
Message-ID: <1558361129.660.8.camel@mtkswgap22>
Subject: RE: [PATCH v3 2/3] scsi: ufs: Add error-handling of Auto-Hibernate
From: Stanley Chu <stanley.chu@mediatek.com>
To: Avri Altman <Avri.Altman@wdc.com>
Date: Mon, 20 May 2019 22:05:29 +0800
In-Reply-To: <SN6PR04MB4925DE7B66A63ED81EDD9444FC060@SN6PR04MB4925.namprd04.prod.outlook.com>
References: <1558341138-18043-1-git-send-email-stanley.chu@mediatek.com>
 <1558341138-18043-3-git-send-email-stanley.chu@mediatek.com>
 <SN6PR04MB4925DE7B66A63ED81EDD9444FC060@SN6PR04MB4925.namprd04.prod.outlook.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_070541_614552_0306B4AB 
X-CRM114-Status: GOOD (  11.27  )
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
X-Mailman-Version: 2.1.21
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
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "evgreen@chromium.org" <evgreen@chromium.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "pedrom.sousa@synopsys.com" <pedrom.sousa@synopsys.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Avri,

On Mon, 2019-05-20 at 09:51 +0000, Avri Altman wrote:
> Aside from some nits - see below, looks fine.
> 
> Thanks,
> Avri
> 
> > diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
> > index ecfa898b9ccc..994d73d03207 100644
> > --- a/drivers/scsi/ufs/ufshcd.h
> > +++ b/drivers/scsi/ufs/ufshcd.h
> > @@ -740,6 +740,11 @@ return true;
> >  #endif
> >  }
> > 
> > +static inline bool ufshcd_is_auto_hibern8_supported(struct ufs_hba *hba)
> > +{
> > +	return (hba->capabilities & MASK_AUTO_HIBERN8_SUPPORT);
> > +}
> Maybe use it elsewhere in the driver, preferable in a preparatory patch,
> Instead of patch #3.
> 

OK. I will modify original patch #3 to a preparation patch which just
re-factors ufshcd_is_auto_hibern8_supported(), and change its order to
#2.
> 
> 
> > diff --git a/drivers/scsi/ufs/ufshci.h b/drivers/scsi/ufs/ufshci.h
> > index 6fa889de5ee5..4bcb205f2077 100644
> > --- a/drivers/scsi/ufs/ufshci.h
> > +++ b/drivers/scsi/ufs/ufshci.h
> > @@ -148,6 +148,9 @@ enum {
> >  				UIC_HIBERNATE_EXIT |\
> >  				UIC_POWER_MODE)
> > 
> > +#define UFSHCD_UIC_AH8_ERROR_MASK	(UIC_HIBERNATE_ENTER |\
> > +					UIC_HIBERNATE_EXIT)
> So maybe update UFSHCD_UIC_PWR_MASK above

OK.
WIll make these definitions more elegant.

> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

Thanks,
Stanley



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

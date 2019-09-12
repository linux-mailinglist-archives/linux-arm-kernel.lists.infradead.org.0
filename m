Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F18C3B0855
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 07:37:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZV30RAWDLxFRhmVGRmKiqi/m6Ud4oXuTk+1uNdaAqsw=; b=KKHrTM6g+kVGPk
	AlDzV+LFPAjLpSlzPQXRxHmBb+dvz5dqo4+w8PL6VAWO1EDLGWNt0dIIUiw3I1cScq9WQ1geYYDNW
	If8Duf13hkbuRjix2V8744miti5ApJr1k7hSHq9OvKlkDpuWoXrhbbYo555RE9ZwhWP8DoqX2lYxs
	m+VeV6yzi6gKc+QHLzShsINfiKy8Vpw+SNB8nQErPZWNkGwM5ekTEChIameWZI8wGXVa3639VgIsL
	fNFUu0pWBYXjp1CwaWR1zRTaEGQcS54rF+A+bR4B1sUt0hwxaIyFLyRhptU2OKoV2INJZ2kKfWhXf
	pAlGOdnxKU+0qS8nldzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Hnk-0003ST-1F; Thu, 12 Sep 2019 05:37:52 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8HnV-0003RE-Lp; Thu, 12 Sep 2019 05:37:39 +0000
X-UUID: 027181bb97164833ab9c92b1883b890d-20190911
X-UUID: 027181bb97164833ab9c92b1883b890d-20190911
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 90688073; Wed, 11 Sep 2019 21:37:33 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Sep 2019 22:37:32 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Sep 2019 13:37:31 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 12 Sep 2019 13:37:31 +0800
Message-ID: <1568266651.16730.13.camel@mtkswgap22>
Subject: RE: [PATCH v1 2/3] scsi: ufs: override auto suspend tunables for ufs
From: Stanley Chu <stanley.chu@mediatek.com>
To: Avri Altman <Avri.Altman@wdc.com>
Date: Thu, 12 Sep 2019 13:37:31 +0800
In-Reply-To: <MN2PR04MB6991D63EEF50367BE2CB062CFCB10@MN2PR04MB6991.namprd04.prod.outlook.com>
References: <1568194890-24439-1-git-send-email-stanley.chu@mediatek.com>
 <1568194890-24439-3-git-send-email-stanley.chu@mediatek.com>
 <MN2PR04MB6991D63EEF50367BE2CB062CFCB10@MN2PR04MB6991.namprd04.prod.outlook.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_223737_714235_A5469CCF 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "sthumma@codeaurora.org" <sthumma@codeaurora.org>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "vivek.gautam@codeaurora.org" <vivek.gautam@codeaurora.org>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "evgreen@chromium.org" <evgreen@chromium.org>,
 "subhashj@codeaurora.org" <subhashj@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "beanhuo@micron.com" <beanhuo@micron.com>,
 "pedrom.sousa@synopsys.com" <pedrom.sousa@synopsys.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "bvanassche@acm.org" <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Avri,

> > diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c index
> > 30b752c61b97..d253a018a73b 100644
> > --- a/drivers/scsi/ufs/ufshcd.c
> > +++ b/drivers/scsi/ufs/ufshcd.c
> > @@ -88,6 +88,9 @@
> >  /* Interrupt aggregation default timeout, unit: 40us */
> >  #define INT_AGGR_DEF_TO        0x02
> > 
> > +/* default delay of autosuspend: 2000 ms */ #define
> Typo?
> 

This is wired because it looks fine in both my local patch and in
patchwork website: https://patchwork.kernel.org/patch/11140759/

Anyway I will try to fix and check it carefully in v2.

Thanks,
Stanley


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

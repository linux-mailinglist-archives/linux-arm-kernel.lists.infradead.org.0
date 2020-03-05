Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 732C417A662
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 14:31:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nNTPhANnC7pjr7a/zM4Gr2QuAoN2pKZNqtIxFEYsyQ8=; b=r13gkYM7jGTakD
	2pyiBMBZorPpfQsPHnAb2KPuULfcv0mClLwPosH8Cp65G+JroGJxJfE4ZFI6kCdKPfA+KT1yAjWYN
	LPLPx/8xoPZvUA60RF+lEE0RtabXr9KPkQXtOVrb173rs6vBmoYN19ElitGlE9+URa+sSjyjCp8m2
	QhYwwda7+cHsmsWkdhz6CBwSYxCNAKpmuypswcwlAQejrWrEJGCleUdISjPuQuHtrHAR9z8XCWcWw
	P6ofZGmCoB7qzGB1hvVrGBu5eCHi2QL5nbQIQbdd83im891U/wPbSxrlrbA/Tk//6wyMhmvL1i866
	NonL83xOiTtopgGZF4rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9qaU-0000nl-QC; Thu, 05 Mar 2020 13:30:54 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9qaN-0000n2-Fp; Thu, 05 Mar 2020 13:30:48 +0000
X-UUID: 3e36fb96404d45f09e1041493798b962-20200305
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=vJUGDoFzTQdjcbPEZc20+na+H1fziGynCmehL0Gfwnk=; 
 b=Edejk94UMt9bpOodRgLuaVcBa4S2X0Q+G3Pm6zylOtGdk37Kf36DvIY/Dz1aMXPkoGmDjCGn2RpKEGnN9btiYv9lu3P2J2e0jZoidPcutZT575g3CMQdFoYW4SW4IivKijgNmCcSqXyNhGSRrlDsRB4r5TiRu+vM9zdkf0yRY30=;
X-UUID: 3e36fb96404d45f09e1041493798b962-20200305
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2028000410; Thu, 05 Mar 2020 05:30:38 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Mar 2020 05:26:18 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Mar 2020 21:23:54 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 5 Mar 2020 21:25:10 +0800
Message-ID: <1583414757.14250.7.camel@mtksdccf07>
Subject: RE: [PATCH v1 4/4] scsi: ufs-mediatek: remove delay for host enabling
From: Stanley Chu <stanley.chu@mediatek.com>
To: Avri Altman <Avri.Altman@wdc.com>
Date: Thu, 5 Mar 2020 21:25:57 +0800
In-Reply-To: <MN2PR04MB6991FAE18CCA3DACF2306E08FCE20@MN2PR04MB6991.namprd04.prod.outlook.com>
References: <20200305040704.10645-1-stanley.chu@mediatek.com>
 <20200305040704.10645-5-stanley.chu@mediatek.com>
 <MN2PR04MB6991FAE18CCA3DACF2306E08FCE20@MN2PR04MB6991.namprd04.prod.outlook.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_053047_534431_C1DDF8AC 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
 "beanhuo@micron.com" <beanhuo@micron.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Avri,

On Thu, 2020-03-05 at 13:14 +0000, Avri Altman wrote:
> Hi Stanley,
> 
> > 
> > 
> > MediaTek platform and UFS controller do not require the delay
> > for host enabling, thus remove it.
> > 
> > Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> > ---
> >  drivers/scsi/ufs/ufs-mediatek.c | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
> > index 3b0e575d7460..ea3b5fd62492 100644
> > --- a/drivers/scsi/ufs/ufs-mediatek.c
> > +++ b/drivers/scsi/ufs/ufs-mediatek.c
> > @@ -258,6 +258,8 @@ static int ufs_mtk_init(struct ufs_hba *hba)
> I would expect to set whatever is needed for your host controller
> In ufshcd_vops_hce_enable_notify(hba, PRE_CHANGE), and not here.
> 

I think this is a good suggestion! And thus we could have more
flexibility to customize the value according to different scenarios.

I will consider this approach in next version.

Thanks!
Stanley Chu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

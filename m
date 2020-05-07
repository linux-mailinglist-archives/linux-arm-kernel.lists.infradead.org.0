Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B921D1C9F4E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 01:51:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E2+3ifjibla2s77RkbkvIj2hVwI7NJt3B+plncw53DE=; b=AYzX7UOsN6V7W4
	wKv3dQKU+IllvopqgXDENjotqtc59imLZeEyAMbt1xGp7J8/biZQcUj91FwzrBjQcwDSAFdTZgXEn
	v//qED7crSUCiYrdSDY8dQEEE0eH7l5ZtvBlGWkV4a6P6wMsvdfQAO4FO+MssXIrZA5srPpPtKYJh
	BhRKl2DwTiq69e1E9+19JaIcX1dfdVmk2ZtPCKI3aFLaZZBLETyZQjRw/Kt2f7sBNOZJRtsiHzy2T
	3rAfNKfO1+wk0QBecsKagVM4D07NDTx7JomBmvtTEjH0LXpq5TWs67cUX9fr3S/Skpod3aDZ+M3MO
	BcV6KWkeEBY1Uo0tCEtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWqIY-00038e-T7; Thu, 07 May 2020 23:51:26 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWqIR-00037x-R6; Thu, 07 May 2020 23:51:21 +0000
X-UUID: 983b75d2fb3341bbab9b6c40dd6f09c8-20200507
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=7rh/xNev2bozJWN2jpMZ42zVTLpDJdHHe0AkEEw+riA=; 
 b=pqFEksD4ggHIegkXQTKEXf1adsl5Vqtd0yZnmajUF+a+blHp8FILsOHUVYw9VzM/gpWlB6ro5kDxk/mgk7MHROeC9ni2GDgFUfEsi2aqjAnH3F7nk4EepCgVyfXnPbpGzoU3MuXgX/SJMbIVgkQlBKzBJQ4pHj9y7Rab2BgVBX8=;
X-UUID: 983b75d2fb3341bbab9b6c40dd6f09c8-20200507
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1045793458; Thu, 07 May 2020 15:51:12 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 7 May 2020 16:51:12 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 8 May 2020 07:50:56 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 8 May 2020 07:50:54 +0800
Message-ID: <1588895457.3197.40.camel@mtkswgap22>
Subject: Re: [PATCH v5 1/8] scsi: ufs: enable WriteBooster on some pre-3.1
 UFS devices
From: Stanley Chu <stanley.chu@mediatek.com>
To: Avri Altman <Avri.Altman@wdc.com>
Date: Fri, 8 May 2020 07:50:57 +0800
In-Reply-To: <1588602837.3197.32.camel@mtkswgap22>
References: <20200503113415.21034-1-stanley.chu@mediatek.com>
 <20200503113415.21034-2-stanley.chu@mediatek.com>
 <BYAPR04MB4629F2C00ABAB512DB833232FCA60@BYAPR04MB4629.namprd04.prod.outlook.com>
 <1588602837.3197.32.camel@mtkswgap22>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: E528BD5724FFA756FDB6C319DCE7ED3EFAD25D9B4B53F50DE16DB1ECC31FC39B2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_165119_878982_F02BF76A 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
On Mon, 2020-05-04 at 22:33 +0800, Stanley Chu wrote:
> Hi Avri,
> 
> On Mon, 2020-05-04 at 10:37 +0000, Avri Altman wrote:
> > > 
> > >  static void ufshcd_wb_probe(struct ufs_hba *hba, u8 *desc_buf)
> > >  {
> > > +       if (!ufshcd_is_wb_allowed(hba))
> > > +               return;
> > > +
> > > +       if (hba->desc_size.dev_desc <=
> > > DEVICE_DESC_PARAM_EXT_UFS_FEATURE_SUP)
> > Should be 
> > DEVICE_DESC_PARAM_EXT_UFS_FEATURE_SUP + 4 
> 
> I think this description length check is redundant because the device
> quirk shall be added only after WriteBooster supportat is confirmed in
> attached UFS device. So I will remove this in next version.

Sorry this statement is incorrect because this kind on devices may have
short (without DEVICE_DESC_PARAM_EXT_UFS_FEATURE_SUP field) before
firmware upgrading. So the checking for descriptor length is still
required to avoid out-of-boundary access in below codes.

I will add it back in next version and also fix the length.

Thanks,
Stanley Chu

> > 
> > _______________________________________________
> > Linux-mediatek mailing list
> > Linux-mediatek@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-mediatek
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

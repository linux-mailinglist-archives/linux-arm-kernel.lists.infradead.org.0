Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6351C3D21
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 16:34:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=szO5dV6I2COHu1qq4EAebqUrvFdNiMiFUXrSJ9ZXxV0=; b=F+/U0O5cnoK5FH
	ICMAlcoDH5tX31W+1DPq2fa/43eGV0B6tZsHMPSb/z2ZWkRLd/RYYyJXjMSWwQrX6W1G4M8P1rjRP
	TwH2hxLwpBZWQWPUHhh69HwaV6GlApWRtyd04viLo0qUsd0a+boT2A7ttvXP/16Dx3/0l+9etyzra
	Qsefwilvz+rGyQ/80T3ci1IySs7RWVCx+O6rF0yNjjGiXn94R7cmS/EUaH11jHEM3Urv3qjbnVb/I
	quLp1ckEDgrz8jQInDGIlxfqc67T1Sdlht09r0JHzKRIwIgT0lwla7UjvO1m2FLkt2dg0erX5dSSZ
	wd3YcpkS9kidocEhf8uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVcAh-0008Uv-6I; Mon, 04 May 2020 14:34:15 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVcAZ-0008TA-MV; Mon, 04 May 2020 14:34:09 +0000
X-UUID: f8743e098d974d4687569879d2b6a7da-20200504
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=LkDTTU5vitAXtQ17b+YTzyueCYv6Vy7Wfw0Qkwja9cQ=; 
 b=cLhv8/f7/SkFxZRm614AfJi4VBv1yee51l0ZCDslm/zP9biTJWtGwuLcw2zSlAnJ04r/R5IE62FSVlsWQqHfQkQuSjdlJ/TSyR4Ni8EzsQsXnmZ1otHkEJWjMHMqJmD1C7WjXMzLWko7pBt12R4nznZGIJm0oO9Fhssmila7IiU=;
X-UUID: f8743e098d974d4687569879d2b6a7da-20200504
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 538638120; Mon, 04 May 2020 06:33:54 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 4 May 2020 07:33:57 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 4 May 2020 22:33:54 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 4 May 2020 22:33:54 +0800
Message-ID: <1588602837.3197.32.camel@mtkswgap22>
Subject: RE: [PATCH v5 1/8] scsi: ufs: enable WriteBooster on some pre-3.1
 UFS devices
From: Stanley Chu <stanley.chu@mediatek.com>
To: Avri Altman <Avri.Altman@wdc.com>
Date: Mon, 4 May 2020 22:33:57 +0800
In-Reply-To: <BYAPR04MB4629F2C00ABAB512DB833232FCA60@BYAPR04MB4629.namprd04.prod.outlook.com>
References: <20200503113415.21034-1-stanley.chu@mediatek.com>
 <20200503113415.21034-2-stanley.chu@mediatek.com>
 <BYAPR04MB4629F2C00ABAB512DB833232FCA60@BYAPR04MB4629.namprd04.prod.outlook.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_073407_741349_53CAC9E1 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Mon, 2020-05-04 at 10:37 +0000, Avri Altman wrote:
> > 
> >  static void ufshcd_wb_probe(struct ufs_hba *hba, u8 *desc_buf)
> >  {
> > +       if (!ufshcd_is_wb_allowed(hba))
> > +               return;
> > +
> > +       if (hba->desc_size.dev_desc <=
> > DEVICE_DESC_PARAM_EXT_UFS_FEATURE_SUP)
> Should be 
> DEVICE_DESC_PARAM_EXT_UFS_FEATURE_SUP + 4 

I think this description length check is redundant because the device
quirk shall be added only after WriteBooster supportat is confirmed in
attached UFS device. So I will remove this in next version.

> 
> > +               goto wb_disabled;
> > +
> >         hba->dev_info.d_ext_ufs_feature_sup =
> >                 get_unaligned_be32(desc_buf +
> >                                    DEVICE_DESC_PARAM_EXT_UFS_FEATURE_SUP);
> 
> 
> > 
> >  static int ufs_get_device_desc(struct ufs_hba *hba)
> > @@ -6862,10 +6890,6 @@ static int ufs_get_device_desc(struct ufs_hba
> > *hba)
> > 
> >         model_index = desc_buf[DEVICE_DESC_PARAM_PRDCT_NAME];
> > 
> > -       /* Enable WB only for UFS-3.1 */
> > -       if (dev_info->wspecversion >= 0x310)
> > -               ufshcd_wb_probe(hba, desc_buf);
> > -
> >         err = ufshcd_read_string_desc(hba, model_index,
> >                                       &dev_info->model, SD_ASCII_STD);
> >         if (err < 0) {
> > @@ -6874,6 +6898,16 @@ static int ufs_get_device_desc(struct ufs_hba
> > *hba)
> >                 goto out;
> >         }
> > 
> > +       ufs_fixup_device_setup(hba);
> I don't think you should "hide" ufs_fixup_device_setup inside ufs_get_device_desc.

The reason is as below,

ufshcd_wb_probe() needs the contents of Device Descriptor for
initialization. To avoid double reading the Device Descriptor, I keep
ufshcd_wb_probe() inside ufs_get_device_desc() to use its "desc_buf".

And ufshcd_wb_probe() needs well-configured device quirk for entrance
check, thus ufs_fixup_device_setup() shall be moved before
ufshcd_wb_probe().

This change does not affect the behavior and functionality of
ufs_fixup_device_setup() since it is still executed once only during
ufshcd_init() flow and not be executed again in the future.

Thanks,
Stanley Chu

> 
> Thanks,
> Avri
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

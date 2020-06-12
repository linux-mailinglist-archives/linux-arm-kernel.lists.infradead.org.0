Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 818A91F71C5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 03:37:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=huJj/RyY4QOxDxj7FjRdHNEB8nl6dSMVk9PdgihdQ+g=; b=j1UPzB4nb0eix0
	DCw2rVucuN4n9VkigYPZLHp1D3whNwc1RoTDq2B71hKg6G7uG2vCA2k8wG168Viqm6pOi4u0du6i3
	PWPisR7hPextaO4wiPeYsfSDX5TmZ172aqiud2MZ8Fn3Q5WUPqKXF/shDrjkSzw/+QCMd55HBI/DY
	oMF7QJRjuwLuG4EzWVhBghKcb3js0EjWgITiSriRsW8sqmvIKrrSfYy4Hszo1Jeut4bAQKVZ2DgRF
	+ulmj5vSnHWhYUnfINuPn3UdQI1SPjoU9nK5lGBOjuL8NZgHPa8IC8oEui1zCO0VSUyFCcpCcxkkg
	e047e8eXMGzcFbZlx0Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjYco-0006Dj-W2; Fri, 12 Jun 2020 01:36:54 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjYcU-00065j-19; Fri, 12 Jun 2020 01:36:35 +0000
X-UUID: 9085042da9254fcd8062b6b44024ba62-20200611
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=d5BByIXWXshDufAPxC+Kyzln9g8sY49k/vEiJTGJz7g=; 
 b=i3JhUTs9RSe3bKjB1RCyJ9jCaW0UdjNai66zMPtKKHprxEL7UFcgRTC8Gsbx5L/1TQp1zSG/COGP8E6Kb7yB7rO+vyRVtuMcWiMBX2C62w0SYw5wwbAHCX3224+XL1GTyV9RnVmQ/Xk+BALqvmWD9qHF9D/2CX2YPmPDj2Wmafg=;
X-UUID: 9085042da9254fcd8062b6b44024ba62-20200611
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 241518250; Thu, 11 Jun 2020 17:36:30 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 11 Jun 2020 18:27:14 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 12 Jun 2020 09:27:13 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 12 Jun 2020 09:27:12 +0800
Message-ID: <1591925238.25636.40.camel@mtkswgap22>
Subject: RE: [PATCH v1 2/2] scsi: ufs: Cleanup device vendor and quirk
 definition
From: Stanley Chu <stanley.chu@mediatek.com>
To: Alim Akhtar <alim.akhtar@samsung.com>
Date: Fri, 12 Jun 2020 09:27:18 +0800
In-Reply-To: <001d01d64005$d7564e20$8602ea60$@samsung.com>
References: <20200610053645.19975-1-stanley.chu@mediatek.com>
 <CGME20200610053659epcas5p391a3c736dd5f59ec45cfeb3715cbe1a1@epcas5p3.samsung.com>
 <20200610053645.19975-3-stanley.chu@mediatek.com>
 <001d01d64005$d7564e20$8602ea60$@samsung.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: AFA5C9B49C9411A172CBC20F96E93AB075E460F84E759A5CB0699572D23DC3622000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_183634_082935_F49DF83E 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: linux-arm-kernel@lists.infradead.org, bvanassche@acm.org,
 martin.petersen@oracle.com, andy.teng@mediatek.com, jejb@linux.ibm.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, avri.altman@wdc.com, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 linux-scsi@vger.kernel.org, matthias.bgg@gmail.com, beanhuo@micron.com,
 cc.chou@mediatek.com, chaotian.jing@mediatek.com, asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alim,

On Thu, 2020-06-11 at 21:04 +0530, Alim Akhtar wrote:
> Hi Stanley
> 
> > diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c index
> > dea4fddf9332..7c93cb446f51 100644
> > --- a/drivers/scsi/ufs/ufshcd.c
> > +++ b/drivers/scsi/ufs/ufshcd.c
> > @@ -219,10 +219,8 @@ static struct ufs_dev_fix ufs_fixups[] = {
> >  	UFS_FIX(UFS_VENDOR_MICRON, UFS_ANY_MODEL,
> >  		UFS_DEVICE_QUIRK_DELAY_BEFORE_LPM),
> >  	UFS_FIX(UFS_VENDOR_SAMSUNG, UFS_ANY_MODEL,
> > -		UFS_DEVICE_QUIRK_DELAY_BEFORE_LPM),
> > -	UFS_FIX(UFS_VENDOR_SAMSUNG, UFS_ANY_MODEL,
> > -		UFS_DEVICE_QUIRK_RECOVERY_FROM_DL_NAC_ERRORS),
> > -	UFS_FIX(UFS_VENDOR_SAMSUNG, UFS_ANY_MODEL,
> > +		UFS_DEVICE_QUIRK_DELAY_BEFORE_LPM |
> > +		UFS_DEVICE_QUIRK_RECOVERY_FROM_DL_NAC_ERRORS |
> >  		UFS_DEVICE_QUIRK_HOST_PA_TACTIVATE),
> >  	UFS_FIX(UFS_VENDOR_TOSHIBA, UFS_ANY_MODEL,
> >  		UFS_DEVICE_QUIRK_DELAY_BEFORE_LPM),
> > --
> While at this, may be arrange the table in alphabetical order.

Sure, fixed in v2.

Thanks for the review.
Stanley Chu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

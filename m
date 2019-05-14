Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C20E1C38E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 08:58:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0eg0dOdXjLeybpghI/9rGc9765xTFa7Pi9E8x0eswSg=; b=Uc7s9+Zlv1ez/6
	ovo+RCvwvYOE1CZqX39l3P8B+GZXnKf++bj0gVmDHD7GUgmCSBXjHLY8IiHfbvDVb9VYm/8dxMbEk
	xC4uIEv6wYB2f6YPISz99Ze3bNjUvKavpjlVcdgGWn5/Oiyi/rUmYLWjjqLfjzCB9LSkiALBlcWtD
	KZ1CJsYEujP/F/NQrPSI0OVbdbl7QbhL+HnAdc2HjsxzYM91ECi8QEQwX4Ro7ae1itcAb+BGCfkpM
	KZpGH2YkFBqk+TzgcgSie4wyndB7ZrDqlKwW4lk0kVXzcVu0zmlwxAj6mJ+B7aEOL9dSzjZl+f38E
	RpnHG/FQUO8O9QudoC6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQROZ-0002m1-4K; Tue, 14 May 2019 06:58:39 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQROS-0002lP-QJ; Tue, 14 May 2019 06:58:34 +0000
X-UUID: 797c67ea8a3642aaa747b00a83b694a9-20190513
X-UUID: 797c67ea8a3642aaa747b00a83b694a9-20190513
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 796138434; Mon, 13 May 2019 22:58:31 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 13 May 2019 23:58:30 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 May 2019 14:58:22 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 14 May 2019 14:58:22 +0800
Message-ID: <1557817102.24427.20.camel@mtkswgap22>
Subject: RE: [EXT] [PATCH v1 2/3] scsi: ufs: add error handling of auto-hibern8
From: Stanley Chu <stanley.chu@mediatek.com>
To: "Bean Huo (beanhuo)" <beanhuo@micron.com>
Date: Tue, 14 May 2019 14:58:22 +0800
In-Reply-To: <BN7PR08MB568438668FC7C90A1284F53DDB0F0@BN7PR08MB5684.namprd08.prod.outlook.com>
References: <1557758186-18706-1-git-send-email-stanley.chu@mediatek.com>
 <1557758186-18706-3-git-send-email-stanley.chu@mediatek.com>
 <BN7PR08MB568438668FC7C90A1284F53DDB0F0@BN7PR08MB5684.namprd08.prod.outlook.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_235832_857625_D5791C27 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "evgreen@chromium.org" <evgreen@chromium.org>,
 "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "subhashj@codeaurora.org" <subhashj@codeaurora.org>,
 "sayalil@codeaurora.org" <sayalil@codeaurora.org>,
 "pedrom.sousa@synopsys.com" <pedrom.sousa@synopsys.com>,
 "vivek.gautam@codeaurora.org" <vivek.gautam@codeaurora.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bean,

Thanks so much for review.

On Mon, 2019-05-13 at 18:21 +0000, Bean Huo (beanhuo) wrote:
> Hi, Stanley
> 
> >+
> >+static inline bool ufshcd_is_auto_hibern8_error(struct ufs_hba *hba,
> >+						u32 intr_mask)
> >+{
> >+	return (ufshcd_is_auto_hibern8_supported(hba) &&
> >+		!hba->uic_async_done &&
> 
> Here check if uic_async_done is NULL, no big problem so far, but not safe enough.
> How about setting a flag in ufshcd_auto_hibern8_enable(),

> 
> I concern about how to compatible with auto_hibern8 disabled condition.

Currently auto-hibern8 disabling method is not implemented in
mainstream, so an "enabling" flag may looks redundant unless disabling
path is really existed.

I agree that checking hba->uic_async_done here does not look so
intuitive. However even if auto-hibern8 is disabled, these checks could
be safe enough because both "UIC_HIBERNATE_ENTER" and
"UIC_HIBERNATE_EXIT" are raised only if "manual-hibernate" is performed,
and in this case hba->uic_async_done shall be true.

Anything else or corner case I missed?

> 
> 
> //Bean

Thanks,
Stanley

> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

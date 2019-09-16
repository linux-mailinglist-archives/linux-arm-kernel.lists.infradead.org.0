Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D48B34B6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 08:30:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v3mc2jOPxcGi/82clebj66A3CuaWgrkmQCDC2s8kNhE=; b=lAGjfqe4tqstyb
	EgPTdS9S7DMV7WNlKBI46ORO4NDfh4m98REmhE+ULoQHKfuWdZMaMvPYBUd84n4E0rAwXoCaPetTl
	zI1OPIF2UfV9lNRFgTLtCM/kgTGCHoq4buJ09nt2Mh08v+bzzaOYIPWMLIjXbWC61cDm3CG3b24OV
	IsLEuzVOtLnW0Rtdac8RALWlz3PjRV9vKoZsU3bJim7pFf2mFNSux1fnZN9j0vtI5ag2tFep8noF7
	0m/b7yS2LyBb1QaWVl1A79e9UuSeBn3e40+6DN4A4CsgET3WvrJhHFhUgZxnRGwJyHuysigQsZtIl
	IlUNLsLV8YCBtVlqmHNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9kWf-0000c5-Js; Mon, 16 Sep 2019 06:30:18 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9kWP-0008S8-M1; Mon, 16 Sep 2019 06:30:03 +0000
X-UUID: 68082b7bc9aa4a5e91a2bb204e6d46d4-20190915
X-UUID: 68082b7bc9aa4a5e91a2bb204e6d46d4-20190915
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 415744337; Sun, 15 Sep 2019 22:29:56 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 15 Sep 2019 23:29:54 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Sep 2019 14:29:52 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 16 Sep 2019 14:29:52 +0800
Message-ID: <1568615392.16730.17.camel@mtkswgap22>
Subject: Re: [PATCH v2 3/3] scsi: ufs-mediatek: enable auto suspend capability
From: Stanley Chu <stanley.chu@mediatek.com>
To: Bart Van Assche <bvanassche@acm.org>
Date: Mon, 16 Sep 2019 14:29:52 +0800
In-Reply-To: <160452c7-c53c-155c-49a9-4365166032a8@acm.org>
References: <1568270135-32442-1-git-send-email-stanley.chu@mediatek.com>
 <1568270135-32442-4-git-send-email-stanley.chu@mediatek.com>
 <160452c7-c53c-155c-49a9-4365166032a8@acm.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 75057D6A14387FD4D93A3473C52F51AE3FD1B009813949CF92BCA4F9F378EA592000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_233001_736854_6BA55BF4 
X-CRM114-Status: UNSURE (   8.11  )
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
Cc: sthumma@codeaurora.org, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, marc.w.gonzalez@free.fr,
 vivek.gautam@codeaurora.org, subhashj@codeaurora.org, jejb@linux.ibm.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com, evgreen@chromium.org,
 avri.altman@wdc.com, linux-mediatek@lists.infradead.org,
 peter.wang@mediatek.com, alim.akhtar@samsung.com, andy.teng@mediatek.com,
 matthias.bgg@gmail.com, pedrom.sousa@synopsys.com,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bart,


> > @@ -147,6 +152,8 @@ static int ufs_mtk_init(struct ufs_hba *hba)
> >  	if (err)
> >  		goto out_variant_clear;
> >  
> > +	ufs_mtk_set_caps(hba);
> > +
> >  	/*
> >  	 * ufshcd_vops_init() is invoked after
> >  	 * ufshcd_setup_clock(true) in ufshcd_hba_init() thus
> 
> Please inline the ufs_mtk_set_caps() function. Introducing single line
> functions like is done in this patch doesn't improve readability.
> 

OK! Will be fixed in next version.

Thanks,
Stanley



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

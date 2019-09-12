Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD98FB0A64
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 10:33:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nJLaevfCICoxfAp0ncV+U4aouEbiThrKZwySngGki1Y=; b=m0J9d2ePgpAu7T
	unalLV41ehssyj7uAF8gfVAfyeU4eOz7oQ5KHfpkmC3HuLUDpScHCuypp73YLufGdF/YbDMCJaX1L
	py3u8xLrMbHSQyU9Gsik4SWaKgnTL//hCdXPNdxrfbWnBUtx+IrZyAnyb5kjT+PuCj3vY50cuVcSz
	j9aAkVPmTaP6cLx1lJyI2rEKhERpzjSf8/+O2ylddcVL8+Cyg1R1JbMvHHRdueZhJqkQHrYAdKgAQ
	GVFixV3poikJArcs/3VzuAwjwdJ5WPYvT0B8hmDm77+ys4aAseATkDsZRQQmJZLjc6BKwegp0qgjA
	rusOQRBLgeL4Md5qK7sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8KXk-00089s-Dr; Thu, 12 Sep 2019 08:33:32 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8KXX-00089I-4K; Thu, 12 Sep 2019 08:33:20 +0000
X-UUID: b002d592bacd42aebdda8548d8cc318e-20190912
X-UUID: b002d592bacd42aebdda8548d8cc318e-20190912
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1384775267; Thu, 12 Sep 2019 00:33:14 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Sep 2019 01:33:13 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Sep 2019 16:33:11 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 12 Sep 2019 16:33:11 +0800
Message-ID: <1568277192.16730.16.camel@mtkswgap22>
Subject: Re: [PATCH v1 1/2] block: bypass blk_set_runtime_active for
 uninitialized q->dev
From: Stanley Chu <stanley.chu@mediatek.com>
To: Jens Axboe <axboe@kernel.dk>
Date: Thu, 12 Sep 2019 16:33:12 +0800
In-Reply-To: <66fddf12-0dc4-1c73-affd-f8404e87342f@kernel.dk>
References: <1568183562-18241-1-git-send-email-stanley.chu@mediatek.com>
 <1568183562-18241-2-git-send-email-stanley.chu@mediatek.com>
 <66fddf12-0dc4-1c73-affd-f8404e87342f@kernel.dk>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_013319_179999_3F530B76 
X-CRM114-Status: UNSURE (   7.40  )
X-CRM114-Notice: Please train this message.
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
 Andy Teng =?UTF-8?Q?=28=E9=84=A7=E5=A6=82=E5=AE=8F=29?=
 <Andy.Teng@mediatek.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 Chun-Hung Wu =?UTF-8?Q?=28=E5=B7=AB=E9=A7=BF=E5=AE=8F=29?=
 <Chun-hung.Wu@mediatek.com>,
 Kuohong Wang =?UTF-8?Q?=28=E7=8E=8B=E5=9C=8B=E9=B4=BB=29?=
 <kuohong.wang@mediatek.com>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Peter Wang =?UTF-8?Q?=28=E7=8E=8B=E4=BF=A1=E5=8F=8B=29?=
 <peter.wang@mediatek.com>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jens,

> >   void blk_set_runtime_active(struct request_queue *q)
> >   {
> > +	if (!q->dev)
> > +		return;
> > +
> >   	spin_lock_irq(&q->queue_lock);
> >   	q->rpm_status = RPM_ACTIVE;
> >   	pm_runtime_mark_last_busy(q->dev);
> 
> I'd prefer just doing:
> 
> 	if (q->dev) {
> 		...
> 	}
> 
> instead. Other than that little complaint, looks good to me.
> 

OK! I will change it in v2.

Thanks,
Stanley



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

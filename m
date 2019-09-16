Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE64B34C1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 08:38:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f3A/SHAv6Ab4UzggI6soKMHtbQnKRirh9eo024xqfoU=; b=OHmnkgXsg+fpBr
	MkddA32ip4RWKcuZg5zp+IEybCVF7+xfgh+sstOiUNoKdJtx3zTPyUihhE8iL58bqGMqXzzMxZXyG
	69Btzbl7kegzE0L4ogn22+kMs1RvTC9wmmt9o5JP38EfU9+JeEN2qW9w6gHXxFHoqbThVheuHKbe2
	7DY4mKcN43RjN+IKzWHlWL4x6PnOfQTKo96DO0hRvVTsuJs5jRIrM2vvD9ec1tRJJncBXWSQXQyuX
	gPtPdymY2hLs/uN6uJQizw5f7SgDp9Nv7CrT6iQIqxskmruMfTFG9fJCkm6Zb+uYWt1OMu9hdW03w
	ea/99E65xVDjKLh3W7JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9keu-0003WC-2a; Mon, 16 Sep 2019 06:38:48 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9kee-0003UL-JX; Mon, 16 Sep 2019 06:38:33 +0000
X-UUID: 042ec402079e4fcf8b6be5e8d0afc51b-20190915
X-UUID: 042ec402079e4fcf8b6be5e8d0afc51b-20190915
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1542854966; Sun, 15 Sep 2019 22:38:27 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 15 Sep 2019 23:38:26 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Sep 2019 14:38:25 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 16 Sep 2019 14:38:25 +0800
Message-ID: <1568615905.16730.21.camel@mtkswgap22>
Subject: Re: [PATCH v2 1/3] scsi: core: allow auto suspend override by
 low-level driver
From: Stanley Chu <stanley.chu@mediatek.com>
To: Bart Van Assche <bvanassche@acm.org>
Date: Mon, 16 Sep 2019 14:38:25 +0800
In-Reply-To: <485731ed-d455-dbb2-0cd5-3110ff14f6b7@acm.org>
References: <1568270135-32442-1-git-send-email-stanley.chu@mediatek.com>
 <1568270135-32442-2-git-send-email-stanley.chu@mediatek.com>
 <485731ed-d455-dbb2-0cd5-3110ff14f6b7@acm.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_233832_650306_73D9648A 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 "subhashj@codeaurora.org" <subhashj@codeaurora.org>,
 "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 Chun-Hung Wu =?UTF-8?Q?=28=E5=B7=AB=E9=A7=BF=E5=AE=8F=29?=
 <Chun-hung.Wu@mediatek.com>,
 Kuohong Wang =?UTF-8?Q?=28=E7=8E=8B=E5=9C=8B=E9=B4=BB=29?=
 <kuohong.wang@mediatek.com>, "evgreen@chromium.org" <evgreen@chromium.org>,
 "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Peter Wang =?UTF-8?Q?=28=E7=8E=8B=E4=BF=A1=E5=8F=8B=29?=
 <peter.wang@mediatek.com>, "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 Andy Teng =?UTF-8?Q?=28=E9=84=A7=E5=A6=82=E5=AE=8F=29?=
 <Andy.Teng@mediatek.com>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "pedrom.sousa@synopsys.com" <pedrom.sousa@synopsys.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bart,

> > -	pm_runtime_forbid(&sdev->sdev_gendev);
> > +	if (sdev->rpm_autosuspend_delay < 0)
> > +		pm_runtime_forbid(&sdev->sdev_gendev);
> >  	pm_runtime_enable(&sdev->sdev_gendev);
> >  	scsi_autopm_put_target(starget);
> 
> So we have a single new struct member, rpm_autosuspend_delay, that
> controls two different behaviors: (a) whether or not runtime suspend is
> enabled at device creation time and (b) the power management autosuspend
> delay. I don't like this. Should two separate variables be introduced
> instead of using a single variable to control both behaviors?
> 

OK! Will try to separate different variables to control different things
in next version.

> > diff --git a/include/scsi/scsi_device.h b/include/scsi/scsi_device.h
> > index 202f4d6a4342..133b282fae5a 100644
> > --- a/include/scsi/scsi_device.h
> > +++ b/include/scsi/scsi_device.h
> > @@ -199,7 +199,7 @@ struct scsi_device {
> >  	unsigned broken_fua:1;		/* Don't set FUA bit */
> >  	unsigned lun_in_cdb:1;		/* Store LUN bits in CDB[1] */
> >  	unsigned unmap_limit_for_ws:1;	/* Use the UNMAP limit for WRITE SAME */
> > -
> > +	int rpm_autosuspend_delay;
> >  	atomic_t disk_events_disable_depth; /* disable depth for disk events */
> >  
> >  	DECLARE_BITMAP(supported_events, SDEV_EVT_MAXBITS); /* supported events */
> > 
> 
> Since the default value for the autosuspend delay is the same for all
> SCSI devices attached to a SCSI host is the same, please add a variable
> with the same name in the SCSI host template and use that value as the
> default value for SCSI devices. If the rpm_autosuspend_delay variable
> only occurs in struct scsi_device then LLD authors are forced to
> introduce a slave_configure function. Introducing such a function can be
> avoided if the default autosuspend delay can be specified in the host
> template.
> 

Sounds reasonable. Will create a member indicating autosuspend delay for
the same SCSI host in SCSI host template in next version.

> Bart.
> 

Thanks,
Stanley



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

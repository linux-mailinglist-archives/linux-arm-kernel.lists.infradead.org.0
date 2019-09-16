Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ECAAB3E2F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 17:56:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bZDplFUlRx6K4v0uD+06AXGui4KLZywZkqKvelhm0T4=; b=gsTztMul2TNtOV
	qSsiImowpFNvI3RGR8SgksKeti+K+Yfs3wic956mY3EkpLk562oXtLJN9qIzRzyZ3IKivM4gD1VtK
	r5AFA2FFLm2ieCKob7efaum/AJtkarXdtPNM6HWlI/Bhq/kJDiTmqR9ciDGywsvUyT9IhyUuV45Kc
	Q1VF3KUXfn0JCHq9MN1e7ClTKp8MyH4pi9SFVMeO5+PFUYz4B8RS+3Z5UQxC5nbeLwO3CAWHLH4A8
	Wh9q8HRWxnpxfEqEuXeqTOPTZq35/kyPLgWIsvHK4Lj4Q+VGVnZkaZIk0NO2ySxawGPE0xrM+vCmk
	ohwlixctUpXeKbjUZdyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9tM8-0003ba-7f; Mon, 16 Sep 2019 15:56:00 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9tLv-0003ay-Hq; Mon, 16 Sep 2019 15:55:49 +0000
X-UUID: a316e97ddcbb4af3a4bce1b081c2f467-20190916
X-UUID: a316e97ddcbb4af3a4bce1b081c2f467-20190916
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1757759617; Mon, 16 Sep 2019 07:55:39 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Sep 2019 08:55:38 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Sep 2019 23:55:36 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 16 Sep 2019 23:55:36 +0800
Message-ID: <1568649336.16730.22.camel@mtkswgap22>
Subject: Re: [PATCH v3 1/3] scsi: core: allow auto suspend override by
 low-level driver
From: Stanley Chu <stanley.chu@mediatek.com>
To: Bart Van Assche <bvanassche@acm.org>
Date: Mon, 16 Sep 2019 23:55:36 +0800
In-Reply-To: <bebea62f-8ab0-528f-5634-9b3c06f47ef7@acm.org>
References: <1568616437-16271-1-git-send-email-stanley.chu@mediatek.com>
 <1568616437-16271-2-git-send-email-stanley.chu@mediatek.com>
 <bebea62f-8ab0-528f-5634-9b3c06f47ef7@acm.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 5F47E35CB09F565A53FE9C6AB70840EF796B39E9C06F1BF69DB3769F521CD1352000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_085547_600943_9F8024B6 
X-CRM114-Status: UNSURE (   6.51  )
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
 "kernel-team@android.com" <kernel-team@android.com>,
 "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 Chun-Hung Wu =?UTF-8?Q?=28=E5=B7=AB=E9=A7=BF=E5=AE=8F=29?=
 <Chun-hung.Wu@mediatek.com>,
 Kuohong Wang =?UTF-8?Q?=28=E7=8E=8B=E5=9C=8B=E9=B4=BB=29?=
 <kuohong.wang@mediatek.com>,
 "subhashj@codeaurora.org" <subhashj@codeaurora.org>,
 "evgreen@chromium.org" <evgreen@chromium.org>,
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

> > -
> > +	unsigned rpm_autosuspend_on:1;	/* Runtime autosuspend */
> >   	atomic_t disk_events_disable_depth; /* disable depth for disk events */
>     The "_on" part in the variable name "rpm_autosuspend_on" is probably 
> redundant and the comment could have been more elaborate. Anyway:

OK! Thanks for suggestions. Will fix both in next version.

> 
> Reviewed-by: Bart Van Assche <bvanassche@acm.org>

Thanks,
Stanley



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

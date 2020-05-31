Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67EF51E97E6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 15:45:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tMNG58beILEEbWQPbaASvv3QtwC2uKP3JXc6In9+Cw4=; b=CZO5zZakBbDgIc
	1/9FwxTRlCKyL6rOdQSPFQx8GwvEZXqhvBLaUsmIb/1sP0Lrz7wjklIwsLc1LxtIHvA2DWQw6EbFd
	+xJVQszJw+tdxSIhkZ22+Ojz+Rp5v6WGpcpD784ijH9JFC93jyHtTR+WyXJ8nIXo+zERw6q2H5XKW
	ihg/rnM8tusPm3OpuOlpXgS1aY8mpDXfKpO9VJcqsKnYLTpsV8Zu+OxnxUOK+t2sQ+25wDmnqICeU
	V3XbTO3mTaCcQjwlPi/lgggT1niIlqgpzduA6fEoDg3V4KkfeeE9nKvPmtk3n60J9vKxFykY2f4Wn
	wrfvkEDLgmwirctB/rKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfOHH-0005c9-KV; Sun, 31 May 2020 13:45:27 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfOH9-0005b3-Kr; Sun, 31 May 2020 13:45:21 +0000
X-UUID: 1d5f3925f2354ff0b921ec638b23b796-20200531
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=NUfLG++y2OF2sag9fIFGPyEX1N9v5Lg5oAIif4rz+nA=; 
 b=DeG67wRgP5p9PUM6J6PIhKsottl98o9v3E5asT9gq7s8BAmaT1LwMHiik39BejvmqIzo8nDmNO0BivZTnP0tY8vOAxVXuPp25Swi7YEGpXtdyZNj3Tytdtg9vcDK4C/6cUChvdHtJZnLB9hckb4Sq08XLLeI1X7zWPysEg38xLY=;
X-UUID: 1d5f3925f2354ff0b921ec638b23b796-20200531
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1178785811; Sun, 31 May 2020 05:44:59 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 31 May 2020 06:45:11 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 31 May 2020 21:45:02 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sun, 31 May 2020 21:45:02 +0800
Message-ID: <1590932706.25636.14.camel@mtkswgap22>
Subject: RE: [PATCH v2 1/5] scsi: ufs-mediatek: Fix imprecise waiting time
 for ref-clk control
From: Stanley Chu <stanley.chu@mediatek.com>
To: Avri Altman <Avri.Altman@wdc.com>
Date: Sun, 31 May 2020 21:45:06 +0800
In-Reply-To: <SN6PR04MB464015BDF84DF7A9779BEB41FC8D0@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200529092310.1106-1-stanley.chu@mediatek.com>
 <20200529092310.1106-2-stanley.chu@mediatek.com>
 <SN6PR04MB464015BDF84DF7A9779BEB41FC8D0@SN6PR04MB4640.namprd04.prod.outlook.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_064519_687710_0DF2A749 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "pengshun.zhao@mediatek.com" <pengshun.zhao@mediatek.com>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "cc.chou@mediatek.com" <cc.chou@mediatek.com>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "beanhuo@micron.com" <beanhuo@micron.com>,
 "chaotian.jing@mediatek.com" <chaotian.jing@mediatek.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Avri,

On Sun, 2020-05-31 at 07:10 +0000, Avri Altman wrote:
> > 
> > Currently ref-clk control timeout is implemented by Jiffies. However
> > jiffies is not accurate enough thus "false timeout" may happen.
> > 
> > Use more accurate delay mechanism instead, for example, ktime.
> > 
> > Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> > Reviewed-by: Andy Teng <andy.teng@mediatek.com>
> Reviewed-by: Avri Altman <avri.altman@wdc.com>
> 

Thanks for your review.

> > 
> >         /* Wait for ack */
> > -       timeout = jiffies + msecs_to_jiffies(REFCLK_REQ_TIMEOUT_MS);
> > +       timeout = ktime_add_us(ktime_get(), REFCLK_REQ_TIMEOUT_US);
> >         do {
> > +               time_checked = ktime_get();
> >                 value = ufshcd_readl(hba, REG_UFS_REFCLK_CTRL);
> > 
> >                 /* Wait until ack bit equals to req bit */
> > @@ -144,7 +145,7 @@ static int ufs_mtk_setup_ref_clk(struct ufs_hba *hba,
> > bool on)
> >                         goto out;
> > 
> >                 usleep_range(100, 200);
> > -       } while (time_before(jiffies, timeout));
> > +       } while (ktime_before(time_checked, timeout));
> Nit: you could get rid of time_checked if you would use ktime_compare(ktime_get(), timeout) > 0
> 
> Thanks,
> Avri

If this context is preempted and scheduled out between ufshcd_readl()
and ktime_compare(ktime_get(), timeout), then the ktime_get() may get a
"timed-out" time even though the last ufshcd_readl() is actually
executed before the "timed-out" time. In this case, false alarm will
show up. Using "time_checked" here could solve above issue.

Thanks,
Stanley Chu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

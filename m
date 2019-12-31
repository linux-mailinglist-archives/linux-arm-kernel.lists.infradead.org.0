Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E681712D6E1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 08:51:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LmQmmWeN0kqGbDgXhkbCR2kLaayK+NISVpOj9X/BaMA=; b=o2ZT12lcshMyLV
	qO4Di6lkSj5fEz9fRiVfsUnikTrKMew5s8wsSFjdhlo5KvAK5SNxh9TExQtZA3QqNlzZhwOegJjRh
	LU+ti3iLRslhlXfvcnQOceHo3TrU37SqyzV4LcQaNJ07RBlZ9YSbmjfdROxvyNJLFtjQMi9oJT9T8
	ra0b5WzbXT4SUMJm4BCrk3LDhhWQYYBF4SVvURgM+prK2jYhfka2b7FmTxFGZ7apFHWyJMa+zOxgx
	AiKDJ71JV9NpK52h28yVLDxtS6rY44Z8D1FZHC3AEugvL+u9OiIlgSPCuyoSzDdeU1QORUIwJX++A
	k5EiXlVBJ73OkeIgv4ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imCJo-0007Yf-9j; Tue, 31 Dec 2019 07:51:56 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imCJc-0007Xa-Ay; Tue, 31 Dec 2019 07:51:45 +0000
X-UUID: cf0a849ff3b34751a89a2312357c3bf6-20191230
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=G3qstG1VMSmVPYGxJvUnbDb79Y6VwOFhgHb1R1BPAB4=; 
 b=sd2ARO9ZcLQg+xPUgoNfM0dwG0ZQfhw0lKWKHnqr+5d8syR7SPOPjSP77c/bveshPhmXBF9Ohsx4uf/I7Wu1Mou/hhpX7QwamGqDOjS3c/cUK7VlxkFABt4efIXd6NCfr+Ih4jG58MZ9EpgbVHbmRGNaBQBubzs6tibmesJZvQ8=;
X-UUID: cf0a849ff3b34751a89a2312357c3bf6-20191230
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1932347968; Mon, 30 Dec 2019 23:51:33 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 30 Dec 2019 23:45:16 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 31 Dec 2019 15:44:06 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 31 Dec 2019 15:43:33 +0800
Message-ID: <1577778290.13164.45.camel@mtkswgap22>
Subject: Re: [PATCH v1 1/2] scsi: ufs: set device as default active power
 mode during initialization only
From: Stanley Chu <stanley.chu@mediatek.com>
To: Can Guo <cang@codeaurora.org>
Date: Tue, 31 Dec 2019 15:44:50 +0800
In-Reply-To: <1577766179.13164.24.camel@mtkswgap22>
References: <1577693546-7598-1-git-send-email-stanley.chu@mediatek.com>
 <1577693546-7598-2-git-send-email-stanley.chu@mediatek.com>
 <fd129b859c013852bd80f60a36425757@codeaurora.org>
 <1577754469.13164.5.camel@mtkswgap22>
 <836772092daffd8283a97d633e59fc34@codeaurora.org>
 <1577766179.13164.24.camel@mtkswgap22>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 45FB1168EF4BF48378D8C06BB302A9DF542A4E7C9858C67C2092FB067919067B2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_235144_387904_344DC4F3 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: martin.petersen@oracle.com, linux-scsi@vger.kernel.org,
 andy.teng@mediatek.com, jejb@linux.ibm.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, asutoshd@codeaurora.org, avri.altman@wdc.com,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 linux-scsi-owner@vger.kernel.org, subhashj@codeaurora.org,
 alim.akhtar@samsung.com, beanhuo@micron.com, pedrom.sousa@synopsys.com,
 bvanassche@acm.org, linux-arm-kernel@lists.infradead.org,
 matthias.bgg@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Can,

On Tue, 2019-12-31 at 12:22 +0800, Stanley Chu wrote:
> Hi Can,
> 
> 
> > Hi Stanley,
> > 
> > I see skipping ufshcd_set_ufs_dev_active() in ufshcd_probe_hba()
> > if it is called from ufshcd_resume() path is the purpose here.
> > 
> > If so, then ufshcd_set_dev_pwr_mode() would be called, meaning
> > SSU command will be sent. Why is this SSU command needed to be
> > sent after a full host reset and restore? Is ufshcd_probe_hba()
> > not enough to make UFS device fully functional?
> 
> After resume (for both runtime resume and system resume), device power
> mode shall be back to "Active" to service incoming requests.
> 
> I see two cases need device power mode transition during resume flow
> 1. Device Power Mode = Sleep
> 2. Device Power Mode = PowerDown
> 
> For 1, ufshcd_probe_hba() is not invoked during resume flow,
> hba->curr_dev_pwr_mode = SLEEP, thus ufshcd_resume() can invoke
> ufshcd_set_dev_pwr_mode() to change device power mode.
> 
> For 2, ufshcd_probe_hba() is invoked during resume flow, before this
> fix, hba->curr_dev_pwr_mode will be set to ACTIVE (note that only this
> flag is set as ACTIVE, but device may be still in PowerDown state if
> device power is not fully shutdown or device HW reset is not executed
> before resume), in the end, ufshcd_resume() will not invoke
> ufshcd_set_dev_pwr_mode() to send SSU command to make device change back
> to Active power mode.
> 
> But if device is fully reset before resume (not by current mainstream
> driver), device can be already in "Active" power mode after power on
> again during resume flow. In this case, it is OK to set
> hba->curr_dev_pwr_mode as ACTIVE in ufshcd_probe_hba() and SSU command
> is not necessary.
> 
> Thanks,
> Stanley

I think currently the assumption in ufshcd_probe_hba() that "device
shall be already in Active power mode" makes sense because many device
commands will be sent to device in ufshcd_probe_hba() but device is not
promised to handle those commands in PowerDown power mode according to
UFS spec. 

So, maybe always ensuring device being Active power mode before leaving
ufshcd_probe_hba() is more reasonable. If so, I will drop this patch
first.

Thanks so much for your reviews.

Happy new year!

Thanks,
Stanley



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

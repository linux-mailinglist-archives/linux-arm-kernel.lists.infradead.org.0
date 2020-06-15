Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED34F1F8FF5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 09:33:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+RC3FhIydnj2jO/JwDC7KvPpsTkkRNco/s9AxvaJY5w=; b=Fh1PtGaXFrzkSn
	vGNZpzI3b9eY+RVJ4qqHhVigor7yFNfNw+RHcSo9hHWY6Isrp48+GeQHeEwmm5dtct9H8PHqSlTB0
	IXEtmhHMHk3gzFzqj5T23aRp1xW6tFyQbOm6m/ZNv+0YIsVRaRCZ/N3nU/+cMCDKfXfn7BqT4mgNt
	HT+HnUa+IqqwwOzfL6dHidscOwQYM6g15d9nCz0OzMWk/p+/U7d2WU1SJDC9hlGO1xUDMyzVpiRoo
	54xAGD9btCEnxtPskB91iCBXu8tp0u5E4FIBYmvS/anASBDzSwD03CJ0BbtfpIPDmqAt5Tt+8AXoB
	wJn8ra/ZTxYqFICdFRrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkjcv-0003vh-5o; Mon, 15 Jun 2020 07:33:53 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkjci-0003un-AW; Mon, 15 Jun 2020 07:33:42 +0000
X-UUID: 93e2138e26d2435cbcc2d118c25037e7-20200614
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=qBTmmysW9mKb6RFIDfIeX1e+1dXzsBfF2+qumyv3dGk=; 
 b=o8c0FPcpuBDXKePFQOGk+QKCHcz4v/jOU34m+VhL7h6DVFLkcvEozZ2PeDQj2ZpDet6LHAUl/Bfuw/tfDoOvprX9Qmj+zh6lEAtMCJuQdePNol5ZvD78uT1SeCRnmLNK7n3zW/hOWNBJ0USkzTDU01rY/SevStDsR8aJyg8Z/vg=;
X-UUID: 93e2138e26d2435cbcc2d118c25037e7-20200614
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1397883174; Sun, 14 Jun 2020 23:33:36 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 00:24:05 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 15:24:03 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 15 Jun 2020 15:24:02 +0800
Message-ID: <1592205843.25636.82.camel@mtkswgap22>
Subject: RE: [PATCH v2 2/2] scsi: ufs: Add trace event for UIC commands
From: Stanley Chu <stanley.chu@mediatek.com>
To: Avri Altman <Avri.Altman@wdc.com>
Date: Mon, 15 Jun 2020 15:24:03 +0800
In-Reply-To: <SN6PR04MB46400CE00A5CAF16CE4D4367FC9C0@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200615064753.20935-1-stanley.chu@mediatek.com>
 <20200615064753.20935-3-stanley.chu@mediatek.com>
 <SN6PR04MB46400CE00A5CAF16CE4D4367FC9C0@SN6PR04MB4640.namprd04.prod.outlook.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: CCA224B35034D6AA6CDD7520EB7BDB9D9CA9E88F74510A9DD30EC7E85C9088CB2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_003341_655485_BA9BFEAF 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
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
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>,
 "chaotian.jing@mediatek.com" <chaotian.jing@mediatek.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Avri,

On Mon, 2020-06-15 at 07:13 +0000, Avri Altman wrote:
> >         /* Write UIC Cmd */
> >         ufshcd_writel(hba, uic_cmd->command & COMMAND_OPCODE_MASK,
> >                       REG_UIC_COMMAND);
> > @@ -4825,11 +4847,15 @@ static irqreturn_t ufshcd_uic_cmd_compl(struct
> > ufs_hba *hba, u32 intr_status)
> >                         ufshcd_get_uic_cmd_result(hba);
> >                 hba->active_uic_cmd->argument3 =
> >                         ufshcd_get_dme_attr_val(hba);
> > +               ufshcd_add_uic_command_trace(hba, hba->active_uic_cmd,
> > +                                            "complete");
> >                 complete(&hba->active_uic_cmd->done);
> >                 retval = IRQ_HANDLED;
> >         }
> > 
> >         if ((intr_status & UFSHCD_UIC_PWR_MASK) && hba->uic_async_done) {
> > +               ufshcd_add_uic_command_trace(hba, hba->active_uic_cmd,
> > +                                            "complete");
> >                 complete(hba->uic_async_done);
> >                 retval = IRQ_HANDLED;
> 
> 
> Why not call ufshcd_add_uic_command_trace once if retval == IRQ_HANDLED?
> Is it that the exact timestamp?

Thanks! This makes the code cleaner.
Fixed in v3.

Stanley Chu
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

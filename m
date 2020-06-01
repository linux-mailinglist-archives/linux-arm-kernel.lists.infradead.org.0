Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B78D1E9F59
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 09:35:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mL8+ZtouEqvPLayFnITHXPw2KOq3WgQ17lWCN/t8Vfo=; b=F4SPz/E2sVZ1Rj
	3t6fkQujTFfnI2CWCtICmqTcanf1X0I7/F/9a5s6FSFn+Utc/JFDch68JrHRwX4oLo6Uy1nze72qR
	Ht+P6oeNphb+W63vgSWI8W4fJ/fK7rV47j3Y6mRFLSgd48rGKxgrI8jVY08mCCzvDDl7R2H9eP+xj
	arZMTd/G70n2dVPrkNex6NbUp9ObO5rJUW1C9JAcfQEgYnKxNmPoPvaz5lL2tj2NRPPaUhvQphS2g
	y/zOooCzFzGoCSFIP9IIp3Qgoz4MAypeFYICCnja6LbNQQJpId3xdm/y/6PzbDtoxdTrudj0ya3sE
	OeDcG0m2oIc+hnDSbTbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfez3-00005f-M9; Mon, 01 Jun 2020 07:35:45 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfeyv-0008WT-V0; Mon, 01 Jun 2020 07:35:39 +0000
X-UUID: 09fea8762d69446c8663b2b563b39ff3-20200531
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=NTVuyzYbTFO6DFfp2wMnvMERcsSISRnV9jG7gsuPvng=; 
 b=p2waj1F149vQe/RvJ1Fnw9HP3qt2JNm0TZDTq1x+XyMp8D+Abtes359bvUrJzjqJldrMytdlrWw1sEKE7bPJeLQFCDHZZTPNCRtTFZMzCkXQNwpZ+K2TlwusuaeolRpfgxDtXnPvDAwZvSXxnPSS6W0TwDptFstNmI09gLTDy6s=;
X-UUID: 09fea8762d69446c8663b2b563b39ff3-20200531
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 175440630; Sun, 31 May 2020 23:35:16 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 1 Jun 2020 00:25:26 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 1 Jun 2020 15:25:25 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 1 Jun 2020 15:25:24 +0800
Message-ID: <1590996325.25636.30.camel@mtkswgap22>
Subject: RE: [PATCH v1 1/2] scsi: ufs: Support WriteBooster on Samsung UFS
 devices
From: Stanley Chu <stanley.chu@mediatek.com>
To: Avri Altman <Avri.Altman@wdc.com>
Date: Mon, 1 Jun 2020 15:25:25 +0800
In-Reply-To: <SN6PR04MB46400873245235EA56838A19FC8C0@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200530151337.6182-1-stanley.chu@mediatek.com>
 <20200530151337.6182-2-stanley.chu@mediatek.com>
 <SN6PR04MB46400873245235EA56838A19FC8C0@SN6PR04MB4640.namprd04.prod.outlook.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: CA49A87DC9E16E8F08365655C751610B75A6F21121B1FD7877FDA8D5650F85E22000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_003538_018217_047FEE04 
X-CRM114-Status: GOOD (  18.86  )
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

On Sat, 2020-05-30 at 20:37 +0000, Avri Altman wrote:
> > @@ -2801,11 +2801,17 @@ int ufshcd_query_flag(struct ufs_hba *hba, enum
> > query_opcode opcode,
> >  {
> >         struct ufs_query_req *request = NULL;
> >         struct ufs_query_res *response = NULL;
> > -       int err, selector = 0;
> > +       int err;
> >         int timeout = QUERY_REQ_TIMEOUT;
> > +       u8 selector = 0;
> > 
> >         BUG_ON(!hba);
> > 
> > +       if (hba->dev_quirks & UFS_DEVICE_QUIRK_WB_SPECIAL_SELECTOR) {
> > +               if (ufshcd_is_wb_flags(idn))
> > +                       selector = 1;
> > +       }
> > +
> Why not make the caller set the applicable selector,
> Instead of checking this for every flag?

This way have the minimum modification efforts and places compared to
other ways. However it looks a little wired because the selector control
is better assigned by users. I will submit next version with changing
the way selector assigned for comparison.

> 
> >         ufshcd_hold(hba, false);
> >         mutex_lock(&hba->dev_cmd.lock);
> >         ufshcd_init_query(hba, &request, &response, opcode, idn, index,
> > @@ -2882,6 +2888,11 @@ int ufshcd_query_attr(struct ufs_hba *hba, enum
> > query_opcode opcode,
> >                 goto out;
> >         }
> > 
> > +       if (hba->dev_quirks & UFS_DEVICE_QUIRK_WB_SPECIAL_SELECTOR) {
> > +               if (ufshcd_is_wb_attrs(idn))
> > +                       selector = 1;
> > +       }
> > +
> Same here
> 
> >         mutex_lock(&hba->dev_cmd.lock);
> >         ufshcd_init_query(hba, &request, &response, opcode, idn, index,
> >                         selector);
> > @@ -3042,6 +3053,11 @@ int ufshcd_query_descriptor_retry(struct ufs_hba
> > *hba,
> >         int err;
> >         int retries;
> > 
> > +       if (hba->dev_quirks & UFS_DEVICE_QUIRK_WB_SPECIAL_SELECTOR) {
> > +               if (ufshcd_is_wb_desc(idn, index))
> > +                       selector = 1;
> > +       }
> > +
> And here.
> But this can't be true - 
> Are you setting the selector = 1 for reading any field for those descriptors?
> Shouldn't it be for the wb specific fields?

Yes, thanks for remind this.
I shall assign selector = 1 for WB related fields only in descriptors.

>  
> 
> >         for (retries = QUERY_REQ_RETRIES; retries > 0; retries--) {
> >                 err = __ufshcd_query_descriptor(hba, opcode, idn, index,
> >                                                 selector, desc_buf, buf_len);
> > @@ -6907,8 +6923,10 @@ static int ufs_get_device_desc(struct ufs_hba *hba)
> >         size_t buff_len;
> >         u8 model_index;
> >         u8 *desc_buf;
> > +       u8 retry_cnt = 0;
> >         struct ufs_dev_info *dev_info = &hba->dev_info;
> > 
> > +retry:
> >         buff_len = max_t(size_t, hba->desc_size.dev_desc,
> >                          QUERY_DESC_MAX_SIZE + 1);
> >         desc_buf = kmalloc(buff_len, GFP_KERNEL);
> > @@ -6948,6 +6966,29 @@ static int ufs_get_device_desc(struct ufs_hba *hba)
> > 
> >         ufs_fixup_device_setup(hba);
> > 
> > +       if (!retry_cnt && (hba->dev_quirks &
> > +               UFS_DEVICE_QUIRK_WB_SPECIAL_SELECTOR)) {
> If you only want to enter this clause once - you should use something other than retry_cnt,
> Which the reader expects to performs retries....

OK! I will fix this label by using another more comprehensible name.
> 
> Also, this is becoming too wired - 
> From your commit log I get that for specific Samsung devices,
> You need to query wb descriptor fields/attributes/flags using selectore = 1.
> But what it has to do with descriptor sizes?

Sorry to not mention clearly in the commit log.

Here driver needs to update the descriptor size to a "longer size" which
includes the "hidden WB related fields" which can be "found" by selector
= 1.

If descriptor size is not updated, any query can only get the fields
offset within current descriptor size even if selector = 1, and
out-of-boundary desc_buf[] access will happen in
ufshcd_read_desc_param().

PS. The check of "param_offset" to prevent possible out-of-boundary
desc_buf[] access can be patched as well.


Thanks,
Stanley Chu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

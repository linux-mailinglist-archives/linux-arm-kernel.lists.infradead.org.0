Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B4E1CBFB8
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 11:15:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i1NaqY6D8lqdBbeFn00nfCV3pGwxLJ75v3pnB9Itz5c=; b=D1cglEl1kB5F3S
	sgxcmq81Dow5DIc17PmB5dLi+qUe16UJB3TNPmOyqjXPEX5we51sJBPjyNiEImyuUSzYQo7N7DnQ5
	9HF7C2XMNB8KSLeu4MrwyFG4BaLtlvfUbqNfaHnAIpg9FNp5eLbX2HX4ouTS3y+CTBu4EbfEjxsmm
	id8JvAKiez8aLRKXXIk2umxgazpYOCVlWGMNBMm5q9aoijJ2G7pywDwpyPceBcuYNln2GmocQ1ULU
	nScsj9iNgqx4s9+elL6X9W+KsWkoowRNP0rTL2Gb6yrP9DAQBlqh0Q2Mokw91ntdpoYDYy+21lHaP
	YEn89zwx5J4KOQXOcpMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXLaD-0001Dx-F2; Sat, 09 May 2020 09:15:45 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXLa5-0001DB-KE; Sat, 09 May 2020 09:15:39 +0000
X-UUID: 162dda43d1b645b78fb7c6be10ca41e4-20200509
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=9Lb29hO5PeItPueSz5Wf3YcpdQaQo/KG2QCEVEztjPI=; 
 b=N887FmWev6aw6uiDMBrnf2BfTSmJS+8F8YYfHzW5VGrFjlTgbRxO+YdetjVYHn+v7rySJUUYfbbOqbPe0NyyKRwEVwGgq8Z0qqXanECLJDdHs5ZijuNAs0klU9M3qMWs/wORSa/TFr4jHUJLAPSBtFN3DkWEeezYTzIpKlsG13o=;
X-UUID: 162dda43d1b645b78fb7c6be10ca41e4-20200509
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 59785960; Sat, 09 May 2020 01:15:15 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 9 May 2020 02:15:19 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 9 May 2020 17:15:06 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sat, 9 May 2020 17:15:07 +0800
Message-ID: <1589015708.3197.46.camel@mtkswgap22>
Subject: Re: [PATCH v1 3/5] scsi: ufs: customize flush threshold for
 WriteBooster
From: Stanley Chu <stanley.chu@mediatek.com>
To: "Asutosh Das (asd)" <asutoshd@codeaurora.org>
Date: Sat, 9 May 2020 17:15:08 +0800
In-Reply-To: <4196ff98-093e-3708-d166-a7a7c6046c57@codeaurora.org>
References: <20200508171513.14665-1-stanley.chu@mediatek.com>
 <20200508171513.14665-4-stanley.chu@mediatek.com>
 <4196ff98-093e-3708-d166-a7a7c6046c57@codeaurora.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_021537_670291_9219F6AD 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 andy.teng@mediatek.com, jejb@linux.ibm.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, avri.altman@wdc.com,
 cang@codeaurora.org, linux-mediatek@lists.infradead.org,
 peter.wang@mediatek.com, alim.akhtar@samsung.com, matthias.bgg@gmail.com,
 bvanassche@acm.org, linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Asutosh,

Thanks for your review.

On Fri, 2020-05-08 at 11:12 -0700, Asutosh Das (asd) wrote:
> On 5/8/2020 10:15 AM, Stanley Chu wrote:
> > Allow flush threshold for WriteBooster to be customizable by
> > vendors. To achieve this, make the value as a variable in struct
> > ufs_hba first.
> > 
> > Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> > ---
> >   drivers/scsi/ufs/ufshcd.c | 6 ++++--
> >   drivers/scsi/ufs/ufshcd.h | 1 +
> >   2 files changed, 5 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> > index cdacbe6378a1..9a0ce6550c2f 100644
> > --- a/drivers/scsi/ufs/ufshcd.c
> > +++ b/drivers/scsi/ufs/ufshcd.c
> > @@ -5301,8 +5301,8 @@ static bool ufshcd_wb_presrv_usrspc_keep_vcc_on(struct ufs_hba *hba,
> >   			 cur_buf);
> >   		return false;
> >   	}
> > -	/* Let it continue to flush when >60% full */
> > -	if (avail_buf < UFS_WB_40_PERCENT_BUF_REMAIN)
> > +	/* Let it continue to flush when available buffer exceeds threshold */
> > +	if (avail_buf < hba->vps->wb_flush_threshold)
> >   		return true;
> >   
> >   	return false;
> > @@ -6839,6 +6839,7 @@ static void ufshcd_wb_probe(struct ufs_hba *hba, u8 *desc_buf)
> >   		if (!d_lu_wb_buf_alloc)
> >   			goto wb_disabled;
> >   	}
> > +
> Is this newline needed?

Oops, I will remove this in next version.
> 
> >   	return;
> >   
> >   wb_disabled:
> > @@ -7462,6 +7463,7 @@ static const struct attribute_group *ufshcd_driver_groups[] = {
> >   
> >   static struct ufs_hba_variant_params ufs_hba_vps = {
> >   	.hba_enable_delay_us		= 1000,
> > +	.wb_flush_threshold		= UFS_WB_40_PERCENT_BUF_REMAIN,
> >   	.devfreq_profile.polling_ms	= 100,
> >   	.devfreq_profile.target		= ufshcd_devfreq_target,
> >   	.devfreq_profile.get_dev_status	= ufshcd_devfreq_get_dev_status,
> > diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
> > index f7bdf52ba8b0..e3dfb48e669e 100644
> > --- a/drivers/scsi/ufs/ufshcd.h
> > +++ b/drivers/scsi/ufs/ufshcd.h
> > @@ -570,6 +570,7 @@ struct ufs_hba_variant_params {
> >   	struct devfreq_dev_profile devfreq_profile;
> >   	struct devfreq_simple_ondemand_data ondemand_data;
> >   	u16 hba_enable_delay_us;
> > +	u32 wb_flush_threshold;
> >   };
> >   
> >   /**
> > 
> 
> Patch[3] & [4] may be combined into a single patch perhaps?
> Patch[4] just redoes what [3] did in a different way, so might as well 
> just do what patch[4] does right away.

OK! I will try to merge both to a single patch in next version.
Let me know if you have any other comments for the whole series.

Thanks,
Stanley Chu

> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

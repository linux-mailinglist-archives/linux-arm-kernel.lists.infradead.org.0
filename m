Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F31B21CB6C6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 20:12:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wiH/RwuuozObqhMLiXh0Nur46ILf+uaTPM0On0ojPPY=; b=Lx40uMeA6553AmuwkCamzMu8V
	qlfqecJ0iVvfvoLyot9b+VJf/EyTeie8eiO6pwG9fv43j/JaHARwphFX18fseHZorOeK6FUytz8Mb
	0H/xcz2p8UhabN1Q7m93RNj+Ad17O2YacQ1q7BNLHXou4BjprKl5qCUheC5sTomsLuKW7lDVRkeWK
	nh15D1A6nmxNW43vQ9QjRxAVKFJbzA3ekmNdYlJFnvzxro0Iarbuo8xJawVRuECL/hmUHtuY+ouIW
	JrBqXM/dDPNdUt7WfFdLunai+JHGso8YoYOhl9ggtyUn/0LXfPP27ZNCVkjJuGwr0aMY9Hn2bi9zd
	gKBUxTCug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX7UQ-000478-Vb; Fri, 08 May 2020 18:12:51 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX7U8-0003yU-Ct
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 18:12:36 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588961554; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=wPiyQjSJF8vUdRxJrjwFgYJTIXhq+dC/nAsEoueYbiA=;
 b=P8Qwb/7mQf4LJMQpSpqJ+bkCnTzHpDT38Ijj4qb4VEcWYoofcmIW5PLRbe6HOpun7lyUZO5O
 Rcklyc4rjHOLGERpGPhbj9P36hvD7EEte+5LJFOiJ8t8IyxMZAymZ5vMx/bKA5qUlVZ0nMEU
 pQEPP96qF/GfbSoljLFlLEc4AeE=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb5a10a.7f0590c69618-smtp-out-n01;
 Fri, 08 May 2020 18:12:26 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id A759AC433BA; Fri,  8 May 2020 18:12:25 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [192.168.8.176] (cpe-70-95-149-85.san.res.rr.com [70.95.149.85])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: asutoshd)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0B44CC433D2;
 Fri,  8 May 2020 18:12:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0B44CC433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=asutoshd@codeaurora.org
Subject: Re: [PATCH v1 3/5] scsi: ufs: customize flush threshold for
 WriteBooster
To: Stanley Chu <stanley.chu@mediatek.com>, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, avri.altman@wdc.com, alim.akhtar@samsung.com,
 jejb@linux.ibm.com
References: <20200508171513.14665-1-stanley.chu@mediatek.com>
 <20200508171513.14665-4-stanley.chu@mediatek.com>
From: "Asutosh Das (asd)" <asutoshd@codeaurora.org>
Message-ID: <4196ff98-093e-3708-d166-a7a7c6046c57@codeaurora.org>
Date: Fri, 8 May 2020 11:12:23 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200508171513.14665-4-stanley.chu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_111234_789703_78F4784E 
X-CRM114-Status: GOOD (  21.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.26 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/8/2020 10:15 AM, Stanley Chu wrote:
> Allow flush threshold for WriteBooster to be customizable by
> vendors. To achieve this, make the value as a variable in struct
> ufs_hba first.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> ---
>   drivers/scsi/ufs/ufshcd.c | 6 ++++--
>   drivers/scsi/ufs/ufshcd.h | 1 +
>   2 files changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index cdacbe6378a1..9a0ce6550c2f 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -5301,8 +5301,8 @@ static bool ufshcd_wb_presrv_usrspc_keep_vcc_on(struct ufs_hba *hba,
>   			 cur_buf);
>   		return false;
>   	}
> -	/* Let it continue to flush when >60% full */
> -	if (avail_buf < UFS_WB_40_PERCENT_BUF_REMAIN)
> +	/* Let it continue to flush when available buffer exceeds threshold */
> +	if (avail_buf < hba->vps->wb_flush_threshold)
>   		return true;
>   
>   	return false;
> @@ -6839,6 +6839,7 @@ static void ufshcd_wb_probe(struct ufs_hba *hba, u8 *desc_buf)
>   		if (!d_lu_wb_buf_alloc)
>   			goto wb_disabled;
>   	}
> +
Is this newline needed?

>   	return;
>   
>   wb_disabled:
> @@ -7462,6 +7463,7 @@ static const struct attribute_group *ufshcd_driver_groups[] = {
>   
>   static struct ufs_hba_variant_params ufs_hba_vps = {
>   	.hba_enable_delay_us		= 1000,
> +	.wb_flush_threshold		= UFS_WB_40_PERCENT_BUF_REMAIN,
>   	.devfreq_profile.polling_ms	= 100,
>   	.devfreq_profile.target		= ufshcd_devfreq_target,
>   	.devfreq_profile.get_dev_status	= ufshcd_devfreq_get_dev_status,
> diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
> index f7bdf52ba8b0..e3dfb48e669e 100644
> --- a/drivers/scsi/ufs/ufshcd.h
> +++ b/drivers/scsi/ufs/ufshcd.h
> @@ -570,6 +570,7 @@ struct ufs_hba_variant_params {
>   	struct devfreq_dev_profile devfreq_profile;
>   	struct devfreq_simple_ondemand_data ondemand_data;
>   	u16 hba_enable_delay_us;
> +	u32 wb_flush_threshold;
>   };
>   
>   /**
> 

Patch[3] & [4] may be combined into a single patch perhaps?
Patch[4] just redoes what [3] did in a different way, so might as well 
just do what patch[4] does right away.


-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

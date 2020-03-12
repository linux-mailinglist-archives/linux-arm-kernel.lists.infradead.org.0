Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A47791837B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 18:34:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mlILEb0+yHQByBEzz0lXNCqPLKFonQOLv9Ix7EKSKOU=; b=Oof7bo2HLvTKxD0/5MU+N9UsW
	6H8T/Xn7EX0/RV+FZ/fYw1hKHASQjU+VPzhO2uz4e4JCEvwOW7rU4QAXddcOATfUijbizgV+SjIcr
	JFEwe3KSKCVJy7t1eayqqK3not3ZfiFt2FC1GKD1NO2IFLeMFGUYkAIa96VwTo3q8nRQy32elrNg0
	2stI5xbUNUiQgkBbXIm0x9QZADVF14bHZXtDTjVNYEhXQStum0b0/xG2fngXYTbQ3efUze0DtH4mp
	/gxgXmINM6GXXg/dRrHj8zk38cEEnR5jwfVLjjE/my34XUlUhN2FUMmlPT31vl+THhiuai/ZL9x74
	75D+vke8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCRj1-0001Ja-TW; Thu, 12 Mar 2020 17:34:27 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCRim-0001Hp-IE
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 17:34:17 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1584034455; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=Yv5Z2WSkUNGiz0RnTA13WsE0rkZ/Ii3R3mKkEmh3yWY=;
 b=dcusUA+ku9pMB7Z+tOcyUERIPK+33BH7Wm0pTzezL+FUOiAQ3/QJn+2dkVSjivX3HprD+lZj
 /pw/f0l3HOx/gM8UrrFkezAN/JyyMGk1iA7xVMFdANjv8IG3thQjcWQkJMLW9Ly1hYIyVc8f
 HCfS2aocf6njnVAQOcoX4+NLdlE=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e6a727d.7f52d794b2d0-smtp-out-n01;
 Thu, 12 Mar 2020 17:33:49 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 3D579C433BA; Thu, 12 Mar 2020 17:33:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [10.46.161.159] (i-global254.qualcomm.com [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: asutoshd)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 68064C433D2;
 Thu, 12 Mar 2020 17:33:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 68064C433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=asutoshd@codeaurora.org
Subject: Re: [PATCH v2 2/8] scsi: ufs: remove init_prefetch_data in struct
 ufs_hba
To: Stanley Chu <stanley.chu@mediatek.com>, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, avri.altman@wdc.com, alim.akhtar@samsung.com,
 jejb@linux.ibm.com
References: <20200312110908.14895-1-stanley.chu@mediatek.com>
 <20200312110908.14895-3-stanley.chu@mediatek.com>
From: "Asutosh Das (asd)" <asutoshd@codeaurora.org>
Message-ID: <2e958801-81f0-d650-cad3-ada0b04ac972@codeaurora.org>
Date: Thu, 12 Mar 2020 10:33:45 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200312110908.14895-3-stanley.chu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_103416_004563_55DC409F 
X-CRM114-Status: GOOD (  19.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On 3/12/2020 4:09 AM, Stanley Chu wrote:
> Struct init_prefetch_data currently is used privately in
> ufshcd_init_icc_levels(), thus it can be removed from struct ufs_hba.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> ---

Reviewed-by: Asutosh Das <asutoshd@codeaurora.org>
>   drivers/scsi/ufs/ufshcd.c | 15 ++++++---------
>   drivers/scsi/ufs/ufshcd.h | 11 -----------
>   2 files changed, 6 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index 314e808b0d4e..b4988b9ee36c 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -6501,6 +6501,7 @@ static void ufshcd_init_icc_levels(struct ufs_hba *hba)
>   {
>   	int ret;
>   	int buff_len = hba->desc_size.pwr_desc;
> +	u32 icc_level;
>   	u8 *desc_buf;
>   
>   	desc_buf = kmalloc(buff_len, GFP_KERNEL);
> @@ -6516,21 +6517,17 @@ static void ufshcd_init_icc_levels(struct ufs_hba *hba)
>   		goto out;
>   	}
>   
> -	hba->init_prefetch_data.icc_level =
> -			ufshcd_find_max_sup_active_icc_level(hba,
> -			desc_buf, buff_len);
> -	dev_dbg(hba->dev, "%s: setting icc_level 0x%x",
> -			__func__, hba->init_prefetch_data.icc_level);
> +	icc_level =
> +		ufshcd_find_max_sup_active_icc_level(hba, desc_buf, buff_len);
> +	dev_dbg(hba->dev, "%s: setting icc_level 0x%x",	__func__, icc_level);
>   
>   	ret = ufshcd_query_attr_retry(hba, UPIU_QUERY_OPCODE_WRITE_ATTR,
> -		QUERY_ATTR_IDN_ACTIVE_ICC_LVL, 0, 0,
> -		&hba->init_prefetch_data.icc_level);
> +		QUERY_ATTR_IDN_ACTIVE_ICC_LVL, 0, 0, &icc_level);
>   
>   	if (ret)
>   		dev_err(hba->dev,
>   			"%s: Failed configuring bActiveICCLevel = %d ret = %d",
> -			__func__, hba->init_prefetch_data.icc_level , ret);
> -
> +			__func__, icc_level, ret);
>   out:
>   	kfree(desc_buf);
>   }
> diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
> index 5c10777154fc..5cf79d2319a6 100644
> --- a/drivers/scsi/ufs/ufshcd.h
> +++ b/drivers/scsi/ufs/ufshcd.h
> @@ -402,15 +402,6 @@ struct ufs_clk_scaling {
>   	bool is_suspended;
>   };
>   
> -/**
> - * struct ufs_init_prefetch - contains data that is pre-fetched once during
> - * initialization
> - * @icc_level: icc level which was read during initialization
> - */
> -struct ufs_init_prefetch {
> -	u32 icc_level;
> -};
> -
>   #define UFS_ERR_REG_HIST_LENGTH 8
>   /**
>    * struct ufs_err_reg_hist - keeps history of errors
> @@ -541,7 +532,6 @@ enum ufshcd_quirks {
>    * @intr_mask: Interrupt Mask Bits
>    * @ee_ctrl_mask: Exception event control mask
>    * @is_powered: flag to check if HBA is powered
> - * @init_prefetch_data: data pre-fetched during initialization
>    * @eh_work: Worker to handle UFS errors that require s/w attention
>    * @eeh_work: Worker to handle exception events
>    * @errors: HBA errors
> @@ -627,7 +617,6 @@ struct ufs_hba {
>   	u32 intr_mask;
>   	u16 ee_ctrl_mask;
>   	bool is_powered;
> -	struct ufs_init_prefetch init_prefetch_data;
>   
>   	/* Work Queues */
>   	struct work_struct eh_work;
> 


-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

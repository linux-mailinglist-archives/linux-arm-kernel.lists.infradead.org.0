Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5616F1864FD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 07:26:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k/AVYcPx7XzTV/GHX3X7tNovLoIABecPyv5Aj2LrQSk=; b=t905GepvUQexEAhijRPkxXLMq
	Wr5k+EOzRX7ZidhB7Yu1Q/OrvB1ogPfIUgaBP4xfW3XFRe+4wSrHFFfT2goYqGAGzw5pqNSTcUbu8
	C3quXF8gt2uzqEhecF9xQxuZMQu0c1NdysPwMfvGVfnvELteFcXmQQltcNW6bkGb8kGbNvibFawSd
	M7Lbo81/rpscvxMkNHbhNWAL8noyXmNFKZwGAgy1ix9hdlhdY2ymgU2Ol950k0zZvAtIMSdMjan80
	01HquRNu3TEW9e7aC2z74qhK3Gn7LeVTTHn9JXOOW8AsLQQHjkysAlXYcB9eOWtjVDdv8U48IngDP
	UJbNsOWmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDjCD-0007q7-Eq; Mon, 16 Mar 2020 06:25:53 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDjC2-0007o6-Lj
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 06:25:46 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1584339945; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=UyuhZmeVdghEkFGq1LyGqfP9NwpUlzrusHvbYNXKk6I=;
 b=LBdFzdHLODUgdiLy5tYApAdXjuOttGRYNUHpIcwkRPe3P+aF+We3SRNJV5LR3dqw4fV3UQz4
 sV0dkulaMvql4JuqhVT319aH/zbw8LaGo8ueVe2LdHQM92JwpPgqvsfp4IcfnddblgywJ8kp
 BGXCYH44n+wF19HIcmxld5nRM3E=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e6f1bdd.7f12f7d531b8-smtp-out-n02;
 Mon, 16 Mar 2020 06:25:33 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id DFCA4C44788; Mon, 16 Mar 2020 06:25:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: cang)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 83A43C433CB;
 Mon, 16 Mar 2020 06:25:31 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 16 Mar 2020 14:25:31 +0800
From: Can Guo <cang@codeaurora.org>
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v5 2/8] scsi: ufs: remove init_prefetch_data in struct
 ufs_hba
In-Reply-To: <20200316034218.11914-3-stanley.chu@mediatek.com>
References: <20200316034218.11914-1-stanley.chu@mediatek.com>
 <20200316034218.11914-3-stanley.chu@mediatek.com>
Message-ID: <51fde835f4f03fcca6e83ba6d3579f2e@codeaurora.org>
X-Sender: cang@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_232545_571890_C47E2D4E 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: bvanassche@acm.org, linux-scsi@vger.kernel.org, andy.teng@mediatek.com,
 jejb@linux.ibm.com, chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, avri.altman@wdc.com, martin.peter~sen@oracle.com,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com, asutoshd@codeaurora.org,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-16 11:42, Stanley Chu wrote:
> Struct init_prefetch_data currently is used privately in
> ufshcd_init_icc_levels(), thus it can be removed from struct ufs_hba.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> Reviewed-by: Asutosh Das <asutoshd@codeaurora.org>
> Reviewed-by: Avri Altman <avri.altman@wdc.com>

Hi Stanley,

Earlier, I have one similar patch for this, but it does more than this.
Please check the mail I just sent.

Thanks,
Can Guo.

> ---
>  drivers/scsi/ufs/ufshcd.c | 15 ++++++---------
>  drivers/scsi/ufs/ufshcd.h | 11 -----------
>  2 files changed, 6 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index 314e808b0d4e..b4988b9ee36c 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -6501,6 +6501,7 @@ static void ufshcd_init_icc_levels(struct ufs_hba 
> *hba)
>  {
>  	int ret;
>  	int buff_len = hba->desc_size.pwr_desc;
> +	u32 icc_level;
>  	u8 *desc_buf;
> 
>  	desc_buf = kmalloc(buff_len, GFP_KERNEL);
> @@ -6516,21 +6517,17 @@ static void ufshcd_init_icc_levels(struct 
> ufs_hba *hba)
>  		goto out;
>  	}
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
>  	ret = ufshcd_query_attr_retry(hba, UPIU_QUERY_OPCODE_WRITE_ATTR,
> -		QUERY_ATTR_IDN_ACTIVE_ICC_LVL, 0, 0,
> -		&hba->init_prefetch_data.icc_level);
> +		QUERY_ATTR_IDN_ACTIVE_ICC_LVL, 0, 0, &icc_level);
> 
>  	if (ret)
>  		dev_err(hba->dev,
>  			"%s: Failed configuring bActiveICCLevel = %d ret = %d",
> -			__func__, hba->init_prefetch_data.icc_level , ret);
> -
> +			__func__, icc_level, ret);
>  out:
>  	kfree(desc_buf);
>  }
> diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
> index 5c10777154fc..5cf79d2319a6 100644
> --- a/drivers/scsi/ufs/ufshcd.h
> +++ b/drivers/scsi/ufs/ufshcd.h
> @@ -402,15 +402,6 @@ struct ufs_clk_scaling {
>  	bool is_suspended;
>  };
> 
> -/**
> - * struct ufs_init_prefetch - contains data that is pre-fetched once 
> during
> - * initialization
> - * @icc_level: icc level which was read during initialization
> - */
> -struct ufs_init_prefetch {
> -	u32 icc_level;
> -};
> -
>  #define UFS_ERR_REG_HIST_LENGTH 8
>  /**
>   * struct ufs_err_reg_hist - keeps history of errors
> @@ -541,7 +532,6 @@ enum ufshcd_quirks {
>   * @intr_mask: Interrupt Mask Bits
>   * @ee_ctrl_mask: Exception event control mask
>   * @is_powered: flag to check if HBA is powered
> - * @init_prefetch_data: data pre-fetched during initialization
>   * @eh_work: Worker to handle UFS errors that require s/w attention
>   * @eeh_work: Worker to handle exception events
>   * @errors: HBA errors
> @@ -627,7 +617,6 @@ struct ufs_hba {
>  	u32 intr_mask;
>  	u16 ee_ctrl_mask;
>  	bool is_powered;
> -	struct ufs_init_prefetch init_prefetch_data;
> 
>  	/* Work Queues */
>  	struct work_struct eh_work;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

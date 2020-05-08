Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 087C81CB4DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 18:19:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hYWaXeHs5YOmhQ00BuMWGZGnkgoHZisV2SgET28lvZk=; b=BiMQXJRPq++RsoNAJYpsG3Tml
	RAxeKpOCZwhkXX29Jwed49jgoV6Ev+4ZxEeugv2JbnUaCcslB0TqZ8hdtb1/RFbflZAV3To9g3FWR
	QJBfv3WC2Uvb03lSlVUS5G/Rbxh//zrmDHaV2DlHSqd3tRfdWnzVow4mSyhubOGitgNrYAa11vB0L
	iSMd6H4iXgWegle9QG9KFBpOBt9gf8uS+Ukd9fOTjHvngJ5SIVx0UhFLFPRmDyHPL4YCX0mHFdrHt
	dqFc4YkhCWR30sfKl5xuM3RfxcJEfpo9bq2XJ6AFobexQYL08ejgstizFK7MjkL0US/NAhuVjgyVE
	r1zr/F7rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX5j1-0005R8-Kb; Fri, 08 May 2020 16:19:47 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX5iu-0005Pl-2k
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 16:19:42 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588954780; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=Sehda5KYpri+SgmjTuPUNWxcMIV/yX17URV1EJd8KjM=;
 b=naEjpH4+XjFTxt9FQYTHyJAWyaHkHQ9dMu2Evw1yQrWQFi1KwEFmxnaezYYh4s2moQ54v2W6
 qy3MK8y/wn8w9EDWq8U/4JxL8o5A4MCBmhijpIh5QVntrziuoKFnH7ljLVrimgLKyxGYf4XZ
 TWKl4tsjqgKqkuTefMCf//Fiskk=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb5868d.7f9bac6812d0-smtp-out-n01;
 Fri, 08 May 2020 16:19:25 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 07043C43636; Fri,  8 May 2020 16:19:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [192.168.8.176] (cpe-70-95-149-85.san.res.rr.com [70.95.149.85])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: asutoshd)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id CCDF0C433D2;
 Fri,  8 May 2020 16:19:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org CCDF0C433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=asutoshd@codeaurora.org
Subject: Re: [PATCH v8 8/8] scsi: ufs: cleanup WriteBooster feature
To: Stanley Chu <stanley.chu@mediatek.com>, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, avri.altman@wdc.com, alim.akhtar@samsung.com,
 jejb@linux.ibm.com
References: <20200508080115.24233-1-stanley.chu@mediatek.com>
 <20200508080115.24233-9-stanley.chu@mediatek.com>
From: "Asutosh Das (asd)" <asutoshd@codeaurora.org>
Message-ID: <ca589cd1-bf28-7227-02d7-1c7789f6f6e9@codeaurora.org>
Date: Fri, 8 May 2020 09:19:22 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200508080115.24233-9-stanley.chu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_091940_911562_CA478B6A 
X-CRM114-Status: GOOD (  22.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.26 listed in wl.mailspike.net]
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

On 5/8/2020 1:01 AM, Stanley Chu wrote:
> Small cleanup as below items,
> 
> 1. Use ufshcd_is_wb_allowed() directly instead of ufshcd_wb_sup()
>     since ufshcd_wb_sup() just returns the result of
>     ufshcd_is_wb_allowed().
> 
> 2. In ufshcd_suspend(), "else if (!ufshcd_is_runtime_pm(pm_op))
>     can be simplified to "else" since both have the same meaning.
> 
> This patch does not change any functionality.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> Reviewed-by: Avri Altman <avri.altman@wdc.com>
> ---

The whole series looks good to me.

Reviewed-by: Asutosh Das <asutoshd@codeaurora.org>

>   drivers/scsi/ufs/ufshcd.c | 20 +++++++-------------
>   1 file changed, 7 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index b6a0d77d47ac..426073a518ef 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -253,7 +253,6 @@ static int ufshcd_scale_clks(struct ufs_hba *hba, bool scale_up);
>   static irqreturn_t ufshcd_intr(int irq, void *__hba);
>   static int ufshcd_change_power_mode(struct ufs_hba *hba,
>   			     struct ufs_pa_layer_attr *pwr_mode);
> -static bool ufshcd_wb_sup(struct ufs_hba *hba);
>   static int ufshcd_wb_buf_flush_enable(struct ufs_hba *hba);
>   static int ufshcd_wb_buf_flush_disable(struct ufs_hba *hba);
>   static int ufshcd_wb_ctrl(struct ufs_hba *hba, bool enable);
> @@ -285,7 +284,7 @@ static inline void ufshcd_wb_config(struct ufs_hba *hba)
>   {
>   	int ret;
>   
> -	if (!ufshcd_wb_sup(hba))
> +	if (!ufshcd_is_wb_allowed(hba))
>   		return;
>   
>   	ret = ufshcd_wb_ctrl(hba, true);
> @@ -5197,18 +5196,13 @@ static void ufshcd_bkops_exception_event_handler(struct ufs_hba *hba)
>   				__func__, err);
>   }
>   
> -static bool ufshcd_wb_sup(struct ufs_hba *hba)
> -{
> -	return ufshcd_is_wb_allowed(hba);
> -}
> -
>   static int ufshcd_wb_ctrl(struct ufs_hba *hba, bool enable)
>   {
>   	int ret;
>   	u8 index;
>   	enum query_opcode opcode;
>   
> -	if (!ufshcd_wb_sup(hba))
> +	if (!ufshcd_is_wb_allowed(hba))
>   		return 0;
>   
>   	if (!(enable ^ hba->wb_enabled))
> @@ -5264,7 +5258,7 @@ static int ufshcd_wb_buf_flush_enable(struct ufs_hba *hba)
>   	int ret;
>   	u8 index;
>   
> -	if (!ufshcd_wb_sup(hba) || hba->wb_buf_flush_enabled)
> +	if (!ufshcd_is_wb_allowed(hba) || hba->wb_buf_flush_enabled)
>   		return 0;
>   
>   	index = ufshcd_wb_get_flag_index(hba);
> @@ -5286,7 +5280,7 @@ static int ufshcd_wb_buf_flush_disable(struct ufs_hba *hba)
>   	int ret;
>   	u8 index;
>   
> -	if (!ufshcd_wb_sup(hba) || !hba->wb_buf_flush_enabled)
> +	if (!ufshcd_is_wb_allowed(hba) || !hba->wb_buf_flush_enabled)
>   		return 0;
>   
>   	index = ufshcd_wb_get_flag_index(hba);
> @@ -5336,7 +5330,7 @@ static bool ufshcd_wb_keep_vcc_on(struct ufs_hba *hba)
>   	int ret;
>   	u32 avail_buf;
>   
> -	if (!ufshcd_wb_sup(hba))
> +	if (!ufshcd_is_wb_allowed(hba))
>   		return false;
>   	/*
>   	 * The ufs device needs the vcc to be ON to flush.
> @@ -8235,12 +8229,12 @@ static int ufshcd_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
>   		 * configured WB type is 70% full, keep vcc ON
>   		 * for the device to flush the wb buffer
>   		 */
> -		if ((hba->auto_bkops_enabled && ufshcd_wb_sup(hba)) ||
> +		if ((hba->auto_bkops_enabled && ufshcd_is_wb_allowed(hba)) ||
>   		    ufshcd_wb_keep_vcc_on(hba))
>   			hba->dev_info.keep_vcc_on = true;
>   		else
>   			hba->dev_info.keep_vcc_on = false;
> -	} else if (!ufshcd_is_runtime_pm(pm_op)) {
> +	} else {
>   		hba->dev_info.keep_vcc_on = false;
>   	}
>   
> 


-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

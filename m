Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F861D3797
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 19:07:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=39BzQ3bhYAjZj9MVWmIvh2fcWTich0L2iN4192EL0mk=; b=bVwMlHOCZCYffZPL8c62ZAi2U
	cdWYpehIPkgGQvhwh+rUU0IVCkgVkOFCR0JwCBxWzRrxrbsA/vBAMApki559YF1wLjYURlmDuBWBA
	HLzUFYZGRSyNrgWTTHS8gJ+2IengBCIc4S8GeuDoQ3nlc0M0FuOOAiLoiExzLSguRdC5R3dvYjIg7
	luKCutWo5hclEetaj+QU9WdLM8XJjCwhYvd6JtoEroLI6X5lXI0eKSx9pyzRLGr1YdpRpQUYMmjAM
	53tOK/GuoVeIXZgktidCZ45szPJ1sfmge0t5Prt9xlr+zWxnBGdHe74Pb8/iKf1EVSsnPkk0G/viz
	PGFSUHuVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZHKI-00063L-NJ; Thu, 14 May 2020 17:07:18 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZHK3-00060Y-3t
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 17:07:10 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589476026; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=M/yi92o3kNGCcpoKE1hRJo2YjuLewaLJcQLxkEjatR0=;
 b=wX1vdAIsR9KE2VWFJ40kDtGc0j6WPAwwqf6UWmoLdImF4a7rmL5u4tQaxEo/pGT6CH1mOpuJ
 +3fxv1hzAx1Mu3XoIOQNSCzgVwPS790ppzKs8fWIKQ8jbbRvbwGIIWnuLVpVrDIjQzMDvmSI
 xE1iv2xIQGfAwwXMu7z3HsXjdsA=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-east-1.postgun.com with SMTP id
 5ebd7aaad915e862f6d7942f (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 14 May 2020 17:06:50
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 62233C433F2; Thu, 14 May 2020 17:06:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from [192.168.8.150] (cpe-70-95-149-85.san.res.rr.com [70.95.149.85])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: asutoshd)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D4AD7C432C2;
 Thu, 14 May 2020 17:06:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D4AD7C432C2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=asutoshd@codeaurora.org
Subject: Re: [PATCH v2 4/4] scsi: ufs: Fix WriteBooster flush during runtime
 suspend
To: Stanley Chu <stanley.chu@mediatek.com>, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, avri.altman@wdc.com, alim.akhtar@samsung.com,
 jejb@linux.ibm.com
References: <20200514150122.32110-1-stanley.chu@mediatek.com>
 <20200514150122.32110-5-stanley.chu@mediatek.com>
From: "Asutosh Das (asd)" <asutoshd@codeaurora.org>
Message-ID: <a41771f3-b82e-9fc4-798a-99b0c6598699@codeaurora.org>
Date: Thu, 14 May 2020 10:06:47 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200514150122.32110-5-stanley.chu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_100706_538386_03C2ECB2 
X-CRM114-Status: GOOD (  26.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.26 listed in wl.mailspike.net]
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

On 5/14/2020 8:01 AM, Stanley Chu wrote:
> Currently UFS host driver promises VCC supply if UFS device
> needs to do WriteBooster flush during runtime suspend.
> 
> However the UFS specification mentions,
> 
> "While the flushing operation is in progress, the device is
> in Active power mode."
> 
> Therefore UFS host driver needs to promise more: Keep UFS
> device as "Active power mode", otherwise UFS device shall not
> do any flush if device enters Sleep or PowerDown power mode.
> 
> Fix this by not changing device power mode if WriteBooster
> flush is required in ufshcd_suspend().
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> ---
>   drivers/scsi/ufs/ufs.h    |  1 -
>   drivers/scsi/ufs/ufshcd.c | 42 ++++++++++++++++++++-------------------
>   2 files changed, 22 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/scsi/ufs/ufs.h b/drivers/scsi/ufs/ufs.h
> index b3135344ab3f..9e4bc2e97ada 100644
> --- a/drivers/scsi/ufs/ufs.h
> +++ b/drivers/scsi/ufs/ufs.h
> @@ -577,7 +577,6 @@ struct ufs_dev_info {
>   	u32 d_ext_ufs_feature_sup;
>   	u8 b_wb_buffer_type;
>   	u32 d_wb_alloc_units;
> -	bool keep_vcc_on;
>   	u8 b_presrv_uspc_en;
>   };
>   
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index 169a3379e468..b9f7744ca2b4 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -8101,8 +8101,7 @@ static void ufshcd_vreg_set_lpm(struct ufs_hba *hba)
>   	    !hba->dev_info.is_lu_power_on_wp) {
>   		ufshcd_setup_vreg(hba, false);
>   	} else if (!ufshcd_is_ufs_dev_active(hba)) {
> -		if (!hba->dev_info.keep_vcc_on)
> -			ufshcd_toggle_vreg(hba->dev, hba->vreg_info.vcc, false);
> +		ufshcd_toggle_vreg(hba->dev, hba->vreg_info.vcc, false);
>   		if (!ufshcd_is_link_active(hba)) {
>   			ufshcd_config_vreg_lpm(hba, hba->vreg_info.vccq);
>   			ufshcd_config_vreg_lpm(hba, hba->vreg_info.vccq2);
> @@ -8172,6 +8171,7 @@ static int ufshcd_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
>   	enum ufs_pm_level pm_lvl;
>   	enum ufs_dev_pwr_mode req_dev_pwr_mode;
>   	enum uic_link_state req_link_state;
> +	bool keep_curr_dev_pwr_mode = false;
>   
>   	hba->pm_op_in_progress = 1;
>   	if (!ufshcd_is_shutdown_pm(pm_op)) {
> @@ -8227,27 +8227,29 @@ static int ufshcd_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
>   			ufshcd_disable_auto_bkops(hba);
>   		}
>   		/*
> -		 * With wb enabled, if the bkops is enabled or if the
> -		 * configured WB type is 70% full, keep vcc ON
> -		 * for the device to flush the wb buffer
> +		 * If device needs to do BKOP or WB buffer flush during
> +		 * Hibern8, keep device power mode as "active power mode"
> +		 * and VCC supply.
>   		 */
> -		if ((hba->auto_bkops_enabled && ufshcd_is_wb_allowed(hba)) ||
> -		    ufshcd_wb_keep_vcc_on(hba))
> -			hba->dev_info.keep_vcc_on = true;
> -		else
> -			hba->dev_info.keep_vcc_on = false;
> -	} else {
> -		hba->dev_info.keep_vcc_on = false;
> +		keep_curr_dev_pwr_mode = hba->auto_bkops_enabled ||
> +			(((req_link_state == UIC_LINK_HIBERN8_STATE) ||
> +			((req_link_state == UIC_LINK_ACTIVE_STATE) &&
> +			ufshcd_is_auto_hibern8_enabled(hba))) &&
> +			ufshcd_wb_keep_vcc_on(hba));
>   	}
>   
This looks fine.
But I still think the delayed check of flush status should be done to 
turn-off Vcc when flush is complete.

> -	if ((req_dev_pwr_mode != hba->curr_dev_pwr_mode) &&
> -	    ((ufshcd_is_runtime_pm(pm_op) && !hba->auto_bkops_enabled) ||
> -	    !ufshcd_is_runtime_pm(pm_op))) {
> -		/* ensure that bkops is disabled */
> -		ufshcd_disable_auto_bkops(hba);
> -		ret = ufshcd_set_dev_pwr_mode(hba, req_dev_pwr_mode);
> -		if (ret)
> -			goto enable_gating;
> +	if (req_dev_pwr_mode != hba->curr_dev_pwr_mode) {
> +		if ((ufshcd_is_runtime_pm(pm_op) && !hba->auto_bkops_enabled) ||
> +		    !ufshcd_is_runtime_pm(pm_op)) {
> +			/* ensure that bkops is disabled */
> +			ufshcd_disable_auto_bkops(hba);
> +		}
> +
> +		if (!keep_curr_dev_pwr_mode) {
> +			ret = ufshcd_set_dev_pwr_mode(hba, req_dev_pwr_mode);
> +			if (ret)
> +				goto enable_gating;
> +		}
>   	}
>   
>   	flush_work(&hba->eeh_work);
> 


-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B470E1611E9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 13:20:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rVFoxL0Ycp5/pVd/gZIxl7vyEZCVuDmytURIkebPndI=; b=G3s/RVu5usLlrKVzm9iJa2zFL
	PPHMrhLcMC6M4Zx1ES5sKJo+4uGXlrxu3HLtC/EQl8Rhq8ktYTGGAyNhbdHfVaKPaVw4j3PFzmLC5
	8a+f3ieP5+ig4yQkFNS6zG0rFp+V+0hVo+on/G/4Ow12tB8K/X+srQmIqRzPF+e1OoIg+A7yNxG4W
	doolvn12NpHHZ3j2lrqKe2QBwrOeiUliKbqvykAc0F5TcIBZgNPhgSw5v4FtYqwVD1PMbhZq+Vi/K
	QhZ723lxET98I1P+hvj7Fd1Jxw14/bO9HyhQFzXipOyqzaCScWVHdl5KIJ8GQmkYPqLPAL79VJ0NR
	tpS4UGtUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3fNr-0003gJ-4f; Mon, 17 Feb 2020 12:20:19 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fNh-0003WU-O3
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 12:20:11 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581942008; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=Ak3LgBqGOZMnRKzcv+4G1EyGXh9VotBzC+KbdmXq/x0=;
 b=LmttVX4M3SfV/fKTRfVXKNSK6Hx7sCh8aUxs3h9UwuVG79dFx7mEqETeiuSTolsVF7cpR5X9
 xDQo8R5Phq7d775nbMltnSGOQJtpEEApQZ4T0LrZPOCjRnpOTMh6DNaM69JUCaEb9NT2pFTt
 n7yqNPTbNnjCdFGq1bjY+ncPD5g=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e4a84f7.7efb9121a848-smtp-out-n02;
 Mon, 17 Feb 2020 12:20:07 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 29DADC4479C; Mon, 17 Feb 2020 12:20:07 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: cang)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 756CEC43383;
 Mon, 17 Feb 2020 12:20:05 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 17 Feb 2020 20:20:05 +0800
From: Can Guo <cang@codeaurora.org>
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v3 1/2] scsi: ufs: pass device information to
 apply_dev_quirks
In-Reply-To: <1578726707-6596-2-git-send-email-stanley.chu@mediatek.com>
References: <1578726707-6596-1-git-send-email-stanley.chu@mediatek.com>
 <1578726707-6596-2-git-send-email-stanley.chu@mediatek.com>
Message-ID: <2a8fc44914b7ed8777a4a99ba6b8647a@codeaurora.org>
X-Sender: cang@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_042009_859233_9ADEA70F 
X-CRM114-Status: GOOD (  21.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com, asutoshd@codeaurora.org,
 bvanassche@acm.org, linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-11 15:11, Stanley Chu wrote:
> Pass UFS device information to vendor-specific variant callback
> "apply_dev_quirks" because some platform vendors need to know such
> information to apply special handlings or quirks in specific devices.
> 
> In the same time, modify existed vendor implementations according to
> the new interface for those vendor drivers which will be built-in
> or built as a module alone with UFS core driver.
> 
> Cc: Alim Akhtar <alim.akhtar@samsung.com>
> Cc: Asutosh Das <asutoshd@codeaurora.org>
> Cc: Avri Altman <avri.altman@wdc.com>
> Cc: Bart Van Assche <bvanassche@acm.org>
> Cc: Bean Huo <beanhuo@micron.com>
> Cc: Can Guo <cang@codeaurora.org>
> Cc: Matthias Brugger <matthias.bgg@gmail.com>
> Reviewed-by: Avri Altman <avri.altman@wdc.com>
> Reviewed-by: Bean Huo <beanhuo@micron.com>
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> ---
>  drivers/scsi/ufs/ufs-qcom.c | 3 ++-
>  drivers/scsi/ufs/ufshcd.c   | 8 ++++----
>  drivers/scsi/ufs/ufshcd.h   | 7 ++++---
>  3 files changed, 10 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/scsi/ufs/ufs-qcom.c b/drivers/scsi/ufs/ufs-qcom.c
> index c69c29a1ceb9..ebb5c66e069f 100644
> --- a/drivers/scsi/ufs/ufs-qcom.c
> +++ b/drivers/scsi/ufs/ufs-qcom.c
> @@ -949,7 +949,8 @@ static int
> ufs_qcom_quirk_host_pa_saveconfigtime(struct ufs_hba *hba)
>  	return err;
>  }
> 
> -static int ufs_qcom_apply_dev_quirks(struct ufs_hba *hba)
> +static int ufs_qcom_apply_dev_quirks(struct ufs_hba *hba,
> +				     struct ufs_dev_desc *card)
>  {
>  	int err = 0;
> 
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index 1b97f2dc0b63..7c85c890594c 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -6803,7 +6803,8 @@ static int
> ufshcd_quirk_tune_host_pa_tactivate(struct ufs_hba *hba)
>  	return ret;
>  }
> 
> -static void ufshcd_tune_unipro_params(struct ufs_hba *hba)
> +static void ufshcd_tune_unipro_params(struct ufs_hba *hba,
> +				      struct ufs_dev_desc *card)
>  {
>  	if (ufshcd_is_unipro_pa_params_tuning_req(hba)) {
>  		ufshcd_tune_pa_tactivate(hba);
> @@ -6817,7 +6818,7 @@ static void ufshcd_tune_unipro_params(struct 
> ufs_hba *hba)
>  	if (hba->dev_quirks & UFS_DEVICE_QUIRK_HOST_PA_TACTIVATE)
>  		ufshcd_quirk_tune_host_pa_tactivate(hba);
> 
> -	ufshcd_vops_apply_dev_quirks(hba);
> +	ufshcd_vops_apply_dev_quirks(hba, card);

Hi Stanley,

Is this series merged? If no, would you mind moving
ufshcd_vops_apply_dev_quirks(hba, card); a little bit? Like below.

@@ -6852,14 +6852,14 @@ static void ufshcd_tune_unipro_params(struct 
ufs_hba *hba)
                 ufshcd_tune_pa_hibern8time(hba);
         }

+       ufshcd_vops_apply_dev_quirks(hba, card);
+
         if (hba->dev_quirks & UFS_DEVICE_QUIRK_PA_TACTIVATE)
                 /* set 1ms timeout for PA_TACTIVATE */
                 ufshcd_dme_set(hba, UIC_ARG_MIB(PA_TACTIVATE), 10);

In this way, vendor codes have a chance to modify the dev_quirks
before ufshcd_tune_unipro_params() does the rest of its job.

Thanks,
Can Guo.

>  }
> 
>  static void ufshcd_clear_dbg_ufs_stats(struct ufs_hba *hba)
> @@ -6980,10 +6981,9 @@ static int ufshcd_probe_hba(struct ufs_hba *hba)
>  	}
> 
>  	ufs_fixup_device_setup(hba, &card);
> +	ufshcd_tune_unipro_params(hba, &card);
>  	ufs_put_device_desc(&card);
> 
> -	ufshcd_tune_unipro_params(hba);
> -
>  	/* UFS device is also active now */
>  	ufshcd_set_ufs_dev_active(hba);
>  	ufshcd_force_reset_auto_bkops(hba);
> diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
> index e05cafddc87b..4f3fa71303da 100644
> --- a/drivers/scsi/ufs/ufshcd.h
> +++ b/drivers/scsi/ufs/ufshcd.h
> @@ -320,7 +320,7 @@ struct ufs_hba_variant_ops {
>  	void	(*setup_task_mgmt)(struct ufs_hba *, int, u8);
>  	void    (*hibern8_notify)(struct ufs_hba *, enum uic_cmd_dme,
>  					enum ufs_notify_change_status);
> -	int	(*apply_dev_quirks)(struct ufs_hba *);
> +	int	(*apply_dev_quirks)(struct ufs_hba *, struct ufs_dev_desc *);
>  	int     (*suspend)(struct ufs_hba *, enum ufs_pm_op);
>  	int     (*resume)(struct ufs_hba *, enum ufs_pm_op);
>  	void	(*dbg_register_dump)(struct ufs_hba *hba);
> @@ -1052,10 +1052,11 @@ static inline void
> ufshcd_vops_hibern8_notify(struct ufs_hba *hba,
>  		return hba->vops->hibern8_notify(hba, cmd, status);
>  }
> 
> -static inline int ufshcd_vops_apply_dev_quirks(struct ufs_hba *hba)
> +static inline int ufshcd_vops_apply_dev_quirks(struct ufs_hba *hba,
> +					       struct ufs_dev_desc *card)
>  {
>  	if (hba->vops && hba->vops->apply_dev_quirks)
> -		return hba->vops->apply_dev_quirks(hba);
> +		return hba->vops->apply_dev_quirks(hba, card);
>  	return 0;
>  }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

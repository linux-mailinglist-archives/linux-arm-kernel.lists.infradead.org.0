Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B4A131706
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 18:45:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SI1TtxB7a4GNdfFACMwDziJHaNEhPbcsx58QNcxS5FM=; b=red71Tg1D5wmN3DxHtHPBz/aO
	jyvuTdOFipdFiVB2m0ThLMHFPQV+ZnHar3ZdAsj/Dbdb5u/OQvaIQvUc1VIPYSW37o6Sv82beMB8U
	INFpX00qxEd3EfL0wT+1/fi/ctJk2Uf6MAXS2LOXTcSHYedjd7F200ULPZEt6HcycnN86zgW77Yse
	CS5eHmt0KnH6HGQInXObVjmfblo+sur6XMbHIYT4IfmM2IRyS+3fN9ZyI6nLIoUGrUZjnjDrdxnre
	yFKO8zbBz5DmkjaTWukJyMi2w17If1qeTDfrkqr79aGDZqtTEa3PCA5trD359cDXWYYVM1CvD6oR+
	JTv+K4weg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioWRn-0004wo-Ay; Mon, 06 Jan 2020 17:45:47 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioWRW-0004qv-Dh
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 17:45:32 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1578332730; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=aE88VHpKzshop14jt/7qVz5iKKzIOcAtFxm19yTXAyw=;
 b=WNV1qgjhynMbb2DDctgHF2vaWOdq6D8eRZE19OyRjlUYbJf2DMebqZDK+fy8bWwIB0HzLIiu
 6A75s4Jhun6R8P7V5De7ZfSncCHsRevE7umrbRZi0NrBLBz6l8nA7DfIwgYkcSZHRJsdDf3X
 /mfjvNz1M40rOyYQegueX/ppY+k=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e137237.7f774c137538-smtp-out-n02;
 Mon, 06 Jan 2020 17:45:27 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 7BA40C447AC; Mon,  6 Jan 2020 17:45:27 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: asutoshd)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 00987C433A2;
 Mon,  6 Jan 2020 17:45:25 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 06 Jan 2020 09:45:25 -0800
From: asutoshd@codeaurora.org
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v2 1/2] scsi: ufs: pass device information to
 apply_dev_quirks
In-Reply-To: <1578270431-9873-2-git-send-email-stanley.chu@mediatek.com>
References: <1578270431-9873-1-git-send-email-stanley.chu@mediatek.com>
 <1578270431-9873-2-git-send-email-stanley.chu@mediatek.com>
Message-ID: <5eafff63c1c2e4ca6fdaf2d349a74dac@codeaurora.org>
X-Sender: asutoshd@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_094530_577275_99281B94 
X-CRM114-Status: GOOD (  19.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-scsi-owner@vger.kernel.org, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, andy.teng@mediatek.com, jejb@linux.ibm.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, avri.altman@wdc.com, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com, bvanassche@acm.org,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-05 16:27, Stanley Chu wrote:
> Pass UFS device information to vendor-specific variant callback
> "apply_dev_quirks" because some platform vendors need to know such
> information to apply special handlings or quirks in specific devices.
> 
> In the same time, modify existed vendor implementation according to
> the new interface.
> 
> Cc: Alim Akhtar <alim.akhtar@samsung.com>
> Cc: Asutosh Das <asutoshd@codeaurora.org>
> Cc: Avri Altman <avri.altman@wdc.com>
> Cc: Bart Van Assche <bvanassche@acm.org>
> Cc: Bean Huo <beanhuo@micron.com>
> Cc: Can Guo <cang@codeaurora.org>
> Cc: Matthias Brugger <matthias.bgg@gmail.com>
> Reviewed-by: Avri Altman <avri.altman@wdc.com>
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> ---
>  drivers/scsi/ufs/ufs-qcom.c | 3 ++-
>  drivers/scsi/ufs/ufshcd.c   | 5 +++--
>  drivers/scsi/ufs/ufshcd.h   | 7 ++++---
>  3 files changed, 9 insertions(+), 6 deletions(-)
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
> index 1b97f2dc0b63..9abf0ea8c308 100644
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
>  }
> 
>  static void ufshcd_clear_dbg_ufs_stats(struct ufs_hba *hba)
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

Please separate the vendor code (ufs-qcom, in this case) to a separate 
patch.

-asd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

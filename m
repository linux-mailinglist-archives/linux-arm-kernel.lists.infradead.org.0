Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A437155D78
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 19:14:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HRSOZJtuH6xIRqfE3DUSZLXHjg/nPOx30jFPContKE8=; b=YncqifTJjhFPWudwLs1ghZgJU
	U4u+py8mvQHlB3tt9BIAC1NuUFaxj1wfL8JHaLZWck8/iMtTUzch8dghao5p71dyYP2hq/opFgQpq
	5OI2AcK6WLajqysDGyqjBLIkkhf+NldW8lJjyXFnSmjQHwdL5UJp4jh9w+i2lIY+ww6CrZZMyhMp/
	MMJd8APRjd8ac+sy71TRuhnPmYfSkEvyLu3IJu7N64BYgt0dEZsbYZPZSGLcN1xj+R4neQT+Fj3VU
	9ihcfJ6RjHcWf3VwjnIGQyeX5U8Nxr6syc0ZzPtzfkgNFmEPvWZeTqAi64WYJVAmvQeKljAqfJyKV
	OH9hlU2Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j089Y-0000Dx-AH; Fri, 07 Feb 2020 18:14:56 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j089Q-0000Cf-IX
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 18:14:51 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581099289; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=Iv4PGza4+6jG1rG8Ui2Bh8AMg6XFP9qGnwOYs7sfY/g=;
 b=VZoCYMqpASj55+zAFPIYjBqXD3fgLClHd/kl//fMP4n3c+c/PJdRr8hRJUIpe//u/WZ4rhO0
 QCYO0M0RLltzY6ZeZtIcF9kQ2LFCeM0w2ubWIZcomcz2tCdPmLrWrF9EetJRWLgoOL9QvzSV
 caQuwku0w45tRzbrsrwxWO+loBo=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e3da913.7f41ef7d09d0-smtp-out-n02;
 Fri, 07 Feb 2020 18:14:43 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id F2441C433CB; Fri,  7 Feb 2020 18:14:42 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [10.71.154.194] (i-global254.qualcomm.com [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: asutoshd)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id DB10BC43383;
 Fri,  7 Feb 2020 18:14:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org DB10BC43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=asutoshd@codeaurora.org
Subject: Re: [PATCH v1 2/2] scsi: ufs: introduce common function to disable
 host TX LCC
To: Stanley Chu <stanley.chu@mediatek.com>, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, avri.altman@wdc.com, alim.akhtar@samsung.com,
 jejb@linux.ibm.com, beanhuo@micron.com
References: <20200207070357.17169-1-stanley.chu@mediatek.com>
 <20200207070357.17169-3-stanley.chu@mediatek.com>
From: "Asutosh Das (asd)" <asutoshd@codeaurora.org>
Message-ID: <3edbf9cd-a3cb-7a99-f6ef-f767fdf64f1e@codeaurora.org>
Date: Fri, 7 Feb 2020 10:14:40 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200207070357.17169-3-stanley.chu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_101449_785027_A72DE588 
X-CRM114-Status: GOOD (  20.39  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.26 listed in wl.mailspike.net]
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
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/6/2020 11:03 PM, Stanley Chu wrote:
> Many vendors would like to disable host TX LCC during initialization
> flow. Introduce a common function for all users to make drivers easier to
> read and maintained. This patch does not change any functionality.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> ---

Reviewed-by: Asutosh Das <asutoshd@codeaurora.org>

>   drivers/scsi/ufs/cdns-pltfrm.c  | 2 +-
>   drivers/scsi/ufs/ufs-hisi.c     | 2 +-
>   drivers/scsi/ufs/ufs-mediatek.c | 2 +-
>   drivers/scsi/ufs/ufs-qcom.c     | 4 +---
>   drivers/scsi/ufs/ufshcd-pci.c   | 2 +-
>   drivers/scsi/ufs/ufshcd.h       | 5 +++++
>   6 files changed, 10 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/scsi/ufs/cdns-pltfrm.c b/drivers/scsi/ufs/cdns-pltfrm.c
> index 56a6a1ed5ec2..da065a259f6e 100644
> --- a/drivers/scsi/ufs/cdns-pltfrm.c
> +++ b/drivers/scsi/ufs/cdns-pltfrm.c
> @@ -192,7 +192,7 @@ static int cdns_ufs_link_startup_notify(struct ufs_hba *hba,
>   	 * and device TX LCC are disabled once link startup is
>   	 * completed.
>   	 */
> -	ufshcd_dme_set(hba, UIC_ARG_MIB(PA_LOCAL_TX_LCC_ENABLE), 0);
> +	ufshcd_disable_host_tx_lcc(hba);
>   
>   	/*
>   	 * Disabling Autohibern8 feature in cadence UFS
> diff --git a/drivers/scsi/ufs/ufs-hisi.c b/drivers/scsi/ufs/ufs-hisi.c
> index 5d6487350a6c..074a6a055a4c 100644
> --- a/drivers/scsi/ufs/ufs-hisi.c
> +++ b/drivers/scsi/ufs/ufs-hisi.c
> @@ -235,7 +235,7 @@ static int ufs_hisi_link_startup_pre_change(struct ufs_hba *hba)
>   	ufshcd_writel(hba, reg, REG_AUTO_HIBERNATE_IDLE_TIMER);
>   
>   	/* Unipro PA_Local_TX_LCC_Enable */
> -	ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x155E, 0x0), 0x0);
> +	ufshcd_disable_host_tx_lcc(hba);
>   	/* close Unipro VS_Mk2ExtnSupport */
>   	ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0xD0AB, 0x0), 0x0);
>   	ufshcd_dme_get(hba, UIC_ARG_MIB_SEL(0xD0AB, 0x0), &value);
> diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
> index 8f73c860f423..9d05962feb15 100644
> --- a/drivers/scsi/ufs/ufs-mediatek.c
> +++ b/drivers/scsi/ufs/ufs-mediatek.c
> @@ -318,7 +318,7 @@ static int ufs_mtk_pre_link(struct ufs_hba *hba)
>   	 * to make sure that both host and device TX LCC are disabled
>   	 * once link startup is completed.
>   	 */
> -	ret = ufshcd_dme_set(hba, UIC_ARG_MIB(PA_LOCAL_TX_LCC_ENABLE), 0);
> +	ret = ufshcd_disable_host_tx_lcc(hba);
>   	if (ret)
>   		return ret;
>   
> diff --git a/drivers/scsi/ufs/ufs-qcom.c b/drivers/scsi/ufs/ufs-qcom.c
> index c69c29a1ceb9..c2e703d58f63 100644
> --- a/drivers/scsi/ufs/ufs-qcom.c
> +++ b/drivers/scsi/ufs/ufs-qcom.c
> @@ -554,9 +554,7 @@ static int ufs_qcom_link_startup_notify(struct ufs_hba *hba,
>   		 * completed.
>   		 */
>   		if (ufshcd_get_local_unipro_ver(hba) != UFS_UNIPRO_VER_1_41)
> -			err = ufshcd_dme_set(hba,
> -					UIC_ARG_MIB(PA_LOCAL_TX_LCC_ENABLE),
> -					0);
> +			err = ufshcd_disable_host_tx_lcc(hba);
>   
>   		break;
>   	case POST_CHANGE:
> diff --git a/drivers/scsi/ufs/ufshcd-pci.c b/drivers/scsi/ufs/ufshcd-pci.c
> index 3b19de3ae9a3..8f78a8151499 100644
> --- a/drivers/scsi/ufs/ufshcd-pci.c
> +++ b/drivers/scsi/ufs/ufshcd-pci.c
> @@ -44,7 +44,7 @@ static int ufs_intel_disable_lcc(struct ufs_hba *hba)
>   
>   	ufshcd_dme_get(hba, attr, &lcc_enable);
>   	if (lcc_enable)
> -		ufshcd_dme_set(hba, attr, 0);
> +		ufshcd_disable_host_tx_lcc(hba);
>   
>   	return 0;
>   }
> diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
> index 81c71a3e3474..8f516b205c32 100644
> --- a/drivers/scsi/ufs/ufshcd.h
> +++ b/drivers/scsi/ufs/ufshcd.h
> @@ -914,6 +914,11 @@ static inline bool ufshcd_is_hs_mode(struct ufs_pa_layer_attr *pwr_info)
>   		pwr_info->pwr_tx == FASTAUTO_MODE);
>   }
>   
> +static inline int ufshcd_disable_host_tx_lcc(struct ufs_hba *hba)
> +{
> +	return ufshcd_dme_set(hba, UIC_ARG_MIB(PA_LOCAL_TX_LCC_ENABLE), 0);
> +}
> +
>   /* Expose Query-Request API */
>   int ufshcd_query_descriptor_retry(struct ufs_hba *hba,
>   				  enum query_opcode opcode,
> 


-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

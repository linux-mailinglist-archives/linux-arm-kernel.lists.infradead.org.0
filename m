Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B11141837B7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 18:35:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=52C4fJbBXvYsi0KmXBB05LOwSFGtyHAA0dW4AljP2Hs=; b=qy/VTriOly/4dvccTPAD8EnUj
	iGLxNTxiz3y9Zy4ED+itox1/jXYANHmk51kuKQaHf7OetbgO7V8HWwpZzbFM69Yyn32JwZkWXLnPu
	wW22AFb1lTMZfMUJwaTs5T7igvjdRnOYASv68uFQOEgPXS3GaL3gaE5FUBuxN+3D/OF/OJ9aFPpvm
	AwMrJk2SyjWqQylDoQb5NhSksPWFgZSVWX8ZbL1+SIdfV+Lj4CKJX582ZsfrdjVMDAoQhsVc3nxPg
	Wevj3wxvLR0R8txwDDxcGCVD7yKVKW6bfc+l2biRFZwWINWic6eMoNUM8C0oAa2rqARBcikiUtT7q
	eCkPRmELw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCRjo-0001zT-KI; Thu, 12 Mar 2020 17:35:16 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCRja-0001Ho-40
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 17:35:05 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1584034504; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=JqD3oxXgpm5gEOCIMzEhLs3L1rpyh7voYQV1LqU4Ak4=;
 b=TF21M2fss7zEvWhZdgLTNuedMSD1nd0ACM6vR6fsYC2wyYiTrm1i4K1ikQzSDytxj1efbd+v
 qlP8C9G9p6pAS04hbcQAYGT/0l1ntWNP4Mjn9miDU3Vig6jmMm3jP9UqP68jrvzJ9G4PvUbl
 fUS6m9gNhQcOmQqGZLoi/Gkc08I=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e6a72c1.7f1ae4763ca8-smtp-out-n02;
 Thu, 12 Mar 2020 17:34:57 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 7A9C8C43636; Thu, 12 Mar 2020 17:34:57 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [10.46.161.159] (i-global254.qualcomm.com [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: asutoshd)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A1C67C433CB;
 Thu, 12 Mar 2020 17:34:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A1C67C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=asutoshd@codeaurora.org
Subject: Re: [PATCH v2 3/8] scsi: ufs: use an enum for host capabilities
To: Stanley Chu <stanley.chu@mediatek.com>, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, avri.altman@wdc.com, alim.akhtar@samsung.com,
 jejb@linux.ibm.com
References: <20200312110908.14895-1-stanley.chu@mediatek.com>
 <20200312110908.14895-4-stanley.chu@mediatek.com>
From: "Asutosh Das (asd)" <asutoshd@codeaurora.org>
Message-ID: <f86de852-6379-fa77-eac0-b4fa3610ed28@codeaurora.org>
Date: Thu, 12 Mar 2020 10:34:55 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200312110908.14895-4-stanley.chu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_103504_286625_6D8B6B01 
X-CRM114-Status: GOOD (  23.65  )
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
> Use an enum to specify the host capabilities instead of #defines inside the
> structure definition.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> Reviewed-by: Can Guo <cang@codeaurora.org>
> ---
Reviewed-by: Asutosh Das <asutoshd@codeaurora.org>
>   drivers/scsi/ufs/ufshcd.h | 65 ++++++++++++++++++++++-----------------
>   1 file changed, 37 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
> index 5cf79d2319a6..fec004cd8054 100644
> --- a/drivers/scsi/ufs/ufshcd.h
> +++ b/drivers/scsi/ufs/ufshcd.h
> @@ -501,6 +501,43 @@ enum ufshcd_quirks {
>   	UFSHCD_QUIRK_BROKEN_UFS_HCI_VERSION		= 1 << 5,
>   };
>   
> +enum ufshcd_caps {
> +	/* Allow dynamic clk gating */
> +	UFSHCD_CAP_CLK_GATING				= 1 << 0,
> +
> +	/* Allow hiberb8 with clk gating */
> +	UFSHCD_CAP_HIBERN8_WITH_CLK_GATING		= 1 << 1,
> +
> +	/* Allow dynamic clk scaling */
> +	UFSHCD_CAP_CLK_SCALING				= 1 << 2,
> +
> +	/* Allow auto bkops to enabled during runtime suspend */
> +	UFSHCD_CAP_AUTO_BKOPS_SUSPEND			= 1 << 3,
> +
> +	/*
> +	 * This capability allows host controller driver to use the UFS HCI's
> +	 * interrupt aggregation capability.
> +	 * CAUTION: Enabling this might reduce overall UFS throughput.
> +	 */
> +	UFSHCD_CAP_INTR_AGGR				= 1 << 4,
> +
> +	/*
> +	 * This capability allows the device auto-bkops to be always enabled
> +	 * except during suspend (both runtime and suspend).
> +	 * Enabling this capability means that device will always be allowed
> +	 * to do background operation when it's active but it might degrade
> +	 * the performance of ongoing read/write operations.
> +	 */
> +	UFSHCD_CAP_KEEP_AUTO_BKOPS_ENABLED_EXCEPT_SUSPEND = 1 << 5,
> +
> +	/*
> +	 * This capability allows host controller driver to automatically
> +	 * enable runtime power management by itself instead of waiting
> +	 * for userspace to control the power management.
> +	 */
> +	UFSHCD_CAP_RPM_AUTOSUSPEND			= 1 << 6,
> +};
> +
>   /**
>    * struct ufs_hba - per adapter private structure
>    * @mmio_base: UFSHCI base register address
> @@ -653,34 +690,6 @@ struct ufs_hba {
>   	struct ufs_clk_gating clk_gating;
>   	/* Control to enable/disable host capabilities */
>   	u32 caps;
> -	/* Allow dynamic clk gating */
> -#define UFSHCD_CAP_CLK_GATING	(1 << 0)
> -	/* Allow hiberb8 with clk gating */
> -#define UFSHCD_CAP_HIBERN8_WITH_CLK_GATING (1 << 1)
> -	/* Allow dynamic clk scaling */
> -#define UFSHCD_CAP_CLK_SCALING	(1 << 2)
> -	/* Allow auto bkops to enabled during runtime suspend */
> -#define UFSHCD_CAP_AUTO_BKOPS_SUSPEND (1 << 3)
> -	/*
> -	 * This capability allows host controller driver to use the UFS HCI's
> -	 * interrupt aggregation capability.
> -	 * CAUTION: Enabling this might reduce overall UFS throughput.
> -	 */
> -#define UFSHCD_CAP_INTR_AGGR (1 << 4)
> -	/*
> -	 * This capability allows the device auto-bkops to be always enabled
> -	 * except during suspend (both runtime and suspend).
> -	 * Enabling this capability means that device will always be allowed
> -	 * to do background operation when it's active but it might degrade
> -	 * the performance of ongoing read/write operations.
> -	 */
> -#define UFSHCD_CAP_KEEP_AUTO_BKOPS_ENABLED_EXCEPT_SUSPEND (1 << 5)
> -	/*
> -	 * This capability allows host controller driver to automatically
> -	 * enable runtime power management by itself instead of waiting
> -	 * for userspace to control the power management.
> -	 */
> -#define UFSHCD_CAP_RPM_AUTOSUSPEND (1 << 6)
>   
>   	struct devfreq *devfreq;
>   	struct ufs_clk_scaling clk_scaling;
> 


-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

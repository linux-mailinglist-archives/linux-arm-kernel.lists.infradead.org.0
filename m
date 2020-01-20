Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E563B14330F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 21:52:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NG1mV4VCXi3stz7XSJ/4IyyJRbwUkLmWi7OdhmEzM3E=; b=UGYPYA1AA62qE+fTSD2AfSU9Y
	Ep6iWamC2ERElBHFpo5rNFMI9rGdPBRAE0iMGEaSn4j17XO2O+PClNsP2mUXBOcdJQMde6/Hd1Wri
	M5Ch8WXq6DVffnuklW4cuyxZrBkFfob2YQSCkiBONHml0GHj+JVUBnuII+fV312v4wrjQQPnY2iRi
	a25FhBG1U+USE4CS75mG69a5A5uvNiV02nf5gXUT1KAmz44vcWqjYb/IfD3ycLUV9JOBLoaFvs3G1
	n7tLExJLK+N/b02qyt9mNavhCGAA+G5iou5YaCk6TJazTvyG64tb9VnSWtp8y9oxEEUD4FqjyG76Y
	+EVWK7kUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ite2A-0000zI-Ri; Mon, 20 Jan 2020 20:52:30 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ite21-0000yy-Gb
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 20:52:22 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1579553541; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=/F/P/PamSf53/0NktI+vEIZjO2L7dILbSNYBUNX/1aI=;
 b=fiZ4qUcnqFJpZIJHGFkIRER3zEIvPc25VusmgB9x9+Kh0mntsBTq2Yvj1fn5zNbUa830f4rY
 S44ZbbFC8NqkbkQPeioz0IWfQ881aHLd55wi044hP1mZBV1O0a5OS/8p7FjcmmuZmNzl3htq
 PNfPoMc/9mBXX12ot78GiHsODyM=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e261304.7fe176a441f0-smtp-out-n03;
 Mon, 20 Jan 2020 20:52:20 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 8E223C4479F; Mon, 20 Jan 2020 20:52:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [10.46.161.159] (i-global254.qualcomm.com [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: asutoshd)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E6EB9C433CB;
 Mon, 20 Jan 2020 20:52:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E6EB9C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=asutoshd@codeaurora.org
Subject: Re: [PATCH v1 3/3] scsi: ufs-mediatek: enable low-power mode for
 hibern8 state
To: Stanley Chu <stanley.chu@mediatek.com>, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, avri.altman@wdc.com, alim.akhtar@samsung.com,
 jejb@linux.ibm.com
References: <20200117035108.19699-1-stanley.chu@mediatek.com>
 <20200117035108.19699-4-stanley.chu@mediatek.com>
From: "Asutosh Das (asd)" <asutoshd@codeaurora.org>
Message-ID: <38b2614d-1fdd-8bad-63a1-e9bc5698cc66@codeaurora.org>
Date: Mon, 20 Jan 2020 12:52:17 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200117035108.19699-4-stanley.chu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_125221_613306_050F0868 
X-CRM114-Status: GOOD (  20.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/16/2020 7:51 PM, Stanley Chu wrote:
> In MediaTek Chipsets, UniPro link and ufshci can enter proprietary
> low-power mode while link is in hibern8 state.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> ---

Reviewed-by: Asutosh Das <asutoshd@codeaurora.org>

>   drivers/scsi/ufs/ufs-mediatek.c | 53 +++++++++++++++++++++++++++++++++
>   1 file changed, 53 insertions(+)
> 
> diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
> index d5194d0c4ef5..f32f3f34f6d0 100644
> --- a/drivers/scsi/ufs/ufs-mediatek.c
> +++ b/drivers/scsi/ufs/ufs-mediatek.c
> @@ -382,11 +382,60 @@ static void ufs_mtk_device_reset(struct ufs_hba *hba)
>   	dev_info(hba->dev, "device reset done\n");
>   }
>   
> +static int ufs_mtk_link_set_hpm(struct ufs_hba *hba)
> +{
> +	int err;
> +
> +	err = ufshcd_hba_enable(hba);
> +	if (err)
> +		return err;
> +
> +	err = ufshcd_dme_set(hba,
> +			     UIC_ARG_MIB_SEL(VS_UNIPROPOWERDOWNCONTROL, 0),
> +			     0);
> +	if (err)
> +		return err;
> +
> +	err = ufshcd_uic_hibern8_exit(hba);
> +	if (!err)
> +		ufshcd_set_link_active(hba);
> +	else
> +		return err;
> +
> +	err = ufshcd_make_hba_operational(hba);
> +	if (err)
> +		return err;
> +
> +	return 0;
> +}
> +
> +static int ufs_mtk_link_set_lpm(struct ufs_hba *hba)
> +{
> +	int err;
> +
> +	err = ufshcd_dme_set(hba,
> +			     UIC_ARG_MIB_SEL(VS_UNIPROPOWERDOWNCONTROL, 0),
> +			     1);
> +	if (err) {
> +		/* Resume UniPro state for following error recovery */
> +		ufshcd_dme_set(hba,
> +			       UIC_ARG_MIB_SEL(VS_UNIPROPOWERDOWNCONTROL, 0),
> +			       0);
> +		return err;
> +	}
> +
> +	return 0;
> +}
> +
>   static int ufs_mtk_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
>   {
> +	int err;
>   	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
>   
>   	if (ufshcd_is_link_hibern8(hba)) {
> +		err = ufs_mtk_link_set_lpm(hba);
> +		if (err)
> +			return -EAGAIN;
>   		phy_power_off(host->mphy);
>   		ufs_mtk_setup_ref_clk(hba, false);
>   	}
> @@ -397,10 +446,14 @@ static int ufs_mtk_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
>   static int ufs_mtk_resume(struct ufs_hba *hba, enum ufs_pm_op pm_op)
>   {
>   	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
> +	int err;
>   
>   	if (ufshcd_is_link_hibern8(hba)) {
>   		ufs_mtk_setup_ref_clk(hba, true);
>   		phy_power_on(host->mphy);
> +		err = ufs_mtk_link_set_hpm(hba);
> +		if (err)
> +			return err;
>   	}
>   
>   	return 0;
> 


-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

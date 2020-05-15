Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD921D47FB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 10:19:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mJxCYf844bo5h96dDQtJ3EUlaCo/LKGNJqpXHm3VNoU=; b=ooKMpav9ihLd2xptrbKcGkChl
	LhJvaCMdYy5UZtC1i/S3fOKCRS2WANFXNE64mt6W7WlRZv61dJ1gViFu0HVnrI+6dne7O9bS1Ched
	rx4DaVLJYzHD06ACerDlTqtU1illnEGAgPP6VuGfBr9gYlFRuOtuJ4KLiw3+2H7+bp1Ytu0iPpVbd
	pSboB2pQu8xwPgpuy4c0TL5Fzx1PwgyV60aQ8FGjJAPpao+ni5hRWFAByRAadfdY9ZnAengPmIOdy
	hZZFK4sioFiT2oNWzSA38wBgpCVWPpRiEzPO2NNxdXZts8eKN6F8glze9fCtaftWnazAxVfA//pAe
	BZT5846NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZVYl-0006Po-NA; Fri, 15 May 2020 08:19:11 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZVYX-0006PA-HG
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 08:19:01 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589530737; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=b15zrAYlQprMOsxRmwfaMv2/XJdzaN8Ceooz+8pLgE4=;
 b=W7WB0vuT+GFvUdBVgCjnBJXtZEkh6zLRKAa9id4L+uYqD+2BvJVRNM0zvDMu4r5ji+34dQK0
 LDea2L6k8OYmIa7M2rd7ezbe1TObKAjs7uBZEVV4iDdUdhSnQzz0qxTkaZ7AiWvSKmp0aFcF
 C0ZO8qOkKt0VF7nAUrTf15WgPmU=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-east-1.postgun.com with SMTP id
 5ebe50705d62762fd4a5b330 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 15 May 2020 08:18:56
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id B0D56C43636; Fri, 15 May 2020 08:18:55 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: sibis)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 9BAE7C433D2;
 Fri, 15 May 2020 08:18:53 +0000 (UTC)
MIME-Version: 1.0
Date: Fri, 15 May 2020 13:48:53 +0530
From: Sibi Sankar <sibis@codeaurora.org>
To: will@kernel.org, robin.murphy@arm.com, joro@8bytes.org
Subject: Re: [PATCH v6] iommu/arm-smmu-qcom: Request direct mapping for modem
 device
In-Reply-To: <20200511175532.25874-1-sibis@codeaurora.org>
References: <20200511175532.25874-1-sibis@codeaurora.org>
Message-ID: <0f0679f57a213536dfbba78b5c2dab5c@codeaurora.org>
X-Sender: sibis@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_011857_633435_CAC2B42B 
X-CRM114-Status: GOOD (  17.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-kernel-owner@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 swboyd@chromium.org, dianders@chromium.org, evgreen@chromium.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 mka@chromium.org, bjorn.andersson@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey Will,

On 2020-05-11 23:25, Sibi Sankar wrote:
> The modem remote processor has two access paths to DDR. One path is
> directly connected to DDR and another path goes through an SMMU. The
> SMMU path is configured to be a direct mapping because it's used by
> various peripherals in the modem subsystem. Typically this direct
> mapping is configured statically at EL2 by QHEE (Qualcomm's Hypervisor
> Execution Environment) before the kernel is entered.
> 
> In certain firmware configuration, especially when the kernel is 
> already
> in full control of the SMMU, defer programming the modem SIDs to the
> kernel. Let's add compatibles here so that we can have the kernel
> program the SIDs for the modem in these cases.
> 
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> ---

Now that the patch is reworded can
you please pick it up since its the
only pending path from the series.

> 
> V6
>  * Rebased on Will's for-joerg/arm-smmu/updates
>  * Reword commit message and add more details [Stephen]
> 
>  drivers/iommu/arm-smmu-qcom.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/iommu/arm-smmu-qcom.c 
> b/drivers/iommu/arm-smmu-qcom.c
> index 5bedf21587a56..cf01d0215a397 100644
> --- a/drivers/iommu/arm-smmu-qcom.c
> +++ b/drivers/iommu/arm-smmu-qcom.c
> @@ -17,7 +17,9 @@ static const struct of_device_id
> qcom_smmu_client_of_match[] = {
>  	{ .compatible = "qcom,mdp4" },
>  	{ .compatible = "qcom,mdss" },
>  	{ .compatible = "qcom,sc7180-mdss" },
> +	{ .compatible = "qcom,sc7180-mss-pil" },
>  	{ .compatible = "qcom,sdm845-mdss" },
> +	{ .compatible = "qcom,sdm845-mss-pil" },
>  	{ }
>  };

-- 
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

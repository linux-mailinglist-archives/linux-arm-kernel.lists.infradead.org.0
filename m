Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD6A1CE47E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 21:30:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sX2Uw2ZpaGkvmElxu37HsbaijWhYugDk+7aB14Dsz2M=; b=GsDbRl2D5pTAPP
	MjIC9yt/a/J2ZfXSmyist1pTwzCMCRotknw3WRxN4b+rwbQVgw+F1fL5VD+emo5Tlum0af65rQoG/
	munQm7I1tvZ4Vl1wWyo0wIoh3gLMRCXNziHQloMESatO6EttK4o+xxflFwkb61kuIFdU/S8DqHhAN
	Q9YM2Qq169rCmaiSrdTlkAId0Kn3mU0jGTwThXaWPaIDiDvBtM9oFtT9nPgiJfzPSUcVYM0zuYWCN
	UWcUaa5iyYTCZICZeQsI+wNt4a735j7S7a8i45YLBRkxuxpVJwkCLzo8ItwDV0TlwHigClyWtZIxS
	lBndVTVFepbs3csXlm2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYE8O-0007PG-Ow; Mon, 11 May 2020 19:30:40 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYE8G-0007OQ-Po
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 19:30:34 +0000
Received: by mail-pf1-x442.google.com with SMTP id v63so5182943pfb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 12:30:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=gzyfnO/5LbG2mrH2lA0azbgAQiWtK0agPG/QW/aD0JA=;
 b=OzVpqUU6k4CDMc0nrbShznwLyn+kmnl+BiPHhPbWnikxGiuco8hPSb3nS1q3qW7Cek
 TlIdfXMHgEChfZXCfsI3of4zCEHuppr5PoCE3ZmpK0SP1LiofuG1NSTRPyOmD0nbKgGD
 Bwa03tUplrVt+uaafrpI8WO/Kiw8FLdoImebhEbTRHIm2mxwGlr8SIVV8RSntyAW7IIW
 m9WJ98M8I/GIgMuti/4gM3KJ4GRCV7VPnkIyNoVSwhRvr8uOQ9XfPJNaLkNucRR21ygo
 7yLopUX/fMQxLY0w5Z54iE/yRdh2wOKRkc5CN/QWkO77VCCiI1CCgHTzJiuY46Yq4gJI
 1epw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gzyfnO/5LbG2mrH2lA0azbgAQiWtK0agPG/QW/aD0JA=;
 b=rjjlE8WC4al6ZuGI2EIcnPYNFkDHmm7fIyKB0givUm8y8LCJkcBj+SJqtkLGGHRd5F
 soG4ZvdzzhFLyvOrS4WqBOV7yLPtTKI89Sk3zM9/vKnzQScTK6fqCh0pbn5lvXTgvrL8
 2EiIQIfjFocY2mrb7CQQlw2D2xqRNtIlMH2Dob4yg0vJM6Zm84vJ9lLRrMEc6um1Eh+o
 W1+fHAHMznxuMi7dVrCcHQfnEBkEkLX660QiuTYH5vc47LcI2hffAa9sF1LcJiCXipWj
 rmvBG6owgjaMUuN/2y/KAKJhQ/ygd+sPxLvXVjCBAzrczYSGFi/xSVAfLImmRHynS4kM
 MyfA==
X-Gm-Message-State: AGi0Pua0+en585W2uYJZNKhdFEMRy+gnEZX2Aw5RXLNXmu+0X0jqr1BA
 A0r0QGTAQAWEsDJqjp8sgW7TUw==
X-Google-Smtp-Source: APiQypIOtVLmN26sBLQEPnN3hrhyIv6xvI5WifHGysFUwEmFLrhzINvd3EvqA0ARHr6GkqxEp7LIOw==
X-Received: by 2002:a63:750b:: with SMTP id q11mr15767211pgc.138.1589225431230; 
 Mon, 11 May 2020 12:30:31 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id z185sm8726197pgz.26.2020.05.11.12.30.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 12:30:30 -0700 (PDT)
Date: Mon, 11 May 2020 12:31:24 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Sibi Sankar <sibis@codeaurora.org>
Subject: Re: [PATCH v6] iommu/arm-smmu-qcom: Request direct mapping for modem
 device
Message-ID: <20200511193124.GG20625@builder.lan>
References: <20200511175532.25874-1-sibis@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511175532.25874-1-sibis@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_123032_904270_9DA84653 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dianders@chromium.org, will@kernel.org, joro@8bytes.org,
 linux-kernel@vger.kernel.org, evgreen@chromium.org, swboyd@chromium.org,
 iommu@lists.linux-foundation.org, mka@chromium.org,
 linux-arm-msm@vger.kernel.org, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 11 May 10:55 PDT 2020, Sibi Sankar wrote:

> The modem remote processor has two access paths to DDR. One path is
> directly connected to DDR and another path goes through an SMMU. The
> SMMU path is configured to be a direct mapping because it's used by
> various peripherals in the modem subsystem. Typically this direct
> mapping is configured statically at EL2 by QHEE (Qualcomm's Hypervisor
> Execution Environment) before the kernel is entered.
> 
> In certain firmware configuration, especially when the kernel is already
> in full control of the SMMU, defer programming the modem SIDs to the
> kernel. Let's add compatibles here so that we can have the kernel
> program the SIDs for the modem in these cases.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> ---
> 
> V6
>  * Rebased on Will's for-joerg/arm-smmu/updates
>  * Reword commit message and add more details [Stephen]
> 
>  drivers/iommu/arm-smmu-qcom.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/iommu/arm-smmu-qcom.c b/drivers/iommu/arm-smmu-qcom.c
> index 5bedf21587a56..cf01d0215a397 100644
> --- a/drivers/iommu/arm-smmu-qcom.c
> +++ b/drivers/iommu/arm-smmu-qcom.c
> @@ -17,7 +17,9 @@ static const struct of_device_id qcom_smmu_client_of_match[] = {
>  	{ .compatible = "qcom,mdp4" },
>  	{ .compatible = "qcom,mdss" },
>  	{ .compatible = "qcom,sc7180-mdss" },
> +	{ .compatible = "qcom,sc7180-mss-pil" },
>  	{ .compatible = "qcom,sdm845-mdss" },
> +	{ .compatible = "qcom,sdm845-mss-pil" },
>  	{ }
>  };
>  
> -- 
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

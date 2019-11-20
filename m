Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6789610339B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 06:16:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vyv9ec2i5hmXlo25QOTMJuAz+Kx7BKZ0UOk05S7J+xI=; b=JZdl50o2vA8Mel
	SMiSUiDgh5bMrIeOU9o/B1vWiWXQ/2Wp0tjUsnYlHoTNaCGxojrhv1gL9OPejSTk3LspIqxRe1zZM
	lev/NGS2YfF9b6XZYbqclWRrs1dZ1mYcRnD++XfR8ukilKdy2KVib7f02iU84VkWjriswVSUnELBU
	QAXXRPJBE8WcB3j7M0LQNAXtGtrqg+fPlFlYqAvlo3/JyMocvuf2ySA1XZ72gpGPKxMc9fR+8RZdk
	19cHpf/8goNyNl4EKX7XJ8bjx8XyAFVzSMiW6AnsZNIAdbbqZsevC8ZuS8XmRYMZxR/mu/8PIa0UF
	sBljWjHtxhdiincDJ9og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXILm-0006P4-9q; Wed, 20 Nov 2019 05:16:22 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXILd-0006OK-PI
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 05:16:15 +0000
Received: by mail-pf1-x443.google.com with SMTP id c184so13626625pfb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 21:16:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1Yv25wQDQFczcnj/PFyL1UNH1JjWrPFTBbhbehaHIng=;
 b=Cv767rqnulM+BQqNRMs/64y/R7fbJKvDrNUq61kS1jLsdBTFOIriQ5SE6JtRP3K+PI
 R4QA8MfYXkeRgPR5jTAAlTc32XFG7VENXNKQkOOtvbYZ8DbApxDUIMCu6tCR2j/wZttV
 FKPPnam3ATxr4BZpfpZcOV16x8H0CpK2Kk4XHGewT0CS/cjcnmvs70fwV7PJR2WyDWxP
 CUJM17GTPQ/G/mc2Rad2UMIpy+ZkpmTaYiGUHHz5irFykwHjiY5bz0vXbdy1GWRSVO08
 h95M0PAJtd0xP18pJmSkaC+vJAZHbm/qbZ4O6tsEt1+7DLuDWNFYjMjcRMH2ReI4yOqz
 2WAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1Yv25wQDQFczcnj/PFyL1UNH1JjWrPFTBbhbehaHIng=;
 b=hr87CRXn8CGwOtl+S4ZZ/WyJQxRHBPUdc4MxaQ/DtQM+F81bfsSCLRT3udD6xHwuvr
 +KVKCq8pNiGXwN7AhAUlyyuLSnrki/JHq0YBRKiYzVHyFV9CeS0i3y5BG5447FEVOzda
 WXai2r5BVBrGY5fa+B3TG9WN5LlRSZxcwKlfxp9qKxg7QEvBEeknuNQjjRRssQaW64H/
 oBhqrkJaMQg55rzdFV3XXJLtFCRZpCdRGdMEz6UiSWFNuP0jNHJ6iF1QXbS7WfW4gaFK
 WUb5YPRGbhQ2y+5Pj6quLpsddr9hD/6P4I2yEF3N3FENu8UhXqa9rvwEk93ow2gUqisv
 5ZJg==
X-Gm-Message-State: APjAAAUlkyJ/5pVMHwstWSNC431h+TDNCuDd4Q1IK4ueXA+97HieOFzu
 xvvi6lf2aTlehyRdyM66KtATFw==
X-Google-Smtp-Source: APXvYqxYCLvD4vNiwsF3rw+Ca/QrYYPh39SinCgxiYzgZZOUCffAdOBAR+9g1TpfstwMdS9OIwJDow==
X-Received: by 2002:a63:5c42:: with SMTP id n2mr1007802pgm.229.1574226972064; 
 Tue, 19 Nov 2019 21:16:12 -0800 (PST)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id z6sm5508736pjd.9.2019.11.19.21.16.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 21:16:11 -0800 (PST)
Date: Tue, 19 Nov 2019 21:16:08 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Niklas Cassel <niklas.cassel@linaro.org>
Subject: Re: [PATCH v6 4/5] arm64: defconfig: enable CONFIG_QCOM_CPR
Message-ID: <20191120051608.GT18024@yoga>
References: <20191119154621.55341-1-niklas.cassel@linaro.org>
 <20191119154621.55341-5-niklas.cassel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191119154621.55341-5-niklas.cassel@linaro.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_211613_849392_A4EE4E7E 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: ulf.hansson@linaro.org, Catalin Marinas <catalin.marinas@arm.com>,
 sboyd@kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 amit.kucheria@linaro.org, vireshk@kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 19 Nov 07:46 PST 2019, Niklas Cassel wrote:

> Enable CONFIG_QCOM_CPR.
> 
> Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index e76b42b25dd6..4385033c0a34 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -438,6 +438,7 @@ CONFIG_GPIO_PCA953X=y
>  CONFIG_GPIO_PCA953X_IRQ=y
>  CONFIG_GPIO_MAX77620=y
>  CONFIG_POWER_AVS=y
> +CONFIG_QCOM_CPR=y
>  CONFIG_ROCKCHIP_IODOMAIN=y
>  CONFIG_POWER_RESET_MSM=y
>  CONFIG_POWER_RESET_XGENE=y
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

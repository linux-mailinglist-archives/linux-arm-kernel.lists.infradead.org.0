Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D910810339F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 06:17:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZClaPY7d9N7bn4kASk1KXM8dIIE3nJNfjBzfwoK+7LQ=; b=digJIqOCk1Oq+y
	bp02h5gjp+ig/AXMc/rRv2uKy2vuPQbRKgp26NUgYEqaNxrDT3SDq8gG2sB3h4f+Csyxj27/f+LRu
	lWQ56u75DX9cmvUlO/B3Ag06mt+98CbZLQGY/D3t7n7hi0jb1N5tS7s5ca/euvZZFdk0hMYz7OOsf
	TEKwYCCK9kzVAEhfQzVTJjWizzZC/zh3a6UG9cecQLztGKUrdv5524Eszf5n3ZZDhDj5QwcyTQ57w
	RPnUf2bOha5hb+VEKYlQ0ZWirztUq/IqG1BMWoX/8H4cUbfs7pistwGvriiJBqx2Kdlg2TxYJn/pO
	9n796ciY3hHZUOZg5ywQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXIMW-0006ji-Eu; Wed, 20 Nov 2019 05:17:08 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXIMO-0006jM-JW
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 05:17:01 +0000
Received: by mail-pf1-x442.google.com with SMTP id q13so13616566pff.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 21:17:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7uNFuGTkHht4kVlmGTndg0AtCQQACOHGMMX+d3QoKic=;
 b=et/J9lmplBBlik2YCaRAp6TG8tH6vVIbWesmrAQ3Aohv3+V3X3VNz6wbtquVLnw2Ly
 c4bIvqpXikhgKLXp/0sVXvheUmBT1PeO3JCszhUOQpv50PFwZ90tDOY6wDnA1KKQNyPb
 IdjfrXc4b0PtcFQdUpAVDaT9DKmNM89f/uJsGvcLxK57Yc2+f/JBlTpwce3F1cdFRPLX
 nfGqmJ/QP3NiwovChHCNcx+TOdfHgCC9qoN/z994JUX932xkcO8HjcKOUEm92tYoU43m
 0kSRxk93EqAZQ3T5zBVxNNL8euORnzsg9hFWfQOVSYpe0jMVaHikzyg+ev3abv/RPk+8
 3ZPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7uNFuGTkHht4kVlmGTndg0AtCQQACOHGMMX+d3QoKic=;
 b=HGdQgsb/4D4k0yYhaKWJeYj/zZ8ITa7q2+HyXzUBjlsEZl+T8YNDULBtbqueSVg7gP
 tB9ai8tZRryahcSYVNKukI2XLtXnwSAszpQUhKj2Zfe8Weo4v6XvwjCvPvYrFFdxaUWj
 dxfL5BitzfqHbO6u5ifJ0yjqb3/gugsBoLRhDr3oFXZUVPfSH7gO8QyKaNVnJZm+eLQ7
 /LRLNje+GbBg7oItDbJjEPbcN9/T26dE4tXazp1QLz9qRfVpTUfoMJkzoK7y27LlUz0d
 tiDfQcPjE4dwHKg1dLktp4TRGkG94e2Dizs1ELRUKylUB1qAVbwYd8xHTba3zh41VlVd
 ULSQ==
X-Gm-Message-State: APjAAAXL9kRl2XKjMBkKAF3datlND8Rkhav51GOUuLD5Z7MOh7IBX2yY
 tNTLEKhub7ps7lV5K49DlyFJRQ==
X-Google-Smtp-Source: APXvYqyzRYmVnEKGm1r5WusT49tJmRjBJ7jzvN2oRZS+WXGVi9Kc9Yyv6xriF+KNAjdw9bjEEjGvlw==
X-Received: by 2002:a63:d642:: with SMTP id d2mr1014621pgj.205.1574227019574; 
 Tue, 19 Nov 2019 21:16:59 -0800 (PST)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id f31sm5451979pjg.31.2019.11.19.21.16.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 21:16:58 -0800 (PST)
Date: Tue, 19 Nov 2019 21:16:56 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Niklas Cassel <niklas.cassel@linaro.org>
Subject: Re: [PATCH v6 5/5] arm64: defconfig: enable
 CONFIG_ARM_QCOM_CPUFREQ_NVMEM
Message-ID: <20191120051656.GU18024@yoga>
References: <20191119154621.55341-1-niklas.cassel@linaro.org>
 <20191119154621.55341-6-niklas.cassel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191119154621.55341-6-niklas.cassel@linaro.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_211700_645125_EEDAF3BF 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

> Enable CONFIG_ARM_QCOM_CPUFREQ_NVMEM.
> 
> Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 4385033c0a34..09aaffd473a0 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -88,6 +88,7 @@ CONFIG_ACPI_CPPC_CPUFREQ=m
>  CONFIG_ARM_ARMADA_37XX_CPUFREQ=y
>  CONFIG_ARM_SCPI_CPUFREQ=y
>  CONFIG_ARM_IMX_CPUFREQ_DT=m
> +CONFIG_ARM_QCOM_CPUFREQ_NVMEM=y
>  CONFIG_ARM_QCOM_CPUFREQ_HW=y
>  CONFIG_ARM_RASPBERRYPI_CPUFREQ=m
>  CONFIG_ARM_TEGRA186_CPUFREQ=y
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

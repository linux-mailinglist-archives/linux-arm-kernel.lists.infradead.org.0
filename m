Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 900A2FDE30
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 13:44:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TRPYEwCynYEHNfDYovmFIY/YwEQmjhAYTJZU339ZNGU=; b=hKpY39Or09em8V
	VmqGrV/JG4zOpuNSE10gCST+YBoApzS9nfwwLP2aShLbN8/MbXa8Wn9bTrQwHr/ltSES+Hwv+Jnn2
	FgGxm2hrfzLEbUmrY4Pv7Fo8pZp+tQxqYDcIQDJTXmAU4aOvhfsOPsWLErM2gjMjtRXWsXip91VgS
	Ln/9rfrRYPIxGQtgXsPwvwdNev1C0fKnQXBTglpsxT/GIkyfvNaB0HuZuZoArZTcFZ6NZJLz9cvpd
	8izB0g7Q0qJZn9S/9AyjDnKcqhfkCdA7hHUgJqVXOVILcWPd7uAoDWQ76M8U1XvQffIBwGxjpunwo
	KdrxfWEnSBJ39xYvbteQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVaxU-0003bc-04; Fri, 15 Nov 2019 12:44:16 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVaxL-0003az-UO
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 12:44:09 +0000
Received: by mail-ed1-x543.google.com with SMTP id w6so7225921edx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 04:44:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=xR5jlMTS/0mlZS9BTKyNRoNtTkP0SvB+AtI0uCjnmWc=;
 b=VxqQGUWcBlv2aNQVn8vSNrrxzjzWrOIDktSkPUulLRJhNNTdjFeZDb5/fVRjZTKnP8
 1jFt7rqqvZPT60aPFJxeup0IbaWzHmxlWlgaVUJIL1TtXOTh4iAcK40t7HoRPhANsmQu
 kB0cWIoWj0D+kjzgn8P/6gGwd9dBVRp4FVGamy7ekphA+aehFSxwtzTJMED7mnXhskBV
 en97mf3TQVlhV8ihLGsVyetY+8B8GFr19ARx7/jixLfUYlGiPg+gZDnYpLChpfIl+Sn4
 CbP5JB1dpPPQ9eIkDiuFLigvqHFDG0/g4sjr0SKs+pJVjfTVZ2HMBKBR2djjcF3SS7yU
 U3DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xR5jlMTS/0mlZS9BTKyNRoNtTkP0SvB+AtI0uCjnmWc=;
 b=eO4unSGZD0TGB57JolLVp/zKjKPtqGDUzcRHHt+A5dMDfbH2ZCIQacdC+Q5QyBgtNd
 wU/TNSB4po8c7PR9MaBe374g7uIzFMbl0EB3YtrQtJV/h+GgU9NwRmPPRhhpEpHXwrWp
 Gq8Z4xc++EdsqHbR7y06kphj03zR5wPE1wqlzkf/LGm4fxYlyPy3XPSWKtM3cTw2jDZl
 CqhDVwiDnP2sZCWYmSw99Nex8Ry3o6FgLVIbhBnzItQaFsTW+85Z7mkXmac69bDV1sJx
 qgxrjlKja2tjanBivNsjU9PC1KkurknSlqRXCIMQKR+aoZU92T2FM7CUP9g5CBS0GYSg
 eM8w==
X-Gm-Message-State: APjAAAVM15201yCR4gv2GY3it/pjKzhr+WuNKY6dA+0p5bacFJQd/ulr
 eO4BMXVRFCyc7utyt/IIJ6mc3bmnrf7Rgw==
X-Google-Smtp-Source: APXvYqwazSl6duqZxWH30Xs6SO99FC1WQeKgdjbmW3vMfzXpP4Vmy/3XbLKCb0ygghb37l01a0+Syg==
X-Received: by 2002:a17:906:af5a:: with SMTP id
 ly26mr693135ejb.252.1573821845901; 
 Fri, 15 Nov 2019 04:44:05 -0800 (PST)
Received: from [192.168.27.209] ([37.157.136.206])
 by smtp.googlemail.com with ESMTPSA id n3sm563860edc.49.2019.11.15.04.44.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 15 Nov 2019 04:44:04 -0800 (PST)
Subject: Re: [PATCH v5 5/5] arm64: defconfig: enable
 CONFIG_ARM_QCOM_CPUFREQ_NVMEM
To: Niklas Cassel <niklas.cassel@linaro.org>, linux-kernel@vger.kernel.org
References: <20191115121544.2339036-1-niklas.cassel@linaro.org>
 <20191115121544.2339036-6-niklas.cassel@linaro.org>
From: Stanimir Varbanov <stanimir.varbanov@linaro.org>
Message-ID: <aed0bac0-ca9d-febd-ac57-120e60e99e0d@linaro.org>
Date: Fri, 15 Nov 2019 14:44:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191115121544.2339036-6-niklas.cassel@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_044408_007986_914E0C80 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 sboyd@kernel.org, linux-arm-msm@vger.kernel.org, amit.kucheria@linaro.org,
 bjorn.andersson@linaro.org, vireshk@kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Niklas,

On 11/15/19 2:15 PM, Niklas Cassel wrote:
> Enable CONFIG_ARM_QCOM_CPUFREQ_NVMEM.

Shouldn't this be selected from qcom-cpr.c Kconfig ?

> 
> Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
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
> 

-- 
regards,
Stan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3911CA298
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 07:23:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wuoDqb9L1/Aidv0Cj+tLIU9kQ4P0MTqJkjpYioSi7GU=; b=PjexAAVjTDIW6L
	UPDyP74UwTWuwboYT/ONYR8lJGQoePTDEjoG0Vtw00TXnclUHFhqEWRVwKWMDHf5Cm1rTvR43vB6z
	pMO2zOcuRdPYrDUnbHtakJIc5gMekLDV2LbMtJpZD50R8n6afouCrikhpooFYyQ0DJ7R7hpmDrrJc
	2uNS8Ok3RcuUG/ofO+CXlGlLpekBZGPfYNbd/AhkXZJUbklGo93uZFJlO7b00c8qgRa4DTrilzmq4
	w3ryT4Ly5QpRf6aXN4BjWhSOaCtf3OcUitKHBQ5vGM16roJiP6GrcsBcghAi/tgzC7yCE+beknBQ/
	vPQ63edeQgzBMJ/HSGBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWvUB-0001KT-Vm; Fri, 08 May 2020 05:23:47 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWvU5-0001Jz-Az
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 05:23:42 +0000
Received: by mail-pl1-x643.google.com with SMTP id k19so223597pll.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 22:23:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0ahYPnFGgIMDjQSfV7hJnYdkOoepBn7h7C04Xu4iOHY=;
 b=XDzzOWAz1DGuofj463zagNRWU0ERqALCX98vKPku9sqz4LvMcN51P3d72Q1dwPOKug
 JS2ZhSqvPLLXWGospnhS5fVo7S2dH2pW2MlVcr24w4fcpMs2HN+rnhumjOBAwZ/BpAVT
 nOlFyscQk06CW/5JRJ+vYsbkJL1hZgohMaJk32ZM8Rgya7RGqAAbXGCwHzIG90eegcso
 7HRQUlZfrmGDNZHGO7Ggh7w9Ys/EHJ2CP0sXH90fc4UBQf3A7Eq/ySjdtzDbpgMOFbd5
 lwn/nJ/ZAjJGH94R7bcboH4d3eDRXIPSNhQLaDqvmt7E4fkGT8MHs2V+BQtWPKjS6n7Q
 FYZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0ahYPnFGgIMDjQSfV7hJnYdkOoepBn7h7C04Xu4iOHY=;
 b=ZlLW2yJWL5qnqtAUv0BJI+y0sxfE63JGK2sE4VNQrZ9DpH2scOxMNG8/otLU32P0Ul
 aT9u1haKUq/OrwvlZXHs62iF2JIHEhzU3JtFezfu/S9VFT9qw8F6v1TFmTR1ifHwTiLy
 3/J4yapMXui9o5/eYNeKNSSKhjCIxz/8EuaM1c8GNQ8b0eavCZ+vdBB/bJqCkJP3S/jx
 n9Ba6EIYpXd9bMa/sEb1XnG7ptOGC1YTlJBRUmvDrZyDPVI0HWQGCCSo3nvgEMrgBgoX
 nyvGoxIuIdvvPBdhFltfLF43QfMU9ZvO7+hKBXUXFgmPDsFE+qoj41dofAC0nKQXuOW9
 btOg==
X-Gm-Message-State: AGi0Pub5GMyzFmcdNUA4Hx8Z1aiFQ4qWeyq43mHdwLDT4HGSr3SQe7u1
 B1hZbiXe5GdTuIIkHvoeVarIjg==
X-Google-Smtp-Source: APiQypLBhp9TJEejGQtByXiKySJX/jdsmq9jhlKhi7eQSSPKRyH4YiAtD9EqAjmvsrH/i3x5jnI3tQ==
X-Received: by 2002:a17:902:a413:: with SMTP id p19mr766371plq.1.1588915420189; 
 Thu, 07 May 2020 22:23:40 -0700 (PDT)
Received: from localhost ([122.171.118.46])
 by smtp.gmail.com with ESMTPSA id w125sm467721pgw.22.2020.05.07.22.23.38
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 May 2020 22:23:39 -0700 (PDT)
Date: Fri, 8 May 2020 10:53:37 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH 2/4] cpufreq: qoriq: Add platform dependencies
Message-ID: <20200508052337.spla662td4kge3wm@vireshk-i7>
References: <20200507112955.23520-1-geert+renesas@glider.be>
 <20200507112955.23520-3-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507112955.23520-3-geert+renesas@glider.be>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_222341_381224_7A515958 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jens Axboe <axboe@kernel.dk>, Amit Kucheria <amit.kucheria@verdurent.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, linux-ide@vger.kernel.org,
 Zhang Rui <rui.zhang@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07-05-20, 13:29, Geert Uytterhoeven wrote:
> The Freescale QorIQ clock controller is only present on Freescale E500MC
> and Layerscape SoCs.  Add platform dependencies to the QORIQ_CPUFREQ
> config symbol, to avoid asking the user about it when configuring a
> kernel without E500MC or Layerscape support.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  drivers/cpufreq/Kconfig | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/cpufreq/Kconfig b/drivers/cpufreq/Kconfig
> index c3e6bd59e9208822..e917501325525f16 100644
> --- a/drivers/cpufreq/Kconfig
> +++ b/drivers/cpufreq/Kconfig
> @@ -323,7 +323,8 @@ endif
>  
>  config QORIQ_CPUFREQ
>  	tristate "CPU frequency scaling driver for Freescale QorIQ SoCs"
> -	depends on OF && COMMON_CLK && (PPC_E500MC || ARM || ARM64)
> +	depends on OF && COMMON_CLK
> +	depends on PPC_E500MC || SOC_LS1021A || ARCH_LAYERSCAPE || COMPILE_TEST
>  	select CLK_QORIQ
>  	help
>  	  This adds the CPUFreq driver support for Freescale QorIQ SoCs

Applied. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

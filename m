Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FB965A7B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 17:29:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iNLYVGlcapNMcOimwQ4lvKRPjAyyf9e7FeMrd/3tfY0=; b=SM71x3KHjVRqy4
	W9y9JvUtjkymkEvfVXwziYRtVO87iTL159FsyEo07DM7h0Si+MOI/o4ACOzUNombEi+hbtLZd/zii
	+FTTQKcwb0CoYotqB/ndT/T/Fs6X8EPRBPRQaMT/Uwny66xPGKKTwQj6u2AStWrMFJ13S2pX4LXfb
	YKGrT9BzHxb1H0bRj55OvhW88ajjqDlaE6nQlo3cFXP21QcA/XA0IXBNAT6MAy7jTECecUASAjOz9
	F/mPh/IstjU+7JIiYL4ETWMAK0yEbp/13W3SykOZGv1zpob2ZtmQrD188fcPE1fXdkOVnsP2Vfu+h
	Z9b69a+xUutpirBDl2Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlb0a-0000Gu-AZ; Thu, 11 Jul 2019 15:29:20 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlb0L-0000GU-5o
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 15:29:06 +0000
Received: by mail-pg1-x543.google.com with SMTP id o13so3096803pgp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 08:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PcMRy6X0HHSU2uwIcDv40X8gHtVe1fCLvC/RPbbBFw4=;
 b=VogL/o35kuGo3WvcW/9vQ/CmCcSo9r2owGFVwrFu27xYKAGlDQM88VY38U9w9AmJgW
 boamIRHIiQBG4PAGALOc7K0FtqCU6KXpqWIz5/1lWvFPzEwNc1dBocfNLQDezt80rcX+
 MvmAf8ekPVs3LZ9Xjk7hNP8oCmKd5RLpPng6wA/LDapUxGTXvc/Y4mRWQtX/XfRSu8++
 +kOWZhY+F/SPRPnHjaFeqWkVXDajd8OVccJUa+tk9zJN48IIUVIDt60ZxcCV2UXMlo3S
 cSW/pXxClE7zM0CdthbPUlJPlX57aUZLdnGWY2532RkdiYBRuXOwcKe0SxY6nsJREwIV
 T/bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PcMRy6X0HHSU2uwIcDv40X8gHtVe1fCLvC/RPbbBFw4=;
 b=FqL99ZtTd65yBu1dlev0/vBCn0+0BDsLKrbD8qy+azrRdEn8xhl1DVBQlNifbMXTnY
 0DRH+CqlvCq9+WWxEYV5d4vob9KzVdC5vztPRxN8OuqKVSGx+w/RzPuyDmqakeBinIvB
 OTXU3ByNQlbTznfh+oOYY3QSCKhjfFs+wz1+Sw3YFpB5ADUP2vlvELzWxdquLv7Lq2zA
 NTTPwh/zU402DPR6uBuwRWZA8FMSD4cT1oIaNpSL/dM7d+jT0y8swQ/DZpfEH92IyPJu
 dUP19c1kvnp5h51uZTs/jqMmyGGXbxds6jBmLPzURq35ZbhM66O0EyzCqz9rXgJvIdlV
 pGGg==
X-Gm-Message-State: APjAAAWwfse6yU5ZZmnF2muqqD5JkP0LF1WRPDqUSv4hbEs9eo4sxnok
 KuwX9Z8PH6k7flRu7Rv5FZvXEg==
X-Google-Smtp-Source: APXvYqye77G4dqCcEDk9TrwQUc54J1XQtP5On/iH7qLF9Xse0wzIzE59xj0a6xO3SOJ4Hb76Q4idjA==
X-Received: by 2002:a65:62c4:: with SMTP id m4mr4876927pgv.243.1562858944051; 
 Thu, 11 Jul 2019 08:29:04 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id s43sm8776852pjb.10.2019.07.11.08.29.01
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 08:29:03 -0700 (PDT)
Date: Thu, 11 Jul 2019 08:30:13 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Subject: Re: [PATCH v3 01/14] clk: qcom: gcc: limit GPLL0_AO_OUT operating
 frequency
Message-ID: <20190711153013.GP7234@tuxbook-pro>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
 <20190625164733.11091-2-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625164733.11091-2-jorge.ramirez-ortiz@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_082905_237148_A98AAA2A 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: mark.rutland@arm.com, heiko@sntech.de, mturquette@baylibre.com,
 will.deacon@arm.com, david.brown@linaro.org, linux-clk@vger.kernel.org,
 jassisinghbrar@gmail.com, sibis@codeaurora.org, jagan@amarulasolutions.com,
 devicetree@vger.kernel.org, niklas.cassel@linaro.org, arnd@arndb.de,
 linux-arm-msm@vger.kernel.org, olof@lixom.net, robh+dt@kernel.org,
 horms+renesas@verge.net.au, linux-arm-kernel@lists.infradead.org,
 sboyd@kernel.org, linux-kernel@vger.kernel.org, amit.kucheria@linaro.org,
 vkoul@kernel.org, khasim.mohammed@linaro.org, enric.balletbo@collabora.com,
 georgi.djakov@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 25 Jun 09:47 PDT 2019, Jorge Ramirez-Ortiz wrote:

> Limit the GPLL0_AO_OUT_MAIN operating frequency as per its hardware
> specifications.
> 
> Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
> Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
> Acked-by: Stephen Boyd <sboyd@kernel.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  drivers/clk/qcom/clk-alpha-pll.c | 8 ++++++++
>  drivers/clk/qcom/clk-alpha-pll.h | 1 +
>  drivers/clk/qcom/gcc-qcs404.c    | 2 +-
>  3 files changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/qcom/clk-alpha-pll.c b/drivers/clk/qcom/clk-alpha-pll.c
> index 0ced4a5a9a17..ef51f302bdf0 100644
> --- a/drivers/clk/qcom/clk-alpha-pll.c
> +++ b/drivers/clk/qcom/clk-alpha-pll.c
> @@ -730,6 +730,14 @@ static long alpha_pll_huayra_round_rate(struct clk_hw *hw, unsigned long rate,
>  	return alpha_huayra_pll_round_rate(rate, *prate, &l, &a);
>  }
>  
> +const struct clk_ops clk_alpha_pll_fixed_ops = {
> +	.enable = clk_alpha_pll_enable,
> +	.disable = clk_alpha_pll_disable,
> +	.is_enabled = clk_alpha_pll_is_enabled,
> +	.recalc_rate = clk_alpha_pll_recalc_rate,
> +};
> +EXPORT_SYMBOL_GPL(clk_alpha_pll_fixed_ops);
> +
>  const struct clk_ops clk_alpha_pll_ops = {
>  	.enable = clk_alpha_pll_enable,
>  	.disable = clk_alpha_pll_disable,
> diff --git a/drivers/clk/qcom/clk-alpha-pll.h b/drivers/clk/qcom/clk-alpha-pll.h
> index 66755f0f84fc..6b4eb74706b4 100644
> --- a/drivers/clk/qcom/clk-alpha-pll.h
> +++ b/drivers/clk/qcom/clk-alpha-pll.h
> @@ -104,6 +104,7 @@ struct alpha_pll_config {
>  };
>  
>  extern const struct clk_ops clk_alpha_pll_ops;
> +extern const struct clk_ops clk_alpha_pll_fixed_ops;
>  extern const struct clk_ops clk_alpha_pll_hwfsm_ops;
>  extern const struct clk_ops clk_alpha_pll_postdiv_ops;
>  extern const struct clk_ops clk_alpha_pll_huayra_ops;
> diff --git a/drivers/clk/qcom/gcc-qcs404.c b/drivers/clk/qcom/gcc-qcs404.c
> index 29cf464dd2c8..18c6563889f3 100644
> --- a/drivers/clk/qcom/gcc-qcs404.c
> +++ b/drivers/clk/qcom/gcc-qcs404.c
> @@ -330,7 +330,7 @@ static struct clk_alpha_pll gpll0_ao_out_main = {
>  			.parent_names = (const char *[]){ "cxo" },
>  			.num_parents = 1,
>  			.flags = CLK_IS_CRITICAL,
> -			.ops = &clk_alpha_pll_ops,
> +			.ops = &clk_alpha_pll_fixed_ops,
>  		},
>  	},
>  };
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

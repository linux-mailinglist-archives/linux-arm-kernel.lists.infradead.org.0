Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C0D65A5A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 17:24:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/6ZXbkRHEcx35D9IAkqBSxzr0MsqTpnnwXsLAw6SMB8=; b=pOEEsDV+/QBapE
	TU3Egx+QDABNX4Q5r5rmVtZ71tu3U+dZU1NH4SYKq2KN4X8XTJcvp4WuHtNubx3KG8FqdIOMHeq1A
	NVt2qamMgqvvqrmdyObha6JhJ0Fb3hDGCL98E9U4GEGGZAtYBWHJ20AOEAB15/XvmMSDqewzyh2i8
	Z87ib1+ZtcMctkEwJm4rmIUicmLRYo6WPwIVfgzMbkrOz8CsfLYWyB+sAupX6OOFtusA/bL7MpztJ
	nLCE7CUYYo7SssC5TbCq5IFXRu4ZVV4UK9S1Fn3tzvOjxM0OeTaMQfbiu+NYmxfmkALnkNHLMYzVI
	Phhc9eiSnUgT0yWmsw3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlawI-0005C3-OM; Thu, 11 Jul 2019 15:24:54 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlavv-00056w-3I
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 15:24:32 +0000
Received: by mail-pf1-x443.google.com with SMTP id p184so2918762pfp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 08:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TsgjI6A1vEKCJVe48OG6ptqWe4oPYT0gZQ720DWV3VE=;
 b=ozetUNtyRheSd+VdhwPAM5wrvc+f8mvMKkOURx4/tEoKFISzUJmS2477HhXfCIFOOS
 FmYLSbqB6AnpJiH1KJDfDXI9d90HYrEM4D35rnTVknKkedp+M7KAaCeBmhgsPmYZdTuB
 XwUHoyrBmI3pZNPuVHmPlUWXzsDmo6WQEXhM7O+jL0cC+aflW9noghj5znx8UpJ/DibH
 g8pLQWyE2/aPdUUjAcVceo6GVMiwSHKlFor+rNNwBQhJPqGrND07WghJ+prqY9B7iF+3
 z8u6xfmhxGxyrAf+elgdVXM4+Jhe55JgvuZapNURsgMUkVsrBUW1qxfv7wCVlm4mUMei
 Kxqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TsgjI6A1vEKCJVe48OG6ptqWe4oPYT0gZQ720DWV3VE=;
 b=CsqKSDChaCx6G1rtEFBbtqoOH5Eg/ZH5cyuAkYS/eTuOesZxaf7XUpXXUTD6u0qjkq
 GkDHjskcuJRDP/rZsbkk0h2C+rSpulcM/bddngC41gIJTSOAdSGh6wCWzOn6+XZFOhTr
 otpPsWsxFlQH1X4+bkgREWCPnvpNJ98ZiTcz5meQOIzoheArx8f8zPu7J0UdlXQtqE+4
 ByQKdwdcPKFAcQ6cbmFsoLMwZlcEIBjkdji4xNy+fnOrb7JgrL3e3baKnKavRORs31UY
 YDHECtYbv9eFwgoKFqMwbeL2Dh95vxGVXr1JBrrqgqG+C/tIN2jPtEOhegY4UVA6CCZX
 Lncw==
X-Gm-Message-State: APjAAAWdz1Exn8om0p2w+vHPsnoA0EQKPI0wZe5fHTH93qzdw/MJNsh9
 WOtSXeJlPnANUfZ0Z72dxkc2yA==
X-Google-Smtp-Source: APXvYqyEpYbkpfwqRdcziDPck/m5fzfiUQiMpS/Mps7J1p8ekHZ6G5fQe/WamqVJ8U7S4TKMOB6gmA==
X-Received: by 2002:a63:211c:: with SMTP id h28mr4999710pgh.438.1562858670371; 
 Thu, 11 Jul 2019 08:24:30 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id v14sm4462918pfm.164.2019.07.11.08.24.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 08:24:29 -0700 (PDT)
Date: Thu, 11 Jul 2019 08:25:39 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Subject: Re: [PATCH v3 11/14] arm64: dts: qcom: qcs404: Add HFPLL node
Message-ID: <20190711152539.GL7234@tuxbook-pro>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
 <20190625164733.11091-12-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625164733.11091-12-jorge.ramirez-ortiz@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_082431_161368_AF6B5A7E 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

> The high frequency pll functionality is required to enable CPU
> frequency scaling operation.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
> Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/qcs404.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> index d876dae5b0a5..94471aa31979 100644
> --- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> @@ -852,6 +852,15 @@
>  			#mbox-cells = <1>;
>  		};
>  
> +		apcs_hfpll: clock-controller@b016000 {
> +			compatible = "qcom,hfpll";
> +			reg = <0x0b016000 0x30>;
> +			#clock-cells = <0>;
> +			clock-output-names = "apcs_hfpll";
> +			clocks = <&xo_board>;
> +			clock-names = "xo";
> +		};
> +
>  		timer@b120000 {
>  			#address-cells = <1>;
>  			#size-cells = <1>;
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

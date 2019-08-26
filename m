Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 497039C9AE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 08:54:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k44ne17eLOJFNvQA2gk439Hjz4NTntvRXBkAjKdVtaY=; b=o7QLe05se4g93d
	AmhWjrUStqYdqmnUiwukLbuUL2FC/6jUuC/WRaJoRKdDspxiQwgDc1QvDyNiiddDp0g09iPJ63Ye/
	I9/RAw+eQgqPUyV4C0tuk+7DGVdlz56IdQLreH4ZJlbBDTqEeMILRPgMRKlJOmXO0JkBuSGsVIdQH
	IMCNZNHUxslcHr3447Zzf4QI1lX5i/7L6fzli9wLUpUrLT0doy+VWMKA7390wF5adK8zP2+J6OXLd
	ivjDanR3yq73aFXoLOSScTZbSoLNtlsHnOlyaFBlJrOCkXf0+zG2XPHYSv6amus3qOAHnpmfmaqS4
	sYslSrph8jbtRj2WS5dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i28ti-0004GL-Hr; Mon, 26 Aug 2019 06:54:38 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i28tV-0004Ft-LZ
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 06:54:27 +0000
Received: by mail-wm1-x343.google.com with SMTP id c5so14480922wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 25 Aug 2019 23:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=LH8nuwe3bP13Yh7NeNLMzBxJFkFlumQfww0naVQY/ic=;
 b=LCKeDRHYsRuEnlvZBnUZvzlNwB9+uBMhgLw2RQRHMk469Bah+ulWs22MJkkPRZMWBq
 PXd2Nqlthk6llZ1Nlrf/ilqULuN0coVOGycDiu2ktGUfc3Pxq4V515Tf1V+BdifPZnBf
 a7yr+ohEiAnj4bsTimn9WVAFRkWQ4lFvKMdcS0yzkIJ6pH4lFcS/hDX3+1751Q5dKaqf
 TFuPAlhXMhrnP5xTxsvYNNPuRsrpW4HoVeXYXSt/3qWpniEpP63uLIQumqO/hiVDF5CA
 IaRCnNtpR0D7AusVR1jjWFPV+GmisgVxzdNRsEWzgYkZ148Az17Jebj1e2PpqR41m7vB
 eBzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LH8nuwe3bP13Yh7NeNLMzBxJFkFlumQfww0naVQY/ic=;
 b=AcmcJruykdElkDRva/BwdAwfcnVnUX72prNDN2exlToFl/q/g5MoJ0y5O/nP23eYTy
 KeGchPkc4nS7NzGHKW9nrRIWWGwd4TWBABGb34rKAf0nrXn84QXwHFbQiFDRFSUqXn6+
 OFzYi3jgsDdthQ//mz2C2x9i1f3YFBzdvU8CNItDXEQSSsUwDuiGBDbNeQjZhzAKmOxc
 WJJ92jBWysWodxbwTpSYecU3j8JJe9uaPS8vrlmD3SEIgAPDhPrdOGdeT0ISJcvZZx38
 qOim2wdJTdulPACAAczbR/ae2vzq8Mqs60TjD1bcT/md8S0Z64xirNF94PtbV9lqrSov
 bnCg==
X-Gm-Message-State: APjAAAXs8H4317RXbd7EOl81Uhmmbb3SyrkJ2mWqRHX9cvid0AIgo0xs
 kZdToBUdzZLVUNINojoCS/cLe8JEnYE=
X-Google-Smtp-Source: APXvYqxt1jP0j8SrYkUtzWli7NAQFzABzPzsKaH1f6iL2LCqMpOvb1zMBOdbwIM4e7gPbL/kITthQQ==
X-Received: by 2002:a7b:c7cb:: with SMTP id z11mr18346191wmk.24.1566802462979; 
 Sun, 25 Aug 2019 23:54:22 -0700 (PDT)
Received: from [192.168.1.6] (124.red-83-36-179.dynamicip.rima-tde.net.
 [83.36.179.124])
 by smtp.gmail.com with ESMTPSA id g26sm11091714wmh.32.2019.08.25.23.54.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 25 Aug 2019 23:54:22 -0700 (PDT)
Subject: Re: [PATCH v4 00/13] Support CPU frequency scaling on QCS404
To: bjorn.andersson@linaro.org, sboyd@kernel.org, david.brown@linaro.org,
 jassisinghbrar@gmail.com, mark.rutland@arm.com, mturquette@baylibre.com,
 robh+dt@kernel.org, will.deacon@arm.com, arnd@arndb.de,
 horms+renesas@verge.net.au, heiko@sntech.de, sibis@codeaurora.org,
 enric.balletbo@collabora.com, jagan@amarulasolutions.com, olof@lixom.net
References: <20190731202929.16443-1-jorge.ramirez-ortiz@linaro.org>
From: Jorge Ramirez <jorge.ramirez-ortiz@linaro.org>
Message-ID: <f34a75d0-c479-267d-b4a1-c2418d4efb22@linaro.org>
Date: Mon, 26 Aug 2019 08:54:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190731202929.16443-1-jorge.ramirez-ortiz@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_235425_740238_5502FA47 
X-CRM114-Status: GOOD (  22.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 khasim.mohammed@linaro.org, linux-kernel@vger.kernel.org,
 amit.kucheria@linaro.org, linux-clk@vger.kernel.org, vkoul@kernel.org,
 niklas.cassel@linaro.org, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/31/19 22:29, Jorge Ramirez-Ortiz wrote:
> The following patchset enables CPU frequency scaling support on the
> QCS404 (with dynamic voltage scaling).
> 
> It is important to notice that this functionality will be superseded
> by Core Power Reduction (CPR), a more accurate form of AVS found on
> certain Qualcomm SoCs.
> 
> Some of the changes required to support CPR do conflict with the
> configuration required for CPUFreq.
> 
> In particular, the following commit for CPR - already merged - will
> need to be reverted in order to enable CPUFreq.
> 
>    Author: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
>    Date:   Thu Jul 25 12:41:36 2019 +0200
>        cpufreq: Add qcs404 to cpufreq-dt-platdev blacklist
>     
> Patch 8 "clk: qcom: hfpll: CLK_IGNORE_UNUSED" is a bit controversial;
> in this platform, this PLL provides the clock signal to a CPU
> core. But in others it might not.
> 
> We opted for the minimal ammount of changes without affecting the
> default functionality: simply bypassing the COMMON_CLK_DISABLE_UNUSED
> framework and letting the firwmare chose whether to enable or disable
> the clock at boot. However maybe a DT property and marking the clock
> as critical would be more appropriate for this PLL. we'd appreciate the
> maintainer's input on this topic.
> 
> v2:
>    - dts: ms8916: apcs mux/divider: new bindings
>      (the driver can still support the old bindings)
> 
>    - qcs404.dtsi
>      fix apcs-hfpll definition
>      fix cpu_opp_table definition
> 
>    - GPLL0_AO_OUT operating frequency
>      define new alpha_pll_fixed_ops to limit the operating frequency
> 
> v3:
>   - qcom-apcs-ipc-mailbox
>     replace goto to ease readability
> 
>   - apcs-msm8916.c
>     rework patch to use of_clk_parent_fill
> 
>   - hfpll.c
>     add relevant comments to the code
> 
>   - qcs404.dtsi
>     add voltage scaling support
> 
> v4:
>  - squash OPP definition and DVFS enablement in dts
>    (patches 10 and 13 in previous version)
>    
>  - qcom-apcs-ipc-mailbox
>    replace return condition for readability
>    
>  - answer one question on CLK_IGNORE_UNUSED in mailing list
> 
> Jorge Ramirez-Ortiz, Niklas Cassel (13):
>   clk: qcom: gcc: limit GPLL0_AO_OUT operating frequency
>   mbox: qcom: add APCS child device for QCS404
>   mbox: qcom: replace integer with valid macro
>   dt-bindings: mailbox: qcom: Add clock-name optional property
>   clk: qcom: apcs-msm8916: get parent clock names from DT
>   clk: qcom: hfpll: get parent clock names from DT
>   clk: qcom: hfpll: register as clock provider
>   clk: qcom: hfpll: CLK_IGNORE_UNUSED
>   arm64: dts: qcom: msm8916: Add the clocks for the APCS mux/divider
>   arm64: dts: qcom: qcs404: Add HFPLL node
>   arm64: dts: qcom: qcs404: Add the clocks for APCS mux/divider
>   arm64: dts: qcom: qcs404: Add DVFS support
>   arm64: defconfig: Enable HFPLL
> 
>  .../mailbox/qcom,apcs-kpss-global.txt         | 24 +++++++++--
>  arch/arm64/boot/dts/qcom/msm8916.dtsi         |  3 +-
>  arch/arm64/boot/dts/qcom/qcs404.dtsi          | 43 +++++++++++++++++++
>  arch/arm64/configs/defconfig                  |  1 +
>  drivers/clk/qcom/apcs-msm8916.c               | 23 ++++++++--
>  drivers/clk/qcom/clk-alpha-pll.c              |  8 ++++
>  drivers/clk/qcom/clk-alpha-pll.h              |  1 +
>  drivers/clk/qcom/gcc-qcs404.c                 |  2 +-
>  drivers/clk/qcom/hfpll.c                      | 25 ++++++++++-
>  drivers/mailbox/qcom-apcs-ipc-mailbox.c       | 11 +++--
>  10 files changed, 128 insertions(+), 13 deletions(-)
> 

any feedback on this set?

TIA

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

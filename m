Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0109103968
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 13:01:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6vyD8R7YdUfv76W58W7ZsT33gJIx/45HL91kVOB0s4g=; b=jGKHFQRCDmePQg
	fSN2PpEmOpu1AeUdamJpQThcAx0oxxzD1NlC9+ReavPsSkKY+1XxbW1mkaVl3fpzeoJoElFp3zJG5
	NJseYXJcMm3FI0RpvArH+Y3dQPmLDxxaw+j06lyLz6eLptzkotQXn9Y0jq90+f48aFqvYgGritxOQ
	W/dlQ3fBFdTszYmpTOX+Dx9V4OM9oYiTsuIXnzmjogfsZyQjbAqJcjevC68KEbMw8j/O2px2ecl6D
	nnZ+G0uYXQ2Xu/uypL545pp2ymFJrDLBFkmo93O3fUFGcxsvMftxmkSdPbWoZmbAI1v9vMx1QaNvH
	Zkgw3Umbt6jUG4dbRT4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXOg6-0005JL-Nr; Wed, 20 Nov 2019 12:01:46 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXOf5-000460-AP
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 12:00:45 +0000
Received: by mail-ua1-x942.google.com with SMTP id u99so7688152uau.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 04:00:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=B0tsxj8KZGAT/o1qcGiW6HKsR+OIwQVXMM2ODuLvIpk=;
 b=EqVhZA3XS/izMBNsikllPUdPo/A4jO0CJ2WlCc6sonVPI2GnfaVvbdDuNlHdyVmBWs
 04nfUBbI06D35YPWUGTFpPWM+eHRl7KJqzvMQZ83STlGgvja0fblAtHeSfAFZaJtrKA1
 zmFiNtK3ttF7B1Fj4bDCbrnfA1x2DjrISFT4bYrf4bnivgaf2hWaN/7r/wMso4uvtHqe
 shcCcvg8GlTnd3B7NHCeEdi4N+JTWa5XVlWqJoGC8NG0l9O8cxzUQYX3uLaU9pld4Ptn
 uKq5VO98MpAoB+6hx23bKtwlM4Kx3cxqoTlHoH7OXOjuf6SVEg0kUKz7XdpkTWoKVgaL
 HNqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B0tsxj8KZGAT/o1qcGiW6HKsR+OIwQVXMM2ODuLvIpk=;
 b=VMu3kKsCof2fuMH2lm9CVxBUtjkwfZs6TjjDOyTcujReP7TSuCQvde0iRcFO93jujA
 0CaZmzmZGQoV7Vkd1WEBBCHwxRNmimFY3fhaZrh1JvuKWgxyV5jwbC4cS9l9U7Gv/Qtx
 tNiorq6pjMsmg4XvRgcDVPR4gk0pbDLJmELnYbNL8PnoNrM1oq2QSshfmBLrLI433Rkm
 UBeadnObNePHnBACeQ2sVaMCt22HOlZ/9xv5zZkWvW4eRTRUXydHy91SEbyadBWN5871
 Cp5NN3yrPdRdemWs5ti7P8os4evDm2dUYq23NagHkISW4CYrFCbNDJhFOj5kUjv4TJUg
 d9iw==
X-Gm-Message-State: APjAAAU8dXRE/Vh4SXh9L9/sVmV2+kuXLtzFd9AdRvfY5lheafGA/wBC
 M1FBBETCymkzX6mxG/6g3eD9OQ674C3jLp00JayRhg==
X-Google-Smtp-Source: APXvYqyiLCF3MBQoSmzlqqxli2MvGV261pRD3zdGvysKb7s9Nit3G2b6p/dRiZmGs4K0UtVDM+P1vhy5Y89wBip3NWE=
X-Received: by 2002:ab0:74cd:: with SMTP id f13mr1351834uaq.104.1574251241748; 
 Wed, 20 Nov 2019 04:00:41 -0800 (PST)
MIME-Version: 1.0
References: <20191119154621.55341-1-niklas.cassel@linaro.org>
In-Reply-To: <20191119154621.55341-1-niklas.cassel@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 20 Nov 2019 13:00:05 +0100
Message-ID: <CAPDyKFqjsJSRW7XvfUe2Ssewqxo5Xjk_3p_EywP_rTsvrdNDYQ@mail.gmail.com>
Subject: Re: [PATCH v6 0/5] Add support for QCOM Core Power Reduction
To: Niklas Cassel <niklas.cassel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_040043_389711_A7DEA3D8 
X-CRM114-Status: GOOD (  18.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
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
Cc: DTML <devicetree@vger.kernel.org>, Linux PM <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Viresh Kumar <vireshk@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 19 Nov 2019 at 16:46, Niklas Cassel <niklas.cassel@linaro.org> wrote:
>
> This series adds support for Core Power Reduction (CPR), a form of
> Adaptive Voltage Scaling (AVS), found on certain Qualcomm SoCs.
>
> This series is based on top of the qcs404 cpufreq patch series that
> hasn't landed yet:
> https://patchwork.kernel.org/project/linux-arm-msm/list/?series=173423
> as well as that series' matching device tree changes:
> https://patchwork.kernel.org/project/linux-arm-msm/list/?series=165457
>
> For testing purposes, this patch series, including the dependencies
> listed above, is available on the following git tag:
> https://git.linaro.org/people/niklas.cassel/kernel.git/log/?h=cpr-v6
>
> CPR is a technology that reduces core power on a CPU or on other device.
> It reads voltage settings from efuses (that have been written in
> production), it uses these voltage settings as initial values, for each
> OPP.
>
> After moving to a certain OPP, CPR monitors dynamic factors such as
> temperature, etc. and adjusts the voltage for that frequency accordingly
> to save power and meet silicon characteristic requirements.
>
> This driver has been developed together with Jorge Ramirez-Ortiz, and
> is based on an RFC by Stephen Boyd[1], which in turn is based on work
> by others on codeaurora.org[2].
>
> [1] https://lkml.org/lkml/2015/9/18/833
> [2] https://source.codeaurora.org/quic/la/kernel/msm-4.14/tree/drivers/regulator/cpr-regulator.c?h=msm-4.14
>
> Changes since v5:
> -Removed pm_ops from platform_driver struct.
>  (This was embarrassingly not properly removed in previous patch revision.)
>
> Niklas Cassel (5):
>   dt-bindings: power: avs: Add support for CPR (Core Power Reduction)
>   power: avs: Add support for CPR (Core Power Reduction)
>   arm64: dts: qcom: qcs404: Add CPR and populate OPP table
>   arm64: defconfig: enable CONFIG_QCOM_CPR
>   arm64: defconfig: enable CONFIG_ARM_QCOM_CPUFREQ_NVMEM
>
>  .../bindings/power/avs/qcom,cpr.txt           |  130 ++
>  MAINTAINERS                                   |    8 +
>  arch/arm64/boot/dts/qcom/qcs404.dtsi          |  132 +-
>  arch/arm64/configs/defconfig                  |    2 +
>  drivers/power/avs/Kconfig                     |   15 +
>  drivers/power/avs/Makefile                    |    1 +
>  drivers/power/avs/qcom-cpr.c                  | 1754 +++++++++++++++++
>  7 files changed, 2034 insertions(+), 8 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/power/avs/qcom,cpr.txt
>  create mode 100644 drivers/power/avs/qcom-cpr.c
>
> --
> 2.23.0
>

For the series (except patch 2 that I provided some comment for), feel
free to add:

Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

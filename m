Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 778D81F9E48
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 19:18:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NfF33Pc9wr9uXCCcBWMEHFzOTZKYAnqN8M2BAoWmc8k=; b=Tp0Oli76plgjJk
	VVzZWBbYzheOJBWXXjSpb5+rHNx57DHGhtPmsuT9CEJdWJXc0kbYCo17mahcIuGHRRXbCJkEaN7PM
	8xMQ2oESolTWjxTjLSdMyjYVcmgLcBwVXFlRAL7H6n8m3egIgBVJu2L7dGpZScpFM32dpgYfxKKEA
	ncbXVmT37Wb7bbAN5tikHIoou05AcQ4aWRfOEHN1spKXRcyB7iYKxCwfb83vKSHclqlt8X4SaG8iP
	90uacDfcomnamGcZdvQe+p/+gFHfnd4zmjvrVOTeHrBFenSJazAbgIgF7IYDa2WjiTweIf7bqvAS/
	yBJ37gqjW+vtbiZk8TkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkskK-0002vt-RD; Mon, 15 Jun 2020 17:18:08 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkskB-0002vQ-JO
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 17:18:01 +0000
Received: by mail-pf1-x441.google.com with SMTP id b5so8083553pfp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 10:17:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=4tBg685n+rvOlJARxC/GZpj7s58rUY4EPS7OgTBXC28=;
 b=qMf5OWp/BZGBVGr6GzBckHt7yZutPv6Ww0rfvb7z0X6LV4pWqnPy6J1A3STjwKZMWi
 nVBys61Vt7LoY86iMXOZtz8Cac6wHUA2uwAWybbItiJy9TChYqMS/gjHJq7rL09/sOEt
 OesmI/6d7jNHv1UL/WtnVV2TkJ1V58mZCeuO+YMK4uWp9VM1H30g9Bn3c1JbNohJWFSI
 csKqKPb8i+P6Mgo+G2Y4CwGRgBi6Vh+Y2RfjP2BhRdNoVTapT7y0zBIe3Ub5RALjtJkc
 SQzsXAoZWDnwZnBThFKWfsLfnuezFzF4YfSabLLP3QzLPYn8qzqhyspUwgqqPjxetusa
 4fHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=4tBg685n+rvOlJARxC/GZpj7s58rUY4EPS7OgTBXC28=;
 b=GMNC+zDHmV17p60UM52mjwqgNjwDNErEA8yWxx2CdDATzHDngnZTnPAXhx5TOKMLTf
 6EicDUpoWl7GgF+U+Fu5Z5PpXoR/YQWHG0NqA2B0aePJ3MCFu8Lj98Dpv2GMxazHM4PM
 6E/3rRJXykTTrkglpoz2BxxdRcNg4MVwfpcAvBrd2zM/ynr79S7Gh8Rsj9X6g+qm3eL+
 Kud7mwKDbJ21g6Dkb5miIGmcfQu2UM/6w9oRz7ZWzlnXSUlDIVqr/oHJPRdO/lUaseu5
 vK5AOQ4tt1w25a4O2bLxkYGK4SgdAM/0jg0mpCiZPm1qNJ1/kZxryH6TvlbrRjaPgl02
 lJ5g==
X-Gm-Message-State: AOAM533EpvLfX/wo1ApqWeOkt3KwELWcKZ7xDhrnJ3dQatkK7WU4+NA0
 SgZdmfKLufCxfP8sLgcHDLYNMw==
X-Google-Smtp-Source: ABdhPJzDcXoNX77HGgl+fpRA2bt04/aYiGdDfkkyODxwlkE3OkNhPp/3uUdSH5iaHvmi/LICqc75gQ==
X-Received: by 2002:a62:640b:: with SMTP id y11mr23794549pfb.195.1592241478412; 
 Mon, 15 Jun 2020 10:17:58 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id i22sm14310258pfo.92.2020.06.15.10.17.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 10:17:57 -0700 (PDT)
Date: Mon, 15 Jun 2020 11:17:55 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH 1/4] arm64: dts: qcom: sc7180: Add support to skip
 powering up of ETM
Message-ID: <20200615171755.GA225607@xps15>
References: <cover.1591708204.git.saiprakash.ranjan@codeaurora.org>
 <8c5ff297d8c89d9d451352f189baf26c8938842a.1591708204.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8c5ff297d8c89d9d451352f189baf26c8938842a.1591708204.git.saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_101759_647545_F54D124C 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
Cc: devicetree@vger.kernel.org, Jonathan Marek <jonathan@marek.ca>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 09, 2020 at 07:00:28PM +0530, Sai Prakash Ranjan wrote:
> Add "qcom,skip-power-up" property to skip powering up ETM
> on SC7180 SoC to workaround a hardware errata where CPU
> watchdog counter is stopped when ETM power up bit is set
> (i.e., when TRCPDCR.PU = 1).
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
> 
> Depends on ETM driver change here:
>  - https://git.linaro.org/kernel/coresight.git/commit/?h=next-v5.8-rc1&id=159e248e75b1b548276b6571d7740a35cab1f5be 
> 
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index 7c2b79dda3d7..f684a0b87848 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -1810,6 +1810,7 @@
>  			clocks = <&aoss_qmp>;
>  			clock-names = "apb_pclk";
>  			arm,coresight-loses-context-with-cpu;
> +			qcom,skip-power-up;
>  
>  			out-ports {
>  				port {
> @@ -1829,6 +1830,7 @@
>  			clocks = <&aoss_qmp>;
>  			clock-names = "apb_pclk";
>  			arm,coresight-loses-context-with-cpu;
> +			qcom,skip-power-up;
>  
>  			out-ports {
>  				port {
> @@ -1848,6 +1850,7 @@
>  			clocks = <&aoss_qmp>;
>  			clock-names = "apb_pclk";
>  			arm,coresight-loses-context-with-cpu;
> +			qcom,skip-power-up;
>  
>  			out-ports {
>  				port {
> @@ -1867,6 +1870,7 @@
>  			clocks = <&aoss_qmp>;
>  			clock-names = "apb_pclk";
>  			arm,coresight-loses-context-with-cpu;
> +			qcom,skip-power-up;
>  
>  			out-ports {
>  				port {
> @@ -1886,6 +1890,7 @@
>  			clocks = <&aoss_qmp>;
>  			clock-names = "apb_pclk";
>  			arm,coresight-loses-context-with-cpu;
> +			qcom,skip-power-up;
>  
>  			out-ports {
>  				port {
> @@ -1905,6 +1910,7 @@
>  			clocks = <&aoss_qmp>;
>  			clock-names = "apb_pclk";
>  			arm,coresight-loses-context-with-cpu;
> +			qcom,skip-power-up;
>  
>  			out-ports {
>  				port {
> @@ -1924,6 +1930,7 @@
>  			clocks = <&aoss_qmp>;
>  			clock-names = "apb_pclk";
>  			arm,coresight-loses-context-with-cpu;
> +			qcom,skip-power-up;
>  
>  			out-ports {
>  				port {
> @@ -1943,6 +1950,7 @@
>  			clocks = <&aoss_qmp>;
>  			clock-names = "apb_pclk";
>  			arm,coresight-loses-context-with-cpu;
> +			qcom,skip-power-up;

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

>  
>  			out-ports {
>  				port {
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE7015527E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 07:41:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CVqqAsGb4TyVlRkg+ajwNMRbKB0+LCZsDtr5wfBy8B0=; b=q/tCbLjemrIndzJJM7XOdYQT6
	ezzijpHTAg4DqC+xxGr1EQPEDk7boBsqb2QNikv621LWigzBImqVqU6U++PMj1S2Ia8g7wYiPQ27o
	uDH60n+r+LTIIxUjq7PLrPv2Uz/GcC4yxB+QmwmRGS+d+bZjxqx9ZP45Vie92H9azJ6SOuN+VAeFN
	D19yn9fs9Q3aX5tspHYAOpvLgX6av3evwI626eqjK3eohO31k3RufcPUq+cUD0QaHXoE+qNqNrIzG
	Y1UDJLXuuy2NPJcExHxVKkphjNP5kfUdlbgYltqdrVwBS6Ay83228lw2gd6Jl2Uj6ZKFmtcb5i1tA
	oXnkj9wNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izxKI-0007jd-Pn; Fri, 07 Feb 2020 06:41:18 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izxK9-0007ii-NF
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 06:41:12 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581057670; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=YcmWYUVZoZZ5xp+hXjD/DbuPvpwvOawaFCYTP2ks1V4=;
 b=OBd7LKqCUkoPudD7toUUbEXP+sieTkESdIPQ6xBViRXE0Q1G2Dp8XBNvceogRpRDQyZN7kx2
 HuI3bFGD7x3sGcl6VKrzoXURUMpg6bWJ9smRDSZNNNvlGz77lHckLsQIxaYzHdqGr1KxAhjR
 k6s9ErI9mTiO+z+qyoxIEr6tJFM=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e3d0681.7fd98a9537d8-smtp-out-n01;
 Fri, 07 Feb 2020 06:41:05 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 4827FC433A2; Fri,  7 Feb 2020 06:41:04 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: sibis)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E2126C433CB;
 Fri,  7 Feb 2020 06:41:03 +0000 (UTC)
MIME-Version: 1.0
Date: Fri, 07 Feb 2020 12:11:03 +0530
From: Sibi Sankar <sibis@codeaurora.org>
To: Rakesh Pillai <pillair@codeaurora.org>
Subject: Re: [PATCH v6] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module
 device node
In-Reply-To: <1580822300-4491-1-git-send-email-pillair@codeaurora.org>
References: <1580822300-4491-1-git-send-email-pillair@codeaurora.org>
Message-ID: <0ae6edd12623c35600d598a219322f44@codeaurora.org>
X-Sender: sibis@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_224110_720391_5A62AB08 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-arm-msm-owner@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey Rakesh,

On 2020-02-04 18:48, Rakesh Pillai wrote:
> Add device node for the ath10k SNOC platform driver probe
> and add resources required for WCN3990 on sc7180 soc.
> 
> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180-idp.dts |  5 +++++
>  arch/arm64/boot/dts/qcom/sc7180.dtsi    | 27 
> +++++++++++++++++++++++++++
>  2 files changed, 32 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> index 388f50a..167f68ac 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> @@ -287,6 +287,11 @@
>  	vdda-pll-supply = <&vreg_l4a_0p8>;
>  };
> 
> +&wifi {
> +	status = "okay";

I can see that wlan needs to
add the SIDs 0xc2, 0xc3 as well.
Without that I expect wlan will
not come up.

> +	qcom,msa-fixed-perm;

are you sure this is required when
used in conjunction with coreboot?

> +};
> +
>  /* PINCTRL - additions to nodes defined in sc7180.dtsi */
> 
>  &qspi_clk {
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index 8011c5f..e3e8610 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -75,6 +75,11 @@
>  			reg = <0x0 0x80900000 0x0 0x200000>;
>  			no-map;
>  		};
> +
> +		wlan_fw_mem: memory@93900000 {
> +			reg = <0 0x93900000 0 0x200000>;
> +			no-map;
> +		};
>  	};
> 
>  	cpus {
> @@ -1490,6 +1495,28 @@
> 
>  			#freq-domain-cells = <1>;
>  		};
> +
> +		wifi: wifi@18800000 {
> +			compatible = "qcom,wcn3990-wifi";
> +			reg = <0 0x18800000 0 0x800000>;
> +			reg-names = "membase";
> +			iommus = <&apps_smmu 0xc0 0x1>;
> +			interrupts =
> +				<GIC_SPI 414 IRQ_TYPE_LEVEL_HIGH /* CE0 */ >,
> +				<GIC_SPI 415 IRQ_TYPE_LEVEL_HIGH /* CE1 */ >,
> +				<GIC_SPI 416 IRQ_TYPE_LEVEL_HIGH /* CE2 */ >,
> +				<GIC_SPI 417 IRQ_TYPE_LEVEL_HIGH /* CE3 */ >,
> +				<GIC_SPI 418 IRQ_TYPE_LEVEL_HIGH /* CE4 */ >,
> +				<GIC_SPI 419 IRQ_TYPE_LEVEL_HIGH /* CE5 */ >,
> +				<GIC_SPI 420 IRQ_TYPE_LEVEL_HIGH /* CE6 */ >,
> +				<GIC_SPI 421 IRQ_TYPE_LEVEL_HIGH /* CE7 */ >,
> +				<GIC_SPI 422 IRQ_TYPE_LEVEL_HIGH /* CE8 */ >,
> +				<GIC_SPI 423 IRQ_TYPE_LEVEL_HIGH /* CE9 */ >,
> +				<GIC_SPI 424 IRQ_TYPE_LEVEL_HIGH /* CE10 */>,
> +				<GIC_SPI 425 IRQ_TYPE_LEVEL_HIGH /* CE11 */>;
> +			memory-region = <&wlan_fw_mem>;
> +			status = "disabled";
> +		};
>  	};
> 
>  	thermal-zones {

-- 
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

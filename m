Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 705051DBBEE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 19:51:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yjh0zRGTCIlKE52ExPhCYfbBnjVCfpQgCol2f6uL1yo=; b=fTBM3+vxmzKN9KWTBsg2T7yBe
	mlil3YkNVq94v2D4UAFFl2dmRkwJl+It2foD+vLaxh50kp/QHX0B86RWxwJBa70bQLBQvKFQyF4Hk
	lXlbzYYhu2KpQNjCIZUasv7/UUzGEDRHASyygNhAB3nnmkN8/HE4sSSeUAlGFHFIhwp2TFtbZlTN7
	fWf/IRBIZmfadxBAzxEgS3j83kVFwSvtj/vn9bM/Hc14z62zEiihFl1ZPVa2M5yH1Vv0+qVJKimBh
	v9ufz8cgj8wsK/5av/ffYZw7xN4Gne9YqYkyFUqrYxAAB7XUvFFJiIXJX5HRgvjd8qw/jFrf2Y1aa
	IIB8gBf5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbSrm-0006T3-Tx; Wed, 20 May 2020 17:50:54 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbSrZ-0006Ro-Ds
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 17:50:46 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589997044; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=MuJ6OyHDNvTOOsmTlh/Zlq7+mR2mQh3vcMAegcKB7GI=;
 b=w6/FyNlvdR2tRywv+ugp20Vi3k2jp4z8735mn/o9LV6Y40ipznJ1Qn2MXNbmGCzwjmFpoJse
 aO2wChvUJaO3H2XAOdCzwp1iRx7xqrJqbOqxOvFIKalmuneFEMnOJ0NzNR/c+9WX4dP/v4JC
 NI78t//bm2QCoxzYs8uX4rIzDjg=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-east-1.postgun.com with SMTP id
 5ec56de48075f6e58cb93103 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 20 May 2020 17:50:28
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 76700C433C9; Wed, 20 May 2020 17:50:27 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: sibis)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0C1FCC433C8;
 Wed, 20 May 2020 17:50:27 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 20 May 2020 23:20:27 +0530
From: Sibi Sankar <sibis@codeaurora.org>
To: Rakesh Pillai <pillair@codeaurora.org>
Subject: Re: [PATCH v11] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module
 device node
In-Reply-To: <1589946996-31264-1-git-send-email-pillair@codeaurora.org>
References: <1589946996-31264-1-git-send-email-pillair@codeaurora.org>
Message-ID: <2174d6b5ab066cf6fd080b5d3c27609f@codeaurora.org>
X-Sender: sibis@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_105044_973153_92E8ECF2 
X-CRM114-Status: GOOD (  16.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-kernel-owner@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-20 09:26, Rakesh Pillai wrote:
> Add device node for the ath10k SNOC platform driver probe
> and add resources required for WCN3990 on sc7180 soc.
> 
> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> ---
> Changes from v10:
> - Corrected the position of wifi node, as per address
> - Removed the wlan_fw_mem from reserved memory, since
>   its already added as reserved memory in board DT file.

Reviewed-by: Sibi Sankar <sibis@codeaurora.org>

> ---
>  arch/arm64/boot/dts/qcom/sc7180-idp.dts |  7 +++++++
>  arch/arm64/boot/dts/qcom/sc7180.dtsi    | 22 ++++++++++++++++++++++
>  2 files changed, 29 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> index 4e9149d..38b102e 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> @@ -389,6 +389,13 @@
>  	};
>  };
> 
> +&wifi {
> +	status = "okay";
> +	wifi-firmware {
> +		iommus = <&apps_smmu 0xc2 0x1>;
> +	};
> +};
> +
>  /* PINCTRL - additions to nodes defined in sc7180.dtsi */
> 
>  &qspi_clk {
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index 6b12c60..da79f8f 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -2811,6 +2811,28 @@
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
> +			memory-region = <&wlan_mem>;
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

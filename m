Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7B76E3AC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 11:47:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AmTGFTE8z2c/gl87wB/FrmnfJnGJ3NubPU6Q2WY6LkY=; b=PWv1J2tKgviO15gO6BVP3jhkj
	MwDOx/pBJMMzoyDQ0LWQDWAhkJMfNtzdSttwSgsl/DEYtwwbVXbKxvPzbJTBTJGJ3W9oRDL14velN
	cpgQsagEIvLUqwp/5g8MrdkNCS0aV18+kfjHd6gtz0SvZ7q/PElsdzjf1WMgs2TuSgQM5i3T+yMGC
	teIDbb2BN0l/a1b4ZwAy3xjR00/Ui42NoC2F9TioYjtn34v8qByNk/0so+6t+fAKMw56ouGoBwUpS
	I5k6vU94gHsSc0/4oVNojnKTYVbyddrrb79E8Ccr17Nsfzk9p2/5+49rO9A734fohOEak+Lq/dbrM
	I7Ulh0BWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoPTe-0005S7-Q0; Fri, 19 Jul 2019 09:46:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hoPTJ-0005R0-To
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 09:46:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9090F337;
 Fri, 19 Jul 2019 02:46:35 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 708043F59C;
 Fri, 19 Jul 2019 02:46:33 -0700 (PDT)
Subject: Re: [PATCHv8 1/5] arm64: dts: qcom: sdm845: Add Coresight support
To: saiprakash.ranjan@codeaurora.org, gregkh@linuxfoundation.org,
 mathieu.poirier@linaro.org, leo.yan@linaro.org,
 alexander.shishkin@linux.intel.com, mike.leach@linaro.org,
 robh+dt@kernel.org, bjorn.andersson@linaro.org, devicetree@vger.kernel.org,
 david.brown@linaro.org, mark.rutland@arm.com
References: <cover.1562940244.git.saiprakash.ranjan@codeaurora.org>
 <52550ed9bbc10dca860eb1700aef5c97f644327b.1562940244.git.saiprakash.ranjan@codeaurora.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <33215f68-1bf9-322a-d889-1d22514bdbdc@arm.com>
Date: Fri, 19 Jul 2019 10:46:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <52550ed9bbc10dca860eb1700aef5c97f644327b.1562940244.git.saiprakash.ranjan@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_024638_072292_125677E6 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: rnayak@codeaurora.org, marc.w.gonzalez@free.fr,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 sibis@codeaurora.org, vivek.gautam@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Sai,


On 12/07/2019 15:16, Sai Prakash Ranjan wrote:
> Add coresight components found on Qualcomm SDM845 SoC.
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>   arch/arm64/boot/dts/qcom/sdm845.dtsi | 451 +++++++++++++++++++++++++++
>   1 file changed, 451 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index 4babff5f19b5..5d7e3f8e0f91 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -1815,6 +1815,457 @@
>   			clock-names = "xo";
>   		};
>   
> +		stm@6002000 {
> +			compatible = "arm,coresight-stm", "arm,primecell";
> +			reg = <0 0x06002000 0 0x1000>,
> +			      <0 0x16280000 0 0x180000>;
> +			reg-names = "stm-base", "stm-stimulus-base";
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			out-ports {
> +				port {
> +					stm_out: endpoint {
> +						remote-endpoint =
> +						  <&funnel0_in7>;
> +					};
> +				};
> +			};
> +		};
> +
> +		funnel@6041000 {
> +			compatible = "arm,coresight-funnel", "arm,primecell";

We added support for static funnels and have thus updated our DT bindings. And
that implies, the above binding is now obsolete.
As of the coresight/next tree, and thus linux-next, this must be 
arm,coresight-dynamic-funnel and same applies everywhere else in the series. 
Please could you
update the series ?

Kind regards
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

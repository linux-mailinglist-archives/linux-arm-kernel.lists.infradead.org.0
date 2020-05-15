Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8126E1D4BBF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 12:56:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=duLEZm9VI7esGrBceLM/nKJ3xIoAwRlDL8fq5nNxGZQ=; b=hInlchLma3PcjOsY2xRRcoHmB
	F/Ztn7mvNBf4B9o0At5DH2OVFIrTAxbEA5RqNTrB7gDkQV/Za6ZAgO083Jo0n0FvYmTWGgPYfpt3Q
	2H9KxYQLhLxQ95edGywJR2bj/NTcONr/0YiN6MGmpByLFh3ws6MB9Vz0vL6VFI99mzswmD0uM7iqR
	534/wG0smdhS+wpOHjZaVUCRmogTeW7GF2If7uWKSNLnRuXhZdSG8TdRvowjBSIvlQVPd6xG7l4Za
	l1e135TYKJM4iCxWIhZW/VJfGHxSGtsgORI8qQYllZYB3SVGtnqE9g320VTkkaXnAUnw4IJvmL2vU
	MJNFJDAqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZY0x-0000Pe-B8; Fri, 15 May 2020 10:56:27 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZY0i-0000O6-Bn
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 10:56:20 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589540174; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=pVlXqk0xHFLVzrs5HUJtO3mE2JlonL9O1pnYqUk/Gac=;
 b=IUb2sBzEbd9FWwkcql8RLXs0kJdxa0YXLaRpIN0Tq6zb7E/f2LRwBDzycU5FkR67URjd3tXc
 SJuJlTVwGBPj8YZWc7rlV1CP9X5QqHrP6yfLZOFZ3qvvEtHyiZuvV/FACmBGzdgsjK2ObUxV
 TZ8ievdl9TNNKOgskLkOubCr1Mo=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ebe7547.7f72065af180-smtp-out-n05;
 Fri, 15 May 2020 10:56:07 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id BD902C43637; Fri, 15 May 2020 10:56:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5E62DC433D2;
 Fri, 15 May 2020 10:55:59 +0000 (UTC)
MIME-Version: 1.0
Date: Fri, 15 May 2020 16:25:59 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>, Suzuki K Poulose
 <suzuki.poulose@arm.com>, Mike Leach <mike.leach@linaro.org>,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Bjorn
 Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sc7180: Support ETMv4 power
 management
In-Reply-To: <b0a2ac4ffefe7d3e216a83ab56867620f120ff08.1589539293.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1589539293.git.saiprakash.ranjan@codeaurora.org>
 <b0a2ac4ffefe7d3e216a83ab56867620f120ff08.1589539293.git.saiprakash.ranjan@codeaurora.org>
Message-ID: <56a5563205da61c47eb4f8bbf6120e28@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_035616_354643_63B5FFE9 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.26 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Stephen Boyd <swboyd@chromium.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bjorn,

On 2020-05-15 16:21, Sai Prakash Ranjan wrote:
> Now that deep idle states are properly supported on SC7180,
> we need to add "coresight-loses-context-with-cpu" property
> to avoid failure of trace session because of losing context
> on entering deep idle states.
> 
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
> 
> Resending this because the last patch sent here -
> https://lore.kernel.org/patchwork/patch/1230367/
> seems to have added "coresight-loses-context-with-cpu" to
> replicator node instead of etm7 node.
> 
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index 4069bb1c93af..8b3707347547 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -1656,6 +1656,7 @@
> 
>  			clocks = <&aoss_qmp>;
>  			clock-names = "apb_pclk";
> +			arm,coresight-loses-context-with-cpu;
> 
>  			out-ports {
>  				port {
> @@ -1674,6 +1675,7 @@
> 
>  			clocks = <&aoss_qmp>;
>  			clock-names = "apb_pclk";
> +			arm,coresight-loses-context-with-cpu;
> 
>  			out-ports {
>  				port {
> @@ -1692,6 +1694,7 @@
> 
>  			clocks = <&aoss_qmp>;
>  			clock-names = "apb_pclk";
> +			arm,coresight-loses-context-with-cpu;
> 
>  			out-ports {
>  				port {
> @@ -1710,6 +1713,7 @@
> 
>  			clocks = <&aoss_qmp>;
>  			clock-names = "apb_pclk";
> +			arm,coresight-loses-context-with-cpu;
> 
>  			out-ports {
>  				port {
> @@ -1728,6 +1732,7 @@
> 
>  			clocks = <&aoss_qmp>;
>  			clock-names = "apb_pclk";
> +			arm,coresight-loses-context-with-cpu;
> 
>  			out-ports {
>  				port {
> @@ -1746,6 +1751,7 @@
> 
>  			clocks = <&aoss_qmp>;
>  			clock-names = "apb_pclk";
> +			arm,coresight-loses-context-with-cpu;
> 
>  			out-ports {
>  				port {
> @@ -1764,6 +1770,7 @@
> 
>  			clocks = <&aoss_qmp>;
>  			clock-names = "apb_pclk";
> +			arm,coresight-loses-context-with-cpu;
> 
>  			out-ports {
>  				port {
> @@ -1782,6 +1789,7 @@
> 
>  			clocks = <&aoss_qmp>;
>  			clock-names = "apb_pclk";
> +			arm,coresight-loses-context-with-cpu;
> 
>  			out-ports {
>  				port {


The previous version of this patch in QCOM tree seems to have added the
property to replicator node instead of etm7 node, can you please drop
that from the tree and apply this one?

Thanks,
Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

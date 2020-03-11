Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE89182178
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 20:02:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z0XPgqiIAjt9Pha9XyO/tQWWVTAOESFeJ6e8NQnjnwU=; b=eAjii8idTcwcw6
	e8mnILfGR7EnGOfDfgry3vfmuF/xxl89XJ4/ED3SiiJN8+BROoBGauo3LfYWrIP1uJAOyx40hxu3Q
	afNtj3WNqqCOIXMrGtSA45KE+SJz6nH58UDE2qk7Lgpi+8hRtpGzWIiDwNPXWpKT5nGCvShryvzoA
	t1XX8SK3DsioQSFQLhNkfkKBmerGuLfS8WwRuSn6WuuS5/g63ipaI9BDS5hsKAUDAUXe2ES44QJU1
	OxRnbs6MhPIf07sGCGB+5c7GaGzLsdNAnERP9aff8CqDH5Sie/GT3CYRgkApWRVgFA5RAtMXL7KlF
	wGhM9fq4e0+XPzuJs1nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC6ct-0006R5-M8; Wed, 11 Mar 2020 19:02:43 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC6ch-0006Qf-OR
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 19:02:34 +0000
Received: by mail-pl1-x641.google.com with SMTP id g6so1529147plt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 12:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=KxbfSfMud1yoniFNSNDPHjvEdr8IQY+/lA6j8KGqYkE=;
 b=rFnMjB8O/yaXQWJTv31iPzLHmOkngTSkvsoCyQZDh9v9zGj3e/5juupSZZeBSzcy6X
 MeM2WQ1rQkbQmBnPdApv3lpAR3r6bgV+dwkiV+4hZnEQX+DmLYbOpcn3Lu2vhSnOm3Yv
 Bvms2t5ZxOgdFRDWvhlEU65pRwEQQnvVbjfRpGOZ9E4oaL4enK35RIdiopafaF2tX+CY
 hNAdcSl4kkimfAt8+xN5HKs1D8ae39ZVcO+FFIwZqhS93hFWLSbvEhoAHQX/jhjECYfe
 x7wHNQmdES0rdYb3vqYbn+GbfaaMv1tHGBb+S/QAcnLo0BkbMfAoMnN8HcSPp69KXM2k
 n74g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KxbfSfMud1yoniFNSNDPHjvEdr8IQY+/lA6j8KGqYkE=;
 b=ujufltMoSLUWsMcE/ulCZ5cdi6xhfBWmdAOTeU7Avhm7EJtVuCMMT9yxQkjKDptqP3
 l31UeefVhp4NnWdkbAbiuhng4bRpXmQL8L6S9LRTktuZZq0uJ4/UnJnJqiPaOwflnujC
 fzVz2AtiY4oVpyzgScl/roPm3KnzLb5KQ0CfKQCo7q9lm0p0u3ntbmy21J6v/qwV4qPY
 yDyBQFfk2qp9puTFdJ0ZNCaP4WUhWViaySgECfLMgSUm3nKj++U2kx6Jiivm/viP0upM
 kAuPJgV/eOXCaD/CEYNayRV1NlPOSq1MHXZSr/tFhw01PsKA9ZtWexT+UQ3/qGDsPMQZ
 lDqA==
X-Gm-Message-State: ANhLgQ1u3EIqeXyDEZNc9dzG5LuM/i+CR0ofFV3gk44CW7BaeuLW0iHE
 K6PWyOAosITwGk8gmCRZx8X1kg==
X-Google-Smtp-Source: ADFU+vsgLQojMXRBdCCbQnephx0OvnBV71tIYUrd48OJ59EPglDf+HLuvIU4CMAcvoCh1tbzjD92xA==
X-Received: by 2002:a17:90a:1b2c:: with SMTP id
 q41mr184860pjq.126.1583953350369; 
 Wed, 11 Mar 2020 12:02:30 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id i72sm24039102pgd.88.2020.03.11.12.02.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 12:02:29 -0700 (PDT)
Date: Wed, 11 Mar 2020 12:02:26 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: David Miller <davem@davemloft.net>, Alex Elder <elder@linaro.org>
Subject: Re: [PATCH v2 17/17] arm64: dts: sdm845: add IPA information
Message-ID: <20200311190226.GY1214176@minitux>
References: <20200306042831.17827-1-elder@linaro.org>
 <20200306042831.17827-18-elder@linaro.org>
 <ec9776b3-ac79-8f9d-8c4d-012d62dc8f72@nvidia.com>
 <4decbc8a-b0a6-8f10-b439-ade9008a4cff@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4decbc8a-b0a6-8f10-b439-ade9008a4cff@linaro.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_120232_930574_844C7036 
X-CRM114-Status: GOOD (  19.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Susheel Yadav Yadagiri <syadagir@codeaurora.org>,
 Eric Caruso <ejcaruso@google.com>, Arnd Bergmann <arnd@arndb.de>,
 devicetree@vger.kernel.org, Dan Williams <dcbw@redhat.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Jon Hunter <jonathanh@nvidia.com>,
 Andy Gross <agross@kernel.org>, Evan Green <evgreen@google.com>,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 Johannes Berg <johannes@sipsolutions.net>, linux-soc@vger.kernel.org,
 Siddharth Gupta <sidgup@codeaurora.org>,
 Chaitanya Pratapa <cpratapa@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 11 Mar 07:39 PDT 2020, Alex Elder wrote:

> On 3/11/20 5:49 AM, Jon Hunter wrote:
> > 
> > On 06/03/2020 04:28, Alex Elder wrote:
> >> Add IPA-related nodes and definitions to "sdm845.dtsi".
> >>
> >> Signed-off-by: Alex Elder <elder@linaro.org>
> >> ---
> >>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 51 ++++++++++++++++++++++++++++
> >>  1 file changed, 51 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> >> index d42302b8889b..58fd1c611849 100644
> >> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> >> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> >> @@ -675,6 +675,17 @@
> >>  			interrupt-controller;
> >>  			#interrupt-cells = <2>;
> >>  		};
> >> +
> >> +		ipa_smp2p_out: ipa-ap-to-modem {
> >> +			qcom,entry-name = "ipa";
> >> +			#qcom,smem-state-cells = <1>;
> >> +		};
> >> +
> >> +		ipa_smp2p_in: ipa-modem-to-ap {
> >> +			qcom,entry-name = "ipa";
> >> +			interrupt-controller;
> >> +			#interrupt-cells = <2>;
> >> +		};
> >>  	};
> >>  
> >>  	smp2p-slpi {
> >> @@ -1435,6 +1446,46 @@
> >>  			};
> >>  		};
> >>  
> >> +		ipa@1e40000 {
> >> +			compatible = "qcom,sdm845-ipa";
> >> +
> >> +			modem-init;
> >> +			modem-remoteproc = <&mss_pil>;
> >> +
> >> +			reg = <0 0x1e40000 0 0x7000>,
> >> +			      <0 0x1e47000 0 0x2000>,
> >> +			      <0 0x1e04000 0 0x2c000>;
> >> +			reg-names = "ipa-reg",
> >> +				    "ipa-shared",
> >> +				    "gsi";
> >> +
> >> +			interrupts-extended =
> >> +					<&intc 0 311 IRQ_TYPE_EDGE_RISING>,
> >> +					<&intc 0 432 IRQ_TYPE_LEVEL_HIGH>,
> >> +					<&ipa_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
> >> +					<&ipa_smp2p_in 1 IRQ_TYPE_EDGE_RISING>;
> >> +			interrupt-names = "ipa",
> >> +					  "gsi",
> >> +					  "ipa-clock-query",
> >> +					  "ipa-setup-ready";
> >> +
> >> +			clocks = <&rpmhcc RPMH_IPA_CLK>;
> >> +			clock-names = "core";
> >> +
> >> +			interconnects =
> >> +				<&rsc_hlos MASTER_IPA &rsc_hlos SLAVE_EBI1>,
> >> +				<&rsc_hlos MASTER_IPA &rsc_hlos SLAVE_IMEM>,
> >> +				<&rsc_hlos MASTER_APPSS_PROC &rsc_hlos SLAVE_IPA_CFG>;
> >> +			interconnect-names = "memory",
> >> +					     "imem",
> >> +					     "config";
> >> +
> >> +			qcom,smem-states = <&ipa_smp2p_out 0>,
> >> +					   <&ipa_smp2p_out 1>;
> >> +			qcom,smem-state-names = "ipa-clock-enabled-valid",
> >> +						"ipa-clock-enabled";
> >> +		};
> >> +
> >>  		tcsr_mutex_regs: syscon@1f40000 {
> >>  			compatible = "syscon";
> >>  			reg = <0 0x01f40000 0 0x40000>;
> >>
> > 
> > 
> > This change is causing the following build error on today's -next ...
> > 
> >  DTC     arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dtb
> >  arch/arm64/boot/dts/qcom/sdm845.dtsi:1710.15-1748.5: ERROR (phandle_references): /soc@0/ipa@1e40000: Reference to non-existent node or label "rsc_hlos"
> 
> This problem arises because a commit in the Qualcomm SoC tree affects
> "arch/arm64/boot/dts/qcom/sdm845.dtsi", changing the interconnect provider
> node(s) used by IPA:
>   b303f9f0050b arm64: dts: sdm845: Redefine interconnect provider DT nodes
> 
> I will send out a patch today that updates the IPA node in "sdm845.dtsi"
> to correct that.
> 
> In the mean time, David, perhaps you should revert this change in net-next:
>   9cc5ae125f0e arm64: dts: sdm845: add IPA information
> and let me work out fixing "sdm845.dtsi" with Andy and Bjorn in the
> Qualcomm tree.
> 

Reverting this in net-next and applying it in our tree sounds like the
easiest path forward, and avoids further conflicts down the road.

David, are you onboard with this?

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

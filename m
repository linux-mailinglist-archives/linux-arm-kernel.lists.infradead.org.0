Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5571F9E4E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 19:20:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e57gTUZrGUgoDbosSp3aNd77bOFgXNhEztGKQS9ZhpM=; b=IqN4Zp0NBr38jL
	YWqonRahrfX88zzETHTqOhBMKZF/djRW3Sn0Jiq4GErFpzQM3f+/wPeLi/7LpvlDjCnLO5EJd8pwv
	hejBO6A+K6NNxYhNdFXQI3G/gF80fstZRdu9EIhY/ZNRQSYXOcyN6ZUfiaayrKEzt9lrC3PZukhQv
	Dj9UCi61Tdf1AJdG3LyyGSoD6qrVVe9XUBU+rgVY+AuaLzZ+IN0YWI0eZ12pYbyzgpY6MihfJBZgH
	k9r1D0YOGenqq4rerfgGTa93p2trLuGsUEU60mWi2s+63jqVzSRbmRZMtyhNXNEtszEKu3pny6nQE
	7NCJo9m0udndQzkx9DOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jksmP-0003G9-Gm; Mon, 15 Jun 2020 17:20:17 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jksm0-0003En-Oc
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 17:19:54 +0000
Received: by mail-pl1-x641.google.com with SMTP id n2so7043975pld.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 10:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Qat0VxBbx1qTyHGu7NwCLTW4AxGPNYRNU1RfuxjjVJk=;
 b=USX+nXWSBpUOlORPUb6eV1pZjK+NfQousCJT4ZEH1BnGmGJH0S84P3VN2A8tDZvpHX
 ysxEvqnu4TTIyohsI5TCKKVVBGecKlT0z67LieLp8C2XCL4CBwnaLY00XKdFPtHMpE2i
 IYhi00382FYJ3uofwQPLtMZXdV+WycvkBv/3c4fZiAvwrwMTdIa1qcILHeV+GStLtBM0
 uylHjcYoC5p85SjVuxbW8aYugfW4cl35x4bfOCw42Uo80pLuYsKL52SRgtMkOcq5c/bv
 jTdDMD6uvZ+6UfAy4GmaFXBlzzniP2Yl8vdGAf12mTm00pUUc1IqI26aR5vuyt3teNYI
 HYpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Qat0VxBbx1qTyHGu7NwCLTW4AxGPNYRNU1RfuxjjVJk=;
 b=ap9ExKR7snJIIBpYWP631Ptf6IfzrR8Lr+uaQIWBU2cF2sptC3xt4Pr/G3Bmx9GVlh
 4TdL25Mjl8RPtGtTzSog9fHZXHM8+mDyJw0gMQODGuPZAv5M+tgaY5o0WacL+XhTGUCr
 IXIV63cTjDqFFDZrAD/7XXMQvvq3QJyMsebpT0aPlqSfPRaDQ2GG2KMv5uYrFLazorU1
 FUzQ3CoXsnC9EhZuLeg4DwfLrynjCa+3hC1u6y7ayTj3brvZW4fYvuNSucV686hgQDZL
 VkBvbkwGUzTLJwmv0O27z7/mUGI800//bsbiRaQ8ydANp7EsiEB5U/s84+GAl70zkLAA
 dACg==
X-Gm-Message-State: AOAM530iPZvQ1a7h8Gu+O2aY+Jl6nUAvMed20ACsU/IwsPXqgAQqvTuI
 s3XGQXO3auvV/vErINyd5lu9lA==
X-Google-Smtp-Source: ABdhPJxsE8dB2Arh93h5l5pzvxY+LujvncHPdhLaxAIyxb4NTVE8BH9zgp7aNlPwFLC1D1gT4RXogQ==
X-Received: by 2002:a17:90a:1a8a:: with SMTP id
 p10mr336840pjp.236.1592241589912; 
 Mon, 15 Jun 2020 10:19:49 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id c194sm14225592pfc.212.2020.06.15.10.19.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 10:19:49 -0700 (PDT)
Date: Mon, 15 Jun 2020 11:19:47 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH 3/4] arm64: dts: qcom: sc7180: Add support for context
 losing replicator
Message-ID: <20200615171947.GB225607@xps15>
References: <cover.1591708204.git.saiprakash.ranjan@codeaurora.org>
 <5072d94849cfaee46748d26ac997212fb2d783c2.1591708204.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5072d94849cfaee46748d26ac997212fb2d783c2.1591708204.git.saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_101952_804693_B7960D88 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
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

On Tue, Jun 09, 2020 at 07:00:30PM +0530, Sai Prakash Ranjan wrote:
> Add "qcom,replicator-loses-context" property to the replicator
> in Always-on domain in SC7180 SoC to enable coresight replicator
> driver to handle this variation of replicator designs.
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
> 
> Depends on coresight replicator change here:
>  - https://git.linaro.org/kernel/coresight.git/commit/?h=next-v5.8-rc1&id=1b6cddfb7ebb5ed293124698f147e914b15315a1
> 
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index 9b38867740ca..0cbe322a30c9 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -1784,6 +1784,7 @@
>  
>  			clocks = <&aoss_qmp>;
>  			clock-names = "apb_pclk";
> +			qcom,replicator-loses-context;

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

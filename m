Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C698B4AB59
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 22:04:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hf1q4MYiPpnUQfHjt7TZ43mhWldX8zDNKy+n5Acqc08=; b=OgMjmbVzgSoAxs
	o+/PbaYBeCx0QU/Skc186va+K3uM1ThrGYmF8JqIiFW+lncuNYEQRfxgG7J7TO+YEBcfzC7SXN7ue
	HRo+bfyAURD9NLFcrnT4udMs27PJwdoRd2I4n2gPGSr4GXUi/PKUNeL8biepfyR1XQzsIwitB/NvO
	7darpe2ud6JLaAkUPqTz4MLTAvFGUbsXFV2Ij7IxOSs41YaObBIfQ8KXvBfRhG9dUPIBJ5Zue7IuK
	4IaBUdvpAaK14Fa83CyxErA5Rcz+1YWVn6w055wCbajSeFM2TEYrGvQ3Py9jiknf3A1SAOFXL9n+B
	tGutdFb4a8RyNU+cioeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdKLN-0006oC-86; Tue, 18 Jun 2019 20:04:37 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdKLE-0006na-33
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 20:04:29 +0000
Received: by mail-pg1-x542.google.com with SMTP id f21so8275795pgi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 13:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=vAeqHyw6RagaEliqavOvZJ2tWkD0tQerTi99czZ7j54=;
 b=Y0SmQ/Q9ZkciYInJWgfVb/m+PnqweV6Vw493C5o0NZIaQlRJgLvkcKIV3z/hZwMUlT
 9kY5x67BFTdBJAIUKve2catt0LClJmdpBXSauyMnrGSMj9uBjKdlSjAGX14xL22QJVWi
 DkVRnLg9/aB/JJg+bV8QbJ6H5VCPnEqpi5h7bldfNl8kJGMxU+aOpqUsPjWmKW8dC0H9
 /QFVy1hI/pwUr0tvY1VYBQVKPeVcXxHE011OTqRwczN1nFnM4thyC7UQUxPQMJiGKluU
 kYPRZykIsBCyPDuO/sulFZe397uvd084spd3dckoNkhTz9W+uIOnPE3zUIXmP+LXHyEb
 W6AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vAeqHyw6RagaEliqavOvZJ2tWkD0tQerTi99czZ7j54=;
 b=LZqQzqwX7LfB4ceeoAcovmQ7VCHeWodLNXWP5Gnj0LnFQ93W+r/SEFe9pwFw8DLHmj
 Suvu71Qi5AQUa6xZIT3uZ4xvv8LH13g4ORG+5sUnnWakZPWMUiPsQ3XzihNYzX5jhOwN
 /BMwUX1SypRRBq0VcqjTKRLZVoshJL6pYcCTlKnd/arrIMHfb6r9s0i2WzgrLlTcN28x
 NzYQJD18/znjn+oVLQaOYV6Gv+tZT2xtzv8eC/DMKvkXv26HJsphzxr3Cr5rQ91UUcul
 DrCqQMpIVv6o4ZFkadcH/yy++svp2Gqzo1yltSWhN8NMeajMjEfxeFarTQ62AIyK3xKz
 pqpg==
X-Gm-Message-State: APjAAAUrXq2lYH4tGJ7eql6bjNArKHdx1engOMEZxHgVA4vuEpLBDAyL
 3NuWw52SL3jn/37w6rcHVQFMVg==
X-Google-Smtp-Source: APXvYqziW6L+bjnki/hEVBA5wM6lqP9xgFoBR8esg+frVAp27tb7dC/Sks29kliKkIUIwjigjNPdQg==
X-Received: by 2002:aa7:8acb:: with SMTP id
 b11mr120623855pfd.115.1560888266696; 
 Tue, 18 Jun 2019 13:04:26 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id l13sm2750876pjq.20.2019.06.18.13.04.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 18 Jun 2019 13:04:26 -0700 (PDT)
Date: Tue, 18 Jun 2019 13:04:24 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCH] arm64: dts: qcom: msm8996: Rename smmu nodes
Message-ID: <20190618200424.GH4814@minitux>
References: <20190618052441.32306-1-bjorn.andersson@linaro.org>
 <fbe71878-a129-1b11-d978-48a99b292086@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fbe71878-a129-1b11-d978-48a99b292086@free.fr>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_130428_140261_2A60999B 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: MSM <linux-arm-msm@vger.kernel.org>, Andy Gross <agross@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 18 Jun 00:39 PDT 2019, Marc Gonzalez wrote:

> On 18/06/2019 07:24, Bjorn Andersson wrote:
> 
> > Node names shouldn't include "qcom," and should whenever possible use
> > a generic identifier. Resolve this by renaming the smmu nodes "iommu".
> 
> You mention "qcom" here, but the prefix you changed is "arm"
> /me confused ^_^
> 

Thanks for proof reading my patches Marc
I'll respin this.

Regards,
Bjorn

> 
> >  arch/arm64/boot/dts/qcom/msm8996.dtsi | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> > index 2ecd9d775d61..c934e00434c7 100644
> > --- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> > @@ -1163,7 +1163,7 @@
> >  			};
> >  		};
> >  
> > -		vfe_smmu: arm,smmu@da0000 {
> > +		vfe_smmu: iommu@da0000 {
> >  			compatible = "qcom,msm8996-smmu-v2", "qcom,smmu-v2";
> >  			reg = <0xda0000 0x10000>;
> >  
> > @@ -1314,7 +1314,7 @@
> >  			};
> >  		};
> >  
> > -		adreno_smmu: arm,smmu@b40000 {
> > +		adreno_smmu: iommu@b40000 {
> >  			compatible = "qcom,msm8996-smmu-v2", "qcom,smmu-v2";
> >  			reg = <0xb40000 0x10000>;
> >  
> > @@ -1331,7 +1331,7 @@
> >  			power-domains = <&mmcc GPU_GDSC>;
> >  		};
> >  
> > -		mdp_smmu: arm,smmu@d00000 {
> > +		mdp_smmu: iommu@d00000 {
> >  			compatible = "qcom,msm8996-smmu-v2", "qcom,smmu-v2";
> >  			reg = <0xd00000 0x10000>;
> >  
> > @@ -1347,7 +1347,7 @@
> >  			power-domains = <&mmcc MDSS_GDSC>;
> >  		};
> >  
> > -		lpass_q6_smmu: arm,smmu-lpass_q6@1600000 {
> > +		lpass_q6_smmu: iommu@1600000 {
> >  			compatible = "qcom,msm8996-smmu-v2", "qcom,smmu-v2";
> >  			reg = <0x1600000 0x20000>;
> >  			#iommu-cells = <1>;
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

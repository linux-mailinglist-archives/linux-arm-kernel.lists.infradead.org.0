Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08DBF182829
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 06:14:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5et1Xjrh1U7cM+TNvMORquMV1fMvxygFGvXXR2DKSoE=; b=XM/ziNrtIlm0td
	nPYh9vCYEAAv8MqTZnRClRAWX+Xo0V5khwSaQgnboz2sly5MZLJPNTJ5obfPBReCF1bKQbziTNXPl
	zsYRr11Zc8PG268ShKLhqBTnHmBaUrbcs2hzs4EmALrVdak2Mej2teat9iZ1ECgJItKBPQJbjtOAH
	uVW1jniSl3Opj4s5J7uZBX/PD76P5YHrxz5jaOrDP4+yjoJ8rta3W5CIWN9i8RoHpKOh8LopCtJQF
	MutTfjwm12OdY7jugtZ+fqapikxzxiKmTJ6DbU3eStvNyqxml1/kIwoLYLVrhCZR9Ph9A+rzPRjgE
	qfW03MqglWOGufiE0Euw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCGAO-00019Q-Fk; Thu, 12 Mar 2020 05:13:56 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCGAF-00018o-9B
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 05:13:48 +0000
Received: by mail-pg1-x542.google.com with SMTP id m5so2454928pgg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 22:13:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=YEKIsskQn0GOha6Hy8EBgBpGLBH3R0T+GMiZwuU+3NI=;
 b=RkKn03Z0khNvGV49vae7g0mCMeSWxWcrTOH0vwkME15R5jHgdvGaF1fzrWixZXNhpz
 z7vwuAvDxXAQloCjyaMKOoatk63BYedEcrEQJQYtQ9Qo0RJvlKNIT0BuY5BZGV9jWYdE
 tbUyOmKYr9Zu0BMQouUb52PToIvH+Vqp+mDQ9+QhsF1p5jCu2yo64Q4ChO1Th/IeARhz
 H+AZ89aT9iRKOYdENHRtp5gYS8eWXZ+RYREC9J+2K7+Y+mMKvVcwBYa+Rp70udtd7iTL
 zRSJyuvMLmgnjZXeGC/mLWu75UQXf3rsRgfgYCpSoUCI1T6u0AKc2vmPEpI5UsJ6esnw
 J2HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YEKIsskQn0GOha6Hy8EBgBpGLBH3R0T+GMiZwuU+3NI=;
 b=H2Koyq58axA3dbdAS0xSC3we5BCHP70f7ylKdNre1MJSZd/IZOPDfzX42VdT6XtBhV
 r5Xs7kcuvB+iVrpY9kgqk22oNCatxbVoM9VdkJX8V7QheZEME396obG4+EY9LplKNPy9
 UVGD6dUQ48/HIF25qMzD0b1R0brI8k2z/eW8bAgt/Amt0My6KG1lJ1GGY3/DA0MrPen/
 1Cugg3fb0uTFuVrIh46hv+xelZsZmk77fPwvJvZxiZ+QBEq/iYJ+8ZWhg2+fq7jU2XoI
 hmxsMBdYu2/B9yoCtLdIxfEh0lorA8I7+cDV8k0iKS7yI8YXvqQAcQq5fj87tB+3NlLM
 sF7A==
X-Gm-Message-State: ANhLgQ1x8VZuBtntvLYMPqBr61m2nDS/8cfddsjZsgEOxbZyzxpJAurQ
 nAA5yXCW4y6ag3macxp3eGN7oA==
X-Google-Smtp-Source: ADFU+vtsAgyF9WS4YpdSeSG4o+74qHpCCJl/4A+wZ5CxbopnXAb1FWsKpqQjANUoZkL+SbpxxBJSGQ==
X-Received: by 2002:a63:ae0a:: with SMTP id q10mr6013377pgf.178.1583990026329; 
 Wed, 11 Mar 2020 22:13:46 -0700 (PDT)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id a18sm136214pfr.109.2020.03.11.22.13.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 22:13:45 -0700 (PDT)
Date: Wed, 11 Mar 2020 22:13:42 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [v1 4/6] arm64: dts: sdm845-db845c: Add pm_8998 gpio names
Message-ID: <20200312051342.GW264362@yoga>
References: <20200311123501.18202-1-robert.foss@linaro.org>
 <20200311123501.18202-5-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311123501.18202-5-robert.foss@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_221347_328240_B76BEFCA 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Loic Poulain <loic.poulain@linaro.org>, Anson.Huang@nxp.com,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 marcin.juszkiewicz@linaro.org, dinguyen@kernel.org, agross@kernel.org,
 maxime@cerno.tech, linux-arm-msm@vger.kernel.org, olof@lixom.net,
 shawnguo@kernel.org, leonard.crestez@nxp.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 11 Mar 05:34 PDT 2020, Robert Foss wrote:

> Add pm_8998 GPIO trace names. These names are defined in
> the 96boards db845c mezzanine schematic.
> 
> Signed-off-by: Robert Foss <robert.foss@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 30 ++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> index a6b6837c3d68..e8c056d02ace 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> @@ -584,6 +584,36 @@
>  	};
>  };
>  
> +&pm8998_gpio {

Please sort nodes alphabetically by label.

Regards,
Bjorn

> +	gpio-line-names =
> +		"NC",
> +		"NC",
> +		"WLAN_SW_CTRL",
> +		"NC",
> +		"PM_GPIO5_BLUE_BT_LED",
> +		"VOL_UP_N",
> +		"NC",
> +		"ADC_IN1",
> +		"PM_GPIO9_YEL_WIFI_LED",
> +		"CAM0_AVDD_EN",
> +		"NC",
> +		"CAM0_DVDD_EN",
> +		"PM_GPIO13_GREEN_U4_LED",
> +		"DIV_CLK2",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"SMB_STAT",
> +		"NC",
> +		"NC",
> +		"ADC_IN2",
> +		"OPTION1",
> +		"WCSS_PWR_REQ",
> +		"PM845_GPIO24",
> +		"OPTION2",
> +		"PM845_SLB";
> +};
> +
>  &cci {
>  	status = "ok";
>  };
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

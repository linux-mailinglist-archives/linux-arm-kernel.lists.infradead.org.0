Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49ECAA93F2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 22:43:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=quDeOrxCiNKoAfKmW35n7vGYdWQrKYBxXgtsE6RJaCw=; b=aYJmjwNrJoNw/y
	3gK/at/boQbZTTlEj7QYqoSuK/kmXTQCm+BAg8QVwk3wE+wD/aJE5i9enQBk9baD42yYnkRxubNK+
	iV3VCPLaGBtrogWtHp7lbx3wAdq4GN036flNC47zTigRzz/etN/Aeq8EXpD+u7IB9EL2Z/NTFgXnN
	JPkSpeTtJLl4Y7Y++e3Ylcbp60P7UX2D7dU5yQSe2NHrtnojWul5JL/kqSJReuMrkMw7sI+Ehda76
	7xYwsDXo5MDZHrZGVnmZ/0ML2VVgvqdQOs/vlv7K47hKFJGv524h6acwBaVrz2X3QjGTeqsg2bUUh
	6huafSeV3NbSXR/YjPdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5c7Y-0003z7-6b; Wed, 04 Sep 2019 20:43:16 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5c7O-0003yM-4L
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 20:43:07 +0000
Received: by mail-pf1-x443.google.com with SMTP id w22so20878pfi.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 13:43:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/wsxDOtmnb9U/NekdAlLR4oeHJRU38Z5gPTM6QnO4F4=;
 b=r4bC4okD7CNuq9BuMebOgwrGDybFlvfFhLFBIwlpf42JHRLdahnasXWiz4T5LA99LU
 2szH87RezwOyOLL9EKUyVa4cjjqAl3XmySbxKqHUVyRPiF3VPP8pbC2fnxjPwEpjPo3z
 mAP1Bb7s4IzTsQWgfoTAoq0LYVSYizde92oVBaCmSzJ/uMC5MhTyNcm36CPMUESC8SQh
 CzxQP/cXwFySn9hLysmCRG0wT+4dXwIXoMn6W+H7H0LSiR1YdbUd9xG+wNjXxxzzkJNu
 2m9P0Mfc6Hxbf08Gg13Ikkma+OvDXYSEQGdrXHpyG26aWe0JoK/8eZGHmzMpZPSKgDQU
 vy1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/wsxDOtmnb9U/NekdAlLR4oeHJRU38Z5gPTM6QnO4F4=;
 b=APNvbL/FLNwbep64s6Iy62hZgbDcePuY1oiJiAlD8K5CYuHn0PcR4MsGr13UIYdOdG
 oapJ8S90Q9BNWz0sqRpmanLo5jXeLy05hl922GuaGj7Ww3jVhlzDumj47qnz9hN6E912
 UJfAq4SWRXZNvPNF5y177Sy2GmCDB2OPd8RMx49Vl1Om5sUBXbWxaTsHW1kooPzpOUKF
 aU50Hob7ttrT8O5HL15e3cOG3dTFVaPiyZ0XX7Haza6l+QPxKVcF/kseciKMvxokkJA4
 sF1m4wSiqmiMt4ooAaz0Gey11PwKso2Lvt69CPAnfsCYx6OCvu6xyWl9jRpV+aOPMh8G
 9+7A==
X-Gm-Message-State: APjAAAX2MfNbd48+me+XbI9R1oo1uVxgVaKnGQs8BPD2XavK9K5Y4Wt7
 emVrYMN3qDRS0u+9mPyQvG/qgA==
X-Google-Smtp-Source: APXvYqz1x8IyyymHXIXgIk+a+BK4sSercU90VrV9KeSyLBl4ibAmtDI9sBm/qrTJHr7/y8s0AMFyaA==
X-Received: by 2002:a17:90a:fc89:: with SMTP id
 ci9mr168674pjb.48.1567629785147; 
 Wed, 04 Sep 2019 13:43:05 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id b3sm29860352pfp.65.2019.09.04.13.43.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 13:43:04 -0700 (PDT)
Date: Wed, 4 Sep 2019 13:43:02 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH v2 1/1] arm64: dts: qcom: Add Lenovo Yoga C630
Message-ID: <20190904204302.GD580@tuxbook-pro>
References: <20190904113917.15223-1-lee.jones@linaro.org>
 <20190904115234.GV2672@vkoul-mobl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904115234.GV2672@vkoul-mobl>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_134306_227849_A06547B4 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, agross@kernel.org, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 04 Sep 04:52 PDT 2019, Vinod Koul wrote:

> On 04-09-19, 12:39, Lee Jones wrote:
> > --- a/arch/arm64/boot/dts/qcom/Makefile
> > +++ b/arch/arm64/boot/dts/qcom/Makefile
> > @@ -12,5 +12,6 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-cheza-r2.dtb
> >  dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-cheza-r3.dtb
> >  dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-db845c.dtb
> >  dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-mtp.dtb
> > +dtb-$(CONFIG_ARCH_QCOM)	+= sdm850-lenovo-yoga-c630.dtb
> 
> Can we keep this sorted, so before mtp.
> 
> >  dtb-$(CONFIG_ARCH_QCOM)	+= qcs404-evb-1000.dtb
> >  dtb-$(CONFIG_ARCH_QCOM)	+= qcs404-evb-4000.dtb
> > diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> > new file mode 100644
> > index 000000000000..ad160c718b33
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> > @@ -0,0 +1,454 @@
> > +// SPDX-License-Identifier: GPL-2.0
> 
> Are we going to make this dual? or BSD..
> 

Sounds good, Rob wants dual license so lets flag it as such.

> > +&apps_rsc {
> > +	pm8998-rpmh-regulators {
> > +		compatible = "qcom,pm8998-rpmh-regulators";
> > +		qcom,pmic-id = "a";
> > +
> > +		vdd-l2-l8-l17-supply = <&vreg_s3a_1p35>;
> > +		vdd-l7-l12-l14-l15-supply = <&vreg_s5a_2p04>;
> > +
> > +		vreg_s2a_1p125: smps2 {
> > +		};
> > +
> > +		vreg_s3a_1p35: smps3 {
> > +			regulator-min-microvolt = <1352000>;
> > +			regulator-max-microvolt = <1352000>;
> > +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> > +		};
> > +
> > +		vreg_s4a_1p8: smps4 {
> > +			regulator-min-microvolt = <1800000>;
> > +			regulator-max-microvolt = <1800000>;
> > +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> > +		};
> > +
> > +		vreg_s5a_2p04: smps5 {
> > +			regulator-min-microvolt = <2040000>;
> > +			regulator-max-microvolt = <2040000>;
> > +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> > +		};
> > +
> > +		vreg_s7a_1p025: smps7 {
> 
> Any reason why we dont specify the mode and min/max voltage for this
> and few others below..?
> 

Iirc these values are not known from the tables provided by the
firmware. Label names are just "borrowed" from the MTP, so we can't
derive anything from there either.

I intended to review and clean this up before it was posted...

Regards,
Bjorn

> > +&i2c1 {
> > +	status = "okay";
> > +	clock-frequency = <400000>;
> > +	qcom,geni-se-fifo;
> > +
> > +	battery@70 {
> > +		compatible = "some,battery";
> 
> some,battery ..?
> 
> > +&qup_i2c12_default {
> 
> Please move the qup nodes up so that nodes are sorted alphabetically
> 
> -- 
> ~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

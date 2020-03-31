Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3FA199A77
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:57:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zWaTaQO+Vg9YeMNaR9QuHZQm8CebDjPk/SUQPLlrnsU=; b=FEbocZRkVjRP0G
	bIgfkF8dFDTzHWcCMheDXXOzhGOMBCfM/zcpQjhamaGpwxsLMn0kA+BqLbMNl2M7zzEtJDI2JtE+I
	FZPaks0v25Um/5BpMwQEOiM9SBBJ47sVgXVXrHwjpBkng4fZVMp7IavYSJluksAN/PWBKsTBKRlgA
	zt5R9+9u5KL5OFTrxzyUB4/Ebo/Z0/KyQKmMauTvimYfwRwKlFL7Dpfnopnei8cFnXB2Zw5wsx8rx
	iOrgwY1tHIbU/t0NcEt7LzXKVU9UZycQd9G62zK8+0XKB3jrf1Vk/LXSZ7OffsZUXnJxCt/2EN/na
	OZINyMv/uW0frNU9lczQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJGM-0000sE-UV; Tue, 31 Mar 2020 15:57:14 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJDv-0005Dv-Bw
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 15:54:46 +0000
Received: by mail-vs1-xe43.google.com with SMTP id u11so13808809vsg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 08:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=SrwjxIomKacjVuH9ZWvU0jM634ggFzn8gQ8+caCpxHk=;
 b=yCCnRWY874MdmVCfdGtVIMs/+MdCSdyFV2eDQQkHv8t+tqVoJDGqhYSgg/RGuIt+Xn
 1RhPc30kIMlsEwKkxxnJ+gXVfUmtD+orza2tkdkA9TVTOANt9csNz2JZpq8/4i1HWWW7
 zATgl1w4zHNFIkov67yWlzsl5+dJLkrIVipvo4DYt6hPdZNQAYEmPd2gNhqQS0bL3hMH
 kPyNmuPXhnGSDSzmr5r4eiiZHSHnvSSe5bXqJZVobSxA0Ff1+ZQAqRfpl79U+0/oYx3s
 UmMIxsqHd0IfIiIKJiBjJ1vt5DS4A9oROak5vmXp+Ild9CvZxGovr4OTYtbqQRCIN+Fx
 2G2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SrwjxIomKacjVuH9ZWvU0jM634ggFzn8gQ8+caCpxHk=;
 b=k0xt41E8W2OkiZbAKHye0YfsJ9md57JuGkxJwmT95uh6ruG5+sqCwDCnJ/V8LKoFoQ
 aVID7WNEHoJ9UrzdxdruaG1lJdNiM2bBvYNwhD/wfSs994vUX0dGxzI3h2YpZZAoc61V
 H9q8liklucAFJ7kFCuAYqXBJN86eCCyLopRN3oS/M1EuDz3DrSBYBXlPaopHJjJGf9iq
 dOnbOX3x+FLAGQ7aMQCvdnK316GLctWx4/DFZE1KFi3j+VdP1V9XtIOXiZ4jhBaepsEQ
 92X3vrFQGdVdGrOmJAVW8RGGLIKFGzgVGo1UMpLYHZFjY6u1uJPlGWczz2Hpb4/iUx96
 lrjA==
X-Gm-Message-State: AGi0PuZoCsfOocMA8gLuTOqKuS/eOdruEsCvGQPnCKA9yO8BXO7evdag
 74MrDlxVGhA+xGOpANsk7LIzlneG2Q==
X-Google-Smtp-Source: APiQypJzcMrdeccvpeCvE9kPznLQ957EkEgffl0HiuDIi3h4rN/1OzYnGrMW/pxKfc4YOa5uyqEMJw==
X-Received: by 2002:a17:902:9682:: with SMTP id
 n2mr4388242plp.44.1585663370309; 
 Tue, 31 Mar 2020 07:02:50 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:630f:1337:c28:2530:7bf4:e941])
 by smtp.gmail.com with ESMTPSA id y29sm11655102pge.22.2020.03.31.07.02.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 31 Mar 2020 07:02:49 -0700 (PDT)
Date: Tue, 31 Mar 2020 19:32:43 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V2 06/22] ARM: dts: stm32: Repair SDMMC1 operation on AV96
Message-ID: <20200331140243.GB17755@Mani-XPS-13-9360>
References: <20200331005701.283998-1-marex@denx.de>
 <20200331005701.283998-7-marex@denx.de>
 <20200331043338.GH14274@Mani-XPS-13-9360>
 <4936af1c-6bdf-de5a-c86e-07e52417cdec@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4936af1c-6bdf-de5a-c86e-07e52417cdec@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_085443_434667_FD84CF94 
X-CRM114-Status: GOOD (  20.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 03:36:34PM +0200, Marek Vasut wrote:
> On 3/31/20 6:33 AM, Manivannan Sadhasivam wrote:
> > On Tue, Mar 31, 2020 at 02:56:45AM +0200, Marek Vasut wrote:
> >> The SD uses different pinmux for the D123DIRline, use such a pinmux,
> >> otherwise there is a pinmux collision on the AV96. Add missing SD
> >> voltage regulator switch.
> >>
> >> Signed-off-by: Marek Vasut <marex@denx.de>
> >> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> >> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> >> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> >> Cc: Patrice Chotard <patrice.chotard@st.com>
> >> Cc: Patrick Delaunay <patrick.delaunay@st.com>
> >> Cc: linux-stm32@st-md-mailman.stormreply.com
> >> To: linux-arm-kernel@lists.infradead.org
> >> ---
> >> V2: Disable SDR104, it seems unstable thus far
> >> ---
> >>  arch/arm/boot/dts/stm32mp157a-avenger96.dts | 21 ++++++++++++++++++---
> >>  1 file changed, 18 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> >> index e58653ccb60f..04280353fdbe 100644
> >> --- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> >> +++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> >> @@ -77,6 +77,20 @@ led6 {
> >>  			default-state = "off";
> >>  		};
> >>  	};
> >> +
> >> +	sd_switch: regulator-sd_switch {
> >> +		compatible = "regulator-gpio";
> >> +		regulator-name = "sd_switch";
> >> +		regulator-min-microvolt = <1800000>;
> >> +		regulator-max-microvolt = <2900000>;
> >> +		regulator-type = "voltage";
> >> +		regulator-always-on;
> >> +
> >> +		gpios = <&gpioi 5 GPIO_ACTIVE_HIGH>;
> >> +		gpios-states = <0>;
> >> +		states = <1800000 0x1>,
> >> +			 <2900000 0x0>;
> >> +	};
> >>  };
> >>  
> >>  &ethernet0 {
> >> @@ -305,9 +319,9 @@ &rtc {
> >>  
> >>  &sdmmc1 {
> >>  	pinctrl-names = "default", "opendrain", "sleep";
> >> -	pinctrl-0 = <&sdmmc1_b4_pins_a &sdmmc1_dir_pins_a>;
> >> -	pinctrl-1 = <&sdmmc1_b4_od_pins_a>;
> >> -	pinctrl-2 = <&sdmmc1_b4_sleep_pins_a>;
> >> +	pinctrl-0 = <&sdmmc1_b4_pins_a &sdmmc1_dir_pins_b>;
> >> +	pinctrl-1 = <&sdmmc1_b4_od_pins_a &sdmmc1_dir_pins_b>;
> >> +	pinctrl-2 = <&sdmmc1_b4_sleep_pins_a &sdmmc1_dir_sleep_pins_b>;
> >>  	cd-gpios = <&gpioi 8 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> > 
> > The "cd-gpios" change is not present in mainline. I think you can add it to
> > this patch as well with relevant commit description.
> 
> What change to cd-gpios ? This patch doesn't change cd-gpios.

This cd-gpios change is not present in mainline and also there seems to be few
other properties which got added (probably by another patch?). So this doesn't
apply on top of mainline/master.

Thanks,
Mani

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

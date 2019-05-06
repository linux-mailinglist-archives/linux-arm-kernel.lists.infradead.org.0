Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C48147FF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 12:00:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9DqKI1Ti2eb0eL87MNYUYatGjDHpaOOGpruII0p2y7A=; b=K+Daydn6WZLkdu
	Jayqa3P0a1IUgHak5i5bX3o5JYZ3zvpiMyLQKbrijfJnxyl4hOz5MQg1kxEyFrTrnX7vdE4TP1wua
	+fOBevvyB9lCqjLcXaiLoqtVzDMnLKDot27BqqU0ijZLQ6kO3NosBvlt9EgT4glSIh3ScWs52ImAf
	NkuFGOnehD5CREXX9Z0xrivXqTSnxqUQTMlWSm3C+DBWY0bZ1ykYRjPndKnrO5lT/Ny7RgCo7hRS6
	IvhQqdo75ZSzT2oa4UBZBdThdXArEp7pVJ2x67oW1UfNspG13OU3NZP8iFFKLrAptJTgqS98PxAdV
	JeaTfHSAC9NeVTWmuBbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNaPs-0003id-T2; Mon, 06 May 2019 10:00:12 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNaPh-0003Ni-95
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 10:00:02 +0000
Received: by mail-pf1-x442.google.com with SMTP id z28so6499104pfk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 02:59:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=eMBEkWY+yoHOv35+4+osAhTZrDmIt7AwEsIPJqdF/3o=;
 b=JWm3C8gHUmsaKnWdHgIGhPMh/OdZYaZQZwQeJOd6DQUH8Gbjik2AaWwJWpbsZ2eTPw
 XQshzRWWqcz5SFWEFbJaozTWLHBtF7VQYwkSL0l+6EG5Lk90/zvLj/WyTC45NDe21H6c
 8JNF2pmDC5CLdVhl+wjvk8oRWyVwSZ2xt31md96O9o6569tOiNNvI5v0w0RQS59ENndp
 9K5/4HnuUqIx14sw3XKE7k6JMpo7lk6i6L0l3j7+vIJzJlzzKQEvPEZYJPMmIGxPlrmq
 HCOdCrd8KniiDBVkCjk7A1gRn7FNDvhO0c7X6Yq5gUOuEYxIq/YrZuZS3ynwenNhvcp8
 v+mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eMBEkWY+yoHOv35+4+osAhTZrDmIt7AwEsIPJqdF/3o=;
 b=qKl4I/qQpip3f6SrH/xhrv84jeEu4FyQPAGmFSZNrt1KAWHE6o3CPDAVSYEsvbxtnN
 p+iDCDtjiTgWxrYlRztXJaEvMdTllb7PiJOVdt3ze4lpEPCxn6csNjWmpJvsHFGfYPvL
 iaXpAoe3hJVWl44+RIaLEirWpHYTlN0+5sftQ4LHqiGs60jjrtp5HMy6WvJ0HWQ/ta2/
 uM7LfkhO9m8r1TdzTzhNnK1eS60tf29mqUtY3P+g1QocwmbbUNBt7qACJcuYEIlENp+K
 USPQG4lkQBq+hHLWmcTJKt8zZtOA+yi53qMtYzx+zIUi8MpgxXCtRkL6Ol1K52JQ7hKm
 PD2A==
X-Gm-Message-State: APjAAAWqaxbaOKYdLlkkn/MqGB0xO08uETv7afLUYrLndJ5megPv2oSM
 wYbTNTpZQ+TJEGkKqVeip5+t
X-Google-Smtp-Source: APXvYqzICVCOo980QxHqvj2nEfRkxI54XQPzFRDJGVrhybfA1++ueDo5q6nHCcSILwUj169XUgJEfw==
X-Received: by 2002:a62:3501:: with SMTP id c1mr32740299pfa.184.1557136798385; 
 Mon, 06 May 2019 02:59:58 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:611b:55a4:e119:3b84:2d86:5b07])
 by smtp.gmail.com with ESMTPSA id u123sm934037pfu.67.2019.05.06.02.59.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 06 May 2019 02:59:57 -0700 (PDT)
Date: Mon, 6 May 2019 15:29:51 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Alexandre Torgue <alexandre.torgue@st.com>
Subject: Re: [PATCH 2/3] ARM: dts: stm32mp157: Add missing pinctrl definitions
Message-ID: <20190506095951.GA23734@Mani-XPS-13-9360>
References: <20190503053123.6828-1-manivannan.sadhasivam@linaro.org>
 <20190503053123.6828-3-manivannan.sadhasivam@linaro.org>
 <369b2593-71b6-0b00-b72c-041967ffba73@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <369b2593-71b6-0b00-b72c-041967ffba73@st.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_030001_328898_4FFC41E6 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, loic.pallardy@st.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alex,

On Fri, May 03, 2019 at 09:13:27AM +0200, Alexandre Torgue wrote:
> Hi Mani
> 
> On 5/3/19 7:31 AM, Manivannan Sadhasivam wrote:
> > Add missing pinctrl definitions for STM32MP157 MPU.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >   arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 62 +++++++++++++++++++++++
> >   1 file changed, 62 insertions(+)
> > 
> > diff --git a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
> > index 85c417d9983b..0b5bcf6a7c97 100644
> > --- a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
> > +++ b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
> > @@ -241,6 +241,23 @@
> >   				};
> >   			};
> > +			i2c1_pins_b: i2c1-2 {
> > +				pins {
> > +					pinmux = <STM32_PINMUX('F', 14, AF5)>, /* I2C1_SCL */
> > +						 <STM32_PINMUX('F', 15, AF5)>; /* I2C1_SDA */
> > +					bias-disable;
> > +					drive-open-drain;
> > +					slew-rate = <0>;
> > +				};
> > +			};
> > +
> > +			i2c1_pins_sleep_b: i2c1-3 {
> > +				pins {
> > +					pinmux = <STM32_PINMUX('F', 14, ANALOG)>, /* I2C1_SCL */
> > +						 <STM32_PINMUX('F', 15, ANALOG)>; /* I2C1_SDA */
> > +				};
> > +			};
> > +
> >   			i2c2_pins_a: i2c2-0 {
> >   				pins {
> >   					pinmux = <STM32_PINMUX('H', 4, AF4)>, /* I2C2_SCL */
> > @@ -258,6 +275,23 @@
> >   				};
> >   			};
> > +			i2c2_pins_b: i2c2-2 {
> > +				pins {
> > +					pinmux = <STM32_PINMUX('Z', 0, AF3)>, /* I2C2_SCL */
> > +						 <STM32_PINMUX('H', 5, AF4)>; /* I2C2_SDA */
> 
> You can't do that. <STM32_PINMUX('Z', 0, AF3)> has to be declared in
> pincontroller-z. So in your case, you have to define 2 groups for i2C2 for
> your default state (the same for the sleep state).
> 

Ah, yes I failed to note pincontroller z. Will fix it in next revision!

Thanks,
Mani

> regards
> Alex
> 
> 
> 
> 
> > +					bias-disable;
> > +					drive-open-drain;
> > +					slew-rate = <0>;
> > +				};
> > +			};
> > +
> > +			i2c2_pins_sleep_b: i2c2-3 {
> > +				pins {
> > +					pinmux = <STM32_PINMUX('Z', 0, ANALOG)>, /* I2C2_SCL */
> > +						 <STM32_PINMUX('H', 5, ANALOG)>; /* I2C2_SDA */
> > +				};
> > +			};
> > +
> >   			i2c5_pins_a: i2c5-0 {
> >   				pins {
> >   					pinmux = <STM32_PINMUX('A', 11, AF4)>, /* I2C5_SCL */
> > @@ -599,6 +633,34 @@
> >   					bias-disable;
> >   				};
> >   			};
> > +
> > +			uart4_pins_b: uart4-1 {
> > +				pins1 {
> > +					pinmux = <STM32_PINMUX('D', 1, AF8)>; /* UART4_TX */
> > +					bias-disable;
> > +					drive-push-pull;
> > +					slew-rate = <0>;
> > +				};
> > +				pins2 {
> > +					pinmux = <STM32_PINMUX('B', 2, AF8)>; /* UART4_RX */
> > +					bias-disable;
> > +				};
> > +			};
> > +
> > +			uart7_pins_a: uart7-0 {
> > +				pins1 {
> > +					pinmux = <STM32_PINMUX('E', 8, AF7)>; /* UART4_TX */
> > +					bias-disable;
> > +					drive-push-pull;
> > +					slew-rate = <0>;
> > +				};
> > +				pins2 {
> > +					pinmux = <STM32_PINMUX('E', 7, AF7)>, /* UART4_RX */
> > +						 <STM32_PINMUX('E', 10, AF7)>, /* UART4_CTS */
> > +						 <STM32_PINMUX('E', 9, AF7)>; /* UART4_RTS */
> > +					bias-disable;
> > +				};
> > +			};
> >   		};
> >   		pinctrl_z: pin-controller-z@54004000 {
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

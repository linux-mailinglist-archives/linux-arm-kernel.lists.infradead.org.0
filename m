Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD46F6479B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 15:52:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0P8+45l8+bHuFUQbzP9xkaOAsHA86WKME3C4ejXUzF4=; b=a4GMWEeJSh4MQW
	nTIJSwH6Bc/J9veymPfAP+GYeclAt0dmZg6Q59ErEPwhlW0ooFrmZ7IcyF3ltENd6rsKNrDrnPNah
	zr0MkM/eo8lqkfdchs/N9gmLO42HH4HaGdcNv0lF9ca6C1b1e4cteeSsfm/Bmce1JFGkGcOS8NtyU
	1rQactaF2wiE6n87g3f5sHFCKupk3LLl0sC6SPQFbYv1Pot4ZL1B4KfVgy6xqDH78MyijRX4MObvE
	EqgNcJAlvzU5vl1WQ49ROaJo2TJdyu5J6yZIdEvY8dHYRTxJkDAr0niR7r6T/pNpO/Hb6/AL7VXZ3
	KOgc8ANtdAZPwi69gvtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlD1Q-0007HV-74; Wed, 10 Jul 2019 13:52:36 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlD15-0007C4-0o
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 13:52:17 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 7382A1FFE8;
 Wed, 10 Jul 2019 15:52:07 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 542B31FF13;
 Wed, 10 Jul 2019 15:52:07 +0200 (CEST)
Subject: Re: [RFC] SW connection between DVB Transport Stream demuxer and
 I2C-based frontend
To: Peter Rosin <peda@axentia.se>, I2C <linux-i2c@vger.kernel.org>,
 linux-media <linux-media@vger.kernel.org>, GPIO <linux-gpio@vger.kernel.org>
References: <5e35b4fb-646d-6428-f372-ee47d7352cd6@free.fr>
 <7d47a978-5307-a2c8-acc2-f29ce7567bd5@axentia.se>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <12b7118b-5118-cc43-2d0b-aff9650914a5@free.fr>
Date: Wed, 10 Jul 2019 15:52:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <7d47a978-5307-a2c8-acc2-f29ce7567bd5@axentia.se>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Wed Jul 10 15:52:07 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_065215_697752_0C8C3457 
X-CRM114-Status: GOOD (  19.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: Peter Korsgaard <peter@korsgaard.com>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>, Wolfram Sang <wsa@the-dreams.de>,
 Linus Walleij <linus.walleij@linaro.org>, Brad Love <brad@nextdimension.cc>,
 =?UTF-8?Q?Jonathan_Neusch=c3=a4fer?= <j.neuschaefer@gmx.net>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Antti Palosaari <crope@iki.fi>,
 Simon Horman <horms+renesas@verge.net.au>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Olli Salonen <olli.salonen@iki.fi>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08/07/2019 21:58, Peter Rosin wrote:

> On 2019-07-08 13:08, Marc Gonzalez wrote:
> 
>> PROBLEM #2
>>
>> The tuner (si2157) is not on the i2c5 bus, instead it is on a private
>> i2c bus *behind* si2168, which routes requests to the proper client.
>> For the time being, I don't know how to model this relationship in DT.
>> (TODO: check i2c_slave_cb_t slave_cb in struct i2c_client)
>> I have initialized si2157 in the si2168 driver, but this doesn't feel
>> right. (Though it seems all(?) users pair 2168 with 2157.)
>>
>>
>> diff --git a/arch/arm64/boot/dts/qcom/apq8098-batfish.dts b/arch/arm64/boot/dts/qcom/apq8098-batfish.dts
>> index 29d59ecad138..9353e62375a7 100644
>> --- a/arch/arm64/boot/dts/qcom/apq8098-batfish.dts
>> +++ b/arch/arm64/boot/dts/qcom/apq8098-batfish.dts
>> @@ -30,6 +30,28 @@
>>  	status = "ok";
>>  };
>>  
>> +&blsp1_i2c5 {
>> +	status = "ok";
>> +	clock-frequency = <100000>;
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&i2c5_default>;
>> +
>> +	dvb_demod: si2168@64 {
>> +		compatible = "silabs,si2168";
>> +		reg = <0x64>;
>> +		reset-gpios = <&tlmm 84 GPIO_ACTIVE_LOW>;
> 
> 
> In principle, I think you should be able to add something like this here:
> 
> 		i2c-gate {
> 			#address-cells = <1>;
> 			#size-cells = <0>;
> 
> 			tuner@60 {
> 				compatible = "silabs,si2157";
> 				reg = <0x60>;
> 				/* whatever else is needed */
> 			};
> 		};
> 
> But in practice, I don't know if the si2157 driver understands that or
> if there is anything else that gets in the way. Totally untested...
> 
> The i2c-gate child node is examined when you call i2c_mux_add_adapter
> if you have provided the correct struct device in the second argument
> when you called i2c_mux_alloc (I think that is already the case). You
> also need to set the I2C_MUX_GATE flag in the i2c_mux_alloc call, but
> I do not see a problem with that since I think only one child adapter
> is added. If it is a problem to add the I2C_MUX_GATE flag, then you
> can just adjust the above i2c-gate node according to the bindings in
> Documentation/devicetree/bindings/i2c/i2c-mux.txt. I.e. add this
> instead of the above i2c-gate node:
> 
> 		i2c-mux {
> 			#address-cells = <1>;
> 			#size-cells = <0>;
> 
> 			i2c@0 {
> 	                        #address-cells = <1>;
>         	                #size-cells = <0>;
>                 	        reg = <0>;
> 
> 				tuner@60 {
> 					compatible = "silabs,si2157";
> 					reg = <0x60>;
> 					/* whatever else is needed */
> 				};
> 			};
> 		};
> 
> But it feels *right* to add the I2C_MUX_GATE flag, because a gate is
> what you have. I think?

Thanks, Peter!

Your solution works great. It's refreshing to have stuff work
out-of-the-box!

Problem #2 is now taken care of. And Brad proposed an elegant
solution (IMO) for Problem #1.

I'll send an updated RFC v2 tomorrow. (My patch series is a
complete mess right now.)

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

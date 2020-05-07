Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CA21C84E1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 10:33:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OO9HAvVlB0VKgNA8aaw5NErTTc1RDdaJRnIIItA2vTQ=; b=QmOnhqMSxPF7xW
	Gw6PJ6yqnABbxBBpMTDUo5g5W7tSj5zhsErKbMDc9hdz4qKN9RS9X3tFkbboxNqkNbusmqX84XKy5
	8EIoSzraqeALIMfxzDc9Gmj1auKrblmO/UFm9Io8LjFID5GiokFzmfo5meAJ3BA8ubmBkItaup9Lm
	MPuSfjFQVX9CX3qKjC2l6/2q5475Spl3ZlFgBUdpcfpNI0QBwHwPtZFM34WnUWQ2viAePmoqKLvpU
	xyVQZkyTx0PBWLosaEr8HVejmhib9EP22D54X5MILq928oi9KVkzSNsfkWdwgeVwoxMq1Gaa6yhL0
	tgfJVtQ9bmOmdeHhBMgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWbxv-0002KJ-Ib; Thu, 07 May 2020 08:33:11 +0000
Received: from mail-eopbgr00109.outbound.protection.outlook.com
 ([40.107.0.109] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWbxj-0002JT-1R
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 08:33:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c1CvFGBZ6B7i+iLSesS+nQaY/8HWnxIUL/oWKKkIQ0Lm/Ug+iI7w4e7ccbY9TLflXtFDpBv/D2VnLYZjnFv7xxHBEsbt/muBtIkEeeCxxwpbfupgzKt2bedSL7yeuDds+ZCwVXVfARIxxBU+Jw1NUS2dru5WBt20fTsb9GuXjpY7049gwouyYLt92+VgYv9GSR5IM7R40W7WELtbT2TRlLEfMkBOAyK76Vb6fR5AvGN135Upv8W8PJSaeKrWiBdw5MVcS+YWlm4WXpGVw0DuV19R/DooiOCn5S92WFjo7/4lxOxBow1yaMvKb7Ee2Uo66eSU893d7uifmYccxRaIbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=360hCYuc87dykWLw92gRf61NTq/KRmf1ElZCb6xXl24=;
 b=kxMqNpTc5fDwP2PUl7aVyJ3F0Yepn6vrURTzIuVtu+t9za6M3Ol/cU0T7ZUb6LQO/yhUOBgWlIPJK/sU2eNR08MXeXG6bWSDQQVcCat2YFQzzTaXdpxohmoPW4qLTLDtIl6wMFwckYI84QkR1o5UhP4zSB/5eZDUl5yVTtr6jikIr7d+PUonUhGM3QUnB7K83/9Hmqi8T2MmziW4vjAIXRpxWcE72peOSrLkxpmxDJSh1fSiB4idSH7BGty6fP7nJjy+HODwZk8QC9qnCxLf3ciDgiPaKsw7KVSA+SjBJpWZqRvQ5V1EKrZstta6G7fJGCvANi9e3XKrTb4eCSCsMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=360hCYuc87dykWLw92gRf61NTq/KRmf1ElZCb6xXl24=;
 b=X4V3OZn89dPmVPOEycHUM689s+z76fPwUXz0C23jK3YMstyvaPTbns/MKd/TMQV8aCGrpe5CWK8mDBynYZEbsS2BCpbBbPdMbmzzuY0Hd8dUvRBA68tl8mPap/Uw4U2ltE/lnKxLAgsbCzPOWwVE8uwhdhw19U7pYdSmBjVOUoE=
Received: from AM6PR05MB6120.eurprd05.prod.outlook.com (2603:10a6:20b:a8::25)
 by AM6PR05MB5173.eurprd05.prod.outlook.com (2603:10a6:20b:68::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.28; Thu, 7 May
 2020 08:32:52 +0000
Received: from AM6PR05MB6120.eurprd05.prod.outlook.com
 ([fe80::d8d3:ead7:9f42:4289]) by AM6PR05MB6120.eurprd05.prod.outlook.com
 ([fe80::d8d3:ead7:9f42:4289%6]) with mapi id 15.20.2979.030; Thu, 7 May 2020
 08:32:52 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "dillon.minfei@gmail.com" <dillon.minfei@gmail.com>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>
Subject: Re: [PATCH 3/4] ARM: dts: stm32: enable stmpe811 on stm32429-disco
 board
Thread-Topic: [PATCH 3/4] ARM: dts: stm32: enable stmpe811 on stm32429-disco
 board
Thread-Index: AQHWJEPKaBJpLtb4AE67HBydWVVEYaicS6oA
Date: Thu, 7 May 2020 08:32:52 +0000
Message-ID: <6e60c3494b7daea740b335fee9c5f5ce5ad7de45.camel@toradex.com>
References: <1588837654-14315-1-git-send-email-dillon.minfei@gmail.com>
In-Reply-To: <1588837654-14315-1-git-send-email-dillon.minfei@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.2 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=toradex.com;
x-originating-ip: [51.154.7.61]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 64248d3f-0a77-4685-8459-08d7f2613c09
x-ms-traffictypediagnostic: AM6PR05MB5173:
x-microsoft-antispam-prvs: <AM6PR05MB517355A58E5F7F9D3F281F79F4A50@AM6PR05MB5173.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 03965EFC76
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: M6SMSa9GbnikPzHDkTeYOrUZiYd03g/ykfdQkvLrqN8YXO/ib01N0C6aasiK4Es5PsCWuyQ+qYmBaL/7J/KXr8LbFJdFLVYrxfvQI6FAxkthqtF99qiJC7NnP/wPBWHLijRb/m3LqeUEWvqswu5ota1P+z22Uwv5yPE2/4zhTdQQTMe68HSp47yLPMpWa6jcqKB/0hyB7NtVTEPY6CQNQDoiVLVKPOozTt+kPQ1wR/Ht34HHBPfDZn/rh+fNzOWvd3zkuCBvMIpLGS2rvwWuiv4E4MKM7+La6r6WldsOPA5qiUppCWVT858SEg+VbJNd5xlrqdOMhWfSfH8E4f5xbabXLiDTnun/UWfMe68/+ObsFdpVFzSNNaqxnc/5R2UIaltodeMJvbsdEcaPppgCXM/jsKJRRmNqisfLWgOMVUiaHpBgoSYTCdsyFN7mqFyku6bGDWmF4yIyI4ZKniNkF+tz0KVBnCreMIoevVN02SnlFA1FLlZfq12ucrf3luEEtvOUEXvejRR41Dj+Ya2SEg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR05MB6120.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(136003)(396003)(39850400004)(366004)(33430700001)(5660300002)(33440700001)(76116006)(36756003)(6506007)(4326008)(86362001)(91956017)(66446008)(8676002)(64756008)(478600001)(66946007)(66556008)(66476007)(6486002)(110136005)(8936002)(26005)(186003)(6512007)(2906002)(83320400001)(54906003)(71200400001)(83280400001)(2616005)(44832011)(83300400001)(83310400001)(83290400001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 5nWZCU3rM22u8KHPO7y4ARIjiZOA/zzERmsiu7lzeNni1s6TJwoX4ni/px9fBptEPUTggbkHkn7s1m9rKq0hYsNRF1OeNZJ9yDM2w6Ds9S48K0StJqA9dGWyUnE/v/qKdF0nCYNmhG6m0KPivUz+4vzlYbTPyWgtIi/Q53GvPkK2d+KbNzZNEvbnf1LG1qWCTZiRd28V6ch1+mTNBE1hRkhBgfvtKgOs9SrljyLF95V5sVr+wqUUVn/qJGywaj7MY03GDtXVdmkNJTM7Hgnm9yPHktB0310ustaxx1mltlJmMVRFbH7xsFBhxw1U677j9r3r6RtQlXcISP7YjsHdutbbvKZnrCscehvAoN5AdhzyerGCr/YsBaogsALXPpQ6GEoDarV/jcNyUjbwnDvwXmodJPkaOHh3rwrAgBapFjQ+JQiV9TTN9mws8vHKyA8vjUGUufNxtFcgIgyf6cDb3K+ZeyDOy36KtZbc7VSidNzyq9xwwYtA/3tp7GaqEKRt5xINfnPe6TAAaCwCYC4tXa5GPtnHdBKmtZZQk+LwJK9hUiBpCAUnaiIUSE8AGNy0gN7Ozg7KJzh+oN+sT61Uh0FoCwmaerCBAkQcZUKc5XADbmymIfIqHehXqvtEZ7PVsPEgghOTUPqt027A267eTeDT+1OW15lmdY1afsHGDXWttGYZyugoWtgUyIP/L//eYh14KIX7dpXLsZVj15XYSPYU6tCqa4cYyTrD+n9px12p7roYdXTf700MkP+mUocTbtRm04C9O6e16nJ/Wtz+uONBGDkWn0HiziV49DGUmOA=
x-ms-exchange-transport-forked: True
Content-ID: <61811CE9DEE8BE4CBC417C36ED8DEF11@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 64248d3f-0a77-4685-8459-08d7f2613c09
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2020 08:32:52.8571 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ue4d67+PmIDtUSDojqHArQ2Stjzan3YPE/QZ93+f149FPxaGkC4awOjo83Qow3j8Nv0vsTIuK41RNd8Lg6YicQpj+oEhwxEPySC0UXJ/Cnk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB5173
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_013259_147772_C81E93D3 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.0.109 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.109 listed in wl.mailspike.net]
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
Cc: "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-05-07 at 15:47 +0800, dillon.minfei@gmail.com wrote:
> From: dillon min <dillon.minfei@gmail.com>
> 
> Enable the stmpe811 touch screen on stm32429-disco board.
> 
> Signed-off-by: dillon min <dillon.minfei@gmail.com>
> ---
>  arch/arm/boot/dts/stm32f429-disco.dts | 50
> +++++++++++++++++++++++++++++++++++
>  1 file changed, 50 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32f429-disco.dts
> b/arch/arm/boot/dts/stm32f429-disco.dts
> index 30c0f67..f9f21c8 100644
> --- a/arch/arm/boot/dts/stm32f429-disco.dts
> +++ b/arch/arm/boot/dts/stm32f429-disco.dts
> @@ -49,6 +49,8 @@
>  #include "stm32f429.dtsi"
>  #include "stm32f429-pinctrl.dtsi"
>  #include <dt-bindings/input/input.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/gpio/gpio.h>
>  
>  / {
>  	model = "STMicroelectronics STM32F429i-DISCO board";
> @@ -127,3 +129,51 @@
>  	pinctrl-names = "default";
>  	status = "okay";
>  };
> +
> +&i2c3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c3_pins>;
> +	clock-frequency = <100000>;
> +	status = "okay";
> +
> +	stmpe811@41 {
> +		compatible = "st,stmpe811";
> +		reg = <0x41>;
> +		interrupts = <15 IRQ_TYPE_EDGE_FALLING>;
> +		interrupt-parent = <&gpioa>;
> +		id = <0>;
> +		blocks = <0x5>;
> +		irq-trigger = <0x1>;

I can't find id, blocks and irq-trigger in the binding. What are they
for?

Philippe

> +		/* 3.25 MHz ADC clock speed */
> +		st,adc-freq = <1>;
> +		/* 12-bit ADC */
> +		st,mod-12b = <1>;
> +		/* internal ADC reference */
> +		st,ref-sel = <0>;
> +		/* ADC converstion time: 80 clocks */
> +		st,sample-time = <4>;
> +
> +		stmpe_touchscreen {
> +			compatible = "st,stmpe-ts";
> +			/* 8 sample average control */
> +			st,ave-ctrl = <3>;
> +			/* 7 length fractional part in z */
> +			st,fraction-z = <7>;
> +			/*
> +			 * 50 mA typical 80 mA max touchscreen drivers
> +			 * current limit value
> +			 */
> +			st,i-drive = <1>;
> +			/* 1 ms panel driver settling time */
> +			st,settling = <3>;
> +			/* 5 ms touch detect interrupt delay */
> +			st,touch-det-delay = <5>;
> +		};
> +
> +		stmpe_adc {
> +			compatible = "st,stmpe-adc";
> +			/* forbid to use ADC channels 3-0 (touch) */
> +			st,norequest-mask = <0x0F>;
> +		};
> +	};
> +};
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

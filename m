Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AFD81C8880
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 13:40:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fz0stCyJBpnH9j1fi/BXolHZInXK96cEMZZBqvMbJYw=; b=gZbLvfsNwu+4a9
	tSGsgx32jsR/VM0cFAXIv8jQHLdMteqsUmAs//CFIfV8Gs1ACfTDEyVC9DEd1uzqIquxt53nyT+ov
	oszsQ83inMcDw76y/t1JQghlRt0ZPrHTj0+tJ3bKRrCCBJRstwQ/r2VVhW/KSqs1ge5UxK1IwAId/
	VdpJPs0+ZfNAEN7VNKmj/196uZ7dpZyRqch+hjsjl2834ZL/ZP+NitMw+QG+/pPcSiSz/P+B4lLtS
	KD85WHe5CV5p3qAX4QF3mrHvXy9LhoRNRIyvBSrXumVnimdHM0t4EzHgMmShLSNLqGqGWfmnwXZeA
	VvUWGQuGJ6siUyrgOjTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWesy-0006UQ-Fx; Thu, 07 May 2020 11:40:16 +0000
Received: from mail-eopbgr70099.outbound.protection.outlook.com ([40.107.7.99]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWesm-0005FY-TG
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 11:40:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PY/rlHBI/GA6Ox+evhgewN1JrE96GThJ7RqaWlvvZXh/TLijrF50ffR+YNyzw3RaxqCaK67k+1CEoVjXT1iQR73R7y6HCVBeInVZWMChMnvk4a5aD8UXvj1Bo6+TYFvmv5iAdpg2CbWaEuguw5AFtVRM/leM8q7Vsx2/Fbo/CcY8TJtYbnVFhPD0J/5HfkLLpZTAu+HGQT15zI65+fuHX5Fb7UcDlH6cef9UEvSpbCN5S9X/aW2Qt9Ll8D3DiN3m7Gv7iW1fo8JaCtsG5mc8RcGKOPCKtBvvtomDzgh07CBEcRYPi896bAoVRM5vImw9vTfXZlNmvNyP1Cx2HOEZPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=REG8EPehNarY/yGsa0fRI7+j40UTo7cDPWZwMPV7x5s=;
 b=fW+wTme0WB4TZxjoqlewCwHtGi28tfCX/vgE9/jVvv9Mj1s8HnIgaKoF7EW+RFA4XWsxwi2MxFrGVU4UAXWm7rj4X9Vc3FKfKHHSLKB2MLbsOeb9jT5DvgOf5pDKxIliZrlayXouM815epxesLZEZBft/ORt5MA3TIyQ0tJtDrXnZeJGne4unGRgAa1zfqIJxHg6I3aEhjFjYs8i/No0Xfh57QjhIu7HGeHsyPuRtCfSqIEBgA6c6atGr2aMJKch2vqhpTuSi/DaaN+Vf1YgOqggglsorlUQbCyIJxjQ21rnq18mwxGWio8t0DTaVx2AYi2+vsLQKLoC8Cdq2IUPoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=REG8EPehNarY/yGsa0fRI7+j40UTo7cDPWZwMPV7x5s=;
 b=LGy0aG0fgW23CtMjN1U0FspwVKn6WneXgdZbEcWN8YsKBE/l9Dy60j9HGAN6A+mi5EbQUJGkspx2alshu9uuMDGwIBfytSr2CNJPNqF1FfccEQwgY0LSklcSQZuQw5hEYdD7EDlNNjGVm7bxCwCOUn6ymeI3bg3rRamUpE/+Fmc=
Received: from AM6PR05MB6120.eurprd05.prod.outlook.com (2603:10a6:20b:a8::25)
 by AM6PR05MB4422.eurprd05.prod.outlook.com (2603:10a6:209:43::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.27; Thu, 7 May
 2020 11:40:01 +0000
Received: from AM6PR05MB6120.eurprd05.prod.outlook.com
 ([fe80::d8d3:ead7:9f42:4289]) by AM6PR05MB6120.eurprd05.prod.outlook.com
 ([fe80::d8d3:ead7:9f42:4289%6]) with mapi id 15.20.2979.030; Thu, 7 May 2020
 11:40:01 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "dillon.minfei@gmail.com" <dillon.minfei@gmail.com>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>
Subject: Re: [PATCH V2 3/4] ARM: dts: stm32: enable stmpe811 on stm32429-disco
 board
Thread-Topic: [PATCH V2 3/4] ARM: dts: stm32: enable stmpe811 on
 stm32429-disco board
Thread-Index: AQHWJGDUkh+1vWERX0ChStn6nGXI06icf7qA
Date: Thu, 7 May 2020 11:40:01 +0000
Message-ID: <7f7ad11559ec728c72d3d4df19ca16fe6a57058e.camel@toradex.com>
References: <1588850125-24344-1-git-send-email-dillon.minfei@gmail.com>
In-Reply-To: <1588850125-24344-1-git-send-email-dillon.minfei@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.2 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=toradex.com;
x-originating-ip: [51.154.7.61]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 29fbc4f7-5b24-419c-9140-08d7f27b60de
x-ms-traffictypediagnostic: AM6PR05MB4422:
x-microsoft-antispam-prvs: <AM6PR05MB44221BADEA5EDEC59ABEC04BF4A50@AM6PR05MB4422.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 03965EFC76
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AxzFTOa8ZwZzlUHwLviCmW15pVlyFHD61ml8tbRAheNapEz6R2qqMQJZs5K0egBhJtCe8/KYwvRFwYymrgkeCxkrcdFEqv5OqUK5kdrF6nYkMQYSLQOqSxoBEQ/DSonEOPfEqy6VIaPBFa1sSfV6m6NaACmdJjRNAlZHPFH3620pL6MOzFJ+jgKU59CFEi+ldEcuHgKSg9tdF1SlDSDxDx9kUX3Pezpngve6c/GN46zqZb5/FJzCjCgzsSl9l2TELuTD5g6mjmk2kqpdfjPFNk0XxUDd6hEHLaydBtaBz9pEk+HIC1FZO91qyugRdJ4CMA03KSJQUPwIAN/F/+tbVCQyegzamce+r0rG+l9DClFuMoP2GtCq65KxQMJnyVGEez3FTEr+aVMsJ7fkfwUXraGDBrmWjQPS9xVC8GzQXjnVw+WiKIVeCl3wn75X4+3yq7SDoDYjyfIIB9Z0mHesVcJr2E3joAoN3iUxQMYb1H2ePavuTK/xHvQKXJVFKpl7SBI1ZjHPRweGAFe8hZ1rag==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR05MB6120.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(136003)(366004)(396003)(39850400004)(33430700001)(8936002)(33440700001)(6512007)(86362001)(6506007)(66946007)(44832011)(6486002)(2906002)(66556008)(186003)(66476007)(66446008)(64756008)(8676002)(36756003)(2616005)(110136005)(54906003)(5660300002)(83320400001)(83280400001)(83310400001)(316002)(478600001)(83290400001)(26005)(71200400001)(83300400001)(76116006)(4326008)(91956017);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: g237bnMKZYHSTxKGC0S2aRZgC+wlf9bYDfQvima5NeqHgOF+b/1YDLbo7xgWAJg7euX79jT1euKDhKz6u8bNpyJyUpG5AmHELThrHAOcvTXfjPNg/8nmCziSylUjJ8ZUBROIb7FxH3186lfraE/efIvtqFw1FDfO5e6wTRaixR4YHgYWOVllg1nSdj+3+UwuZX21F2Sg57dBJDD1TSfH8KYwksoQje6qMNI1tYDNi6xgN4hwSOUbepIgdWc7BHcmVZbKA6+0qwAyHb8B6Y4L04ClAgxAVL659vSAQboI2HPfbWGM0nqEGm4iYm1Y41jmf5jbi7OQdEyEvHt1Drfxogq1LQ5m5JpmrsW5P6qbKZHO7Wlea+mUhqA06f+qzOolGkNujjuzDJ+Mjw+YzQ7kVQlNdKtjTyp72wyPEzPFxy16pMpVA8Vg+tiLz/s6AONzr5xLaCwFU68Y7+HLHrL4yO/mqkGY7x1hbOrV/RuH2ckC4RiWIAgQkudgdKK19lJ+HNxExKUl+Ue27kVP2CM4RZ2BHsyoHu/mODsgUlXZTRiaao+uTyl7LWn4BTOa/wh02Ku8zucMy3kQlBfIUaJ2jZEtuVHwv1X+WW8E1t+CEod9z0UNThQDm1eze3wIGt6WxzB3B7IfzmwRA9ve91e6fqU/JbAtwubAPheVu0QOpldonwtclc1wV6GbHdy+m7h5URzEp99yoI//u45121TgOlBD0YfqRFmvEdUq3ueXrRXwoB0RC41z6xnp9kCJHB5ASkfoawRz1mj6vjF7p3IRTwoAv6D9JP0+I8JiHzQ6Pi4=
x-ms-exchange-transport-forked: True
Content-ID: <014E3F861DA3C24E97B6948622A59A2E@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29fbc4f7-5b24-419c-9140-08d7f27b60de
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2020 11:40:01.5313 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FkoWnmgKnXKPCVfB9l406okk2fIZ3OPQdaotk2TPJHn5dHgC03+PYc8NOglY1k0F3uA/i/cEhY5jD+4uzzHwCusuDIL9QXdFROhKUetwFOU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB4422
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_044005_031828_069391A8 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.7.99 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.99 listed in wl.mailspike.net]
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

On Thu, 2020-05-07 at 19:15 +0800, dillon.minfei@gmail.com wrote:
> From: dillon min <dillon.minfei@gmail.com>
> 
> Enable the stmpe811 touch screen on stm32429-disco board.
> 
> Signed-off-by: dillon min <dillon.minfei@gmail.com>
> 
> [PATCH 3/4]: ARM: dts: stm32: enable stmpe811 on stm32429-disco
> 
> V2:
> patch 3: remove unused id, blocks, irq-trigger
> 
> V1:
> patch 4: fix read touch screen xyz timeout bug
> patch 3: enable stmpe_touchscreen on stm32f429-disco board
> patch 2: add i2c3 pin mux for stm32f4
> patch 1: add i2c3 controller interface for stm32f4
> 
> Signed-off-by: dillon min <dillon.minfei@gmail.com>

For the STMPE part:

Reviewed-by: Philippe Schenker <philippe.schenker@toradex.com>

> ---
>  arch/arm/boot/dts/stm32f429-disco.dts | 47
> +++++++++++++++++++++++++++++++++++
>  1 file changed, 47 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32f429-disco.dts
> b/arch/arm/boot/dts/stm32f429-disco.dts
> index 30c0f67..fad1ec1 100644
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
> @@ -127,3 +129,48 @@
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

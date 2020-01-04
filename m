Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B88A31304F7
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 23:40:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W5/St+zk5vy1FkRpuyiUPc5DGU8Yk3+d9liGEebT8OY=; b=ZQo6g44KplDbsi
	uYEVHDrOjmacxsfeK6Z3eq2tXkKzJUlNC7XzljFFDopGAbsqF6KvNkNhoyh/nfZqopnQb6h9vQbaU
	gSi9Xhy7BOzYjUpNX/q+47SuYkfBQF9MDk8tUjKYNEaj77Z948w0c8P0P1FICMNh18SybjkrLtljy
	nWejU7QAMy+pQJQ5wclNvzaH4RSjOGD3SXbZeBx3Taj+y9e5CBCI6uzQND6miummfkANCidn4c2sj
	/kMQQvc4e8NUgtVEVa36YiD7h3lD2+bCDDsp3gMd4yPojFKfO8Q8/ksqEqZMqCXI4T3aufrTeRrQH
	bt2NV5/HZrVgCpRTEARg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ins5e-0005QX-1W; Sat, 04 Jan 2020 22:40:14 +0000
Received: from mail-vi1eur05on20709.outbound.protection.outlook.com
 ([2a01:111:f400:7d00::709]
 helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ins5N-0005Q6-92
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 22:39:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PO9+2c5RD3Uig4rzMfT4bkDMT9aykc2tAL0g752xL+L1q2RGYaAXX1KZ8DTMpEsSaJ+Bi0/is1f03LGLp8+uYf80TwDADsyLhTVBgTJAmgVmwFCR/r2VYkUZNerKRN+x1TJ3G5j2FG5BDgjd1quAq8m+dvmoQ4CQAoDhYRuvXl2tA0E/gG8rtFUlj2A0MG936QRYLt0P8b41p7CNZuHnVQiku+Yl/fSkVl6R+iS6NnGaQeovaQfmmZdl5meVC3sTsZp6xIETHAgAvVJcHSUTb9iZZJG6L7aVe9EBo0LhRG0NG+tKJcnVzlS830hZ00y9hYGwL3D99vTL0a5Ov3wzvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hGKHzGsjSDtfKy4xAN9VatySLirDDLeA0za4abbQOAg=;
 b=L9vioW5qOfaN9Ps//CbPfPKvdyFYTZMXTj6cKm8NKX+N/KxJ+/TjutdNhVyAeIFsg8wlB0I5mhWVHGyME+szF0WLmRxScAOxa3A8jiggGOZdPzm77tqvbjr3ZyGCarmjRwRnRqeecXx+7kPgOZxki+UJn4oTKeK9dNt2wzso8r5zG/2rT2UQiN/xxm9dl2YqiAPZw3+CYP6C7L/jTk26PihEzO+EZBLbubA8tGLO3Lm9T1r8qgAsJccCGtqmmCLWpjLSxnM7MiUf4Qsj6EVnsz1Sz0j6T0mZoc+nUylpNMIki4qxiIevd0TN+0y4b/nD3yT/OS/Np7E7tJ62P7DP8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hGKHzGsjSDtfKy4xAN9VatySLirDDLeA0za4abbQOAg=;
 b=keccycIYsy+ngHtVgpElXTyTDe+/vWdj73rPsPc1/C3B4LfrTpZ6L0l/JIe7Xf4lFni6XgJUsT4F0eO9vf/QwgwvPfNynFji58ZmXSGIG0mCrq6PBoNjf/jV+49LUd3dZbFCm5kOsApY8d/bRZbYTtFl0SlI92YiRPTeA3mWLv4=
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com (52.134.66.158) by
 DB3PR0202MB3562.eurprd02.prod.outlook.com (52.134.69.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.14; Sat, 4 Jan 2020 22:39:49 +0000
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::cd85:a8a5:da14:db13]) by DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::cd85:a8a5:da14:db13%7]) with mapi id 15.20.2602.015; Sat, 4 Jan 2020
 22:39:49 +0000
Received: from [192.168.13.3] (213.112.138.4) by
 HE1PR0102CA0059.eurprd01.prod.exchangelabs.com (2603:10a6:7:7d::36) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.12 via Frontend
 Transport; Sat, 4 Jan 2020 22:39:47 +0000
From: Peter Rosin <peda@axentia.se>
To: "Codrin.Ciubotariu@microchip.com" <Codrin.Ciubotariu@microchip.com>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 4/6] ARM: at91/dt: sama5d3: add i2c gpio pinctrl
Thread-Topic: [PATCH v2 4/6] ARM: at91/dt: sama5d3: add i2c gpio pinctrl
Thread-Index: AQHVwhsLdxsZpEnI6UWudjXfEFHmN6fbG4OA
Date: Sat, 4 Jan 2020 22:39:48 +0000
Message-ID: <e22772f8-9e6d-002d-98d7-414136a32439@axentia.se>
References: <20200103094821.13185-1-codrin.ciubotariu@microchip.com>
 <20200103094821.13185-5-codrin.ciubotariu@microchip.com>
In-Reply-To: <20200103094821.13185-5-codrin.ciubotariu@microchip.com>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
x-originating-ip: [213.112.138.4]
x-clientproxiedby: HE1PR0102CA0059.eurprd01.prod.exchangelabs.com
 (2603:10a6:7:7d::36) To DB3PR0202MB3434.eurprd02.prod.outlook.com
 (2603:10a6:8:5::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peda@axentia.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d6cde419-f069-4ff6-fbd3-08d791670151
x-ms-traffictypediagnostic: DB3PR0202MB3562:
x-microsoft-antispam-prvs: <DB3PR0202MB3562331B2286ED19D784B577BC220@DB3PR0202MB3562.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 02723F29C4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(366004)(136003)(39830400003)(346002)(396003)(189003)(199004)(52314003)(81166006)(8676002)(81156014)(4326008)(6486002)(52116002)(186003)(16526019)(26005)(956004)(66446008)(2616005)(8936002)(66556008)(53546011)(71200400001)(66476007)(64756008)(66946007)(7416002)(16576012)(316002)(110136005)(31686004)(36756003)(5660300002)(31696002)(54906003)(508600001)(86362001)(2906002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DB3PR0202MB3562;
 H:DB3PR0202MB3434.eurprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: axentia.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nF/XKk+lhR5G2mJ8Aaru2zLKn9Wk/wDQ1vlj8yyu7KhMylkAn8vAlQnWeU60DIhjXCdkIHs6rP3P1qiHUfGos7nzf0dZ5EsF0chPW0iQcITzKeU+I9XwH3J2YunpnAf8Y5GZXg5yOMZpJlPd0fnG1GgvAGbBE4xrkeTIgY0H0tgz1Trh7DPmsa8pQy1JjCa3kLpgPVgQ4fn7wctjiGjdGdcs0MWXMHrFBFksE1gpkW8Ov4FzeW8loPis87iGuKUxYIomHHCEQma2XEq5NidjvrzYknlDYzFhZPtxG9wsMEsWPLpeF0ek50kAQQ1Pacfq+kruZPeEwsfDPatCM+8otlQD37Os4R2Kdu9xcAgWk/ItET35aCo93jikuleoxW6HR1XFho//RUWKyerpLHM4baDryopDqTiVLH9D0X9j3DxjlndazJxhYIp+LJGpPQwiuY2TsPw8FRbslAmnIowvHfRhdtqBhccFW6xvT/PLDLT199erIXa8Egbt9DXkqQRh
x-ms-exchange-transport-forked: True
Content-ID: <FF949416C25CEE4A9F9A12B8347FB46E@eurprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: d6cde419-f069-4ff6-fbd3-08d791670151
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2020 22:39:48.9081 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w6JffzHHSv9CG5Z3B/Gpr7ruOsx7sJ672ZPw926UHz/Fgqh3iQ7zUicQZ89NUh76
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0202MB3562
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_143957_619857_7803E518 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "robh@kernel.org" <robh@kernel.org>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "kamel.bouhara@bootlin.com" <kamel.bouhara@bootlin.com>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>,
 "Ludovic.Desroches@microchip.com" <Ludovic.Desroches@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-03 10:49, Codrin.Ciubotariu@microchip.com wrote:
> From: Kamel Bouhara <kamel.bouhara@bootlin.com>
> 
> Add the i2c gpio pinctrls to support the i2c bus recovery
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
> 
> Changes in v2:
>  - none;
> 
>  arch/arm/boot/dts/sama5d3.dtsi | 33 ++++++++++++++++++++++++++++++---
>  1 file changed, 30 insertions(+), 3 deletions(-)
> 

*snip*

> @@ -639,6 +648,12 @@
>  							<AT91_PIOA 30 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PA30 periph A TWD0 pin, conflicts with URXD1, ISI_VSYNC */
>  							 AT91_PIOA 31 AT91_PERIPH_A AT91_PINCTRL_NONE>;	/* PA31 periph A TWCK0 pin, conflicts with UTXD1, ISI_HSYNC */
>  					};
> +
> +					pinctrl_i2c0_gpio: i2c0-gpio {
> +						atmel,pins =
> +							<AT91_PIOA 30 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP
> +							 AT91_PIOA 31 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP>;
> +					};

I'm curious, but why are pull-ups suddenly needed just because the pins are
used for GPIO recovery? Why are pull-ups not needed when the pins are used
by the I2C peripheral device(s)?

Given figure 27-2 "I/O Line Control Logic" in my SAMA5D3 datasheet, I see
no difference as to how and why the pull-ups are applied depending on what
the current function of the pin is. So, if the I2C bus works w/o pulls, bus
recovery using GPIO must also work w/o pulls.

I.e. the device tree requires you to have external pull-ups on the I2C bus
anyway, so why bother with internal pull-ups for the recovery case?

Changing pull-up settings just for recovery feels like something that will
inevitably create hard to debug surprises at the least opportune time...

Or am I missing something?

(I'm focusing on SAMA5D3 since that is what I happen to work with,
 but the same question appears to apply for SAMA5D2 and SAMA5D4...)

Cheers,
Peter
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

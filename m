Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D45252720
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 10:51:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ToVo+ozVyN6sS+kCyRLMmjVMVAQw+8NdghNCbM8G69w=; b=g0BR+DwQurzNTP
	r53iMhmppKtjQmj1a4cuW5GiCpsjxEj/3SXPzAmuHImOTiDYyYBHrBIcEN4ZpgQKt+1wNWoOLtFwO
	yayy7XKaCLjfRbgLffGxLgJzwL5PtzgQDc7PE03sfO8B0cB7zlt+N+9OMhNGEC3eD64qW3AqZaeK6
	fUpF1jB6d2VOqRMlIftffgOXjuXpjtaRpTAui35x7e3eBANYy/LDxOQ8HYi+orDstp8HODlBX/zRj
	UbvXm719Ov2gNYZuq6rOChMEmMi4GM1ItNBaVKMhINIBRt8NvbwsmcCa237nEj90EY6te5a2m2VFb
	OChAiU1dE9Inc/BCzQBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfhB3-0007Aq-IM; Tue, 25 Jun 2019 08:51:45 +0000
Received: from mail-am5eur02on0717.outbound.protection.outlook.com
 ([2a01:111:f400:fe07::717]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfhAq-00079V-2R
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 08:51:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aNRey0Q/Xh555bd7+jbqJv2t7P70BgNv5KqDmeqs6ag=;
 b=j0XaP3ySimDY/vPc8792zucRFEtZlXHME1hBISGieZ0GkA9qUV+ET/9+adn6zp5Jk01aIYryABiJILUD7bwRSvdiYOyTZddmJzu3FpCWD8xoDZvd9uVwCzww9UoJklPIDl8sfWKujmDcMmS8SOMT1K6FF2FYNdKxoGXOpX5xoTo=
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com (52.134.66.158) by
 DB3PR0202MB3401.eurprd02.prod.outlook.com (52.134.73.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Tue, 25 Jun 2019 08:51:27 +0000
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::29c5:d1ae:8855:3153]) by DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::29c5:d1ae:8855:3153%3]) with mapi id 15.20.2008.014; Tue, 25 Jun 2019
 08:51:27 +0000
From: Peter Rosin <peda@axentia.se>
To: "Eugen.Hristev@microchip.com" <Eugen.Hristev@microchip.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "Nicolas.Ferre@microchip.com"
 <Nicolas.Ferre@microchip.com>, "alexandre.belloni@bootlin.com"
 <alexandre.belloni@bootlin.com>, "Ludovic.Desroches@microchip.com"
 <Ludovic.Desroches@microchip.com>, "wsa@the-dreams.de" <wsa@the-dreams.de>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 9/9] ARM: dts: at91: sama5d4_xplained: add analogic
 filter for i2c
Thread-Topic: [PATCH v2 9/9] ARM: dts: at91: sama5d4_xplained: add analogic
 filter for i2c
Thread-Index: AQHVKyzD88KDJW5qrEyetFFZXOAmS6asD/kA
Date: Tue, 25 Jun 2019 08:51:27 +0000
Message-ID: <8b964ca4-58b6-5560-b06a-da3ad98dd36d@axentia.se>
References: <1561449642-26956-1-git-send-email-eugen.hristev@microchip.com>
 <1561449642-26956-10-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1561449642-26956-10-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
x-originating-ip: [213.112.138.100]
x-clientproxiedby: HE1PR0701CA0043.eurprd07.prod.outlook.com
 (2603:10a6:3:9e::11) To DB3PR0202MB3434.eurprd02.prod.outlook.com
 (2603:10a6:8:5::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peda@axentia.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 367c900a-b005-471b-1312-08d6f94a4f02
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DB3PR0202MB3401; 
x-ms-traffictypediagnostic: DB3PR0202MB3401:
x-microsoft-antispam-prvs: <DB3PR0202MB34019D0DA115AE19E0AC1AFBBCE30@DB3PR0202MB3401.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-forefront-prvs: 0079056367
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(396003)(376002)(39830400003)(366004)(136003)(199004)(189003)(71200400001)(71190400001)(66556008)(76176011)(5660300002)(66476007)(64756008)(66446008)(73956011)(6436002)(66946007)(486006)(7736002)(305945005)(186003)(508600001)(8936002)(6512007)(65826007)(64126003)(2501003)(52116002)(2906002)(99286004)(4744005)(31696002)(256004)(58126008)(6246003)(81156014)(7416002)(26005)(316002)(81166006)(8676002)(229853002)(110136005)(25786009)(68736007)(2616005)(11346002)(74482002)(14454004)(31686004)(65956001)(476003)(65806001)(66066001)(2201001)(6116002)(6486002)(36756003)(102836004)(6506007)(53546011)(446003)(53936002)(86362001)(386003)(3846002)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DB3PR0202MB3401;
 H:DB3PR0202MB3434.eurprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: axentia.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pMOkyFz/1eyyAmnwxi1zallek3GFLVeFbMaR/87mjg4E90zBNF3kwD2HDIMKC4hxKuLZnxg256F+10NtZ9TljoNCtoopZZK4Relik5T4Y93VvITG/I1hACmqshNkupp7HBmM9aJC0w31Xxekvao0uFx75ShDUo5jCDYKh+AkYDSZyituOYTQlV/ai++Nddw6GZ8MvtTWjAVM++LiX+oNYImCVskVJgHFi6zf5BuxxS2/79hY1BCKlQQUnKfI1FCI/mwVZpwhyIvqyKVv0GnlkPULxJ1uDO1w2QHkxub8Coea3UDhmIhSUZuVgqaqFVsXGUcha+d2z7u2UTRtsjRAETY08jHSrJ2/bQ/4RO1ztn2VyDmThPHHaJb+npJbb8NxKEZK+lWbYNaBxkQbJNZoMrVk9bIsLDydCsPszEUE52Q=
Content-ID: <30346D7CF884B04D8E7CF466AED05481@eurprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: 367c900a-b005-471b-1312-08d6f94a4f02
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2019 08:51:27.1214 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peda@axentia.se
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0202MB3401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_015132_317376_5680528A 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe07:0:0:0:717 listed in]
 [list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: axentia.se]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: axentia.se]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-06-25 10:05, Eugen.Hristev@microchip.com wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Add property for digital filter for i2c0 node sama5d4_xplained

This does not match the below hunk.

Cheers,
Peter

> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---
>  arch/arm/boot/dts/at91-sama5d4_xplained.dts | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/boot/dts/at91-sama5d4_xplained.dts b/arch/arm/boot/dts/at91-sama5d4_xplained.dts
> index fdfc37d..06068dc 100644
> --- a/arch/arm/boot/dts/at91-sama5d4_xplained.dts
> +++ b/arch/arm/boot/dts/at91-sama5d4_xplained.dts
> @@ -49,6 +49,7 @@
>  			};
>  
>  			i2c0: i2c@f8014000 {
> +				enable-ana-filt;
>  				status = "okay";
>  			};
>  
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD215274F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 10:57:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WmrhX8wEwNv7Nxl3n1j4jxmo578KMvRgFsIhhrVsJWE=; b=Wx1WXC38tY7jSn
	4djdwWKf7KvptxRpKUBWGuzgugmhmqv3RyoVnlbAdmJIIBuC8il2c4ukqx/Q0D3WhOph59ipNx5WZ
	XpoqHd+OPfVRDmGXIFwAT3PKN+p0lxbvQPfnxGDdg6UClC4dfgTP/YWQ9reIB1+lryudSj1GO8Hrg
	Vdg8GlZQrv51r4n8vkPOqsUOke+IstYN4NLr/Pv9wqlsceNRynyOWq2EcQT1a5eWL205b3uv0NJyx
	v4V8LgtjaFM2T2SJ43eZ3MgmEvPdlu+6G7O/IwE56O8BFpBfDPUvgpixBEZZSXlgcHtXKmmjFkR0y
	CrGp2Yrig3x4szQM3EkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfhGg-0001pU-4b; Tue, 25 Jun 2019 08:57:34 +0000
Received: from mail-eopbgr10122.outbound.protection.outlook.com
 ([40.107.1.122] helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfhGP-0001mL-C0
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 08:57:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c7W4pWfQLLwhZzFUgoWVbp0ghDBuAUqH8FPhvUf0OmU=;
 b=X3t2KO4I0Rb1sezU5In0OfLmderfoAI399pMIAD7e9jhD3iEEoj3QwY/LjNqIpLdQAemTcFFw+F1aZYg5k5qOVPyNF4kEkQIXmMAqv29ik2u5AosYJSpCqljQQIJwywFuRVvG4zt2yNsAv91Kvtdl/2NLyDxvkBKiRxnsfZsqds=
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com (52.134.66.158) by
 DB3PR0202MB3276.eurprd02.prod.outlook.com (52.134.70.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Tue, 25 Jun 2019 08:57:14 +0000
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::29c5:d1ae:8855:3153]) by DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::29c5:d1ae:8855:3153%3]) with mapi id 15.20.2008.014; Tue, 25 Jun 2019
 08:57:14 +0000
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
Subject: Re: [PATCH v2 3/9] dt-bindings: i2c: at91: add binding for
 enable-dig-filtr
Thread-Topic: [PATCH v2 3/9] dt-bindings: i2c: at91: add binding for
 enable-dig-filtr
Thread-Index: AQHVKyy4Gtu+NY4pbEyagA7mJFNWFKasEZeA
Date: Tue, 25 Jun 2019 08:57:14 +0000
Message-ID: <d6f9cae4-0281-e1da-3c7d-69600f7562cd@axentia.se>
References: <1561449642-26956-1-git-send-email-eugen.hristev@microchip.com>
 <1561449642-26956-4-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1561449642-26956-4-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
x-originating-ip: [213.112.138.100]
x-clientproxiedby: HE1PR0701CA0049.eurprd07.prod.outlook.com
 (2603:10a6:3:9e::17) To DB3PR0202MB3434.eurprd02.prod.outlook.com
 (2603:10a6:8:5::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peda@axentia.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a72224d4-5e33-4571-3780-08d6f94b1e19
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DB3PR0202MB3276; 
x-ms-traffictypediagnostic: DB3PR0202MB3276:
x-microsoft-antispam-prvs: <DB3PR0202MB3276FC4D7DC987DCDDACD96EBCE30@DB3PR0202MB3276.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0079056367
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(39830400003)(376002)(366004)(346002)(136003)(189003)(199004)(229853002)(476003)(2616005)(73956011)(6246003)(66946007)(64756008)(81156014)(66476007)(25786009)(8936002)(66556008)(81166006)(6512007)(99286004)(11346002)(6116002)(3846002)(8676002)(66446008)(7416002)(6436002)(14454004)(53936002)(66066001)(65806001)(65956001)(6486002)(5660300002)(7736002)(76176011)(446003)(58126008)(256004)(74482002)(26005)(102836004)(6506007)(53546011)(186003)(110136005)(386003)(71200400001)(86362001)(64126003)(31686004)(71190400001)(31696002)(68736007)(486006)(2201001)(508600001)(65826007)(36756003)(2906002)(2501003)(52116002)(316002)(305945005)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DB3PR0202MB3276;
 H:DB3PR0202MB3434.eurprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: axentia.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: PTSOkWc9cjVHzuZkxLz3NZsgtGl/0ZTLiMY95xaKX4QZEQ1ffLzt2zeldHnNXBCatESpfPNxMuv1+t47p2bSnK6OsUlUF0Au3FI6oBZYT/3GYW3dTxWxX7FEDiYUFKwSeX4H+Af4S3D9ZgDgDt2qQ/7PxXOKjmjIQVThTLsnXXW5HnUJ5k6wQuwTfHKMeM1BJEdZh35rGRnpidUYRWcn/gBGsKKXmPw/gvY0jzNEd8guwTsqMoGG7o6xkNDc65/7Bv2cUnikgJrkZo5Ez8K8OdozDjoTwpcz2fkVERvXdKseGC7eDJ5aixK2Rp9eU0VyslCNvcgpp/E59uH2cCUBGOcGHP92MLOymMC1T+9ugLt2dmjhsnz1h+zkpMSxBviLyRk7jchE0TumPoYFv3SEop7HTQu4VGoqYvNO5xTbQNw=
Content-ID: <011A95CE47B3734FB0FAAF2F46BA808C@eurprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: a72224d4-5e33-4571-3780-08d6f94b1e19
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2019 08:57:14.5024 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peda@axentia.se
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0202MB3276
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_015717_476991_05B442C3 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.122 listed in list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: axentia.se]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: axentia.se]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-06-25 10:04, Eugen.Hristev@microchip.com wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Add binding specificatoin for digital filter inside the i2c controller
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---
>  Documentation/devicetree/bindings/i2c/i2c-at91.txt | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-at91.txt b/Documentation/devicetree/bindings/i2c/i2c-at91.txt
> index 2210f43..8268595 100644
> --- a/Documentation/devicetree/bindings/i2c/i2c-at91.txt
> +++ b/Documentation/devicetree/bindings/i2c/i2c-at91.txt
> @@ -20,6 +20,9 @@ Optional properties:
>    capable I2C controllers.
>  - i2c-sda-hold-time-ns: TWD hold time, only available for "atmel,sama5d4-i2c"
>    and "atmel,sama5d2-i2c".
> +- enable-dig-filt: Enable the built-in digital filter on the i2c lines,
> +  specifically required depending on the hardware PCB/board and if the
> +  version of the controller includes it.
>  - Child nodes conforming to i2c bus binding
>  
>  Examples :
> @@ -56,6 +59,7 @@ i2c0: i2c@f8034600 {
>  	clocks = <&flx0>;
>  	atmel,fifo-size = <16>;
>  	i2c-sda-hold-time-ns = <336>;
> +	enable-dig-filt;

This spelling does not match the spelling in the subject. But please see
my comment on patch 6/9...

Cheers,
Peter

>  
>  	wm8731: wm8731@1a {
>  		compatible = "wm8731";
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

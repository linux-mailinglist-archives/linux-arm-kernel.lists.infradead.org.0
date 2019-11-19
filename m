Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F136102F51
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 23:30:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cLZ7fsfMpOa47bQuiFac0YUSoAxDYfzMAKPezuK65WE=; b=lBTto9VS/syEgZ
	kYOb/kUnp+laieu+8kCdxMkepzlYihyHVKBn/Ubi3TldjfmtWNRDrhhVyN6KciYL4ZU6Hs7YArdb3
	ZS0ID5ZYt/kPk+4zZVqIoC3eq4g8sWscZqvurhjVIuvh4INTDcIul9GSVzhaHLhL9b5+TDNwhrYxA
	pKoYPoC6o/uI9MO2VVakQ8WPhZMyJ7npYzuS3r4uh3w536osAYXjSpryResMl8/2//XAbXO36qrBJ
	Kd03L088mrSbhldoJYEuxMe8kbYmMtixEHulddqdNGt12X+GiKJBFSG3SVGh6ijtzpy6J/cjVVTdj
	DoSfE1kDdfbiuSOS5YLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXC18-0008J9-LL; Tue, 19 Nov 2019 22:30:38 +0000
Received: from mail-eopbgr60131.outbound.protection.outlook.com
 ([40.107.6.131] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXC0v-0008GP-TE
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 22:30:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TWWYCsfNUQwuHvR+h4Uka/PISvaJdo6HXT5eGy6GPoh/gIwUMRKV/09xWuYn37MvmYIUICmLP5KjYisYsoaOT/DvQEhyPmDOgCOybKJe2/ZgexElN/1qaA4JPRaRqiaM7PtVqD71/2EzLbYumhVMxE4SZ/MhlEmf0Ur+u0YK3tbsGVTOJUcqQMDP9komWjI4GoB9XJI+xZ6YuXCXLGheCNo7BNpwA47gSwSr2MFw6mM380l+AzDPm7nlmtyWSDkLH0W/DuIv3Ob8EQ6oZijxEqUL8WzUPZLEoMhKBGBxWihFIK0Q3xbvcb8smtwF0WBDwktuIEhPo0PpOL/XDhxvqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k/VSrS/n5InuP5tEJCL71Pa5tjEe6M0q8kgMJqdj/Mw=;
 b=YrZHnQabuNEIdE5oaY2/KcZFHlP/mPhqcigUKb7cMaJLzVNh5Cq+VBE5Yx0Us2Meyz4xmETU36of9lVHK26pLBC7nyjYuk/al3dkJ4goMvw5F/1LRPHYKSeyAeFJOq7t8MigQiE5QnrqcMOb98rgyoDlOWpwZXfn9r9dxzJKGvF1wI9AyhSLfMjrqt9QaSeQVEWevTxlRcgiUL8tN83ibHJZw+Xn5nRVIMcipBth6ODbMTbNSMLRmReJXcjAlGXFRez2RnrPkW8xqMh0ieiiAkFY30cIdpmyj1R7xmXM1Sv0nS/S8/9/fD1zgO11Ed/wgshih+1gntvtDcodxnIlpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k/VSrS/n5InuP5tEJCL71Pa5tjEe6M0q8kgMJqdj/Mw=;
 b=iPrivwnJZzG86aYb0QPrKnz9ITNzCE1fi9mtLYaDWPxcZLL+SWkdInNnjFBq7TtDFLoVqIag5sIprQaIhKHqi8BsVbWgNCtLw0sAJYq9RYQrueEX81J+1sLyUhD3B7YUjvAEyDgzBOdsZwTuElbhHPzKVr2gY+jpGjPVh//kC1k=
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com (52.134.66.158) by
 DB3PR0202MB3513.eurprd02.prod.outlook.com (52.134.68.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.30; Tue, 19 Nov 2019 22:30:21 +0000
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::477:9510:3e3:f8ca]) by DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::477:9510:3e3:f8ca%7]) with mapi id 15.20.2474.015; Tue, 19 Nov 2019
 22:30:19 +0000
From: Peter Rosin <peda@axentia.se>
To: Tali Perry <tali.perry1@gmail.com>, "avifishman70@gmail.com"
 <avifishman70@gmail.com>, "tmaimon77@gmail.com" <tmaimon77@gmail.com>,
 "venture@google.com" <venture@google.com>, "yuenn@google.com"
 <yuenn@google.com>, "benjaminfair@google.com" <benjaminfair@google.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "robh@kernel.org" <robh@kernel.org>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>, "jdelvare@suse.de"
 <jdelvare@suse.de>, "jarkko.nikula@linux.intel.com"
 <jarkko.nikula@linux.intel.com>, "geert@linux-m68k.org"
 <geert@linux-m68k.org>, "arnd@arndb.de" <arnd@arndb.de>, "max@enpas.org"
 <max@enpas.org>, "krzysztof.adamski@nokia.com" <krzysztof.adamski@nokia.com>, 
 "syniurge@gmail.com" <syniurge@gmail.com>, "puwen@hygon.cn" <puwen@hygon.cn>, 
 "jfi@ssv-embedded.de" <jfi@ssv-embedded.de>, "sr@denx.de" <sr@denx.de>,
 "mchehab+samsung@kernel.org" <mchehab+samsung@kernel.org>,
 "kdasu.kdev@gmail.com" <kdasu.kdev@gmail.com>, "enric.balletbo@collabora.com"
 <enric.balletbo@collabora.com>, "baolin.wang@linaro.org"
 <baolin.wang@linaro.org>, "ludovic.desroches@microchip.com"
 <ludovic.desroches@microchip.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: i2c: npcm7xx: * add binding for i2c
 controller
Thread-Topic: [PATCH v5 1/2] dt-bindings: i2c: npcm7xx: * add binding for i2c
 controller
Thread-Index: AQHVnu54E09/kMD0Sk6PJN8U0wqzjqeTE/aA
Date: Tue, 19 Nov 2019 22:30:19 +0000
Message-ID: <a599e9e7-6b00-2bbc-407a-8f48b17b43c5@axentia.se>
References: <20191119144930.227241-1-tali.perry1@gmail.com>
 <20191119144930.227241-2-tali.perry1@gmail.com>
In-Reply-To: <20191119144930.227241-2-tali.perry1@gmail.com>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
x-originating-ip: [213.112.138.100]
x-clientproxiedby: AM0PR05CA0049.eurprd05.prod.outlook.com
 (2603:10a6:208:be::26) To DB3PR0202MB3434.eurprd02.prod.outlook.com
 (2603:10a6:8:5::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peda@axentia.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6dbfa4d7-2ba0-475b-b7b3-08d76d400f2d
x-ms-traffictypediagnostic: DB3PR0202MB3513:
x-microsoft-antispam-prvs: <DB3PR0202MB351311F23EA34548BF0A7AE6BC4C0@DB3PR0202MB3513.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 022649CC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(396003)(39830400003)(366004)(136003)(346002)(199004)(189003)(53546011)(14444005)(52116002)(256004)(14454004)(36756003)(58126008)(11346002)(5660300002)(4001150100001)(7416002)(86362001)(508600001)(2201001)(54906003)(110136005)(7406005)(316002)(2501003)(76176011)(71200400001)(386003)(6116002)(31686004)(71190400001)(7736002)(66066001)(65806001)(25786009)(81166006)(4326008)(26005)(229853002)(99286004)(65956001)(6246003)(81156014)(6506007)(66446008)(64756008)(66476007)(486006)(6486002)(66556008)(446003)(2906002)(186003)(8676002)(31696002)(66946007)(2616005)(305945005)(6436002)(476003)(3846002)(8936002)(102836004)(6512007)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DB3PR0202MB3513;
 H:DB3PR0202MB3434.eurprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: axentia.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gWbsGoklobIuGWcp2TnxqrMMP9RUPwCtcXAP+puQe306aIzqKHQgRRlokWzzbKICUAR8ME+jc1HYJaNq+5shbR00LEbSPoPDpAxyyl6ksGdaSouCPss6tdXaezbCxAsQli3eNPQ0Hknf84yeM/qUFwHENBFnNWiFOShwGzKx6RgbaQzKCzYRICInZL5QPHq8N/WXaupifg47x8jIRAAclSE6XV/fPgBFaKLYtugVHcwiyrOBl+UVzSogmR3uGLXmYzXe+21JYyD6yKdX1q2O8GPUhkopHnRWca4YFSKbEd6E+RHAnklETIklKxaMdqqpAojF+O2PDCyuVk9fDnPAXccwZxBP1ufRTaljSzzM64j5zQ12Goa99K/xEuecmckDY457HLPkbVQg2m3WioYxMEYPlI/EeWU6KrFbAIavJpITDwYB9heqLtRZ5z37ukfe
x-ms-exchange-transport-forked: True
Content-ID: <C6B6B04574D64B46A7E1AA33AC408CDD@eurprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dbfa4d7-2ba0-475b-b7b3-08d76d400f2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2019 22:30:19.8102 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SHrF/mfdGwrMxHzdfdxrMjN7frT3F/D8YfkpNQshMAoHoek2tVEtcJ0saBNDFDHU
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0202MB3513
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_143025_942925_BD6844E9 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.131 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-19 15:49, Tali Perry wrote:
>  dt-bindings: i2c: npcm7xx: * add binding for i2c controller

I missing an empty line before the block of tags, but the bigger problem
is the repeated subject line. Also, the '*' in the subject makes no
sense to me.

> Signed-off-by: Tali Perry <tali.perry1@gmail.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/i2c/i2c-npcm7xx.txt   | 29 +++++++++++++++++++
>  1 file changed, 29 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/i2c/i2c-npcm7xx.txt
> 
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-npcm7xx.txt b/Documentation/devicetree/bindings/i2c/i2c-npcm7xx.txt
> new file mode 100644
> index 000000000000..0ecae950748b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i2c/i2c-npcm7xx.txt
> @@ -0,0 +1,29 @@
> +Nuvoton NPCM7XX I2C bus
> +
> +The NPCM750x includes sixteen I2C bus controllers. All Controllers support
> +both master and slave mode. Each controller has two 16 byte HW FIFO for TX and
> +RX.
> +
> +Required properties:
> +- compatible      : must be "nuvoton,npcm750-i2c"
> +- reg             : Offset and length of the register set for the device.
> +- interrupts      : Contain the I2C interrupt with flags for falling edge.
> +- clocks          : phandle of I2C reference clock.
> +
> +Optional:
> +- bus-frequency   : Contain the I2C bus frequency,
> +			the default I2C bus frequency is 100000.
> +- pinctrl-0       : must be <&smbX_pins>, X is module number
> +			(on NPCM7XX it's 0 to 15)

Isn't this a strange requirement? Am I, as a device tree author, not free to
use any label names I want? Surely, what is important is what the label refers
to and not its name?

Cheers,
Peter

> +- pinctrl-names   : should be set to "default"
> +Example:
> +
> +	i2c0: i2c@80000 {
> +		compatible = "nuvoton,npcm750-i2c";
> +		reg = <0x80000 0x1000>;
> +		clocks = <&clk NPCM7XX_CLK_APB2>;
> +		bus-frequency = <100000>;
> +		interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&smb0_pins>;
> +	};
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

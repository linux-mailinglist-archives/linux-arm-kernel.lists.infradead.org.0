Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6DDA543D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 12:44:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3lxVRamCSLZaNuNueQDZueAN23P/lMpWTM0ZhU01IF0=; b=fSHWK8mvCESkn/
	SLA5QcxCoAiwbwoR84YB/j+3Ai89FCwryMm12Am2GurDCDLQv5kdV+YYiy4B/AFCtWxjzgYZ8rQGF
	W8rpqNgxhAqBhcQhsFCV2VfR7Kzvys81uiilplYGvNL5fVLNvJuKC3UqlNyIZrQ3vRGUgFVk0wQgB
	d0rCDVy7YFmQrlpMLdMns4eE8Kp65CaUA1yqNMxy5oItMmvkNJglrt0ofCyJ3ysXkDPfy6l6q1l/5
	9X95Eb/rGTijWejV7K4iZ6RhosWs8RTTXxQ2L2H5XvOcJmnzC6/37xVpD3lRXQE61E/0tjwOdH/gO
	R9GnWfRg925wmtdZjW7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4jpC-0005tj-7x; Mon, 02 Sep 2019 10:44:42 +0000
Received: from mail-eopbgr30122.outbound.protection.outlook.com
 ([40.107.3.122] helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4joz-0005tB-W1
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 10:44:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zr4/vLjCOXAVt+vsTmFnJk2l1IJ2XmBcJJm0RXeC1Ivr/wY5azbZkOI66QKg74bHwS1Dtc65LkCkUVjOqeS1G5JqIz4SO7Pu6R47I1ZUpJAgwfE2SHCtVf/dOvDJ4457gGew7B3t6aZbiWYy5sTMkqmw+9ItOTe67KdmWLyn6He2M34qH7C3rA/hvwg7UIpLYedA1/bDoT2X2lkGY8zHRIi+6nKSkM9UMgSkiYALtexEfVDI5lLRAh34LoXZK77SgZG72mqXDvfU+NFf04BlLOOHfoNYVuhna2Fd/nmFONWTewVmw2+LbdK/0Rs9PTOfKeJjHHOUMn1Nh0Y6PJuYzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qjcgeCccopkLIYkE3Vz/2o6S+cAJUVa3vGAZnqppsDE=;
 b=Nw4+Q9D2JA6EYA3qmW9XIr/hr7crzLiCjSiKC33pxCD7yusHfAWOfgDTcMyQTHmgNBNaiFIKGFa0F9m96ZbApWYseW0En3cWrissoysdYANcg5KPrWxIT5qatGMJ1u/CVfwn7RN0lszmlpIARGFceZQVfgoTQBDut1BV/P+rPQR2t3zDTN52S6wyakERhPkLbGAb/hSxu37mzd0kzEBUhcvbiX4DSZv76+OHVhk8sr+ArQpOfvJcW279gMY56qcKaj+WZqdVotmWk2mbEftyKFRoZayQIowcD/wvljafWh12KGbPJOA5MvSp+jvF/TJRU+kNg0kvAjXcr7WNt1H5tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qjcgeCccopkLIYkE3Vz/2o6S+cAJUVa3vGAZnqppsDE=;
 b=CvN1p/TfsAev1SG3kFBtp89uZVooLmh6S1wLBxvSkl2C9eGRqs/OECjTSCjz2rckOje1tfSQ8aZVtvJ74UOp+7B5LuOkTTwz4fxWT0OPy3C47acjxEC2R51lcRqB44kMW7UqHta4Ne+jZTXVj6gld/Yhc/FyRE+tMXJZg1B1DhE=
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com (52.134.66.158) by
 DB3PR0202MB3322.eurprd02.prod.outlook.com (52.134.66.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.20; Mon, 2 Sep 2019 10:44:24 +0000
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::e12b:afcb:73e1:5d09]) by DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::e12b:afcb:73e1:5d09%7]) with mapi id 15.20.2220.022; Mon, 2 Sep 2019
 10:44:24 +0000
From: Peter Rosin <peda@axentia.se>
To: "Eugen.Hristev@microchip.com" <Eugen.Hristev@microchip.com>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "Ludovic.Desroches@microchip.com"
 <Ludovic.Desroches@microchip.com>, "linux-i2c@vger.kernel.org"
 <linux-i2c@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "pierre-yves.mordret@st.com"
 <pierre-yves.mordret@st.com>, "alexandre.belloni@bootlin.com"
 <alexandre.belloni@bootlin.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: Re: [PATCH v4 1/9] dt-bindings: i2c: at91: add new compatible
Thread-Topic: [PATCH v4 1/9] dt-bindings: i2c: at91: add new compatible
Thread-Index: AQHVYXbgQNi7wM4M0k26eRDJy0qMmKcYM9GA
Date: Mon, 2 Sep 2019 10:44:23 +0000
Message-ID: <47d618da-263f-199c-3cc6-35e8f8c6015d@axentia.se>
References: <1567418773-2427-1-git-send-email-eugen.hristev@microchip.com>
 <1567418773-2427-2-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1567418773-2427-2-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-originating-ip: [213.112.138.100]
x-clientproxiedby: HE1P191CA0004.EURP191.PROD.OUTLOOK.COM (2603:10a6:3:cf::14)
 To DB3PR0202MB3434.eurprd02.prod.outlook.com
 (2603:10a6:8:5::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peda@axentia.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3a0c883a-e295-4524-9846-08d72f9284e3
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DB3PR0202MB3322; 
x-ms-traffictypediagnostic: DB3PR0202MB3322:
x-microsoft-antispam-prvs: <DB3PR0202MB3322F8949921980EF6F7BCA9BCBE0@DB3PR0202MB3322.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 01480965DA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(376002)(39830400003)(396003)(136003)(366004)(199004)(189003)(7416002)(508600001)(86362001)(2501003)(14454004)(71190400001)(2616005)(11346002)(2201001)(486006)(31696002)(446003)(6436002)(36756003)(229853002)(102836004)(476003)(305945005)(7736002)(256004)(71200400001)(2906002)(65806001)(6506007)(53546011)(65956001)(66066001)(14444005)(386003)(6512007)(3846002)(316002)(53936002)(52116002)(66446008)(8676002)(6246003)(64756008)(66556008)(66476007)(81156014)(58126008)(81166006)(31686004)(4326008)(26005)(8936002)(66946007)(76176011)(110136005)(99286004)(5660300002)(186003)(25786009)(6116002)(6486002)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DB3PR0202MB3322;
 H:DB3PR0202MB3434.eurprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: axentia.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: qWchiUQCpgrOcfnr7mkhWgtGbhwcpbjo2qfOXSjqO3EepeWY9P4OkrnchnrBJXiQ4MnqJvdtQRQ8FbhRrNr/pj0GNq2chRTSg87U/cwUJHoe+7dZvHvErapvwUNCHlm+WbczndtTxG/+EY43f9wGmy+90th/18W1h1lROjfYAYxnmLWXXQz8de4SqB2VJQrnx44Orcgo5YIfBFLelI1C93ygO44zUJxUU5QYu9KF3lo6y02CcElamvq98aV85H/ArVJUpSmuPdIUDQBtQsUIgwkiMJYhYScnRcKTlGKVXruC6/oj7kt7E0AzH0WlfK/4NnmsbFp/zywU1rbcwNjp0P+Hf3qjvk3B71COp5agQ6WNVJdE6J56j1Aw7x6uQDUb14s+BoiJ6uNAxMTPKhnORfJshxlBoDphwiiXYZMRqxc=
x-ms-exchange-transport-forked: True
Content-ID: <A70DBC8FDE72D94789EC5E96294C2FF8@eurprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a0c883a-e295-4524-9846-08d72f9284e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2019 10:44:24.0671 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o3Bnt387iAhyCz6g/l8eEDIx2oO0y7XcZ3P1fuwAPdEiKrnPVALqY5pgv7Ve2RFN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0202MB3322
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_034430_253837_D10C8430 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.122 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-09-02 12:11, Eugen.Hristev@microchip.com wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Add compatible for new Microchip SoC, sam9x60
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---
>  Documentation/devicetree/bindings/i2c/i2c-at91.txt | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-at91.txt b/Documentation/devicetree/bindings/i2c/i2c-at91.txt
> index b7cec17..2210f43 100644
> --- a/Documentation/devicetree/bindings/i2c/i2c-at91.txt
> +++ b/Documentation/devicetree/bindings/i2c/i2c-at91.txt
> @@ -3,7 +3,8 @@ I2C for Atmel platforms
>  Required properties :
>  - compatible : Must be "atmel,at91rm9200-i2c", "atmel,at91sam9261-i2c",
>       "atmel,at91sam9260-i2c", "atmel,at91sam9g20-i2c", "atmel,at91sam9g10-i2c",
> -     "atmel,at91sam9x5-i2c", "atmel,sama5d4-i2c" or "atmel,sama5d2-i2c"
> +     "atmel,at91sam9x5-i2c", "atmel,sama5d4-i2c", "atmel,sama5d2-i2c" or
> +     "microchip,sam9x60-i2c"

IIUC, this list should ideally be reformatted with one compatible per line.

Side note; unfortunate naming with SAM9x60, when there is a preexisting 9260
fitting the "wildcard" (AFAICT, it's not a wildcard in this case, but it sure
looks like one).

Cheers,
Peter

>  - reg: physical base address of the controller and length of memory mapped
>       region.
>  - interrupts: interrupt number to the cpu.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCB3593F1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 08:01:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=m3q2a14QvaTTzTJ8wjs4wOodK5YSm+pDziraHi9HRa8=; b=o5qNUyBlKs8ioT
	oKbfdSlwWWOUsCDL0l6ivYyHGhueZ9835ybj628prLRI49JsOY57dzEMuZJ7H+rnfLo0d8xqKurVM
	6kjDMWbRzjqN4pHoymEiFaFj964M8bcaV9O4ToIzL+P6R5gm3FjwaJkTBxgrOB7WOEgYijhhg+qLA
	3rV9SMThxcQx3Ji0JBNqjL+bahMqYPT1F4uwVbhYEAxTIKLtKYxEOSPnYB+wAfb2LzC0gnb7A5l8s
	fpQaBi6HHELIT5S6Q857Axz1eDcy6aXNl+88P1K9ADNki5mUpJDCkmepFp9E10Two1naGQjf17se8
	7//vFUicKt9p8WZVs+dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgjwm-0008Ru-QB; Fri, 28 Jun 2019 06:01:20 +0000
Received: from mail-db5eur01on060e.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::60e]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgjwa-0008RR-ML
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 06:01:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=testarcselector01; d=microsoft.com; cv=none;
 b=vMSZXLs2zgnXksxOvtguTdDtZrDo72XxHRZATH3eAktda2oBkHocBJDvvWUxSqJnWmaBfC8DWK3jpH1ym0aJpVoWYEOR4bBAmzxUm7Le3tWsjYeuvMO3pI3w2WQ28URmZqO/1SGv4KXuEPEzyQGC2zqk/PCtlIYTEAtgotEYoqk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=testarcselector01;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n5MvjqRN8k7G3UzEiU6XyuFXA+0gesu54QUz4e9/cQk=;
 b=hx4bpta30YOriIuzTTHJm/MaM0Lj58Ws/OZlf2uO2qiLZvJcElsw9zLqCaCL/eJsqBTCOx1/FMKi/ADKAI0RmeS0pkgh8lO0Cl2NjVvjFArbC9Vz15S26WX5tKQcRJ7I+N9sQ9RS3qUMzs0EK/Te7iIXMbOzfUSLm3ak3bZuBfE=
ARC-Authentication-Results: i=1; test.office365.com
 1;spf=none;dmarc=none;dkim=none;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n5MvjqRN8k7G3UzEiU6XyuFXA+0gesu54QUz4e9/cQk=;
 b=erydpXdUkI1hSwJg3gWkU5SYCHaAmqrt2kW1L+UW5Gsw9EaBqTrAKrVgRqjZbX6qKlXVUW+cT/X419Sm4PO4ZYFrO5wE8AVvSpFTqXg/uo9nnX2LhOFK0FPGPrfAc2VOTnSBCqcqljH0IRINdsESPmHukRcKTwfKE1JDxqJKwfU=
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com (20.177.50.140) by
 VI1PR04MB4861.eurprd04.prod.outlook.com (20.177.49.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Fri, 28 Jun 2019 06:01:05 +0000
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::d83:14c4:dedb:213b]) by VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::d83:14c4:dedb:213b%5]) with mapi id 15.20.2008.014; Fri, 28 Jun 2019
 06:01:05 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Subject: Re: [PATCH 2/2] arm64: dts: imx8mm: Correct OPP table according to
 latest datasheet
Thread-Topic: [PATCH 2/2] arm64: dts: imx8mm: Correct OPP table according to
 latest datasheet
Thread-Index: AQHVLWLHJZvOkljf/UeBT/cVdVnPoQ==
Date: Fri, 28 Jun 2019 06:01:05 +0000
Message-ID: <VI1PR04MB50555399D8A3E4890D8C91E6EEFC0@VI1PR04MB5055.eurprd04.prod.outlook.com>
References: <20190628032800.8428-1-Anson.Huang@nxp.com>
 <20190628032800.8428-2-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [2a04:241e:500:9200:e6e7:49ff:fe63:c221]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f32db33f-55e1-4e34-547b-08d6fb8e01b5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4861; 
x-ms-traffictypediagnostic: VI1PR04MB4861:
x-microsoft-antispam-prvs: <VI1PR04MB4861CAB1DC4DCD309769B726EEFC0@VI1PR04MB4861.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 00826B6158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(346002)(396003)(366004)(136003)(199004)(189003)(5660300002)(52536014)(476003)(99286004)(81156014)(68736007)(66946007)(54906003)(6116002)(256004)(2501003)(110136005)(71200400001)(6246003)(6436002)(186003)(66476007)(6506007)(76176011)(7696005)(14444005)(25786009)(2906002)(55016002)(71190400001)(4744005)(46003)(229853002)(33656002)(53936002)(102836004)(53546011)(66446008)(446003)(8936002)(44832011)(316002)(478600001)(73956011)(7416002)(7736002)(76116006)(9686003)(8676002)(66556008)(486006)(4326008)(74316002)(14454004)(305945005)(86362001)(81166006)(64756008)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4861;
 H:VI1PR04MB5055.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: OxpCvGmj1WZuuAde2/P+msuo2ONlEXSza09xe1UrYCZX9QQedTyOb/QFeMmWeVBcNp1Nnvl/buDFqPtdPZ/EAWi1Yr/5BEpHK2ekF+d3WZ3Nxmh/fdOgF/E8s/edMBjCjdZVy2twRiiYb9+Bg+n4rFztEtWlWdtqBvoEG3KJotLNylrLkahgOpTwOTiPoCu8xKjxVTXcPFxVh8wYhn3qZAaHFvAmfRm8LiO3EqEFyK8Yzozaeu2bS8VsXZGDl3X95PS2WS6gZ2D4u3RSIQH6tEWJVkJbvH7J2xLrJWP2jk3O5EW6I5mmxFIfCwBGOdBUg269tzyqwga9NVQg3EH5K5Q7F3FQuqdhd/qi0ksiYFB5EXerYk2lgK36vZhDu1km5AYIvK25PrHIxALzEF5NEicjaqSMgnncqacy9wStvhA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f32db33f-55e1-4e34-547b-08d6fb8e01b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2019 06:01:05.0783 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leonard.crestez@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4861
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_230108_735668_B2D5442D 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:60e listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "angus@akkea.ca" <angus@akkea.ca>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28.06.2019 06:37, Anson.Huang@nxp.com wrote:

> According to latest datasheet (Rev.0.2, 04/2019) from below links,
> 1.8GHz is ONLY available for consumer part, so the market segment
> bits for 1.8GHz opp should ONLY available for consumer part accordingly.
> 
>   			opp-hz = /bits/ 64 <1800000000>;
>   			opp-microvolt = <1000000>;
>   			/* Consumer only but rely on speed grading */
> -			opp-supported-hw = <0x8>, <0x7>;
> +			opp-supported-hw = <0x8>, <0x3>;

Only consumer parts should be fused for this highest OPP. If you don't 
want to rely on this then maybe also delete the comment above?

--
Regards,
leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

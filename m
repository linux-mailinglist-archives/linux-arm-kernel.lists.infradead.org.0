Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 065901040D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 17:30:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=v715AcS3NaicsDzh4AEk4i47yof5Y7MonPNnUW9wdBs=; b=VIDbsJCStk2hY+
	QFFuSqvKnreOYDMEpHtc2aNcaNT0EEiyd3DzgbBZoYEDBzymLIVC+xrdgvb7Nq2iawh5jWIilRzMn
	8v0T445rBME0mQjR8HPkGjBPMa5RUKwtP+XPm+H4850Cnh26/SrTUAZeKQqxloXEsvrZPolPAZoM7
	knwu6dnGfZr0p1iBWkGijghWXXWVZW4MRMnK/Fiw9RSWc0zfFqo9s3+HUdoc5ttwkelvCFPBcAZFE
	SMBGvomxFuzMGEbQk9k/qDvjwnRkLJc1IjmiVnDNhC4b469iz2UPieQTAbncdMxyN/3zDbOtj1E9r
	D8WaBVCaBeSp12eD1WRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXSrx-0005lH-9E; Wed, 20 Nov 2019 16:30:17 +0000
Received: from mail-eopbgr140054.outbound.protection.outlook.com
 ([40.107.14.54] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXSrm-0004pg-3a
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 16:30:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cxVjxTPHKBUiHSJ1/u3LeXHX7rvNFBOPlaRZsq7JgFMgumWbu7BHgU2hfCZ9dDvCMtsEOky7hSdRwAgKbC5RlKXIRMeN80sWqkhuC0JBHY6jQ1chv1D7WnKO+ViLI7NnY0iQEFbJMnFZtHYMyhmk3LMSyVZHVWLcu30HcamtVtVuM3dGYPwOngJ1dJeqvsGWKbdjPJBemyxTPM7pk6prqidPcdHLA0je7nQLmPH+Qcxk1safy4t4gXCagI0mfRIxIT5BMY57CH5bq8rW89Q8Awy4Jk4AyNJlb+K+VRCKom8rLQcEuPGpnXT8C6nyDC1hvogsMy/lOnEBqquibQVXkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XRHZwPVPry0P0fylojjKonn2KtsAzW6LHiesZP7nzeg=;
 b=Zx5yXqoNhvAvjaxyIqkFv/GWz8kG84iMwbJ7Ls4L8V5IOVZ/YP0Q2w7wrqAlowcMMy5BSHXFaZ8naij8vBo8cLHJzYTUTERZcrHTTJJGnZNQK81IsccrFy6sZ+RBvB8sls4CewSqdnr/PEWBfSgEx9qvmNWiTpr5R/hu6hLJtBWFeQOgJgm6jC8BQU29GvKWScnzjhhVkBKHRRLlSdBH4NFB9bZ0GeIHazgtbTGAflYB+CM+rTqPJ3YLSDWRoKMXOpMByjoGMwijrYBWGwmuRXUzulgNZbZtJF5Gn+qQ7KmcpM9wHE5WzL6VyYq1MMaPWhleIpZ0PB4Mmfi/gClqsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XRHZwPVPry0P0fylojjKonn2KtsAzW6LHiesZP7nzeg=;
 b=Osi0szaq1qmvHXCFcU0q5jpsEL1P1QzKaBqztjuFVwWybeZyYLT7d4tNV7wFu3IHxLgx7l8QC8Z/zzTvYnYOKt5TU/YT9Ht97F0b84+5e1yaeWxz52kJveO6cnTpaerKlpgcMQCxgLHcAlxNhy7DW1aScrToXkOqD9AbrgdqTvQ=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB6959.eurprd04.prod.outlook.com (52.133.247.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.22; Wed, 20 Nov 2019 16:30:02 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3%5]) with mapi id 15.20.2474.015; Wed, 20 Nov 2019
 16:30:02 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Angus Ainslie <angus@akkea.ca>, Jacky Bai <ping.bai@nxp.com>, Marco Felsch
 <m.felsch@pengutronix.de>
Subject: Re: [PATCH RFC v6 2/9] PM / devfreq: Add generic imx bus scaling
 driver
Thread-Topic: [PATCH RFC v6 2/9] PM / devfreq: Add generic imx bus scaling
 driver
Thread-Index: AQHVmyeZDID07b0oVkajwef04uXjmg==
Date: Wed, 20 Nov 2019 16:30:02 +0000
Message-ID: <VI1PR04MB7023E7C380EFA956629EEB67EE4F0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1573761527.git.leonard.crestez@nxp.com>
 <f329e715898a6b9fd0cee707a93fb1e144e31bd4.1573761527.git.leonard.crestez@nxp.com>
 <e311a376e6aec0c380686a7e307d2c07@akkea.ca>
 <VI1PR04MB70233920AC838AD88E1ECC26EE4F0@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <008f2fa973b23fc716d678c5bd35af54@akkea.ca>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a465692a-265f-4e27-08d2-08d76dd6e4f5
x-ms-traffictypediagnostic: VI1PR04MB6959:|VI1PR04MB6959:
x-ms-exchange-purlcount: 6
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB6959623019D19EEAE780438DEE4F0@VI1PR04MB6959.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02272225C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(366004)(376002)(396003)(346002)(199004)(189003)(25786009)(52536014)(3846002)(74316002)(76176011)(5660300002)(6116002)(6506007)(53546011)(966005)(66556008)(64756008)(2906002)(478600001)(66476007)(4001150100001)(55016002)(66946007)(33656002)(229853002)(7696005)(6436002)(14454004)(66446008)(8936002)(86362001)(6246003)(44832011)(4326008)(8676002)(66066001)(186003)(99286004)(256004)(486006)(26005)(6306002)(316002)(9686003)(45080400002)(102836004)(71190400001)(14444005)(71200400001)(54906003)(7736002)(305945005)(7416002)(76116006)(476003)(91956017)(110136005)(81156014)(81166006)(446003)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6959;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cpmEb0o1ZUPQrF6mq1/F/ck0IfVUmU2ZpgnSj89PZDDu8WzTyXrj6q4ScA6WEVxewuGnAAv8GVe5XVgEAIKYJowtd+WR8qgbuqn69Xre71IS3O63++yDPT5NG3JB2D8MwdWVPLbtjJ9pPH1NpCU0J8B0yAVPmUdVxJSKDhjKQpkNJUJi7HaMysf0WCf2zINqgVOITFylLGyY4nhjIkri8tGPCGpI7ltFWaG1j2koIfpnIVJMfO1VD0CCncZdrCfT3JL3oethG3JRPZq7MM7BJzxmhmzTs9+cfqSDqx201NPciY6lls5lygFmLy2XQd5gKuRb5p1cn8Bri6OknO6EIM0xHlijL4CsB3vooxu2y9Bldd3SCkXkwNc/qbh7kfK+xJ5Nx1yQmS8c1CUiGuXH80mwZCLVPYOb2VYo2lNBwfdO0guH0LTTnoMymKzKqMBBZead4+ZJdbmhCHiTKJvbBa8GCOWNtusFGFrSDDhmUsI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a465692a-265f-4e27-08d2-08d76dd6e4f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2019 16:30:02.5338 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: swjDeQmCXF2/sf2xtRPkIUcgwBfD4p+EXq/tgArzWbZpgHFOKkFGQsQHgyOuuvEgcPD5U/C3/TmAcDRrOx9yNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6959
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_083006_283506_43AE3D38 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.54 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@partner.samsung.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-pm-owner@vger.kernel.org" <linux-pm-owner@vger.kernel.org>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 Silvano Di Ninno <silvano.dininno@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Stephen Boyd <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20.11.2019 17:41, Angus Ainslie wrote:
> Hi Leonard,
> 
> On 2019-11-20 07:04, Leonard Crestez wrote:
>> On 20.11.2019 16:08, Angus Ainslie wrote:
>>> Hi Leonard,
>>>
>>> On 2019-11-14 12:09, Leonard Crestez wrote:
>>>> Add initial support for dynamic frequency switching on pieces of the
>>>> imx
>>>> interconnect fabric.
>>>>
>>>> All this driver does is set a clk rate based on an opp table, it does
>>>> not map register areas.
>>>>
>>>
>>> Is this working with mainline ATF or does it still need to be used
>>> with your modified ATF code ?
>>
>> This series doesn't perform SMC calls, that's done by the imx8m-ddrc
>> driver: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fcover%2F11244283%2F&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7C186d3c14d8bc41216e3b08d76dd0106d%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637098612732915017&amp;sdata=ER10Ts4hk2Ft7%2FWBZ7r8lyFkB6un1VRwk0rSvRMm3ew%3D&amp;reserved=0
>>
>> This particular patch allows switching NOC frequency but that's just
>> clk_set_rate.
>>
>> DDRC frequency switching requires the imx branch of ATF (v2.0 + ~200
>> patches) otherwise you will get probe failures. Source for imx atf is
>> published here: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fsource.codeaurora.org%2Fexternal%2Fimx%2Fimx-atf%2F&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7C186d3c14d8bc41216e3b08d76dd0106d%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637098612732915017&amp;sdata=KcdzTQaW4xxualeRUU%2B9LjBeq99wUtzDBxrHWLVbkDo%3D&amp;reserved=0
> 
> Ok I was under the impression that the imx_2.0.y_busfreq branch below
> was based on this. Shouldn't those patches be added to the imx ATF ?

Already done, it's just that CAF public releases are only made after 
internal testing. TF-A is open-source so I push patches to my personal 
github to help more adventurous developers.

>> For your particular 8mq B0 case slightly different setpoints are used
>> and the fix is not in any public release yet so you need this:
>>
>> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgithub.com%2Fcdleonard%2Farm-trusted-firmware%2Fcommits%2Fimx_2.0.y_busfreq&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7C186d3c14d8bc41216e3b08d76dd0106d%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637098612732925012&amp;sdata=Ape5T7xfiR0yfSuO1Lv9OQhmK5p3f0ROWpzJiAMw1VA%3D&amp;reserved=0
>>
> 
> We also have 2n14w ( is that B1 ? ) imx8mq's that we are working with.

Errata is e11327 and does not appear on 2N14W:

https://www.nxp.com/docs/en/errata/IMX8MDQLQ_1N14W.pdf
https://www.nxp.com/docs/en/errata/IMX8MDQLQ_2N14W.pdf

You should be able to test with a published release:
https://source.codeaurora.org/external/imx/imx-atf/log/?h=imx_4.19.35_1.1.0

>> Is "mainline ATF" an important criteria for Purism?
> 
> Yes we intend to bring all of our patches to mainline and were hoping
> that NXP would be doing the same. Shouldn't a mainline kernel run on a
> mainline ATF ?

You can still use mainline ATF (tested right now) but the imx8m-ddrc 
driver won't probe.

The ability to mix and match different branches of firmware and kernel 
is very useful for testing. There might be slight incompatibilities but 
in theory if a feature depends on both firmware and kernel support then 
it should gracefully degrade rather than crash or hang.

ATF support for this feature will be mainlined eventually, I picked the 
linux side first because review is more challenging and changes are much 
larger relative to what we have in our internal tree.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

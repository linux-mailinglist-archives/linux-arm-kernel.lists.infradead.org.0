Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1A5162D65
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 18:49:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=WTL7sseIXRxVjGv8iS7eS+mzSJEgqUpY9FokMXT47c8=; b=t8A+bAy7uIz+uK
	FfaKJFXpEBL2JXjzeW6tM/KbAU1hKxlu909bjC5sNPVPIKL0eRQiMRU++pqGb+zyFXMo1M8LoCyZf
	RQ+rNKHFADXAoHlYVVyBpyRI9j58seLtVpFMz7XS7wYQDlEEK353hbQRxtlylND8hqupQ6/kVNvvk
	gOdi6gEuG6Zb0m0RogfE9+hj0N36d2W3wzuHGKki9YfD9XAaW4PsvEW8HpXNyYvMQGhv/BQTa3Cwp
	Bk/1fRstyJnxUI80gL0E53AmgIS4i0cRaWbKZuOkJ2ZJ39A8nMEDpXY9b0JUhh8BjrgYzAEu2tz+o
	rJ4EnyklmKDBZSaXsl8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j46zb-0004MM-FJ; Tue, 18 Feb 2020 17:49:07 +0000
Received: from mail-vi1eur05on2041.outbound.protection.outlook.com
 ([40.107.21.41] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j46zP-0004Kz-Bl
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 17:48:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D9QaAI+omociSr3ChtBl26TVZnCoi/Tvv0QatzpFrk8gIdH1VY2Hw1377OxnxMIOvehFoiL4LURradRPUWsZ5dBccXpBkKFhCWjNJh4voDGA1PxmerTIseKcCY8GKhaEac7XmpkM4qt1K+PQDDWRNJhaSdcCh+GMx3sySqK9o6+9ohcEen2JfLt+I7ypznB0HOdOQRRn4raBVY75oaZhNUJoxEdJwJ4wD/JKSLGHvtainjdhwjcbtKEmHAu3dNrwIX/eTyKJVP4/eFSQgnEEdkfN6siCYqpZerImQlEytmyr+WsUQmXMVBpPSDvm+tAyZjvUKVa5jdTef8t0SmmEmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yz0kYFuv82HKWo/vr8c/lofCgWDiBaeUg061wNbgyAc=;
 b=MfTawPV1ZLbXWHv4u5yz2cwJ5Wl4VucRatdaJ/42RgsqbhWOF/QNWycvfX0nxO1P3KJwc3w3u6bRauchdFsWKLUX2bm1SDWM1qQfYfrs/bgoCmb5lLqDyFozYjSPWBBsPbaK7wjsu1LIQvihz2bLf2p86RPCOsYrqUZjjsJfsAxZTBa6uk14jxi7S8SmsjE2m3P5z9Jery4nvrOvm/dORDGLZprMqh97v+I1biY1LdwYh8C5aDk4TFt/8/1iDBM4xNjlUTDRWKhcv4z9qTCdZ5dU17nxl//Uwq+KxmwY/fzrBKcRjSyJI11Jt5L0aJkLTjTO/Qm2optHHWSS1sSoKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yz0kYFuv82HKWo/vr8c/lofCgWDiBaeUg061wNbgyAc=;
 b=aiZ0YFN1jwJUhXvmCl+s4CkGvua9fJAbO1Ht1mQqKS1/Pi7V9+e1QlhaEKYnyt/QJ9Qi84aCVagnxhbX8dT756gW0BQc5Wx/eEKVh/kdL8i4Iz6CCXCyJBhw75q5BoiVZGDumPDdugih4WVRtRNrOSkCuDjXKKdQHC2wr8yrhsU=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB2990.eurprd04.prod.outlook.com (10.170.227.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.29; Tue, 18 Feb 2020 17:48:50 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953%7]) with mapi id 15.20.2729.032; Tue, 18 Feb 2020
 17:48:50 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH] firmware: imx: Align imx SC msg structs to 4
Thread-Topic: [PATCH] firmware: imx: Align imx SC msg structs to 4
Thread-Index: AQHV4SGqSL+k7/w06UOL1nyEN5GYug==
Date: Tue, 18 Feb 2020 17:48:50 +0000
Message-ID: <VI1PR04MB7023C1C536805130D9429E11EE110@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <3a8b6772a1edffdd7cdb54d6d50030b03ba0bebb.1581455751.git.leonard.crestez@nxp.com>
 <20200217062129.GB6790@dragon>
 <VI1PR04MB7023CDE9E4AD086F2E926495EE160@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <20200218091831.GB6075@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7ba8ee1f-efb6-4296-5133-08d7b49ad049
x-ms-traffictypediagnostic: VI1PR04MB2990:|VI1PR04MB2990:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB299084688AF8A783DDD2E122EE110@VI1PR04MB2990.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 031763BCAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(39860400002)(366004)(136003)(376002)(189003)(199004)(64756008)(66556008)(66446008)(71200400001)(66946007)(91956017)(66476007)(76116006)(5660300002)(8676002)(186003)(4326008)(8936002)(53546011)(6506007)(81156014)(81166006)(52536014)(54906003)(2906002)(9686003)(55016002)(478600001)(44832011)(316002)(7416002)(110136005)(86362001)(33656002)(7696005)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB2990;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WVc9fxQq0pl+JrAmh5hTaBssm/tHBO7aS2m4iQMF0g5Xh3r2+Q+pCPVICTBsxtRDd0W9rmq7cJQ8q3vaxMJl2+rOHfZzXvTKwZWI00KPdWsjcPq9A6rLMfOCb1SO8dKELIBK1JXZk6SGUbDjtu45QMBL/l8gDS1922cmu/RdJ+rEomsM70OW+b6paR/GxwVyi1Q/WXXJS4EqCK4g66TclZvb5qO1eCkLQJV+WjMb59Q2JkG6p65OxPFs+XDayr3Yz2r1WX6a7+0YaBPUnIvKFxCX74TNiEzonaQ1S8po3rE2fz1vuiF2MH2zFNQzq8Ee5v6G64h2EckRtzc/u/3QMwZme5JRcniGioUne7EYw908MV64zmqlVPndTQnSb6XOBoNR6c6jSu3KBgFmtOUvxOQQyLlxYDFhhcjWh5d+sa1KBbYWkwa4GklA2K4+gDa2
x-ms-exchange-antispam-messagedata: VLY1Yd3N5w8Rzyg+E8T6q6K4CNq7YSgNND+PGw2iEF389IqRTEYqVGrgdWluDH2bre9WtF8ss5j0232nquxZhD8A5VaX7GKR83MnahZAtJVO2zJ3a5JJwTIrux87UIT7rszswB3zdnUDq/tzWi3FCg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ba8ee1f-efb6-4296-5133-08d7b49ad049
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2020 17:48:50.7787 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h/i72ZIVcUjXCbdcvDeuOsH3O+B2b5CMNXBRG+d24zhTN2uC9Svc9WJnm35A45CtDMxJNQ9mdOC8iiLhNMFwKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB2990
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_094855_475304_B00AB898 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.41 listed in list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stefan Agner <stefan@agner.ch>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 Franck Lenormand <franck.lenormand@nxp.com>,
 "open list:PIN CONTROLLER - FREESCALE" <linux-gpio@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "open list:REAL TIME CLOCK \(RTC\) SUBSYSTEM" <linux-rtc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18.02.2020 11:18, Shawn Guo wrote:
> On Mon, Feb 17, 2020 at 08:37:45PM +0000, Leonard Crestez wrote:
>> On 17.02.2020 08:21, Shawn Guo wrote:
>>> On Tue, Feb 11, 2020 at 11:24:33PM +0200, Leonard Crestez wrote:
>>>> The imx SC api strongly assumes that messages are composed out of
>>>> 4-bytes words but some of our message structs have sizeof "6" and "7".
>>>>
>>>> This produces many oopses with CONFIG_KASAN=y:
>>>>
>>>> 	BUG: KASAN: stack-out-of-bounds in imx_mu_send_data+0x108/0x1f0
>>>>
>>>> It shouldn't cause an issues in normal use because these structs are
>>>> always allocated on the stack.
>>>>
>>>> Cc: stable@vger.kernel.org
>>>
>>> Should we have a fixes tag and send it for -rc?
>>
>> I haven't check but this would probably have to be split into multiple
>> patches because the structs were not added all at once.
> 
> Or maybe we can just drop the stable tag, as it addresses a corner
> case issue which could concern very few people?

I think that "kernel does not boot with KASAN=y" is an issue worth fixing.

I will split and resend with appropriate Fixes: tags.

It seems likely that this will be picked up for -stable anyway via 
Sasha's automation scripts and those scripts benefit from Fixes: tags.

--
Regards,
Leonard


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

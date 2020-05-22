Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 325B01DDD1A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 04:27:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dvmvgpg9Wsh7p9yTJOnw6ngjfxRVlIarUq+DNIlQy6s=; b=Jwv+D7ZgpAh7MY
	bLHZP4YdgSclyd66G1777WJjmVRxlstCyaag9u8a5Z7+rDPrwLg7p5TLKxvjDPJf8XNdXSXGlgoOj
	jH/cWOVLIGvNffXFVhf6T00ZJawqrbulNB8vrjw4/41FhGyqtbPrI+/bFOq5x/8R5POaYkc9fu3fk
	pUHz8F97DuK2tfmf4nNUDLWsNnc3+8u8SRWwKb9FvieNPHXEm4JDErxTNlJN9S76aCN/653N2qu0R
	gonlLlyMZrX/RmrJ/ENqVyK2kOGq8Tf53utXQQPdsH61HwdQpaFa2kUhr77tqOIR3krdzpxOa04TO
	PaIHWc4jcfQIaOXyFMsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbxOv-0007ev-25; Fri, 22 May 2020 02:27:09 +0000
Received: from mail-am6eur05on2086.outbound.protection.outlook.com
 ([40.107.22.86] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbxOj-0007e0-95
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 02:27:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jusOtUTWZ3QJXbRBH/PnDD3BjZQgDuGHzPIu+v6JNgCFavRYSpQm2tbtw2QUDz7pEHU3f/2trf+f/yUTnluthvHhUwjdCctYZyip/0tXSLpvnyQ12azMYvlFMgs46SO5rXEigSQR/YiuRkiPElDgXOJue+BLCz/BvQ0irVm61s7c12bpEZxx8QvI1IEo1b+EZyWY26u8+hY0s9PNolHspibloglYjuv41kqKPbzzZfihitbc5aWE5gEc17tZXHxsGrUlglDrckm2CiMhOzyiRLsWAJRyqIBWeHu0z1IPitKBCYqb/eLoOf1NkA0yay8HHahvuOIoK4NvardwB36tmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uTBg3aDNI0TSldielWxWe9MzhxO6B0rW5MAUcitFCKo=;
 b=cS7/ZDSmKNtanVVE9u7zPqz1T3A/93rEUmcc6XCwqNMxRrZBTBRDCelWiYinzCok9vZt0SspSfePOTvFdOqwu8JWEuRxl8iThuxtoAjHyQJ1efCABA5WsmW1FRHr76KLrB/bt/BCvgS2VRBPffQ6cPkUv0Uqw+VdrCpJLDHHp7gLUo7Pcj5FI97nwDaA4ngWIupjFT28o9sbLjOymUdSHDJY/ttiulBXmk+VzEuQGPh8bBZP/qYKKns24fwoxzw9WRlQqTgAeLYyrhkn/erxkLIsR5jgk1oSRwPIrChANT68AG6iGU4e0A9PrH5zD2DHAiVpj6QP3hAPA/Vb/XbD/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uTBg3aDNI0TSldielWxWe9MzhxO6B0rW5MAUcitFCKo=;
 b=KN5yg70M9UnEflU8AfdQTBnZHmpQfvNaDCbJKwSeKknpZ8uImx+tUzXEb7ZztNozk/0hllMYgGNjJkL+q7K7mRwfTw+eLG5hhloq/uVRrJJuMa7I3e1YgpBg1V5dryu8VwY0ZoUfkGWacFcLiV8y6SeR+px7yuHjAtpT0SNj9OY=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6493.eurprd04.prod.outlook.com (2603:10a6:803:11f::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.27; Fri, 22 May
 2020 02:26:53 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3021.020; Fri, 22 May 2020
 02:26:52 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: RE: [PATCH v2 2/2] arm64: dts: imx8mn-ddr4-evk: correct ldo1/ldo2
 voltage range
Thread-Topic: [PATCH v2 2/2] arm64: dts: imx8mn-ddr4-evk: correct ldo1/ldo2
 voltage range
Thread-Index: AQHWLzeGwEoS7avMqUe1/PurAPoV06izVHOAgAANc/A=
Date: Fri, 22 May 2020 02:26:52 +0000
Message-ID: <VE1PR04MB66388D5243509C8EBF4DE9EB89B40@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <1590070674-23027-1-git-send-email-yibin.gong@nxp.com>
 <1590070674-23027-2-git-send-email-yibin.gong@nxp.com>
 <CAOMZO5AsCREw1OT5zzFH+pC6uyw+MOSKJFZ3_-HvDva65A2cKQ@mail.gmail.com>
In-Reply-To: <CAOMZO5AsCREw1OT5zzFH+pC6uyw+MOSKJFZ3_-HvDva65A2cKQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: fb35a2d2-ee19-4e85-65e3-08d7fdf79717
x-ms-traffictypediagnostic: VE1PR04MB6493:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6493257F8CDB03F4A73C686389B40@VE1PR04MB6493.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 04111BAC64
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9/vZ6cvNJi4aZKN4LDFvXl9QvBhYVGj5R45InKqe8xFVQkx92lRbvYyRaSnkl1PAGYKOb8mvPuV0C3w1kPWf8fEfGf8kiJOm7+550hibwck1yGb63/3F7b6JXPOkSiUztgOy3txpr92MmJIAQhL8L7JR1CNgdW5/NPdfvZWCtTod8jjZfUxte3ot/aKKvPvvLRMhTVuckTBkmtxcESJ5OzzrWcvwIxPuGHCKLS4aFdqy5d6pff8lka+BaCYg9YSMOnUgf5ZRAqjJborTa8Dhvv4xlGx8r+AFEYa2Knoi/GRqJtyjnJxALfXjfNWVfTFEBWaHB2nFE2qxqZl7Yv0Fph2VRSGgtK/ASpoiinq7tWStZ1Fd6vBcEe4RR4b4FsI8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(39860400002)(136003)(366004)(396003)(346002)(53546011)(86362001)(4326008)(6916009)(8676002)(8936002)(478600001)(186003)(26005)(6506007)(54906003)(33656002)(55016002)(9686003)(2906002)(316002)(52536014)(5660300002)(7696005)(4744005)(66446008)(66556008)(71200400001)(66946007)(76116006)(66476007)(64756008)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: WYQtOONKgXBSLaWBXRNSKPEdEFaF9Xm/nFMpukHCLO3PB2mcPRNl01rvpbjxp0CnR+m2CNb3GHIlmTdW0xZ0tIdEu7XdBRJByQRq7R1JgLOgjONNzXX6Xsmecs3oEqF+y29Li/I72utfh0E1CcCH8WzIW7Rmi8YFCasjhxe9Q3T7QaAOli4Wcyx9o/97Phny3Xn1FXa48sc4LWnHeoJiJeqVY7JfSc1HWELdBmQXnRfxWx9mPlg3L/8+D86jyNvIcSRx1pbLTsXs+15hBSYFpLwnY8jrInvaLMG0/sHM1q+uUAeEXfPvr+YogahWFsM1wAuVPalaR7RMQAb8vVzCQa8lCZKSJPQyazs2jC0HnIlpJKOzsIuYleRH0QqIKKReRrN5w2mXKajBJTnx5KB9AudXOiRz7zSsezrF1hbDNU3Oll4v9++Cj6BnWJtvNPDnB8X3quglt4zK+vo14bJ5KufiKrvHGzb+AQCu0RI2zgo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb35a2d2-ee19-4e85-65e3-08d7fdf79717
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2020 02:26:52.8587 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: paRbwBOgiqHZ9ulUj4ryT6eZd1/+pj3ZhyyoGYBhFBvtaAIWyLIxcyTEsMCf/HQWdBXOKNBW+78AwCPzVgf7zA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6493
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_192657_473846_BC5BD148 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.86 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN
 FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/05/22 Fabio Estevam <festevam@gmail.com> wrote:
> Hi Robin,
> 
> On Thu, May 21, 2020 at 3:17 AM Robin Gong <yibin.gong@nxp.com> wrote:
> >
> > Correct ldo1 voltage range from wrong high group(3.0v~3.3v) to low
> > group
> 
> Please use capital letter V for Volt.
> 
> > (1.6v~1.9v) because the ldo1 should be 1.8v. Actually, two voltage
> > groups have been supported at bd718x7-regulator driver, hence, just
> > corrrect the voltage range to 1.6v~3.3v. For ldo2@0.8v, correct voltage range
> too.
> > Otherwise, ldo1 would be kept @3.0v and ldo2@0.9v which violate
> > i.mx8mn datasheet as the below warning log in kernel:
> >
> > [    0.995524] LDO1: Bringing 1800000uV into 3000000-3000000uV
> > [    0.999196] LDO2: Bringing 800000uV into 900000-900000uV
> >
> > Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> 
> You should add a Fixes tag and Cc stable on this one.
Okay, will address your comments in v3, thanks.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

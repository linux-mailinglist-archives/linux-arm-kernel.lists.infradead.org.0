Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C026119EFB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 00:00:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=c0/rFHiiY7LpyA+r7i3zq/xerzMPEjTwpUvMJEGj7kc=; b=PgmssUtcAQ4+ea
	SVpxbbCHCtkaLBQT4gUJieFs9bOEAQvsR+1sVvXad00g6HyILamLTROfDkYi56omRmrDkokFqJKbW
	unCciW7Xnu5c5nQG2PowX94zGTCv3L7rDmB+jU2JLTya1OHCsKLVbBr6E2uHLHrckALWt7/9raVKZ
	DKmevxQZfmWmC2R22oQwpcqyKCzqXdD2vUMRCJLe31VMjvJOAzzwzjUmzhRzzZfvu3AOE5ZWgspbr
	yWiHniPVqsaJKCICxVvUtt02E0MwmAqBxtCgTcNGEQWfI9P/EmgX1YFHIuCcdrN6SZRKHHDCC+dNN
	AN+iycufiKoR1VNg/isg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieoUt-0008El-88; Tue, 10 Dec 2019 23:00:51 +0000
Received: from mail-eopbgr10075.outbound.protection.outlook.com ([40.107.1.75]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieoUm-0008EK-54
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 23:00:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZraNcfWTRFDoYyr7UG/q9Vw6YPYHETbJaQRAeWUTt29MoqVNRFZg50zvSmlBcUIcyClvIC12EMlI63Bj6ihvSvILsEFEnrifglZiW2N7Xo4nWU7hDm2z11F97nBk3lLIrNQadVLj/NbP5b+DgmwgK4daO8zLHpkZ+RRMggxcTdTp7myL8B4fQM9zbwgc1lt7cCGG/4yy3JKQ8sUKBo2+Y7izDmhyi68S1A8ErWjlYOIehYobMb68nDy0TJdXRUr/HFdCIrEvXlcrO0fngFosH+4hQnL9Bvl/kHHLBzQW41uZj21mmlEsRKZXSQXCpWizAi7Vpz17NaLJnQUizMbmWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xnRdOoN0C+U/s+uwWKw3w0TaZ6wXfab7bW6SF4+L5gk=;
 b=j8hmjShCn3BzJj+A9Zy9EorzmWIKblv0poJGoLDZOVDsI3cJuCTBUQkdgmG7kkz+Jy9DqqN2qcxiMYIjF3N+5PgiUOA6zZH33IPvzETK1BDE3rJoeaSYQl0SzMf5Wp1MSBkmfVGT8oqxgWk0ykkeP+1hqIbMcAWzD2itzPq8No0/YUtssqgs1aiDxY8Muz8JKYrBQGDAEYFYDVs8tx703h9a6a3XTS8TmLhqGpA/B4GKO/Y07UMBMsjdACnljT+T0pmrTRm5HhIF14h1jlhkp7UzHSnURVYd/+mLnCfIBdfTcYBCvSpuAO5VF3vv5hlH8iGB44A3cFCS0+C7q/U4iQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xnRdOoN0C+U/s+uwWKw3w0TaZ6wXfab7bW6SF4+L5gk=;
 b=gKrkHmsg+7oHt3q3JVxdPH0RfivNiqxQbFas5zbeXGNt1L4sUcRz5xBRr3hw5z5shm1bRgTD28Tdj33QeCCvVMJ+tbVXyE6ukBSteea9imo7pM8XN+YmN8yjV6dtzm69SK8kOsp3zgXVbyijMJjZK+zYGVHhW4cw8QqCJEMNC4U=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4333.eurprd04.prod.outlook.com (52.134.122.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.14; Tue, 10 Dec 2019 23:00:40 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1%5]) with mapi id 15.20.2516.018; Tue, 10 Dec 2019
 23:00:40 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Fabio Estevam <festevam@gmail.com>, Christoph Niedermaier
 <cniedermaier@dh-electronics.com>
Subject: Re: [PATCH 2/2] ARM: imx: Fix ocotp_compat for 6ull/6ulz
Thread-Topic: [PATCH 2/2] ARM: imx: Fix ocotp_compat for 6ull/6ulz
Thread-Index: AQHVr6O2+f8P00oouUCHoh+JzLuWww==
Date: Tue, 10 Dec 2019 23:00:40 +0000
Message-ID: <VI1PR04MB7023D93F4B02CE25688D0FF7EE5B0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1576014367.git.leonard.crestez@nxp.com>
 <e142d7f53cdc9a536939aeb9dc4e1d42af67929b.1576014367.git.leonard.crestez@nxp.com>
 <CAOMZO5B6VdvchKH6qbdtUS4LPH6YYm5d=X8u0gEF61bKQ+8kBQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [2a04:241e:500:9200:61f4:186d:e68d:7c32]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 537beac7-a59b-4651-9265-08d77dc4c715
x-ms-traffictypediagnostic: VI1PR04MB4333:|VI1PR04MB4333:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB4333D2C729C444507347E687EE5B0@VI1PR04MB4333.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 02475B2A01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(396003)(136003)(39860400002)(376002)(189003)(199004)(40224003)(81156014)(8936002)(76116006)(66476007)(66946007)(64756008)(66446008)(86362001)(316002)(8676002)(91956017)(5660300002)(52536014)(66556008)(4744005)(81166006)(2906002)(54906003)(44832011)(110136005)(7696005)(9686003)(33656002)(478600001)(53546011)(71200400001)(6506007)(55016002)(186003)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4333;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: srelVUfh1ZMgOGD/EAMHGdOiLAFvIvZc6sF7HUIOIy3ZxfEKnRw8ISoydc0zb70aQ/0K00tJruG4PKbguZe5ifWODlc2rpp4dDfxP0qurjLiOk3+80/Ej9oK5GLezx407ACECyPB3CKrDPYETBKTVJi4Czp2HTKDvee1onnjtVSmddhDxzgOaF/0iS9S+jpbiu3DaI0I8kIL4A1Q4qSdjeNtA6nEMxbTib/x0IVDeeyJQxlKNQsRXKPQbfObD1DshvRgCOkUeUFP6Eq4CqJLeFQ+Fko5Y0L8UhWGiik5BL+9F9AXjPt5kMvJosBl1JdaJeZEKIz2WA7k5cEMtrD24hFHxWNRfGCI6X5F5P5wXK/yduaGKkCblcJy3P1PYjgRQ5o1R5a50SWR4K2xv6gOGKTJvmuPGqzGmr0KrhRPSln3KTD9P2ectOjbwQj98rBQrrOFW4PpaO5Ed0zwNattUvGgtOIGGrRdA2y9iEXHo0N5gLUkqjqselE+QgEZeKhR
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 537beac7-a59b-4651-9265-08d77dc4c715
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2019 23:00:40.1713 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: inEUvfZrxrbJmzsEWndEqaC8Q/GCp1PfRf0vnLat1kUJLKHNdE/cLgVZ58h4jxznWYleXbzzdAqTE6Ea7jaSlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4333
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_150044_266094_9E4FBED0 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.75 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10.12.2019 23:53, Fabio Estevam wrote:
> On Tue, Dec 10, 2019 at 6:50 PM Leonard Crestez <leonard.crestez@nxp.com> wrote:
>>
>> The ocotp compatible string on imx6ull and imx6ulz is currently
>> "fsl,imx6ull-ocotp" but the imx_soc_device_init function attempts to
>> lookup for "fsl,imx6ul-ocotp" (single L).
>>
>> Fix the constant and make cat /sys/devices/soc0/serial_number print
>> useful information instead of all-zeros.
>>
>> Fixes: 8267ff89b713 ("ARM: imx: Add serial number support for i.MX6/7 SoCs")
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> 
> This fix has already been submitted by Christoph:

Sorry, didn't notice.

My [PATCH 1/2] is still relevant though: for example the kernel could 
run against a very old DTB or maybe there's some other scenario where 
ocotp regmap lookup could fail.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

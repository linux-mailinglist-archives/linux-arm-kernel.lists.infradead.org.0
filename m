Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00461169BA0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 02:12:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9it/i90qm+nFfuQ9p5/sEFknPk8T16PqWcTFyUqrgvc=; b=rOiBK0iMDSTsH4
	9BhEOeAHbil6Rny4VrhjBob89825d6kcvqCyMoYVBWrQEDLhvf5qJVDof6rsrpFhuK7Anz/8Y8gL7
	JhyrWv7EYdu1vh/ijFdwtX6Vw9a9i9pOKdHxFLwoZAYrUmf5a0TGIiqE+WNhX5g57ze+7Z4giK6Js
	2jGvAfASEktYllEGz0TvoMH+IlrlKXpt34iRv52/G5MbSaY6dxosex3/iyy2hzRfdJRjAbt3SJKE9
	3Jo2O1MYJ5903eZ+5BZ8um8EkgLDsuVLI6GzHspRP3EK20C6QoTsB9Il9CSJzhWSn5Y0IEgS4xwyb
	rw1b8sB3MSW4/IRjlIYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j62IE-0002yp-7U; Mon, 24 Feb 2020 01:12:18 +0000
Received: from mail-eopbgr00089.outbound.protection.outlook.com ([40.107.0.89]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j62I3-0002y0-D5
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 01:12:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b7ymAx8D25/ndR3TYEwVvGW7+AHt7Ug54/dZAHBaEgzOnv0E9+w3MGVL9BkdJZpJWRGW1hpZcevYY2QZzNCIlx5aG3TtIQPDYcZ9Ljq2NhMQKK1bGJFq8fYcgicBgT2oJgk+2tbWWYxAc6EUvYuyKbMhj6IOYtkAz/DvGK1x0BSkDqEVsCxiIzJ69x2fwT2KQM4UwyuVI+WNFX3tpvBC8rLUJJy8OBnm+m6G5hSgqDGMGrhOX3GMspREmP8fGQx3A6FtNG71c4FlksCDAhWMqEXZaA5QL75sCNKtZxLYKKwZRHwB0MorsiuO8Luns74FUfJZaBdcT13f0cPRgTow3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+bdffaJQO9W7n089H4zE4HqzCrs4JYq0DgQjqccv1R8=;
 b=g23dHmIFSo9gMH0kjEwKKpDT7KGliceCGLXB0CmNo7OON4tWUscgUT4U4+MAh5PM3Id6XbmX6G1ky8Tx4U4TG1IjBiLAutGxBnj162urQkvExGbNjt1HaFgCa5JXw7+e2Ylqu1kp3/vvyJAwFEQj/Ot8VefKg5GbNzz993cde5zZCOQlv8NL1o5v/ieQrl4+7RHLIRp1Y5pCPONRXTfuy5wWNtD+Pqk3HpDf2pC+Lf0RPHpyFgJc592bh/RwVqTXpbCp/9k0I59ANzmMh0PZIxwSCpVPMmFaDpPIxgqq0UGmIfasSXJ1+j0wlnWDFEB1GozKpfLmFM9cPlHyUf9eGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+bdffaJQO9W7n089H4zE4HqzCrs4JYq0DgQjqccv1R8=;
 b=F2TjBfL+s7kTxPed1TgaNaegljvDXfDP571Klo0ECzgb645t3qdzC/KCTOqeImE7JmQUFX3Z86Eebhd18ju6bIt6E+9ly5zBkRkqtCRcXF2z8gQgNu08cIiVI+DLj7VEoylPwYhvJvqEcSEEi3vwTiQz8CuVEyLtr4NtflTbpV4=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5219.eurprd04.prod.outlook.com (20.177.42.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Mon, 24 Feb 2020 01:12:02 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2750.021; Mon, 24 Feb 2020
 01:12:02 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Michael Walle <michael@walle.cc>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Subject: RE: [PATCH 1/7] Revert "tty: serial: fsl_lpuart: drop
 EARLYCON_DECLARE"
Thread-Topic: [PATCH 1/7] Revert "tty: serial: fsl_lpuart: drop
 EARLYCON_DECLARE"
Thread-Index: AQHV6BVTF5F9eyvotUSiqL0QbCpNFagk3KrQgACHdoCABCoLkA==
Date: Mon, 24 Feb 2020 01:12:02 +0000
Message-ID: <AM0PR04MB4481B36B83A67E32EA816A5988EC0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20200220174334.23322-1-michael@walle.cc>
 <AM0PR04MB44817308EA80EBEDC0338E6D88120@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <51db0e6ba10b4b32dab207e0df8ef0d8@walle.cc>
In-Reply-To: <51db0e6ba10b4b32dab207e0df8ef0d8@walle.cc>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [117.82.241.14]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b341fb73-13ae-418f-6517-08d7b8c68e0d
x-ms-traffictypediagnostic: AM0PR04MB5219:|AM0PR04MB5219:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5219F1DF1540654D0A54F99588EC0@AM0PR04MB5219.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 032334F434
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(366004)(396003)(136003)(189003)(199004)(966005)(45080400002)(71200400001)(8936002)(81156014)(2906002)(81166006)(44832011)(52536014)(7416002)(478600001)(8676002)(316002)(54906003)(66556008)(66446008)(66476007)(66946007)(64756008)(5660300002)(86362001)(7696005)(33656002)(186003)(6506007)(4326008)(110136005)(9686003)(55016002)(76116006)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5219;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: y0zFqWr8XxSfa/U4KYq1jt/Thnl0nVgxGmtLOwQHAYRPFGTKskRu8/MTsJ5UrBegCsboWtLhNIF7hs6hSPjv2nJgmnjM72jMIb85w4+FuGOIgbU3tcXQZ08ctpOXgi0zqEL0AHfuz01RBf8rH+BDsphxHdTOM7OFG0zTAcquVBe5quExcT/pZmYXK4i2+g/hyRv9O+TWJdGwNkyo+CeDiHtGLFur1F1lkS7u6AhlSeC9gyBYRqyF3Rod5hxCHNuZi43CM25ARTaofe6OwyJdWLvGnKUrxyMFsCsUMfVbSh7POpegzMZR1eH5I2hNSteZFBAIJZULPiNlymEaAqf+UNoE40vY0eaYr+GCytCbRpxtSm6uqWGddzdeQuLpZquzRt/+wvSwuWsTHIT2nhiddqjl4xfu6iWgjl+UM5nTuQEVGiIPLs785z3ygT69HO23v7RTvBWzvq9gMTjXjnkYBbLBSN8nlKcwmSeZyuwxH3IzdLlUsoVaZzNtFH2zlSZxGQJmXyru5RAae1UB2IsROA==
x-ms-exchange-antispam-messagedata: g8kj1ZqOhYQHDKRbs/YflHBWiuxrFunP1+F4CxAniyBb8JoBv8+jdUz6XfvPbLCFXDZmiVHBNz3SR1GDvfeGOz2s8pL7r+rBPc9Rc3MB3IT9luItKHBhRa5e+uiy6X5pJeYYL9vFANrs+PSl2Xjm3g==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b341fb73-13ae-418f-6517-08d7b8c68e0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2020 01:12:02.1582 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zmOfX86CmKYkH4oKK+kl3eOdH3wOCYFAi91dZRmM/XBpZi/WW52qZnAjqIXJv2GYr5mJGuURGeMGf6m4VaunCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5219
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_171207_486855_DEFA9DEE 
X-CRM114-Status: GOOD (  21.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.89 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Vabhav Sharma <vabhav.sharma@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Yuan Yao <yao.yuan@nxp.com>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH 1/7] Revert "tty: serial: fsl_lpuart: drop
> EARLYCON_DECLARE"
> 
> Hi,
> 
> Am 2020-02-21 02:30, schrieb Peng Fan:
> >> Subject: [PATCH 1/7] Revert "tty: serial: fsl_lpuart: drop
> >> EARLYCON_DECLARE"
> >>
> >> This reverts commit a659652f6169240a5818cb244b280c5a362ef5a4.
> >>
> >> This broke the earlycon on LS1021A processors because the order of
> >> the
> >> earlycon_setup() functions were changed. Before the commit the normal
> >> lpuart32_early_console_setup() was called. After the commit the
> >> lpuart32_imx_early_console_setup() is called instead.
> >
> > How do you pass earlycon args to kernel?
> 
> earlycon=lpuart32,mmio32be,0x2950000,115200
> 
> please note that there are two possible declarations: (1) an OF/ACPI based
> earlycon, eg just "earlycon" on the bootargs and (2) an elaborate one where
> you can give the offset and access method yourself, eg. the one from above.
> 
> (1) will still work even with the EARLYCON_DECLARE() removed. But (2) will
> search through all possible
>    OF_DELARE_EARLYCON(lpuart32,..)
>    EARLYCON_DECLARE(lpuart32,..)
> 
> and doesn't take the compatible into account. So which setup function is
> actually called depends on (a) the order of the OF_DECLARE_EARLYCON() and
> EARLYCON_DECLARE() statements and (b) on the compiler (thats just a guess!).
> For me, the order in which it will actually end up in the __earlycon_table is
> reversed, eg. the last one is called. So now that you've removed the
> EARLYCON_DECLARE() the last one is the imx setup function which will add
> the reg offset and doesn't work on LS1021A.

You mean the OF_DECLARD_EARLYCON for i.MX7ULP will be put before LS1021A
in Image? I am not sure about this. If this is true, you could try below diff, to see
whether it works. i.MX always use little endian.

diff --git a/drivers/tty/serial/fsl_lpuart.c b/drivers/tty/serial/fsl_lpuart.c
index 91e2805e6441..1b0aa3b836c5 100644
--- a/drivers/tty/serial/fsl_lpuart.c
+++ b/drivers/tty/serial/fsl_lpuart.c
@@ -2381,8 +2381,10 @@ static int __init lpuart32_imx_early_console_setup(struct earlycon_device *devic
        if (!device->port.membase)
                return -ENODEV;

-       device->port.iotype = UPIO_MEM32;
-       device->port.membase += IMX_REG_OFF;
+       if (device->port.iotype != UPIO_MEM32BE) {
+               device->port.iotype = UPIO_MEM32;
+               device->port.membase += IMX_REG_OFF;
+       }
        device->con->write = lpuart32_early_write;

        return 0;

Thanks,
Peng.

> 
> I've proposed a fix of the underlying problem [1]. But that fix also requires the
> EARLYCON_DECLARE() in this driver.
> 
> 
> -michael
> 
> [1]
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.ke
> rnel.org%2Flinux-serial%2F20200220174607.24285-1-michael%40walle.cc%
> 2F&amp;data=02%7C01%7Cpeng.fan%40nxp.com%7Cc411bf1d5d45435be2a
> 308d7b6b14a2c%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C63
> 7178744883261681&amp;sdata=gjl8rie%2FXhUQ0pxcAbbDI4NGqGDYj1jpqfR
> mRi%2FAgFk%3D&amp;reserved=0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

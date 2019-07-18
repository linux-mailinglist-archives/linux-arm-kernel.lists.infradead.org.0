Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 068FC6C7E6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 05:30:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vO6CoGhlpXfWPCcmF9xfYAd0Ls+sH9a+OJhjcPSXy0Y=; b=Q6rsLziwZwTSFU
	RcN2znwlK2cAh9HuwZUp/tTnYE6cKESf31srP7VAuN9kakCCIOXOlGeDqSiXOvg7DWpcAc8aFmEBT
	RZUdqleZNrMRrHdYVFxXhq+pVtJiHqX/HJV4KumPoZuwW/WIZX53iPzSEIMA/xRLFw+JDkpO7NVSK
	8Y3wHSskfLCaQYeMC3E2QWzu1343kpHYlIstkLgmlxCMEfNE7diJqOiBxl8SgoXNwrGsTCYrsuPow
	Mb98bGYyFsQKI+INexwTtc7nI6xYbXVlqVg1rYRTAByRFqog1ny6SrxQkuwQCPtpTINCB+Dyd2aYx
	mFTz1ZI4klaEH8cNcwxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnx7u-00075x-05; Thu, 18 Jul 2019 03:30:38 +0000
Received: from mail-eopbgr140041.outbound.protection.outlook.com
 ([40.107.14.41] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnx7c-00075Q-3k
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 03:30:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W2rabypVK7X9Rdgvlad6bfzEpAT2b3n0lKES8amWaeTV1ofa9N8QLW6B02HGyCkeGzLA/dV+bWKm//bAgnLaLUjzXk91h+np7xNigcrL4XTrxVAVz9dYh+OOf/kThXDihozfxnDG3IGTpng2J6uQqjxXu31dpfCO0WxVHtuGtR3KOn1dA3/wm5H74pZPKrnYS94ovoddtjvHFL2Q9PMZIbNqupKfE0e8JZkvA0q7SElHufJKUYLh7X4ieGs7AuLEEOFO70Su1rXbAwWyuvXL9pJ7UzI7uhBqhSnICaX+3HyFqlaZNIhGTb1JT1z3FGjW5B1sYUA0suLVnCQVcVkSAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DCgkhsgF0SnJpGM5mZaKF3Y16kIIuExe5osNM0Ole5Y=;
 b=Cg0YEiBBEnL8/WelOdPEZFSGWjIgGbCHg+8Vz1wELsMSc8Zg9Brnp18uualU52R5Laf32p92+Ptgq/7OoQ4nogKa/rTAKM2FBNOorQhhAS/KHGEKpp3sCf3yOWSy0eDQHh+PDp7f51z9TfVjP++978Lw2SwNq7tZ2gA4sG/EMHLUu0096n72yNvtfHF+ohTCTZvZVlrC6/sVqBUCz7QROxqXxfYaYJpkrvjzj78lE7jDSH9CPMaPhajujPVZbVdG1Sb6+Yv75W47SwbOruaWWVCbTVpM4GnY15B///2QtNCjWbP7wV+EFLPO/kHMyDsB+sKpGkm795q3U3AWNPjDcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DCgkhsgF0SnJpGM5mZaKF3Y16kIIuExe5osNM0Ole5Y=;
 b=m895fmqnWmYolX1WLQO+uILTQd+g00BzZQDHPvNXLcLYEvlTHK9yvMncFxmfiSHaTD3WxrPmxlH3uEf0MgfpAwyVdRB/VJ+lTHUzStFrTufLk4UjbjQYox4U3mR5jrGz8hMPY7JXpp/3MqP6zS0ZiQEnUYpF8osT+2hKElZqjLQ=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB5857.eurprd04.prod.outlook.com (20.178.118.93) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Thu, 18 Jul 2019 03:30:16 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431%7]) with mapi id 15.20.2073.012; Thu, 18 Jul 2019
 03:30:16 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Daniel Baluta <daniel.baluta@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>
Subject: RE: [PATCH 3/3] firmware: imx: scu-pd: Add IRQSTR_DSP PD range
Thread-Topic: [PATCH 3/3] firmware: imx: scu-pd: Add IRQSTR_DSP PD range
Thread-Index: AQHVMdIgOTCMFsCxF0qH2yiAwH8izabPzmyw
Date: Thu, 18 Jul 2019 03:30:16 +0000
Message-ID: <AM0PR04MB421126724996C4E0BC80954980C80@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190703190404.21136-1-daniel.baluta@nxp.com>
 <20190703190404.21136-4-daniel.baluta@nxp.com>
In-Reply-To: <20190703190404.21136-4-daniel.baluta@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a280a931-b88e-407b-e3c4-08d70b304078
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5857; 
x-ms-traffictypediagnostic: AM0PR04MB5857:
x-microsoft-antispam-prvs: <AM0PR04MB5857850609FC0DE97D87E61580C80@AM0PR04MB5857.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:765;
x-forefront-prvs: 01026E1310
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(366004)(136003)(396003)(39860400002)(189003)(199004)(2501003)(66946007)(76116006)(66476007)(478600001)(66446008)(64756008)(305945005)(55016002)(11346002)(14454004)(9686003)(52536014)(25786009)(6506007)(186003)(74316002)(71190400001)(229853002)(558084003)(26005)(71200400001)(102836004)(6246003)(5660300002)(53936002)(4326008)(110136005)(316002)(7736002)(68736007)(256004)(86362001)(99286004)(476003)(7696005)(44832011)(486006)(76176011)(446003)(81156014)(8676002)(81166006)(6116002)(3846002)(8936002)(33656002)(6436002)(2906002)(66066001)(54906003)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5857;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: VENMirr+A4PZggc6UILaiXRffFgRgISW1LwSxYLeSN9ujmiGu0kfAfW7Rpk8JTg5WZ7+9qje+N6V+bvwK8FR+8TSdtFkuZWEcCPmxEXfHFLyZGIDk88at2RI0exH5L0zp5UW88glLI0XSB/JqSnDKNaMnltz5XaHsC5/XzMu6A+UTYgxWDkLZ88wFn4+na85hQCBzZMhxmIz9+FDOkN8PtqVhPuGB6KdMoY5JjfohvRT4FBVE5esPaDzTdf5Ji7z2hRfhE5+KtR7fbMLwqn/HjLtcOwV69Oqnh5CWdDi7Kg+LuNDo1m6rYUu0WtFtUeSYUPiqZqfGtp2Dy6E4Shj2N5X2lgrDE1YtY1varVKOSesnF3lIQCPGc3WSQTdWhNvUXo0BlnTQV3IcPjrdqxjim+XO9ktZg4yEjse+jioUw0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a280a931-b88e-407b-e3c4-08d70b304078
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2019 03:30:16.3215 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aisheng.dong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5857
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_203020_159925_DBE89BF8 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Daniel Baluta <daniel.baluta@nxp.com>
> Sent: Thursday, July 4, 2019 3:04 AM
> 
> The DSP interrupt steer gathers interrupts from the system and can be used to
> steer them to DSP.
> 
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5F31D0B43
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 10:53:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bktn8Ib1S4Go+88Pxsip69qWXzfwpw8a30Z2CR5pdNE=; b=jJjldJzK0/Jghz
	+O8CAWJemghadDucuXGno3InFZHH5b5G6nkAoEmoqlQ3glWXI1kA3fhHAM3WUYWP/jdYRy5L08y9R
	YD3xz1AdXBLxr5BN6cMHUaZl8fJeN8MdkyjzIUGPfk9+Xjt3bybF8o+ZdxEYqSFseSMq8F+QsBM3c
	xYRd/bLJzX1mzksu8TuzzuanqGXkct42oWTYoTB1ukj3/0qsHsGLS00ChjBLQt7yD58IrbBFkLTU9
	Mei3H93Dt2HoA6oP0J0iOBOJhai1ZTt6CKNUuRGzn5o8xGyOMwwIwHP0IKZoO5+RXokfPh/+Uazp+
	7Xgce5MqBQOIEpajWg9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYn8F-0005dM-Hj; Wed, 13 May 2020 08:52:51 +0000
Received: from mail-am6eur05on2057.outbound.protection.outlook.com
 ([40.107.22.57] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYn88-0005co-4T
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 08:52:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z3sqztVZ2Ge+xOqsUaRAW2+x3So+oklFK1INnz2U2tp7Azc96xcROoejMkwRiA40LZsiHsHqfhWTB3IE24MDJXu3Tcu7gH6jaRG8wgRXRyL4WKmi4mXpp4mSZVZ/OVwjfXY/laKH6nnT3YVghvZHp2zo802u8aHPqppHfToAbsQnOAxAitLyAdLnL90WtqYSuNSfTkWMB3WOMZYA0Te+vf9b8F6Ulga8bHtlTyX+3SsalaD5vgQkJ0QXU2BzCmQSD8ikuAq8DHNr5d0LosWdQvE0rBX0Gp+oi64Dk+we/f0b5fAy/V0ID2rIxS1nLd5wcFQHMBlwd1G4Y8rg0MUWSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WG8CYXRCFibyKzO88iDRtSCDWTyTefIW7093ybIJfHo=;
 b=JGEGXx5WycGuKR5VXEbfHqBTtkcfYJ0jcJU5ZteVKhvlCfPI2L7dcaChLn/hW5yQxPq3b2ZZ9tieTBSKSP7Oe1C2DFYn0XHpaBqEtQNmtzANadgijzokXRyA0HM+qAYfas+AQ5nGr6xQGY6cBrJSB3QwtHwnDTrBx2bY6hBNfbe6VkJiIwYYmIkxB1FgrUJDxPWICrtJiqOBk+U2pKJYEkAMhB0CrAsSvUVa6FHk7KxEyIVugUxKbI2PaFuNpeURz05yxxr/fnWMJveKYSOArJlTsMVThynoIRTclH3ZR2M+MnJaMLfKn3Pok+Y0uABXsGV/PHQ6PJk7rlKy/AEpXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WG8CYXRCFibyKzO88iDRtSCDWTyTefIW7093ybIJfHo=;
 b=NfoSvsdb7ORhB/MFbFWtokwEA9D7UhdLi0ei7vPL+VoPlyWpgRbyaS1emEQL43bLPXrVRYnWnsOM1+FJeGSgzzznfWAnoew5F2IAiDFVIlSydtv1E789CfqVDyeqC4QlEu7LZcw18qzWprppwcMHRZMpP4U7RCNEQSl8+d/DlYM=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6461.eurprd04.prod.outlook.com (2603:10a6:803:120::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.30; Wed, 13 May
 2020 08:52:39 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa%4]) with mapi id 15.20.3000.016; Wed, 13 May 2020
 08:52:39 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: RE: [PATCH v7 RESEND 07/13] spi: imx: fix ERR009165
Thread-Topic: [PATCH v7 RESEND 07/13] spi: imx: fix ERR009165
Thread-Index: AQHWJ3cnZ0DWmxBZKkqSbDLRijv4Zqiln1IAgAATtwCAAASDgIAAAJXw
Date: Wed, 13 May 2020 08:52:39 +0000
Message-ID: <VE1PR04MB6638857DD94A05DC7252E69589BF0@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <1589218356-17475-1-git-send-email-yibin.gong@nxp.com>
 <1589218356-17475-8-git-send-email-yibin.gong@nxp.com>
 <20200513072132.GL5877@pengutronix.de>
 <VE1PR04MB6638F5096376BA0AF204C64189BF0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200513084815.GP5877@pengutronix.de>
In-Reply-To: <20200513084815.GP5877@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9fad8ebb-8533-45ad-e593-08d7f71afdce
x-ms-traffictypediagnostic: VE1PR04MB6461:|VE1PR04MB6461:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB64610F5D530415D699E1AA1789BF0@VE1PR04MB6461.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:883;
x-forefront-prvs: 0402872DA1
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6lQHKIbIhUi6YJkGWxf+SPT/kGz0/bGW+nw/jOUWA2MDe2GjVxvUJVra/y47ruz8yqZDuAq2MJUQoMcyaCpmfsaDX8YcqyzTwbHLJXYff2Sa7bf2vKbFj+RjCGYAbdh5q+aK83vKPcHq9G8RKPx1RbUKRR/WSSsSefp+CbYHKndUvCw+kvWXDPZZbF/GbyJ30kHqtnLlZUCNsKstLepD1oo89wYwesmSMVtqLG0b586GikN1QOWWDbNHBP6T1jTlBOEYZy8ai62DXXsFZAGHEOEwVa1r/PJ9jq/bPhk8jFD/TWIDgY/XpSG4FnRnhF61WN6bfG+shx++7/c4aFJffNt6ar7h3lSA1SLeNDEVM8v4l1SHeWZTZKWuN+7HzpuIFq30TtsIrL1n6HdOec8cJaljCQIVpKL//8+wlUlhpH+xd2CJqISwut2BKjAHo3bUlmeF1B+4/ALcIQBw3Wmnqkzlga+VU9NO2HWm4LECHXLmFYA8AMHBawFBVhtUUcUwu4yP4aypbbyLhOzh/u6XVg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(39860400002)(376002)(396003)(366004)(136003)(33430700001)(55016002)(6916009)(8676002)(2906002)(52536014)(4744005)(186003)(478600001)(26005)(5660300002)(33656002)(33440700001)(316002)(53546011)(6506007)(66446008)(71200400001)(64756008)(8936002)(66946007)(54906003)(66556008)(4326008)(9686003)(7696005)(86362001)(7416002)(66476007)(76116006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: mlqUPbz0dCeT0r4R/7IcLQMr2K3t24mO6sIJroTAdDOwroHT5QUBW1cVmSc7IP1OezM9hXIyTaHbNtw7aYmiGDdpdyXykaPyKZC/wxHJxsH/mlTPBmX9fuktMa8J2I3e3jmPIGvEK4DbDTBUcc5CgJItlVNnl9I8RywGGASls3rOrPA/23evtqjlN2myhz9ujOMvbQa9HaocBpVymsKszrNcWVeWwH43F4xtGP6/o6RO3rMySx+y7reR9d4SwBey1cbmBbeE7nxJGp+lXUXkzH85LSvsyp7Ki6WplNDs8G0aINcV8Ysv1EQKY7QJzzjl96HzdnlarzellkZUgkLXknKvsYaM42GgoMjcMuI6ySW4/fwOJntu46tmA+gc5upuqL/G0FKMNVYBLu5VqgpmpXennnLaeQJy8XEpG2dr+Py+/m6p32Ct1G16xuji0MWsyb4FcZDcts8r/AH4llwSLj7/9D8T2D9ZFimcMw7R/yU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fad8ebb-8533-45ad-e593-08d7f71afdce
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2020 08:52:39.4610 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MJ7MBqCeYktU/vHaX9u3EuDcGLpcdmfEtSbskoE4wFAr3kRQCQuW7MqIlM0lTo4cze/s0kwkEL979wbmCYG97A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6461
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_015244_176253_8E3DE89B 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.57 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.57 listed in wl.mailspike.net]
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
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "martin.fuzzey@flowbird.group" <martin.fuzzey@flowbird.group>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/05/13 16:48 Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Wed, May 13, 2020 at 08:38:26AM +0000, Robin Gong wrote:
> > On 2020/05/13 Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > > This patch is the one bisecting will end up with when somebody uses
> > > an older SDMA firmware or the ROM scripts. It should have a better
> > > description what happens and what should be done about it.
> > Emm..That's true. Timeout will be caught in such case, hence, maybe we can
> fall back it to pio always.
> 
> With my patch applied sdma_load_context() will fail. I don't know how exactly
> this hits into the SPI driver, but it won't be a timeout.
Thanks for your quick test, assume you use ROM firmware, right?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

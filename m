Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF12B1ECCF4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 11:51:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/KpNqcOvMq8MQWHfRj+LlczmPa4K/TMZXsydgv2HsLc=; b=QnHAEwzOKjquyO
	UvPykaC+ua51zWvmOxfq0V1dJJ8Tvd3tZgmDHHlVzkdQktnyycdP241yDb0NjHrVdypkYfOFC712u
	4iDOeeVta5w7Ba/qB2uyvpXUHxapj2rGaS14eXmjA9X644MFA/yUeoSfPXU85Dt3aWqCH8b0AITB3
	pPy+yykWa7IUPVbnv4AVacwj4DNloXvNO60Al5kvEqTCPLmzDEjoySVlfhd29hHD5tgGt6abCq/mc
	lTtIFkTFQgaP1SqBOvD++2pk8Zji1pwRjsGlr7jNTF314yHh4pVh07me525pAZAdIDK9s721mS3Qz
	DMAi+UEAubGoJahasQYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgQ2z-00082B-Po; Wed, 03 Jun 2020 09:50:57 +0000
Received: from mail-eopbgr00056.outbound.protection.outlook.com ([40.107.0.56]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgQ2r-00081Y-5A
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 09:50:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QPe1DWyIfEJp+qiYpQnUFG0YlE6mS9E1aC8gi0T74OH/SdpUKCquAbArKMGHYO6FzuZra7xuU7YlsVvytbt3ASNh7VycvwM+wClOcyLNMD6Qh+x2Yla3ZPxPCo32pETAmYe6KbCtE48DZQvblTcL34l4fiIcHz44VuYABypn6yZcWqGdDWu4HS4uvmHSvVM4B1/8nkdOcVVMjjRm179SOZdZjUmWwmkp8A9Wyx0CWWncAnE+dKh0QHf4v5mkR6ihLz1ovn2OhV+lJA3WOLz4swqPgo7WsfE8afV5Y37QuR6+Aw7NefNIIrK4V8miBlFLVVuHRKlGamLzBkZHA16UaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fwHA3CGnK9Mmhv6co31I8SWxE8BGy7VQvg2l451y9rg=;
 b=ie3VfJxtsHISX6BZcrVfHZvDby5U8UOZFcQYwySb8xeuR5AJu58I4wEuphHd2fuEEv96dGeTG0qQqEcHMY4whwk/pQXbuvcVyvAHDfTDJ/IUd3Yct5AjzH/C9w5oZXK8F1cs0B6MVNIE/uJOuW9B4/khNheJuhC1oFIlwS1IFGfHvS21QDpVxSjxQ7SrJgu27FVDczUV8FQ4JzciLXbit0XshCeQ8vU1RqXqijHVEtrLvv6RSt2PxfORMfak+6dhAwL9ffRsl7tTERaBxZ6cA7td6T/AMhCEWw3wHMWSSAyMNv9dyG9+dITp+6qMNztujpvHp1etiX6DVs4kx1HcbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fwHA3CGnK9Mmhv6co31I8SWxE8BGy7VQvg2l451y9rg=;
 b=s1hwnqWBhpiX1d+ovtqq3ctb3Nkn1BUCFYUlXcbGhz37CHnJG+23Mx2xKbby8FoyYf9ImhldDgqxVPUDNnHrqrZIQT0mUK8YQ97JATfZKUebUPn5Hx/Vp4MZf7J8tUyKnR8s18tFgdRc7ccvr8IWAlksfGKSUfJWo2iqIqaLZnI=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6653.eurprd04.prod.outlook.com (2603:10a6:803:122::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Wed, 3 Jun
 2020 09:50:42 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3045.024; Wed, 3 Jun 2020
 09:50:42 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Subject: RE: (EXT) [PATCH v8 00/13] add ecspi ERR009165 for i.mx6/7 soc family
Thread-Topic: (EXT) [PATCH v8 00/13] add ecspi ERR009165 for i.mx6/7 soc family
Thread-Index: AQHWLqLtpxY1VGgarkKW6xpO4wG5Z6jGpXaAgAABPHA=
Date: Wed, 3 Jun 2020 09:50:42 +0000
Message-ID: <VE1PR04MB663883F25395B3ECEC66384489880@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <1590006865-20900-1-git-send-email-yibin.gong@nxp.com>
 <5d246dd81607bb6e5cb9af86ad4e53f7a7a99c50.camel@ew.tq-group.com>
In-Reply-To: <5d246dd81607bb6e5cb9af86ad4e53f7a7a99c50.camel@ew.tq-group.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: ew.tq-group.com; dkim=none (message not signed)
 header.d=none;ew.tq-group.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [183.192.235.111]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d160257f-7701-4631-cf65-08d807a3949f
x-ms-traffictypediagnostic: VE1PR04MB6653:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB66537E4F283E9EE211D9E37489880@VE1PR04MB6653.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 04238CD941
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8sqfZLK4sU6M13UaUhHHlNifbKOjbI1kkjOyBYIfKrHvgw8xMR9+xOMra+/7+cRwUf3MJ5MRmsprYM1VgzW0dM1hD+Ouq33w+VGQJsAvsN3acM49ffmEeFLS/WMM8pEl4MglkvWd01MJga/gXx7UInlVJm0oIvB6MwTk/a+ae12F9qCGwfSZlQMDoaD95Z7XRJ3KKZ17a3PISrrBQuKPI7LAfq3thS1Xx/chTF2xALeAlPDRzQlNcHUwlOeNsA6g88qYfrLn47NwUnUVn02oDkfj1Ygfh56UJ74BxZD6Y7GNovd2XqE0x9LrFeqkMUdH4pd2NEfJ5nmG3PGybepDoXEzcyJvNfsXCP1sfHZ6rAa9i6Ko7m6ObfZkUHxVRXUv5vZOUOv7IstEfILx49PSpg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(136003)(366004)(396003)(39860400002)(376002)(66476007)(4326008)(64756008)(66556008)(83380400001)(55016002)(7696005)(9686003)(7416002)(5660300002)(52536014)(33656002)(66446008)(76116006)(66946007)(6916009)(6506007)(186003)(71200400001)(83080400001)(478600001)(45080400002)(8676002)(316002)(26005)(86362001)(8936002)(54906003)(966005)(2906002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 4mscULsWNOtNo3JbRHaDqYVxemp649Rn/X/n9ePu6f7sxoeaEZsSdD6tvmZ3C/wuQ2zU72rskyeNiYE+kVayDk3kMOObg0EmOw/Zf/D34nHWro4em55aprur3UxbNlK8UhwtK3uD07kwrIRl/C5Usn2V7GJF5l4CKUP8oTiHMGj3M65cRCUMZiu6ztQ/L4s6MbdR4DxWTZK+0b6nZYyBRAP9wdK9gbpNdQdITy72bd46/4CEwUKtRPPMA7MwHi8y4aaorv+O5fqcStX0jJ9KKmuLziO2kzM49Dfdk90iZl4gaW8AccNJJz4i+OhM3JtD4di3i/nZB/ipAD1G5lD4Wx3p67FO3/lNw0iIpk9/nzwZdCEJ9c/J2aA3vFD/eGqei6N7TojlfUzmp36yuHOz1E7juXRObML1cipNOyo7aiITEjdgtI7Zuj54we4SBlCo821wbLg3/ndT2M6kdOSfdfMdGMFn0gYo87jCdYzmHsC2QswW/Hfja7odZFoy3+c3
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d160257f-7701-4631-cf65-08d807a3949f
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2020 09:50:42.6870 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bHlK3KziwLJg5y+nK6uZL8k3S4zn5Vmbvz5XwIJtwluSnfBUnlUrynyV1kuBiXdub1Y6hjexXY3Euj7dMDsj1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6653
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_025049_203806_1F41668F 
X-CRM114-Status: GOOD (  22.09  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.0.56 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.56 listed in wl.mailspike.net]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "martin.fuzzey@flowbird.group" <martin.fuzzey@flowbird.group>,
 Markus Niebel <Markus.Niebel@tq-group.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/06/03 Matthias Schiffer <matthias.schiffer@ew.tq-group.com> wrote:
 > On Thu, 2020-05-21 at 04:34 +0800, Robin Gong wrote:
> > There is ecspi ERR009165 on i.mx6/7 soc family, which cause FIFO
> > transfer to be send twice in DMA mode. Please get more information
> > from:
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.
> >
> nxp.com%2Fdocs%2Fen%2Ferrata%2FIMX6DQCE.pdf&amp;data=02%7C01%7C
> yibin.g
> >
> ong%40nxp.com%7C4621358b9be04a79d2d508d80798835b%7C686ea1d3bc2b
> 4c6fa92
> >
> cd99c5c301635%7C0%7C1%7C637267698912634476&amp;sdata=hR66H1hP%
> 2Fqb6OXe
> > w9wpXizY8DiNfZZ1KLwu3Kty87jc%3D&amp;reserved=0. The workaround is
> > adding new sdma ram script which works in XCH  mode as PIO inside sdma
> > instead of SMC mode, meanwhile, 'TX_THRESHOLD' should be 0. The issue
> should be exist on all legacy i.mx6/7 soc family before i.mx6ul.
> > NXP fix this design issue from i.mx6ul, so newer chips including
> > i.mx6ul/ 6ull/6sll do not need this workaroud anymore. All other
> > i.mx6/7/8 chips still need this workaroud. This patch set add new
> > 'fsl,imx6ul-ecspi'
> > for ecspi driver and 'ecspi_fixed' in sdma driver to choose if need
> > errata or not.
> > The first two reverted patches should be the same issue, though, it
> > seems 'fixed' by changing to other shp script. Hope Sean or Sascha
> > could have the chance to test this patch set if could fix their
> > issues.
> > Besides, enable sdma support for i.mx8mm/8mq and fix ecspi1 not work
> > on i.mx8mm because the event id is zero.
> >
> > PS:
> >    Please get sdma firmware from below linux-firmware and copy it to
> > your local rootfs /lib/firmware/imx/sdma.
> 
> 
> Hello Robin,
> 
> we have tried out this series, and there seems to be an issue with the
> PIO fallback. We are testing on an i.MX6Q board, and our kernel is a
> mostly-unmodified 5.4, on which we backported all SDMA patches from
> next-20200602 (imx-sdma.c is identical to next-20200602 version), and
> then applied this whole series.
> 
> We build the SDMA driver as a kernel module, which is loaded by udev,
> so the root filesystem is ready and the SDMA firmware can be loaded.
> The behaviour we're seeing is the following:
> 
> 1. As long as the SDMA driver is not loaded, initializing spi_imx will
> be deferred
> 2. imx_sdma is loaded. The SDMA firmware is not yet loaded at this
> point
> 3. spi_imx is initialized and an SPI-NOR flash is probed. To load the
> BFPT, the driver will attempt to use DMA; this will fail with EINVAL as
> long as the SDMA firmware is not ready, so the fallback to PIO happens
> (4. SDMA firmware is ready, subsequent SPI transfers use DMA)
> 
> The problem happens in step 3: Whenever the driver falls back to PIO,
> the received data is corrupt. The behaviour is specific to the
> fallback: When I disable DMA completely via spi_imx.use_dma, or when
> the timing is lucky and the SDMA firmware gets loaded before the flash
> is probed, no corruption can be observed.
Thanks Matthias, would you like post log?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

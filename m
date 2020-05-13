Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 867041D0ABD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 10:20:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H05xjfSl+S4Q+K2lYFhGfk2l1yZSw4+QUQtX+iE3q6Q=; b=X+xPlSAsvSpMJa
	anS28AwpF5OJsFmo3e2lZ0lRgci8QBYQC+i9+7pr+p6kDF2rRm5ucxc/PeuFH9kHvvg7QXna8LReI
	5T4J8f3vl6uu7RsZ0uuSlWPoYMH9mLzQYGYTb3SzP+SzXgNnlB+0yvG2SobZUlLip3dM9g2raTrYX
	sel8VzIKJjhcCyQMWIoomupSemM6aD0c1Ie/JYdz7n2Nu1s300oq4fDIGILXqY2ehCOJXJhWLpOpd
	JGwR/ysTdcezjffEGHrJ/RNVqxwgaY8QQ+u+LLdTHwBY3d7AY70oOGyCMkr1UFQ/xAh63cDmcxV5X
	Pk05jY5QFkuwLCDluZ1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYmdC-0002lw-SX; Wed, 13 May 2020 08:20:46 +0000
Received: from mail-eopbgr50073.outbound.protection.outlook.com ([40.107.5.73]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYmcp-0002Oi-7n
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 08:20:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B6Bz1p41IIUUhyaPbrgqEdl7Md9bqD/rgrR1RPB09OM6oyWugvcT/wRVWJH+RJZIq3ZicyNtMalpcYQI5V/CMB0HNGt+lGokOIP1J60A7lHbTpflS90hyy9LCPj/BkgQPoj8g07l2iyZz+8ypChEupcMiMg0CEEZFjai+lUOwG2rJCReMVfZJschQQ4gBDz+lxL5mnRCJ5CTzP4rZxijPDOnsK2dF1nxOWz6srU9WJxYGIKAWJn8m8sCAspukjSzME0wCQicItudXGJ21z0e0zxRb/Ledr2NnMj2lYClBerkWYo4SLVDCVeTwoAsYvMGST9FuQmVPTgN5WPKpw9qdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XWEdXAhnXXeFk6WL4AWaBjGKdYGhKXzG8vgymH3/6l8=;
 b=W7DMBcF/kVJA3/NiCurVXxNTODLAj75lOdSPYEZBEdADIO89/UTd8iEer9rgOq8cv533EDmmxGohzI84nrtzwAkzihMIhQsgDjJFJz+hchqCgcZlKN0KpZVVnfPINzkjeqnmM3bCJ1or312h6qsSCyRvFzo6pRACZ4tJlP3GlXvFt6KiFlqQi//vpxQtFnq+a1KB6sLTRIxk0rp8rcPi8BNbwwgRHZrH028ZImSQXC4vntIuWhwW0tY4PJM325oqUfsaAIQpNRMZuy54oFdk6fLlPA7aWBSrEdHyHFql3M6oepcdYox6g5wj+9IHMZQnzshhoQ3zrj909xhCphDrMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XWEdXAhnXXeFk6WL4AWaBjGKdYGhKXzG8vgymH3/6l8=;
 b=mf7qLmSG0UmxNz+RHdFT37ITOKECXkXU7sDRAz6OkCLkiKigYmBc0MJklcNO75UhbblyuFE6/Yms3Npe4oyPnOoSjNerpNRLGrvSkRgxxuUhIDywCmr0F+IOiBa04RvLVYr1L9rvYfY1xXgyngrnuQu3NLacCKtgV7D6o/iVGyc=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6495.eurprd04.prod.outlook.com (2603:10a6:803:11d::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.33; Wed, 13 May
 2020 08:20:18 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa%4]) with mapi id 15.20.3000.016; Wed, 13 May 2020
 08:20:18 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: RE: [PATCH v7 RESEND 00/13] add ecspi ERR009165 for i.mx6/7 soc family
Thread-Topic: [PATCH v7 RESEND 00/13] add ecspi ERR009165 for i.mx6/7 soc
 family
Thread-Index: AQHWJ3cQF4VQAfbPY0eHwEq+VJV4M6ilnvSAgAANpiA=
Date: Wed, 13 May 2020 08:20:18 +0000
Message-ID: <VE1PR04MB663826721B0720C313C3E12A89BF0@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <1589218356-17475-1-git-send-email-yibin.gong@nxp.com>
 <20200513072012.GB15934@pengutronix.de>
In-Reply-To: <20200513072012.GB15934@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c6a6175a-c429-43d8-8970-08d7f7167905
x-ms-traffictypediagnostic: VE1PR04MB6495:|VE1PR04MB6495:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6495028891FE13A5A93459B489BF0@VE1PR04MB6495.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2089;
x-forefront-prvs: 0402872DA1
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2Az6f7afz3WGTTd3KHlalP4pRyNiYet1VQlF7dMrMG8VOaXtup2no51OH5q7ezcE7S5H9U1+1xL96s+vS3/hSFXIZFbBLS8yU4cpTyEkTAeHiZZFNPJufFD5awLAtztVomOyTn/7I2iaeLRmeks+MHn10Zwigrh2so4H+Y9SDrVuVGOUpvBEbkirrruZ9yTtiH9j0I5hL+/vBPKi5lcNn0yqkI9J8vOVEjYM1eIWoQaE3mlCeyM5qFykcUXhUaGE2rEwtXIIWqm2b2l8RL6FUQ2IOxneB+ZvTu8EvDHJtu9Y0FmvpTP5yYZQOD1jCe0gSJvta1xIOS+FriAhz2KNzY9vRbuH4M7qnwl06EFTaChpU2rac47eImUdnTKxaV8wOp2RSGgC5Qvp5EMfQ5HnufIcmjbvEZ4d8ACJdpXY8dRxC3E6NrCnyTvsAtuh84Yj0tZdatyyGReJg6onKtc4HSFiP9WzYIhBr8V+rTzCALl4nuvoK3NLLSmT/mVjIcBDExOprIxBQIgN7ggKOHim/WL3JHyvQrrmUb+QZgqT20j0S/ezchVahLPR0EmJXajcFEoKZMvXxVYQqQ2r0QGRKZZfYc1hffI9etXv2tHHtEU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(346002)(136003)(366004)(376002)(396003)(33430700001)(86362001)(7416002)(71200400001)(52536014)(316002)(66476007)(66946007)(478600001)(966005)(54906003)(45080400002)(76116006)(33656002)(5660300002)(66556008)(6916009)(66446008)(7696005)(4326008)(33440700001)(9686003)(8676002)(55016002)(6506007)(2906002)(186003)(83080400001)(26005)(8936002)(64756008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 8YXxr7GNc171Guheu4KtR5OT0vICQafNvA5L/0OLA9vIgFXFVGzX17kYc8Xfz2vggPVDf0Ih3M4xMgIiuF7vT/VQjIeXMp3DoIQHgB77Znm/XwHorxZuDJoMAdAnb6EL3lWAitrsceE8E9ySSAzspgr8bTgj1Z8xyh4HRAiRB8REo5bV1Wy/q/oesK3XEm0d/IEyByY/mHZV65LU6U8mkyVsFQHEUe3OQfHuZIbD2KtmWdLXdE5Um/NMsCXYYLrFKd/t+rDGHHmqLg8T/g87fvUMdi0RmLa4RxYtaV3AO9QBQ0vW7o3lKkGi1/d/ojEpvb2Rcfq34jyWdBz4jI0v4vApQ3IkKc7f5cuXgYTs8gn7p/Cb/Oakm2353Q1oENi6pkTiavaeSa9COdiMscEOFDEDcXuwKYcXztu/slYQn69oAfJRK6RkdWqpGaz+F0D92022YKz3CnraCtZLybpUuGE/+ZNw6jafxTzlK5DyzO8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6a6175a-c429-43d8-8970-08d7f7167905
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2020 08:20:18.6012 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M2wChgXBhAkbq7yo+BNwhok4GlUr1+Z0YXS0+dkM/o/LRsJD5JZjLoHKxy2pN5aKcbyDHAKEEz6GV/6/hChixw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6495
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_012023_317796_B2181056 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.73 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.5.73 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On 2020/05/13 Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Tue, May 12, 2020 at 01:32:23AM +0800, Robin Gong wrote:
> > There is ecspi ERR009165 on i.mx6/7 soc family, which cause FIFO
> > transfer to be send twice in DMA mode. Please get more information from:
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.
> >
> nxp.com%2Fdocs%2Fen%2Ferrata%2FIMX6DQCE.pdf&amp;data=02%7C01%7C
> yibin.g
> >
> ong%40nxp.com%7C4276d42955334886056508d7f70e18af%7C686ea1d3bc2b4
> c6fa92
> >
> cd99c5c301635%7C0%7C1%7C637249512224944620&amp;sdata=vh0e3BER01
> 02648t9HRe14h%2BaE9m%2BAlJ5Smd6v%2B9AhM%3D&amp;reserved=0. The
> workaround is adding new sdma ram script which works in XCH  mode as PIO
> inside sdma instead of SMC mode, meanwhile, 'TX_THRESHOLD' should be 0.
> The issue should be exist on all legacy i.mx6/7 soc family before i.mx6ul.
> > NXP fix this design issue from i.mx6ul, so newer chips including
> > i.mx6ul/ 6ull/6sll do not need this workaroud anymore. All other
> > i.mx6/7/8 chips still need this workaroud. This patch set add new
> 'fsl,imx6ul-ecspi'
> > for ecspi driver and 'ecspi_fixed' in sdma driver to choose if need
> > errata or not.
> > The first two reverted patches should be the same issue, though, it
> > seems 'fixed' by changing to other shp script. Hope Sean or Sascha
> > could have the chance to test this patch set if could fix their issues.
> > Besides, enable sdma support for i.mx8mm/8mq and fix ecspi1 not work
> > on i.mx8mm because the event id is zero.
> 
> It's not nice to break SPI support when the new firmware is not present and I
> think we can do better. Wouldn't it be possible to fall back to PIO in this case?
I'm afraid that's not easy since spi driver don't know which firmware used. Could I add some comments in commit log? 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

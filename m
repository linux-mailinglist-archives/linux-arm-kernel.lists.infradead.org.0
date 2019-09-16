Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E52B361C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 10:03:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TtKyB12X0Dhd+8tFo7xb2gvwH+RWpI6LfHzpZIvtlwQ=; b=mp/R+rdkMzhgmL
	K//dNuSe/DMGN4r+v9PxGju0Wvaqq4YuVINF58jA0iSFbgq2l6EyGzcJsTues5LOoIUyXzB3oyfEa
	xjSI2fEpd3luoSTEAoysqbZLfHozvFtMujZBVCd/G/F4lR4czML3gB+pI+aOUQjEJHX7eWjXFxayM
	nPLEVY2PRaF8PpWVjYaEK1wE9ZXI986Kpd4oLvaoMtpo/hBcYJLXA/APg+Oqm0hm5TT1Q10GUF3g3
	dMVxQySzAfczwnKlL11VrFrYcUdh2XzrWVTki2EpsipgeGqfHY9tkKt49vYxVjmWRrP9SKFJAfRyi
	xlZK7UEKKJTTkHWZz+kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9lyY-000547-22; Mon, 16 Sep 2019 08:03:10 +0000
Received: from mail-am5eur02on0605.outbound.protection.outlook.com
 ([2a01:111:f400:fe07::605]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9lyG-00053Z-EB
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 08:02:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wrk/aRXqc7Ki0rjY0K2kUOktreEdiNhNuXM78Q3Sdy7cjdqea72h8EKz5UAvSw44icswJY0c67lPS09j83bXFkfc6wsSdZjwX0HMzSBH5ttauKB6XCozulp4Hpw4kH4xSR83F7IvEww0yO5PNR7yNZda/hR0xlM4RXqZY4dlZ4Ab03TsWtkn6LNdn6KA/h86mQLWQo7WDu2QlMm59Mnb0jYvTFlDM6wRjImDXHQtGTHm7R8+YHCWBKtgse/XE3nmFAKL72ATa0pYtmvfVMAbqjoepv9Eo6eNqz8nbl1BZzOf78ZulhDXL5SctDfuvM7jFwZtWiKDnyLgS+NTFU2Evw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KPuvN+kDylNI+qUnXmqbN38GKnIwxTl7w0MidEyAfZs=;
 b=mbS8WmjfUeaaCrVboyS9XwYCprgR132Ureb+Yi8d4NLXu+eeRdnKghAu7+1rIQjnXpE2LYzV8KayWaPlpurK6oHIWhV9VhhDPOwQJJTNjbgQTad3JrxJJXikqZjVmZGd35VRY04sDSzkGZCah4LiZPxORsV0sRYJBz9wAlHhgSCSD1y7eObk6Yi8fepDjRU1eA34NHp5xiq4qsc+oSBwju1nKbVdP+rlguQVZb8He6o6ChoktT8QOvimiO0fnj7A9c99RcC9kDzOof80lcVtJWagZI9tkzawmvZYPf4FQ6J/kthivUM9PKj1KcEIpshB2/I+oxnqGHXESByWcaUjGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KPuvN+kDylNI+qUnXmqbN38GKnIwxTl7w0MidEyAfZs=;
 b=gIeEnxG4OfwlNUxRQcs/5rjo4UY+fVo6+gQZULr0dQwk3lB7qK6jgrXt4QTSLZKcaoNl+Hw5jNND35R1KtNMSShrANI/LiBzq80MdMBq8ilM3NdQnwDNjt/SFwxWiDjFL0xVH3gDhQCAR34NbkkSIkvEDUY9REKDeZJcc5vqrtk=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.235.81) by
 VE1PR04MB6496.eurprd04.prod.outlook.com (20.179.233.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.17; Mon, 16 Sep 2019 08:02:49 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::c8ae:f1f7:b7be:5976]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::c8ae:f1f7:b7be:5976%4]) with mapi id 15.20.2263.023; Mon, 16 Sep 2019
 08:02:49 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Philipp Puschmann <philipp.puschmann@emlix.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 0/4] Fix UART DMA freezes for iMX6
Thread-Topic: [PATCH 0/4] Fix UART DMA freezes for iMX6
Thread-Index: AQHVaLAxu2UDdwNxk0eJG3Q3r0yNHKct9iKQ
Date: Mon, 16 Sep 2019 08:02:49 +0000
Message-ID: <VE1PR04MB66383FAB08506993B305AC8D898C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <20190911144943.21554-1-philipp.puschmann@emlix.com>
In-Reply-To: <20190911144943.21554-1-philipp.puschmann@emlix.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 33c64e22-a496-4e98-a413-08d73a7c446a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VE1PR04MB6496; 
x-ms-traffictypediagnostic: VE1PR04MB6496:|VE1PR04MB6496:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB649679AD6CFC9D65CB9F5733898C0@VE1PR04MB6496.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0162ACCC24
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(136003)(366004)(39860400002)(376002)(189003)(199004)(14454004)(71200400001)(71190400001)(52536014)(478600001)(81166006)(316002)(76176011)(81156014)(2501003)(33656002)(7696005)(25786009)(66946007)(66476007)(64756008)(256004)(8676002)(4326008)(66446008)(66556008)(99286004)(5660300002)(229853002)(54906003)(6246003)(14444005)(66066001)(110136005)(6436002)(55016002)(9686003)(76116006)(11346002)(486006)(7416002)(3846002)(7736002)(86362001)(446003)(2906002)(102836004)(6116002)(186003)(305945005)(476003)(26005)(8936002)(53936002)(74316002)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6496;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: MFCm1zv4tbzNCiFPQ1W2csUN1IgzUd3fkemEb0fz6qlJchlafWcAiMCeQXZG4vx5R69/b9DsOO+cfnFsm30FT3fIcLoSlqILF5omm9qg5TVVC0k8L339YKIHo5WoTMCkBU29ZoxZ58ZHuSokR59WKtD//nlagtVRx7smd/zTj9/BRegrF1Vi5lhdHALuG5CJIzOvRuTHAKX66F9u90ttLoMmSy7YkPpv160ZMMCGPT4PReKPDxw32XCZEtOIr6rvkBqw0JiC2+kKt85swXCvePvuCUoKiEfQWpCOtiMqWjZs0KUnHGUYg4V8W7BMIisyslEt32ZCTcKavY3AVTMzq7C7sGbQVerMwkJvwznqq4qK+LOrTOEfirKeaYmT5qhEKJIvECRnXmQtl+bAUJw1udJJqBUcaLXDgaTK+v5SSZk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33c64e22-a496-4e98-a413-08d73a7c446a
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2019 08:02:49.1571 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J5iIFzzxLDqPHFAGVJcBV0mc0VHea3IF8mGB7X4Gl9YfBEwIc9NY9osidi5bqObLhkdny33eJ0j4ww1N1+298Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6496
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_010252_483135_2DCA1489 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe07:0:0:0:605 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "jslaby@suse.com" <jslaby@suse.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/9/11 Philipp Puschmann <philipp.puschmann@emlix.com> wrote:
> For some years and since many kernel versions there are reports that RX
> UART DMA channel stops working at one point. So far the usual workaround
> was to disable RX DMA. This patches try to fix the underlying problem.
> 
> When a running sdma script does not find any usable destination buffer to put
> its data into it just leads to stopping the channel being scheduled again. As
> solution we we manually retrigger the sdma script for this channel and by this
> dissolve the freeze.
> 
> While this seems to work fine so far a further patch in this series increases the
> number of RX DMA periods for UART to reduce use cases running into such a
> situation.
> 
> This patch series was tested with the current kernel and backported to kernel
> 4.15 with a special use case using a WL1837MOD via UART and provoking the
Hi Philipp, Could your Bluetooth issue be reproduce on latest linux-next? Or did
your kernel which can be reproduced include the below patch?

commit d1a792f3b4072bfac4150bb62aa34917b77fdb6d
Author: Russell King - ARM Linux <linux@arm.linux.org.uk>
Date:   Wed Jun 25 13:00:33 2014 +0100

    Update imx-sdma cyclic handling to report residue
> hanging of UART RX DMA within seconds after starting a test application.
> It resulted in well known
>   "Bluetooth: hci0: command 0x0408 tx timeout"
> errors and complete stop of UART data reception. Our Bluetooth traffic
> consists of many independent small packets, mostly only a few bytes, causing
> high usage of periods.
> 
> 
> Philipp Puschmann (4):
>   dmaengine: imx-sdma: fix buffer ownership
>   dmaengine: imx-sdma: fix dma freezes
>   serial: imx: adapt rx buffer and dma periods
>   dmaengine: imx-sdma: drop redundant variable
> 
>  drivers/dma/imx-sdma.c   | 32 ++++++++++++++++++++++----------
>  drivers/tty/serial/imx.c |  5 ++---
>  2 files changed, 24 insertions(+), 13 deletions(-)
> 
> --
> 2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

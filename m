Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D88B4BDD14
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 13:27:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=df5ph4a33qPyCCnf72eb032D7vRtc8JSkDJeuHVpEYc=; b=UYJNxjudsrmgqr
	qVvcsTIMIiZrVHIlUUB+2b0/9vP1GkNj3TXe6lOjpr8+S/odUwoL7jRulKzUpB1cxmzugy6oKqQHN
	fG0hz3LYV505dvkADvDLGsyFwTaOfCs8EUgpvvRPp3jNZS20epJ34sWwlnCNR/w4d7RA9wLv+qxHT
	EKVmKmzdOWNO+j0ysFB5+vnNKJ6pBurotZwPvbaBbTOe7C4ultcG/Fgi/l9xrBbaheodrivmaEy7M
	g2bTQBq2gAgku5jhMxE3SsjKsESBPD9L3VTqjJmuEOAZWJwQuWktVilhiVL9MTduhlU3CJiAjKhWV
	zkfZI2x6/IUPhkS/eqDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD5SA-0001ge-7k; Wed, 25 Sep 2019 11:27:26 +0000
Received: from mail-eopbgr40088.outbound.protection.outlook.com ([40.107.4.88]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD5RL-0001RA-Me
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 11:26:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A+F1+HPkS0uBnwSa3O/yIh6rbF4oGm94hQjYoMSLMUHCFwevgSoyyKzqDLlQJclqBIOCPf+bafshl0rax0HW3mrhpNI8aYAfBk8faszj3I2TmAou87/CdzuijpFzXQOOJ9zGqUItjfpun2bQ8sXau8YjFaRS2CHkxblIwzxLo3/CFj/3ISzK2CQ5RR/aAD1+UFavOkK4lXPtXhK558+C3IwstmkC1qZ0PqKe8aLtZPXxqe/vcampQFuUFOeY/TlhoTs4gnaOxgj6QxMFNerlFOh3cOFQUQWbINFymPqsXODedr+2neDcI8RK4MDsGGz6AjgR70h1dtNO9LLFk+1bcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9qO7ILLFmQNxwzN+9N1gQxBgSqJhTznjRVbG4QmHg8I=;
 b=Yhq8RKVi4oOyhp7nhO2Wrt9EjfEtFyzdRz99CnKOAe+LDzsVWzQlsFRAUMNn5o6nyQVNwz3y1kgiisHWxVrgoVsuXoKSJacvTjxnQHtPJuPy54vPrdWfHULuswRLeSG82dksu8S+UTRWZW4j5rpfRFgPJXPFVvA9wymgbc+hpwxPXYvtSAHJcAT4faBNkI1sVlGWOzKYlqbnesJTQmN8SXvOpgPBqhtBukdMnkT6IH5OH6ODdOavmYP7nxkROM986AeVwRSj+587taTG9atCLaMoUF33FO61xmXQOZAdSwITQp0ifz+YUk7SF+5Sxx9qjsaOpusjrBNIYgYW4dU4vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9qO7ILLFmQNxwzN+9N1gQxBgSqJhTznjRVbG4QmHg8I=;
 b=aJRVVrNPvgd3a7JsCGAHN9W0Vi+dN9gLZkKyYt6wObNTL8VmSfgG4qHJOuRV9NviwU7jMhxksf7pIC7fmSSvQJf/GMCBxKSmCZJib+67sRK2LqlCkffo7DHKLu4yjCOpdajUP9M0aNO9oa96S7T47bJvHv1EoVYnsTz6wmMcQWk=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6591.eurprd04.prod.outlook.com (20.179.234.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.15; Wed, 25 Sep 2019 11:26:31 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::35d1:8d88:10f4:561]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::35d1:8d88:10f4:561%5]) with mapi id 15.20.2284.023; Wed, 25 Sep 2019
 11:26:31 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Schrempf Frieder <frieder.schrempf@kontron.de>
Subject: RE: [PATCH v5 11/15] dmaengine: imx-sdma: fix ecspi1 rx dma not work
 on i.mx8mm
Thread-Topic: [PATCH v5 11/15] dmaengine: imx-sdma: fix ecspi1 rx dma not work
 on i.mx8mm
Thread-Index: AQHVH2TUeqmuIEjDz0ugonhEiODBJqc7eN4AgAFtyHA=
Date: Wed, 25 Sep 2019 11:26:30 +0000
Message-ID: <VE1PR04MB6638639EF4F580E04689538E89870@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <20190610081753.11422-12-yibin.gong@nxp.com>
 <29cf9f29-bdb4-94db-00b0-56ec36386f7a@kontron.de>
In-Reply-To: <29cf9f29-bdb4-94db-00b0-56ec36386f7a@kontron.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [116.231.57.185]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b506a70e-fd56-45df-ecc7-08d741ab36e1
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VE1PR04MB6591:|VE1PR04MB6591:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB65910C765D390CB2C5AF4DD589870@VE1PR04MB6591.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01713B2841
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(136003)(376002)(346002)(39860400002)(189003)(199004)(5660300002)(6436002)(7416002)(229853002)(6916009)(6246003)(7696005)(4326008)(53546011)(6506007)(316002)(86362001)(476003)(7736002)(54906003)(33656002)(478600001)(14454004)(76176011)(256004)(64756008)(66446008)(11346002)(66556008)(66476007)(52536014)(99286004)(66946007)(4001150100001)(186003)(446003)(26005)(71190400001)(3846002)(6116002)(8936002)(76116006)(74316002)(81166006)(9686003)(2906002)(66066001)(102836004)(81156014)(25786009)(486006)(55016002)(305945005)(71200400001)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6591;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vu4PvXgHjU7+P54i0i7kunDnpxdybREojATbBiZisR/aQheflKuyaYUCAo2W40tnqkAyDbfE9WM2N7X6e+nWLSMXNR0hQaK7N147H8PNPED6liutMzfm1kSRhxU44Bd8o1PvlOqRZRt4ot6b/DhZzvsw+MAKswoCOOU6kFSjL3NXlWYOXgeyabqR1KFMHfo7AGNEZxk2MD8yte2ysWxTYstcqx/PTplkGc/LP0iKK18/BBOzK/3X0NZBHbJ+PWmCvlYfCmHQ0tB/nwZX4aYoN1C7oE0lU8DIoWI4wW06s88t9ezUt06JsT60ShvLoySFGKI+EEtpZvL8JYoru5BRo+aMRBYXC18s3HfmmL1BUw57/v8C9BSN6uhYui8rKf1Mmls74HjmStq1KPExZWIpy9LltS+6rFcjQNoiuE1sDBk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b506a70e-fd56-45df-ecc7-08d741ab36e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2019 11:26:30.9335 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d7kBpWi1ijmbmC86jqi8nrDmDfKleOPdhRHL8inl0UqBJOAqUr2HPqDpJV9JKWlby4qglXgTAXJMbx0CBM48Aw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6591
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_042635_969550_7D30C65B 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.88 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Fabio Estevam <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-9-24 21:28 Schrempf Frieder <frieder.schrempf@kontron.de> wrote:
> 
> Hi Robin,
> 
> > From: Robin Gong <yibin.gong at nxp.com>
> >
> > Because the number of ecspi1 rx event on i.mx8mm is 0, the condition
> > check ignore such special case without dma channel enabled, which
> > caused
> > ecspi1 rx works failed. Actually, no need to check event_id0/event_id1
> > and replace checking 'event_id1' with 'DMA_DEV_TO_DEV', so that
> > configure
> > event_id1 only in case DEV_TO_DEV.
> >
> > Signed-off-by: Robin Gong <yibin.gong at nxp.com>
> > Acked-by: Vinod Koul <vkoul at kernel.org>
> 
> I have a custom board with i.MX8MM and SPI flash on ecspi1. I'm currently
> testing with v5.3 and as SPI didn't work, I tried two different things:
> 
> 1. Removing 'dmas' and 'dma-names' from the ecspi1 node in imx8mm.dtsi,
>     to use PIO instead of DMA. This works as expected and the driver
>     boots with the following messages:
> 
>         spi_imx 30820000.spi: dma setup error -19, use pio
>         m25p80 spi0.0: mx25v8035f (1024 Kbytes)
>         spi_imx 30820000.spi: probed
> 
> 2. Applying your patchset and use DMA. In this case, the flash also
>     works fine, but there are some error messages printed while booting:
> 
>         spi_master spi0: I/O Error in DMA RX
>         m25p80 spi0.0: SPI transfer failed: -110
>         spi_master spi0: failed to transfer one message from queue
>         m25p80 spi0.0: mx25v8035f (1024 Kbytes)
>         spi_imx 30820000.spi: probed
> 
> It would be great to get your patches merged and fix SPI + DMA, but for
> i.MX8MM, we need to get rid of the error messages. Do you have an idea,
> what's wrong?
Could you check if the length of spi message is bigger than fifo_size during
spi_nor probe? If yes, at that time maybe sdma firmware not loaded.
if (transfer->len < spi_imx->devtype_data->fifo_size)
> Thanks,
> Frieder
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

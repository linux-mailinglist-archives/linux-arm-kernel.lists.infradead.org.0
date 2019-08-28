Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D37629F7FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 03:48:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F2j1RmBwSQvEjNkBIImxBk2XTggKUC2WMa5vmG942XM=; b=THYbHJ2r1V4MR1
	kz+R8D+oMgvd9Wqtww0m+YtVeIHqnKvgvEVIDhHvrJCIm9jPdbz8t3jrrgg/YrT1URceuasLzae33
	4kVnrLBzAglNIPL6YGkxTiwjtLPbfz5Af+P9fXIPiaHCRGnIq/BcPEuLmx7fxILBqOW+KKNyFlpo8
	n6jhmXoZektdRKRa9LqxDaUoVjX8ddlCdPANfWzLqa/vzK73qFyIXfrhE5o0+Ikc8UKhrNAYtyAW1
	4Z0ODUzvuxPpcI87HMqOIrQhsYFhQsfyIvhUu2KJ+p9ozdzD5Z4XSFU9+rwfdlKm8EliV9qxYT1qT
	b/E3LzvXzz+S2FgKjZHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2n4d-00056X-Qc; Wed, 28 Aug 2019 01:48:35 +0000
Received: from mail-eopbgr70084.outbound.protection.outlook.com ([40.107.7.84]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2n4P-00056A-6s
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 01:48:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HGvYCXbKRmhZu7dUOmXaeIJqQcF9kqzvDsMNBdEJGVY6rBzCfQHNs6IiOg/30UxDflKHB4YaGLrhaJme6og6fHRT4djsTuYbdyfNuuDzIoEvVaRoRQWoQYH2Sl5Bz7alywiIlP7nzIoMeCFOVuWOCn/QQSh2bpl/k2yrz8chRtA7YzX7IcVOp5/RudbJeD7ntdmpI57BCP3+SYb8GqivBTROIshbC41W1ufYCTbNoHX46KjMTlzE8X3dzzq/Miyi2xFagGZNZ9sPwr1Sz8WiswyCcJB9FXPNYaE29IM3JYPyH0A9EpLF9ZDUB/u7AHKYUgziGI/plJc/qBWVMVvMaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JB1ctoAauEct+yvK04W06MWvXhpMKF606kLZW0/mdL0=;
 b=SrgxD3Gb8Da1JnVkiaZU8yxUw1Yjqu74lBlv2a348Bp2oCwYKgMxK/Vxb4CbT/4/nTCnOifgIlgHQNrSnsBnd5Nb90CDpoYm7PYNMhasoL+fWaS4SgSEJtRudFnTYW7gRsyKx3t8NjQZNoFK2rQwjDLDztpYOe7cpu9uKJqXNSrrVmp0TNgy5qJ264A674+8CLES7yCgdN/qiqJ4NUlBcdSMNxGsxv9qdPnFe1l/bfP/0NS1mrmxwR9AWe54PyqGRfrlb4RFBKDkhr9gyZsuP+dpb870OwuQXraPx+kDvhF9oERKbrKYGmwbB1vEs/PjVWOBSvQ0Ihp+pfyStbSmvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JB1ctoAauEct+yvK04W06MWvXhpMKF606kLZW0/mdL0=;
 b=qdOLAeTyFWLJRtJ65N6F+hzvHT3hpP9IaIcC9ja02gk8Gi+vuj9BBd3eICUEZSiAoWeL2jJfIbFzvdeKmsyjQFXNHdifG25YrLr/7rDgWcGArIuXFiz3c2KYZ2HPvHAKwfKIoTzPfmGuocN4h10vl3KjIo/pnsIdyI/X6sC4r24=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5939.eurprd04.prod.outlook.com (20.178.112.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Wed, 28 Aug 2019 01:48:16 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4%4]) with mapi id 15.20.2178.023; Wed, 28 Aug 2019
 01:48:16 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Robin Murphy <robin.murphy@arm.com>, "sstabellini@kernel.org"
 <sstabellini@kernel.org>, "linux@armlinux.org.uk" <linux@armlinux.org.uk>
Subject: RE: [PATCH] arm: xen: mm: use __GPF_DMA32 for arm64
Thread-Topic: [PATCH] arm: xen: mm: use __GPF_DMA32 for arm64
Thread-Index: AQHVNi9zmpVhxJk2Z0aPUBEkePn3c6cPOA8AgADZ48A=
Date: Wed, 28 Aug 2019 01:48:16 +0000
Message-ID: <AM0PR04MB4481386D2C54AEA6987E1B1588A30@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190709083729.11135-1-peng.fan@nxp.com>
 <d70b3a5c-647c-2147-99be-4572f76e898b@arm.com>
In-Reply-To: <d70b3a5c-647c-2147-99be-4572f76e898b@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f9d8318e-890e-49e7-0e03-08d72b59cb9d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5939; 
x-ms-traffictypediagnostic: AM0PR04MB5939:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5939F39C505E5EE10A983D5588A30@AM0PR04MB5939.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 014304E855
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(376002)(366004)(346002)(396003)(199004)(189003)(71190400001)(316002)(54906003)(14444005)(305945005)(256004)(25786009)(4326008)(7736002)(2501003)(8936002)(2201001)(5660300002)(14454004)(33656002)(8676002)(110136005)(81156014)(81166006)(966005)(6506007)(45080400002)(6246003)(53546011)(102836004)(74316002)(53936002)(6436002)(476003)(44832011)(478600001)(71200400001)(99286004)(76176011)(7696005)(86362001)(446003)(6116002)(229853002)(3846002)(26005)(186003)(2906002)(76116006)(66446008)(64756008)(66556008)(66946007)(52536014)(66066001)(55016002)(11346002)(6306002)(486006)(9686003)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5939;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 74kF1JAvjmPg0usNrBqwQJEJGR4MN/7DUnmZFjedZIUCl1NoN5nh1lxL53uQkOPAdMqbB/zayJQC6Uh9GrvYwQ8YcvCcjpyn13r//lrtqpIpisD0WydxRHNDrqhwTIzK1xn6Lb3yIYKg7Q4zVMxjTdhd/I/QKFZCnF+QG727XvRf9TT4DSKFNhWqWLFThxpAUgq0KCdwmU6iYgjAQKurYppg7RhTZV1jMX9dqDRBnzVAfwWfgSaj230iiTRalcbNTWzsceoCH4JDjQbyKEqRgIPuAkOBFo8uXKAA5VgDfwtpUJB33exgjXLeHQbB10ioA0pCLgGYVVQzM3YKV6LvbeQseo7tVymJgWh5wRRf0EE+mQ9X/hiPLikpzAkI9qkCdYsQaSZsPUK8dMusDsgYGm7a2+d5diCg//W6Ib4jA1M=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9d8318e-890e-49e7-0e03-08d72b59cb9d
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2019 01:48:16.3386 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JstgMBsE/0HwpivwhntAsKO2AtoYmJ4FooRgWzaV/CMkcUUMbbPtuz8QuYbOVr1GFh3LUkRa96aqzkrBD6Bi5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5939
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_184821_339869_D8CFADC4 
X-CRM114-Status: GOOD (  17.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin,

> Subject: Re: [PATCH] arm: xen: mm: use __GPF_DMA32 for arm64
> 
> On 09/07/2019 09:22, Peng Fan wrote:
> > arm64 shares some code under arch/arm/xen, including mm.c.
> > However ZONE_DMA is removed by commit
> > ad67f5a6545("arm64: replace ZONE_DMA with ZONE_DMA32").
> > So to ARM64, need use __GFP_DMA32.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >   arch/arm/xen/mm.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c index
> > e1d44b903dfc..a95e76d18bf9 100644
> > --- a/arch/arm/xen/mm.c
> > +++ b/arch/arm/xen/mm.c
> > @@ -27,7 +27,7 @@ unsigned long xen_get_swiotlb_free_pages(unsigned
> > int order)
> >
> >   	for_each_memblock(memory, reg) {
> >   		if (reg->base < (phys_addr_t)0xffffffff) {
> > -			flags |= __GFP_DMA;
> > +			flags |= __GFP_DMA | __GFP_DMA32;
> 
> Given the definition of GFP_ZONE_BAD, I'm not sure this combination of flags
> is strictly valid, but rather is implicitly reliant on only one of those zones ever
> actually existing. As such, it seems liable to blow up if the plans to add
> ZONE_DMA to arm64[1] go ahead.

How about this, or do you have any suggestions?
diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c
index d33b77e9add3..f61c29a4430f 100644
--- a/arch/arm/xen/mm.c
+++ b/arch/arm/xen/mm.c
@@ -28,7 +28,11 @@ unsigned long xen_get_swiotlb_free_pages(unsigned int order)

        for_each_memblock(memory, reg) {
                if (reg->base < (phys_addr_t)0xffffffff) {
+#ifdef CONFIG_ARM64
+                       flags |= __GFP_DMA32;
+#else
                        flags |= __GFP_DMA;
+#endif
                        break;
                }
        }

Thanks,
Peng.

> 
> Robin.
> 
> [1]
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.ke
> rnel.org%2Flinux-arm-kernel%2F20190820145821.27214-1-nsaenzjulienne%
> 40suse.de%2F&amp;data=02%7C01%7Cpeng.fan%40nxp.com%7C5d2a641b1
> e3f449562f908d72ae95d85%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0
> %7C0%7C637025054169859035&amp;sdata=1ZPGH0gZnvgmlMpX7VrjUNME
> XbEjiv4%2FZ9pYwTQTWxY%3D&amp;reserved=0
> 
> >   			break;
> >   		}
> >   	}
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

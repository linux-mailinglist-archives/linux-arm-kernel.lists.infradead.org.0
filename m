Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42AFB71003
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 05:21:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uEPMs7ic7pgjEX+QEdpgOkzzs3E3BA16DaPngFuGo1g=; b=nKI4u1TpxJWAGt
	SbWRS4cNdLzAI4xirXq/U93X5kQyEZZCgZ5WW5TRk+5lbg3D4sqgHfG51LuSqOTerg7QNMCa4A515
	vSHV5Ih2oGDDWC4ngI8WZncp/EGUzg6iSACqi+CKtTRPvtFAIIwMo2ImVE39R11SWYHUTkeXohWUX
	n83jPcCfr5/7HagQ/Yw4cAK8DBV3OJdXZvwjOJ+ROwOVkEvF33NmoHrhqm50UpP0cijEFC2vt+VWM
	yC4iTVSCfmetx/yJLCZKHvbPAhlco2D/Spo17ABMxTppD5dzPsbjFkhTrSpEkJCecZmgZ+tHkow8j
	+tTT11+CgUonU05S+Hlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hplN2-0000Bn-2Z; Tue, 23 Jul 2019 03:21:44 +0000
Received: from mail-eopbgr80048.outbound.protection.outlook.com ([40.107.8.48]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hplMc-0000BL-BO
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 03:21:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lZVaJsqzo88iM2eDvG/Z903pmCfBZjbHBQ4kyPZAy1IFyHxq9svIeOiSFYqSEjONxfOW60c6qWhgnJtL/HITcVdhKu+bDABLY9PvuinYP5Hhm0LRvoQT+SPhHIgtWvL2AOVqsGFBkO/fgam/L1Dy57BNbP/I4K9TElCUrbBfjvZq2vwrB+C1lIMi4QZ5/TXhdgI2G6kUP8Ca8RoxxlqWNGH8p3wNSSSNYX9synywOl1Gz6dRTu+82Nx9McbUMWyE5DMbEz+6DV5zCs+l0FgtALoUiBHrl89PZwwDb3ShU2Xh8wRIsOruHLGr73x9sJE4rb3Wfy1yu4LZNkiSyH9sRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e5nGytv3kdNJiFIuhNlujKN5XwzFGqOxaWwABV1NKGg=;
 b=Y8r3Vez6z3T+If6LjgjWn1jQfU2+XVDIBpZOYC5/QvQKobz84BIbyyDOvLyCxLQgJ6WCntZSI+gVu4iF4f0eZPTvCMNJSIbhX4ACY7U3eKcQ3vAaDwOV68tWRzyOTU8fYQ7Dk6+8AKN+CfHwWcw0kcMur8sRhDrjp91TnDVKwF72fAupETROR2HGjwcJrJyJb4Wfa+wlHzGsRbXBJM2pGNoDAIeUYXAwgaRt55/QV+MU2rwk+AaIet0r1NKlcDMYwyAsytUTK6UgZe1KGK6Jqinfs0Q0OCmf5pbk0s+CJuYdjRSgQVRvwMUjnY0d8iHVvFfFUIdlI6EDtg300O0rSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e5nGytv3kdNJiFIuhNlujKN5XwzFGqOxaWwABV1NKGg=;
 b=LR5HkCzgvCPYCpDfGDYuuJVMfQYa7c9y/pFkICMWDcGOGkNEOkAaqunvgGfCA42l6NHa0iekVbxWcAnkuIlUSBl4SKPfguWZO4pOrvplD0hq0IK7NgFn8aZvSarZMtu1sWf1dQgkrzcfuq4W7StikTeDGt6yhuJ1fUFlqNYUeQM=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6180.eurprd04.prod.outlook.com (20.179.34.76) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Tue, 23 Jul 2019 03:21:15 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::2023:c0e5:8a63:2e47]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::2023:c0e5:8a63:2e47%5]) with mapi id 15.20.2094.011; Tue, 23 Jul 2019
 03:21:15 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sstabellini@kernel.org" <sstabellini@kernel.org>, "linux@armlinux.org.uk"
 <linux@armlinux.org.uk>
Subject: RE: [PATCH] arm: xen: mm: use __GPF_DMA32 for arm64
Thread-Topic: [PATCH] arm: xen: mm: use __GPF_DMA32 for arm64
Thread-Index: AQHVNi9zmpVhxJk2Z0aPUBEkePn3c6bXnoow
Date: Tue, 23 Jul 2019 03:21:14 +0000
Message-ID: <AM0PR04MB448135E1B2C85F0B6029F7B788C70@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190709083729.11135-1-peng.fan@nxp.com>
In-Reply-To: <20190709083729.11135-1-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 152973be-7733-439d-1e08-08d70f1cd1d5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6180; 
x-ms-traffictypediagnostic: AM0PR04MB6180:
x-microsoft-antispam-prvs: <AM0PR04MB61800FE73A361336A4F293AF88C70@AM0PR04MB6180.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:269;
x-forefront-prvs: 0107098B6C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(376002)(136003)(396003)(366004)(189003)(199004)(305945005)(81166006)(81156014)(256004)(66556008)(7736002)(11346002)(66946007)(66066001)(6246003)(76116006)(66476007)(14444005)(446003)(68736007)(64756008)(66446008)(52536014)(110136005)(53936002)(476003)(102836004)(8676002)(44832011)(54906003)(26005)(4326008)(316002)(74316002)(3846002)(6436002)(55016002)(99286004)(9686003)(486006)(33656002)(6506007)(2906002)(229853002)(2501003)(186003)(478600001)(6116002)(71200400001)(71190400001)(86362001)(25786009)(7696005)(8936002)(4744005)(5660300002)(14454004)(76176011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6180;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: kDMnPc205CvPN4goqtK999cwRilrCnJARJkva0xS6wRGnpwPZ01t4w2MBN6hkyvv6Sua6ju3Qxx38m5YNTJ9kaWaFwxa4FtcQtsbRE+ZbKXK4W3Mi6ea3bkkmXdbz9MPO4pTIk6d4ptPJC7Em0E2deWbpnDjxqTeMyDW8r7CCUKVHG3TSRztko50zoIS/Clc+R5SVJfIIyFqx1NWE9Qp3k5nl+vgMez6ubVNOZam5MrNVBHgGkQGvANZYNTAsqXjK/BVKOHEeioyluEYBze+JQjN+cMZqc7SxY+x7T5zp2f4edUGe/b754aZAcTYfP94HqG7TWyLbicRiudlxgNo+Aq5fkoNxWmiDnp5Dna4nW5vjWzW+EriuTMue2LRx8RpYsHg4LSe90ciNLTNM+/cXOlSvPJm4V/hwrDNO+BgKdQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 152973be-7733-439d-1e08-08d70f1cd1d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2019 03:21:14.9041 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_202118_397011_F47D8599 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.48 listed in list.dnswl.org]
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
Cc: "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell, Stefano

> Subject: [PATCH] arm: xen: mm: use __GPF_DMA32 for arm64

Any comments?

> 
> arm64 shares some code under arch/arm/xen, including mm.c.
> However ZONE_DMA is removed by commit
> ad67f5a6545("arm64: replace ZONE_DMA with ZONE_DMA32").
> So to ARM64, need use __GFP_DMA32.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  arch/arm/xen/mm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c index
> e1d44b903dfc..a95e76d18bf9 100644
> --- a/arch/arm/xen/mm.c
> +++ b/arch/arm/xen/mm.c
> @@ -27,7 +27,7 @@ unsigned long xen_get_swiotlb_free_pages(unsigned int
> order)
> 
>  	for_each_memblock(memory, reg) {
>  		if (reg->base < (phys_addr_t)0xffffffff) {
> -			flags |= __GFP_DMA;
> +			flags |= __GFP_DMA | __GFP_DMA32;
>  			break;
>  		}
>  	}

Thanks,
Peng.

> --
> 2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

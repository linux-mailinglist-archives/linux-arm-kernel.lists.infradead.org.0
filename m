Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD07187E5E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 11:32:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JBf071lXmlNj8ljVw5DONBrv6jhwRvst7akdDaXyTOw=; b=c29Yc1/s//4Lf+
	cJibzoq0nWLm25AcA3VGzeZjew561XpxAjhnzwnRhNfWVnkLoa1jmKGwENfM0Rh7z09A2DVNtibn6
	CVZEJPlbsukMbZDU/QGQEXQo5tnIHhf32gENJ723jtQUgtoCRqkGq/z77FFh6IUPJrM08J+QjoK3g
	/n1++4Nw6VNfhAbC3ADYOz+C8TwlXkhuptAHbYmzFMfaddkmV+KXcdfSXbh07bnin70JfmrcSkhPz
	9u+goVKwNt4/qRrv7kY6/ykzDlfvzNiyU1EbletiR2F7fHXl0Be0FWZK2gES2DUsamjPHe1BcGiIT
	ikBwtnQFZEbYYGqZ/pcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE9W7-0002eH-4J; Tue, 17 Mar 2020 10:32:11 +0000
Received: from mail-eopbgr1400090.outbound.protection.outlook.com
 ([40.107.140.90] helo=JPN01-TY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE9Vx-0002df-NB; Tue, 17 Mar 2020 10:32:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TiSBUcrr4bjwM7KPwb5yat0MnuqWWqC2EepXhTV7YvlHMtTO0o3/E6ak/ObYr8r1orw8REEdhRur3syRrHYT5LDwhbrA+CaCrTzCK2LD45iRKmGjufiV1K4vBkcxDRGjF9AOG3QjD447uGZZsVGptZlBjJMRTsR31NBgMxzym58R9qE20HfaLvUqNBc5c6x+lEQWmwXayybPiA1fZTbPL5ia6J4LfUhz06y00b2Dvk0KALKiArEiZFc6Zps7HhljTRBnN04YpLlspuENLTD9ih/KOWdl+L/AWgFcwq405cX9PulyjGLcQGDX1Tkli1KYFLAco8kxOng7KiB45ZPcAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eu8UK+Jfc4WoPTx5eJLlb5g59gTziksrjZufXPvKPmg=;
 b=RlMJWXkHSpY+ww+t81hf5Ijx9yy3dH7fV1cIQOiXmd+Gn6p5m3FBmRHS0zJ2V9pmPaQNT5gd9Fgp2U8eEJ6g7eeawg7ZW6ZDE7vBn41MbpvcjRikcyxEJ4zQVt6TWMh491xXDUTTuWXvL9f7NUoRPrvIU+j8/sUPbim985h6fjiIbN2a9M9LVPB7c/40zFNNubBHtAp/2V/2abHEduFU2Ki5k0+XD8mcBPWyG0JDwoKf2wGKxD/nCiWIn0p7TqF8FMkiYTibE38bv7dH/5FGBl/M11s6Wnvx0dWCjkL/qtGOmKvDUjKqAk9cO0fX0V+f0oDMDiVTVdwche0WphIb3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eu8UK+Jfc4WoPTx5eJLlb5g59gTziksrjZufXPvKPmg=;
 b=rDNtGB7s6aqNn3RXFVeQOO9/w6kM/0AlsnrNqGyPiSpkJL87xX1iazfqosKjVmsbEt8TxDkocbOFmXYbnJTaebzVgQl+HgowSAe02jcY/LpYN7RwmNYcdJnNFWzHyzNFLQx0b5GvOP3dWprsMoJfrr/RwiVj3VAVsPW/5K3hlS8=
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com (20.179.175.203) by
 TYAPR01MB2909.jpnprd01.prod.outlook.com (20.177.104.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.15; Tue, 17 Mar 2020 10:31:59 +0000
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06]) by TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06%4]) with mapi id 15.20.2814.021; Tue, 17 Mar 2020
 10:31:58 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Lad Prabhakar <prabhakar.csengg@gmail.com>
Subject: RE: [PATCH v5 7/7] misc: pci_endpoint_test: Add Device ID for RZ/G2E
 PCIe controller
Thread-Topic: [PATCH v5 7/7] misc: pci_endpoint_test: Add Device ID for RZ/G2E
 PCIe controller
Thread-Index: AQHV7k2qI6asQ7deFUG6PTswsFNMeqhMr50A
Date: Tue, 17 Mar 2020 10:31:58 +0000
Message-ID: <TYAPR01MB45441E4766FD57506A5B9F98D8F60@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200228154122.14164-8-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20200228154122.14164-8-prabhakar.mahadev-lad.rj@bp.renesas.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com; 
x-originating-ip: [124.210.22.195]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: dc60be62-cd83-4385-3346-08d7ca5e6c4a
x-ms-traffictypediagnostic: TYAPR01MB2909:|TYAPR01MB2909:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TYAPR01MB2909D1E180965EE442FA1A72D8F60@TYAPR01MB2909.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 0345CFD558
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(39860400002)(346002)(376002)(136003)(199004)(7416002)(4326008)(2906002)(66946007)(316002)(76116006)(66476007)(66556008)(66446008)(64756008)(6916009)(9686003)(33656002)(5660300002)(55016002)(26005)(52536014)(186003)(478600001)(7696005)(6506007)(55236004)(86362001)(81156014)(8936002)(54906003)(71200400001)(81166006)(8676002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:TYAPR01MB2909;
 H:TYAPR01MB4544.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: v+Z6XA03ak9zirdqR98LV5G+L6woEeK3tSMU7Cezr3QhlfhAKRNAhFPorBbWIObzUNDWIVpa/Ub8ik8terMAqDxEcgjI7tyKRwCL6msl7Rmw+R/h1CO0Z9+FUkMzz+ITMvTD/hY6CF/4B53MjvB9z5BDkf1cIY/ttJ5f2Gw3FplPNgk6Hk7h0y8URqidbYmXkXhzl9yePfem6i1zxKu8VC3hgDqE5ogDDldSRBlo7EwpFBSpF9sXeP65+Q5EIKgobYt0QQ40WQcmEnSynsat7PmLtGRCCzAu1BN44fquSYVQY+HSqt0zBS+G/ytYgE5N0c7oTXVCoGkcKUg+07+64I6Z6ARAgqNz7rQmkT2BltHgi9mw4sXTbTwi9MymY/00i4MUh4jJy6oFoK53cuYiJBhOIumO7LHAny5m/8jOYgXBXcUROw/AS4SnC6KYTXzR
x-ms-exchange-antispam-messagedata: cn++2yLtz0+nAfPMwGGSSxwW1dv+kEoIVupTtAz1fLbl+b4mwgFwvVYfo7tR1uWjxZ6M3DRdhjXtYSH3rgf6AgRJtWW9Xc0t9c7i0qA2NHiVIFqF4ICQrrvy0bb7N4vZ9wufkF73AGM3tisqKFfUOw==
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc60be62-cd83-4385-3346-08d7ca5e6c4a
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2020 10:31:58.6804 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v6960+RUidK/DpGaBZTNvwjs9iSgZN1Xex9OkltPpzWMxmsF4+s/40+5ynpAbA2XMbkJdUhs/B6IyHhtND8L3y3xz++l1KaUKVlB+c/qvV0GbGpvyFn+fmp+T7/wk/Lj
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB2909
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_033201_756641_50E920E1 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.140.90 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Will Deacon <will@kernel.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 Jingoo Han <jingoohan1@gmail.com>, Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar-san,

Thank you for the patch!

> From: Lad Prabhakar, Sent: Saturday, February 29, 2020 12:41 AM
> 
> Add RZ/G2E in pci_device_id table so that pci-epf-test can be used for
> testing PCIe EP in RZ/G2E.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  drivers/misc/pci_endpoint_test.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/misc/pci_endpoint_test.c b/drivers/misc/pci_endpoint_test.c
> index a5e3170..3c84e9a 100644
> --- a/drivers/misc/pci_endpoint_test.c
> +++ b/drivers/misc/pci_endpoint_test.c
> @@ -66,6 +66,8 @@
> 
>  #define PCI_DEVICE_ID_TI_AM654			0xb00c
> 
> +#define PCI_DEVICE_ID_RENESAS_RZG2E		0x002d

This define should be in include/linux/pci_ids.h, and adding
the define should be separated.
Also, I think "R8A774C0" is better than "RZG2E".

Best regards,
Yoshihiro Shimoda

>  #define is_am654_pci_dev(pdev)		\
>  		((pdev)->device == PCI_DEVICE_ID_TI_AM654)
> 
> @@ -797,6 +799,7 @@ static const struct pci_device_id pci_endpoint_test_tbl[] = {
>  	{ PCI_DEVICE(PCI_VENDOR_ID_TI, PCI_DEVICE_ID_TI_AM654),
>  	  .driver_data = (kernel_ulong_t)&am654_data
>  	},
> +	{ PCI_DEVICE(PCI_VENDOR_ID_RENESAS, PCI_DEVICE_ID_RENESAS_RZG2E) },
>  	{ }
>  };
>  MODULE_DEVICE_TABLE(pci, pci_endpoint_test_tbl);
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

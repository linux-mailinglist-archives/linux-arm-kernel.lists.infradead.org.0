Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E84219D292
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 10:46:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lGEEfPko3GmrRUbo8s6peCsF+Y6Njm6bOYnowFBEnEc=; b=ARJNGfcUSsiRXw
	yt6kPaWcxDnS69hpJ0f9F11ndsghfoDOq55wR7TiK6Zboc4i1wDgH2RFsNw6XseYQfmzKkWY70g77
	zZVI9De8dI9EwM2ANQ8eD4WgyDEK9mi6RRHFNqaXDZZkAnhcmC15U6NZvel8IdaFUUVkuM2/CqysS
	OS4NqkeAEzyUaVdrO2gXWhWe0bkBoXPAa4kf4ZDvDbvIqVGJxaexY46zX8B0k0CLo9HWsBwBzjmmh
	BgUquedhTmInQmW4Iosd1ppCoL9BsVHFWgIDt0Gev5Ji9x5LhgE8fFzeEBG/EsmvBBZlbJ135tp6b
	pUXY0Slbd6bHmvCCjoRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKHyF-0000Fo-On; Fri, 03 Apr 2020 08:46:35 +0000
Received: from mail-eopbgr1400123.outbound.protection.outlook.com
 ([40.107.140.123] helo=JPN01-TY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKHxk-0008ON-B9; Fri, 03 Apr 2020 08:46:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nr/V3asjqMduLVCyc0ueWORVQwaCVblk+hSp3t9GeNWzqJtqZ32CnO6X4xPCNySKn0tbU4B+JbXS6OIjS/JAFzkk4OHmilQz1uiQSVUI5WpZJ6A+W6hPZ9Q3BULVbzt8x97Z9XO72Qs00vw6H/PvBqsIb22O6KHR1jxtUlu1PJJa2JwPEUDTggf7nApogfIXSVi9eKp7+qqo1sqn3KTTX5frsbuPg8XeoZ444whqXuTdAvn1/zo5mdVHXS3xu7vi90dhmWZWofPv7RsKdLk16K4QU5+Hm2MZRuAXB96AESp3I07pxERrTcvI7H2fjt4qUjAzr0zeL5RBeMEWOb9JhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N42OdNkqK4bOsQO0Ggz3XzzkvnH3BcwgXjGhbVe8U8Q=;
 b=m/rBLjjAD/DCPHX5499n4IEz27115y38krZZXG72MxXuW1z81pjzuV22eagOYt7K4coCJUMX81HpUxBJAy293L3QawIEU5A0OFmYkf9gV4ophIFI1nCXJQS+dqwzltQBLNZ+Adsg+LdWvKt2IUhcr7Kq3ycvM0lrAVaFFSJ2T1V1sg+wWKBPEt+WSKaMww1cn7DGzdzoQtXLKOv0TuMRau8ONelA0MEZvwu4pHTAMU/e8HXuCM7t4ylv3t8o+SHCHhIL5vSp9ohVsvKUWwQxrVvgNH9U4uz9Sj8MnzPhjroSDTafSyctimkWbupoCrbocxlloHnWB8COcdUjCHaXrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N42OdNkqK4bOsQO0Ggz3XzzkvnH3BcwgXjGhbVe8U8Q=;
 b=EjFlSsOUZu5KDHqaVXjL6X6w61hp5OkFy9VKZo9YyT8Gk+T5uLWMEwEGMaF7uDBoWh2KAl7oY6L1oqaeyYFgvXJW5MYt8AHFbhbP7wNk3WlHFSMrh3nhllqRGgMYQI1eHekNzkFog6KKPw7a0t7oc6evFxT78yR3T/fP1UmgJ3c=
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com (20.179.175.203) by
 TYAPR01MB4958.jpnprd01.prod.outlook.com (20.179.186.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Fri, 3 Apr 2020 08:46:01 +0000
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06]) by TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06%4]) with mapi id 15.20.2878.017; Fri, 3 Apr 2020
 08:46:01 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, Bjorn
 Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus
 Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Marek Vasut
 <marek.vasut+renesas@gmail.com>, "linux-pci@vger.kernel.org"
 <linux-pci@vger.kernel.org>
Subject: RE: [PATCH v6 09/11] PCI: Add Renesas R8A774C0 device ID
Thread-Topic: [PATCH v6 09/11] PCI: Add Renesas R8A774C0 device ID
Thread-Index: AQHWCSZ+0p3wXypTI0ic4GUPb70TfahnFeXQ
Date: Fri, 3 Apr 2020 08:46:01 +0000
Message-ID: <TYAPR01MB454419FA48A7B700E8F627DDD8C70@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <1585856319-4380-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1585856319-4380-10-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1585856319-4380-10-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com; 
x-originating-ip: [124.210.22.195]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 11e895f9-8d2d-46d6-7a28-08d7d7ab6fde
x-ms-traffictypediagnostic: TYAPR01MB4958:|TYAPR01MB4958:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TYAPR01MB4958E85D132633B3DE711618D8C70@TYAPR01MB4958.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 0362BF9FDB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:TYAPR01MB4544.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(136003)(376002)(346002)(39860400002)(366004)(396003)(55236004)(110136005)(107886003)(5660300002)(7696005)(2906002)(8676002)(186003)(9686003)(86362001)(71200400001)(81166006)(66476007)(64756008)(76116006)(54906003)(4326008)(66446008)(6506007)(8936002)(55016002)(66556008)(558084003)(81156014)(316002)(66946007)(33656002)(52536014)(7416002)(478600001)(26005)(921003)(1121003);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EkE99+6GdfL5u4/wVTBUXPRhFL0d1uO0V4sEMz+/udklClDTQ/IlfOQAOMNET2C6PHPEcokYHWBolkLXFn4QLoQGInGhdOAyU4iKg34f4II3DnE0LSObkSA74/e+2gpUzKWh6pPYmjYLz6cNIfLd5LHH7LA6AhWvkhDeZAs/Vlqc1DhJyttTQl9BNoPBlOS4GA4eH4t5zXskxI5Hm7zvgQDtHtvVIN9w5PobZiyxM6F4lYzgPl7/Hk7W0+4wirW5eC1gXOu5rKcx8p23ZMYqZZR/R0MZZYeArZrJKwM+Zuo4OD+ub+hYA+y0fgM/HetSEk8t7FFtxfdJMPXOUs/BhzKTajMM7tpHl0ZtBwJP26OCwLFgMV+ZbzH+bdYYopGSCVRH+7qsx2h0EdxGHgyDe0bKwdUxVKN1eYMUIVsq9Yxejd/yGGytLI6UosEjp4srBmVGWt0zigNq09L6C1lf5meirG3zED/wicybUvhZuCvqKkyzlxod75yNOYNyR/e/
x-ms-exchange-antispam-messagedata: DXf7p/NqWiwiVfaimAcx+YFPSSvwBA1f17LNuvVyncuDiKHwU9unDjj3X+55uYcuejYhgwdVhTDCH+Y4HDk+0pZ6IM1qBImCpMhiPjYP9FqsEE1Zz2qbnWTyQin6X7FHbRoGOmS7CvfFzMGuHLYuYQ==
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11e895f9-8d2d-46d6-7a28-08d7d7ab6fde
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2020 08:46:01.0336 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QdvUtspfL0YH382ihlTae2nua9qdkIZJkmxOJM3s6PmyE5I0a/5VXT3xstcek0KoipFTNf0T7JKF/9qRSghBjWibA4YChYDCEPBbxMnU+SCdT9H9ZVLilj3gLwx72j5G
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB4958
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_014604_397846_C0DAFB05 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.140.123 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Chris Paterson <Chris.Paterson2@renesas.com>, Heiko Stuebner <heiko@sntech.de>,
 Arnd Bergmann <arnd@arndb.de>, Jingoo Han <jingoohan1@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Frank Rowand <frowand.list@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Tom Joseph <tjoseph@cadence.com>, Simon Horman <horms@verge.net.au>,
 Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar-san,

> From: Lad Prabhakar, Sent: Friday, April 3, 2020 4:39 AM
> 
> Add R8A774C0 device ID so that this can be used by
> pci_endpoint_test driver.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Thank you for the patch!

Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>

Best regards,
Yoshihiro Shimoda


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

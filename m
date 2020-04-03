Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C5719D1C5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 10:06:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MQ195WFyDvQ8TOeQ5u0zNSSwUFeXZXPsYpQU1eMqeNw=; b=rV3nHaEHdIis4D
	DTKjfzTDOI2IA6pzho8xl5uLUCLbu6/vD2hIyrt00OseUI54Ak5aSVN1Gs/cYkh2UZPJnEVkm8o01
	RcHxIwOYXF0unDG5z7Dkj0gCyuH/4KF9LYV8+QJULJrwX1u70sRaR89pvUlfz4YVPVnc0VbyXuGgG
	J8TYrvEouimpy6fq+ZQoA0R6rgcmT3DN/t7JGgM+Mi6s6cNHNNwhDDy4lmKlzJsu0vidgHL87FqlR
	F3RFRoF/hsMZ2LJIMEmbkz8EZnJQ0D3jOGu6CyoQpzYDy+LOruVQs2dXGkkeXbcjgMHf3uHxnjU/y
	Uut2aeTpLZ/v6VkzusuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKHLa-0007AF-4F; Fri, 03 Apr 2020 08:06:38 +0000
Received: from mail-eopbgr1400114.outbound.protection.outlook.com
 ([40.107.140.114] helo=JPN01-TY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKHLS-00079c-K5; Fri, 03 Apr 2020 08:06:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gTsM5q1dAGVMEJWEA7sgATm6UqWkfzsBNXPhIToTHQdmt4EnZQ/krifkS8RHOapvn156dDcoPnkKRvUTfGxe6TTKhE97nVkmknyGTvPGRA51TZ0MUFCUmCkfIH31OaNV+0vCOHTzqEMecdHr6EX9xa6IakL3VkPUUmiRMYPqwzBv7cdMhA1A2lRAp9loIBYfsq7DV0mmL6UZTdOeA3GbZwulM9lSZ7LHfSXDT3WMGyXdJCc93+GZcJEKh/cpZsSoASf6l4LlN4JsnNO65lxWEITIAA1UprMUq50dUEiwVfxeHXH+taqqKh/EEnuBQhObw5/fbEAVA7KJMKQlbVYWxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2iHNw+p9CFliqPw4gSClcSVJhGgbxb3uy6TZhYpqEbU=;
 b=ZMobhzB/rkPNNC9D0HmkGN3tTxMVXN2eRT3t04uDoak6tJtrFSu16SjLzB6U2puFXY+a3PaotyD2nt/UqGPiYw/vWXNwJB820z8fcY+qPauHWZ8gzk2emhoqCsXEFm519UhKGHvT9KGuE1wAUxxCox4WIja+5oFJ3LLrYkfptp/ZY4PpWD3cjOT4QSmzdo5iG8/DB+IjQxRKzrb0i1wWZ4FLYcmvrzTNMzzPJu+P8QYPTDABmew9ahPSCLm447Yc1ubhHOu4uifsVYtGQjY6ETVnanFCLswJ9vWx/nzXF5CrZM0MhfP9LGorZFjlNsq8WGXbiyvNgOalCjwz2YdFGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2iHNw+p9CFliqPw4gSClcSVJhGgbxb3uy6TZhYpqEbU=;
 b=m2NuhdsQC3+MuoyT0l58zu2+3vIb4gCgkbt2n2xZHvJoLi4WiR96CHZfp4w1tTPr8Z79iJmBlaa1WSwaLRPz/ixvSzOdskvM8/o7ZYeg0Ys9nBDTRwj+zCnlELCQG8DReTl97l+XZII022vmFRqhOjdvbbiuycrYWGcCeDVywvo=
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com (20.179.175.203) by
 TYAPR01MB4287.jpnprd01.prod.outlook.com (20.179.173.76) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Fri, 3 Apr 2020 08:06:26 +0000
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06]) by TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06%4]) with mapi id 15.20.2878.017; Fri, 3 Apr 2020
 08:06:26 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, Bjorn
 Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus
 Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Marek Vasut
 <marek.vasut+renesas@gmail.com>, "linux-pci@vger.kernel.org"
 <linux-pci@vger.kernel.org>
Subject: RE: [PATCH v6 04/11] PCI: rcar: Move shareable code to a common file
Thread-Topic: [PATCH v6 04/11] PCI: rcar: Move shareable code to a common file
Thread-Index: AQHWCSZoqgaKoB6XHkeyCAu/SQjsSKhnCvuQ
Date: Fri, 3 Apr 2020 08:06:26 +0000
Message-ID: <TYAPR01MB45447612B5784FDF633FA327D8C70@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <1585856319-4380-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1585856319-4380-5-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1585856319-4380-5-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com; 
x-originating-ip: [124.210.22.195]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 50a35fff-a627-479d-1358-08d7d7a5e88f
x-ms-traffictypediagnostic: TYAPR01MB4287:|TYAPR01MB4287:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TYAPR01MB428700CC1832571D33516B41D8C70@TYAPR01MB4287.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0362BF9FDB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:TYAPR01MB4544.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(376002)(366004)(346002)(396003)(136003)(39860400002)(4744005)(478600001)(4326008)(55016002)(7696005)(54906003)(316002)(186003)(71200400001)(5660300002)(110136005)(8676002)(86362001)(8936002)(64756008)(66446008)(66556008)(107886003)(81156014)(66476007)(2906002)(55236004)(26005)(9686003)(76116006)(52536014)(33656002)(66946007)(81166006)(6506007)(7416002)(921003)(1121003);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6PAWEiNWemXu5o4DcAwYDqdAQqTlxIrddMZlkXRZoM5nwRX04QP8zoTuOTdgyMwkDT9XFrekKm9+jnWuVqtdApKtGJMZCJcm8Yyy3DurKcEdQZNBJ/LsKk2qNIcMGJsmOZvt6XftJkdDvoGyF+ctsDS0tIfc29f5rpDLohXTH/NlckFL76aEQFPSemA1111WeVfuetIEVoSazuvPHU9SErFopbM+aiYokuYMZOyDUUXWiOghJfjQVkE6GwCsHrMgO1qYGtQR7vCyca28uoU/FfT2E0hMjeFnmdPfTwaaPucqX0bRA8IJxOiNKj6FC3B4OtlMcKct0CZlJ5jGj+eycfBF8beJ0gca8AZ47trjJoVq7IFn5n/lkFgr4UShzVPFP/nONsKd8zlzDS+9/WY0609K9s4AVRTUa5kUV9UjYQkCtv4j3ZKzKqQOQHWLkNQVj1OaVpfOOLJK4wyN45dOXW2wwdq2pylaWPeP5WNc24yJwD6N3FPELAeJWcR3f+yd
x-ms-exchange-antispam-messagedata: jZUkQhXqDwwtIDzgUNtGMFuPUKGqhfTlWgG4kgwsV0afxkzi5FRbOZqlAiCIo6+FhPqd+5Y9ZlvvklSVrur2cZJQvDCIPUtdu9Ti9tNV6b6UA0Z2dp+9yphCMejfT5uRkW+hGClMsgqVYf6zGZrnQw==
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50a35fff-a627-479d-1358-08d7d7a5e88f
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2020 08:06:26.5641 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6GP3nrgo0y6VMAVLZVlQ4glJBeEyjiGwA2uJvTJgVxTucqbUTKJB6V1VVFRZbG9RCom2zlMUH+Wm6pnpxnVJDtqBbfqsbzasbX20RRVAifYhBsQQF18BTKZCLRP/ES9b
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB4287
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_010630_658347_CD2BF447 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.140.114 listed in list.dnswl.org]
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
> This patch moves sharable code to common file pcie-rcar.c and the #defines
> to pcie-rcar.h so that the common code can be reused with endpoint driver.
> There are no functional changes with this patch for the host controller
> driver.
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

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E57B187A86
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 08:32:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bfeUT5dmFsEMJYwWA9pJfXS0xSxOTDe1+ZNIWvmN9UY=; b=eAFyaNU6pGYPVK
	+jUHzBN5/oCQBPzIqpA6MSatp13RhabWPzvh+x6Qt3MaJNKE1k+tk63AiXdCCqfKN+ggUK0uttqw+
	vYNdfvLSgC+C/4BBH4dL2hupguwPr8u35e2yDHpVs8FtKfIg8a6w6nhmdcq2nrUn/c/6MFH0BOSRA
	tgQ1SEnxhQePbdOHl6mzg1nHEpBUy9D02e/u9N9dOUd/U8ixHkNAWF2w1rK6IkYU9FKmsdjPZp513
	dKRyjcJ5kzUxPOdeZ7ienJauqwjnl6y8NlK1YNO8S72rHUx1/o9aLxLBSlFAdveDnENQB3TM6WsJv
	o2JbL3v4PnWKAN3C59uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE6hl-0006Bb-67; Tue, 17 Mar 2020 07:32:01 +0000
Received: from mail-eopbgr1410094.outbound.protection.outlook.com
 ([40.107.141.94] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE6hP-00060x-HI; Tue, 17 Mar 2020 07:31:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J3WijfjHKXnm7peRdfXNelNkUVLkmnZNOexY1sYi19o98P5+Ebxkj3SSNUqg5vBTbR5HJ5Rkp7OkwXWf7NdG3aNcXCQQ6Lh2ZBZQx1gMo38Xb9wXA7Xnl2GbWAcWuewm1kVV3aDjdxlaBm+OICWx4z64uSMnw+EjwGSwFun6u9LJCV6u07cjqX5gGN4B4pM9UY4waNfJI1r3ZtSiVjYfflwmSPDyX0VT5j5vy0gev4ALuSP8v9bfJN2k8dS/QCemYHjpjavKbALSC6YzZBpWE0Af5XnE44Rl5+wphW9J4aBfJFdaG2DRw8VBG0FkAxQOUfxCpa/aDEjt48a0NYvKRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KZlu8doWsEAtzvwPUT6qKWOCHIjBTQpDhp2z+v4aUTQ=;
 b=TS9v0lTfPjHNNJkDwRzBMWpS5YD6eGKMXSE8NYGoueaVJpGTsaBmsoQMdnAfjY/cNdtWOXvN8jWrlma+CotglkPYdTwX+V9wdmCboyqZx1W8ShjjtNfoazGaTaFARuL1CHgfuvkID2MwlLer3Z6TldK7ivFF6Iz2ELJDwEHFjoCiljvGssbWV0i94cT7iusfWD1tYyqeaf9vQITyCyIfnYyjRNDEQZ5ZtsSY8sTT4T0ui29TxoU4XoT8inwBgtw1lO/ONEDXKCOBZQbC5/0MIysP03bh/nfa9jpGKxEmRrHoZUg1k3WaBebJ13o1KuLKOZxBVfsRhrLJuQYH4ZzpMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KZlu8doWsEAtzvwPUT6qKWOCHIjBTQpDhp2z+v4aUTQ=;
 b=B2fO/9KeggWBRwbDX2ChAGrWY7UntMWGJoz+KD/9msTMif4OHRWYL/9mciXOCw8lRq4JFWGYPLvFAoZTX7poSnW44lvZd/GC+8M+Q1b5ta3wzjZjULfC+GFKBJmz6Y0MT/bwvcLkj+DXvWFQjQU+gh+U1ba3LetaPL6OYRJGMlI=
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com (20.179.175.203) by
 TYAPR01MB2925.jpnprd01.prod.outlook.com (20.177.103.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Tue, 17 Mar 2020 07:31:25 +0000
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06]) by TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06%4]) with mapi id 15.20.2814.021; Tue, 17 Mar 2020
 07:31:25 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Lad Prabhakar <prabhakar.csengg@gmail.com>
Subject: RE: [PATCH v5 3/7] PCI: rcar: Fix calculating mask for PCIEPAMR
 register
Thread-Topic: [PATCH v5 3/7] PCI: rcar: Fix calculating mask for PCIEPAMR
 register
Thread-Index: AQHV7k2hxh1UWQe7gUC78mciysp7oahMfYuA
Date: Tue, 17 Mar 2020 07:31:24 +0000
Message-ID: <TYAPR01MB454464006DE4D6547EB19443D8F60@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200228154122.14164-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20200228154122.14164-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com; 
x-originating-ip: [124.210.22.195]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c40bab91-4a24-4186-b97f-08d7ca4532d5
x-ms-traffictypediagnostic: TYAPR01MB2925:|TYAPR01MB2925:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TYAPR01MB292560A71E0E75850070EDEFD8F60@TYAPR01MB2925.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0345CFD558
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(136003)(396003)(376002)(346002)(366004)(199004)(26005)(186003)(7696005)(55236004)(478600001)(33656002)(316002)(6916009)(4326008)(7416002)(71200400001)(8936002)(81166006)(81156014)(8676002)(54906003)(6506007)(86362001)(66556008)(76116006)(9686003)(52536014)(2906002)(66446008)(5660300002)(55016002)(64756008)(66476007)(66946007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:TYAPR01MB2925;
 H:TYAPR01MB4544.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QItKDRMGxxJk/LzRWxzMgXvpyNefoyeUESI3YRid/1Dqjw9RlnHHzXqC5rOgcHZQQkleKMgHRJEjf2a+m2oEkUzl5GoK2G0pleG8kStZDJuuJiUE/CkqIipJFg1VNJXj3A5qb+pTe8kfSxy41VQAIDMs/sgXsGSjBJMjX3dF8lnDnlOsudliMozoAF5N++RskZoMtZgG6i5SNvMH1Ru6V/5wVBGhU7yzc7KCZU22dB3W1XY3MhGh+g4jaUTtufvIu4LkAa3SMEgh/gssN83iRkx2D9itzXc6ECBivTXBks6V2vzbl9PW5OQGD+JWpNrxV7eQhAoteVayypCN1QFuqs8KpzU7JZYhXFPy/AbxHNWvouljPJsEjG9cT+Jtqz3w/yFMp2cbLP+sxPMHkImOhwut58nP8Zp31bm7kJyz9nDbS9jApJHknHqqAXD+Z9gq
x-ms-exchange-antispam-messagedata: U6uhQRPXIFlJp0xF8xlzCnIMEhjQAhmwL71dXH2r1313wHMPfb2OtZajpmTiUqPvB/WRPEjD80RCc9EToVqyPJOK/VvRK+x4TI/BSUaJEIGmmeoJyVC+sVSPS/KxK5uo/PnzkdCZ5pJFFLcMMYLr2Q==
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c40bab91-4a24-4186-b97f-08d7ca4532d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2020 07:31:24.8647 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NAYgwXmL1WkFsRrf5ujGtVCPSIsda+cvEvzlwFgc/4zzyLJudp3qP/5pKN9NUwHw63OXcO110dL6KIOUOrah547JL5sgdvWNQ6JmWv9mAGsBjC57aKfwmdW4gc35Ru84
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB2925
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_003151_482642_980B031F 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.141.94 listed in list.dnswl.org]
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
> The mask value was calculated incorrectly for PCIEPAMR register if the
> size was less than 128 bytes. Fix this issue by adding a check on size.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  drivers/pci/controller/pcie-rcar.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/pcie-rcar.c b/drivers/pci/controller/pcie-rcar.c
> index 41275f9..90d47b21 100644
> --- a/drivers/pci/controller/pcie-rcar.c
> +++ b/drivers/pci/controller/pcie-rcar.c
> @@ -75,7 +75,10 @@ void rcar_pcie_set_outbound(int win, void __iomem *base,
>  	 * keeps things pretty simple.
>  	 */
>  	size = resource_size(res);
> -	mask = (roundup_pow_of_two(size) / SZ_128) - 1;
> +	if (size > 128)
> +		mask = (roundup_pow_of_two(size) / SZ_128) - 1;
> +	else
> +		mask = 0x0;
>  	rcar_pci_write_reg(base, mask << 7, PCIEPAMR(win));

This patch seems OK. I think rebasing is needed though. Anyway,

Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>

Best regards,
Yoshihiro Shimoda

>  	if (res->flags & IORESOURCE_IO)
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

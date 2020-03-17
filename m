Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD234187B1F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 09:26:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PuqfK3hG1Gy5pT5yv5AhkqYGJv9UQKgg+++c1YUFn4k=; b=Au8nGAQb2g3hay
	Gj2lhSjXb3I7agBStI1Z30hRZXKcLb2j2SmFO0gdmpmGOiuxfVJLtAWp3ipYkvDkXhfpyVeD8GdwE
	Pwt70TK/34KO/zKDt6jt37J3cb5gaAND0SI8+dmla8QVNOf1OtbdUyLHooOgmKwIsmAUaoDaktNxC
	h7PaY8/EbR1gdVpxH43Ds6YONbXIQTSb6mlGkYsXFrvjDDFNQsDkDoIFN2+ZIbHa7l13WuhKhHGdt
	jVHFCeo8gj5SszdETS9l6yB4rO5EQx0dP5G+Od7P5f1djoGdVz/LSXI29pxdGhZ3Jl/yj+TfUkHRc
	0ctXUp0D34iZW8IDwNpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE7YH-0001og-Ds; Tue, 17 Mar 2020 08:26:17 +0000
Received: from mail-eopbgr1400099.outbound.protection.outlook.com
 ([40.107.140.99] helo=JPN01-TY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE7Y9-0001nV-7y; Tue, 17 Mar 2020 08:26:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZKlyewpyvE9GtjntPtFDSAmOg9Dt7R857VqxRBkVf1WHk3pAhDb9M6C0IbYxE3cMJ1VDUvePk09EXAJURBRYNU6KIaowqx5GIWvx4E3y/wwX9OQgisSFAoy8Ryzr8QMA7OWkh8GCF1pI3GTmqaJSpbgBI1OCb+j0WzJL/Eza5TDtn7l/wmITpnSqwAqUaSj8DqMCT6uTG0N9ihg1sceTjefrkEShhnMzflxKcBQatLRBdtIymLKgWLZBMIx//I/sbBZ/+Q1PFfjlZdNnyLIjy3v6byuUs77R8dpljd50YSJk4QG8rlua7DGpazX0QOncyoHTizsDlMWgm9pi6FEuEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BPmcOlrb+yKUg/weZuB9bCyL075WJYW3h6SzJ8jlSIk=;
 b=WGlJ8ZmwsbLq5axrJwKgbOagtPeVXEDrR76XfvKHT+mXUL5mKnfMAiEdNDuCpMp4vDHXiLxfbKL4w86fCcMX2Z9PXZLQaq8rB3AKVSizwhWWi6yqOZZ4u19V7MXGfWf42eS8G9bY6PyPU19gFVhC7ylzfuiox46CsfoTeNJP48nl8zkzOQbRX1FUQEmHIZJ3B65n6Tfaapr5IV63m/JlBL9sLnvBEm+VkhyGUBQyR+UsLPaalVMzDlsbr33DyKh3mLYtFwV11JjYI04CAGEXq24id9Me2BIGNtXn5OsuL/p6MYktbn+Si40hMdvsxtpftAaIj0DvFP2T/0rKXUmk/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BPmcOlrb+yKUg/weZuB9bCyL075WJYW3h6SzJ8jlSIk=;
 b=Fs497W/R9O9rc8yQL1NiWI/xDXB1fCqswlATrATmnG+lJlq0Lj9UiFXEYeXblDV6h4c5DF/rotAY6/rOTQVyqeeM7bY5PSyIj0wcUsATtTiwYRjim34LrpT3/zLo6RMDsaAqIq6BJ14GdfBmk6+Lwj85VpAL1fUx18+eJW7ZNfM=
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com (20.179.175.203) by
 TYAPR01MB3213.jpnprd01.prod.outlook.com (20.177.104.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.16; Tue, 17 Mar 2020 08:26:03 +0000
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06]) by TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06%4]) with mapi id 15.20.2814.021; Tue, 17 Mar 2020
 08:26:03 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Lad Prabhakar <prabhakar.csengg@gmail.com>
Subject: RE: [PATCH v5 5/7] dt-bindings: PCI: rcar: Add bindings for R-Car
 PCIe endpoint controller
Thread-Topic: [PATCH v5 5/7] dt-bindings: PCI: rcar: Add bindings for R-Car
 PCIe endpoint controller
Thread-Index: AQHV7k2mHX0IeWzmbUuqL/cidPXc16hMjZhw
Date: Tue, 17 Mar 2020 08:26:03 +0000
Message-ID: <TYAPR01MB454466B8451E3115D8A7DFB7D8F60@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200228154122.14164-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20200228154122.14164-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com; 
x-originating-ip: [124.210.22.195]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 40f9e958-e883-4431-5168-08d7ca4cd4d2
x-ms-traffictypediagnostic: TYAPR01MB3213:|TYAPR01MB3213:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TYAPR01MB3213D0CB519558870D56BF0FD8F60@TYAPR01MB3213.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-forefront-prvs: 0345CFD558
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(396003)(366004)(136003)(346002)(376002)(199004)(33656002)(52536014)(8936002)(55016002)(5660300002)(4326008)(64756008)(9686003)(26005)(186003)(86362001)(2906002)(8676002)(66476007)(76116006)(66946007)(81156014)(66556008)(81166006)(66446008)(478600001)(7416002)(558084003)(6916009)(54906003)(7696005)(71200400001)(6506007)(55236004)(316002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:TYAPR01MB3213;
 H:TYAPR01MB4544.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sUP2WRCSrmCT6B1OnBLOt5bGDTtxR/U5eJQcpyk8Pbwc1Fn4SEXwO/mXY0itdaDSRG5a+e+rBEp2rza2Auce5Vks63f1rew4j54hRB2PhTUhjPlMNh9btDY6jfWFwWWwjIGo4x9Wg6S7A/FECW2emIETwPqo/R3O7+43IixeHuv6JSj41hdkBz1e83b8sv/fVqtVqOodnHpXaH2DdOl2QziUF7t/PVZaH/dDoXvFTu3FkNFXAiB+i2+XhZS4nVh7yROYMeQ+IBhqxReFPTqqXjwSR2x6kkcxzaJbhA0+PbQQR8LOCHDqn+LuzvjZtXumjG3Qng0s7KtfDVlF5hPcIii4hbizIzw6VknTxdO6cQf7CmEBtR3YJ5UykwSbeL9PtldiBAabUD7RPZGYmmjewUxjuiGITfMOGzhMifgT45Df87HLrcnvy9fkGGpcQcaG
x-ms-exchange-antispam-messagedata: nPz+KD4K74cmcwqaO3a0XU8r0gIQNhMLKks3YAtYZellB3K/NocEQobWkDJrmcN0fAMlGqDfDeWD3q5E19hYP9gmwhLVVT/+qsgfFBoXa3GWDD3Qelygo3oH0NfIEJXbsF+4TH8izMyDVyJ1QPQraA==
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40f9e958-e883-4431-5168-08d7ca4cd4d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2020 08:26:03.0654 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AEKg5toFkrBKfz+kdF84oWoV3nR1G6DMm4T5UFA66MhY9gKq4bjo6/Gv0D9zoUlNxci9CL0CYvkulni7TSOBvAeWUGQGx6hTQ3RQ0rHzcCnNr1OH1GHsjze3578YHReO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB3213
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_012609_286943_0212117A 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.140.99 listed in list.dnswl.org]
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
 Marek Vasut <marek.vasut+renesas@gmail.com>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar-san,

Thank you for the patch!

> From: Lad Prabhakar, Sent: Saturday, February 29, 2020 12:41 AM
> 
> This patch adds the bindings for the R-Car PCIe endpoint driver.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>

Best regards,
Yoshihiro Shimoda


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE011B6DBD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 08:02:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KrDwwzadojgaaN6NelHxupFdumbcQxELnsBY85NGjYI=; b=vEMt0Xp8yvJkAg
	4FyWZO96gPrVHiwgzSGC4tf9JFa0aqjjgPW0lRDYXLqqNRFI127RTlLZjmwitlQoFnxXNLdGdewKc
	n5wjComdl90bHO6Cecr8Cs8N/sgi4jpOIP3DeFMqluU9qAMSZ7mRxm3aekETJWVEPEG85/jr3JWFC
	ERo+hirwJ15jG0T/QSkiyHwksBdM6jQGfIpLRy90FxpQ79TJw5WU6+6pJd+Ry/Poal8nBhnjobbhg
	N3Y1H4mSirdU9+mWCq4YG1agJ1LJTAFNX1gtGKzir9KiVp6t8uRjS7i/9Wx4Qo1I1DJEAp+GvS/ZI
	0EESon+Yu+eS+VWT6sTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRrPY-0007Xk-8e; Fri, 24 Apr 2020 06:02:04 +0000
Received: from mail-eopbgr1400125.outbound.protection.outlook.com
 ([40.107.140.125] helo=JPN01-TY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRrPL-0007Vx-FH; Fri, 24 Apr 2020 06:01:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nQAMrMY7pD0cbMYCYfgEVYhfdVP3UMTLIM6+N8+uTebG6jB/ws/uKzxfd/ck9gCPHZp1aKBooh31EHBNyDrLmMUt+J5j5X8a2Vp8CDcrPJBbnrUz6RThaiKXCLcJxGiNse72+S/PIklJq3fe2xbsV+sgyX9pza2NCjkj1itXeqIRoLzWiyrNaCRo5O094Vsse3BuUSXO+/k9pD03WpRGlsEf+946A3LX+MVYn2C28roaKCdi44eeCCeTypYu/U3iNUB05XpZc2PDY6bvSnU9VBI67uJRbpLPCEyU1HjWuhxoXxkBPAqtOVgbLAXSq+B0VFFgcNIRPaXyNEt/p2VRJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/PwUgbZMCrXhG3RhfopGwqpGYI59vTsBDdCmPrwJmhg=;
 b=bysXUmagBaCzgMbGZY9HJ7bQd9u7hNZFL1mg063JzYnIBpPMcp4PWlD4BJF/96Wh7eGkAEkeiVyBSVnDCU1VrQwu05VryYmY+W78OjFf4xYcAsQDstn/ew0+/rHayr8WXGbssqrzPaQRnT7m7/wqMZcaXOKp2oXNdAd2NCor/4NS/8agvja/hFTi2+u6+qPkrouYfVP2p5/+rEHxTuQG/HBDa0FElDi4+Q7/qB2Bs2OWu4/u+oJCpwbxCsmbuCftuKXrMScDajxa0qAE2DTaFkWtesejpGvrcGM9HYt6Rbrfwu1fPN0vOeaAZEbcFI+yXOFBMo3d9UTNEQJvMJCjVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/PwUgbZMCrXhG3RhfopGwqpGYI59vTsBDdCmPrwJmhg=;
 b=G9sbWt7F9s0IxZURGs/QYdeJYzKNSQ7fMNpo7ZvGazmBmTg5RocuT9mUja1cbNkWzp4dFx6ggZFY/hk9s07fRRn6NiTAwvHgOIhRQPsLIz9XfbRoeyg/f1GRfw5A8Prv2Yl+vHwV0ahzkvC0t611ltNS9BJ09i7HJyzQn+pREfE=
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com (20.179.175.203) by
 TYAPR01MB3343.jpnprd01.prod.outlook.com (20.178.136.84) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13; Fri, 24 Apr 2020 06:01:48 +0000
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06]) by TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06%4]) with mapi id 15.20.2937.020; Fri, 24 Apr 2020
 06:01:48 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, Kishon
 Vijay Abraham I <kishon@ti.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Bjorn Helgaas <bhelgaas@google.com>, Rob Herring
 <robh+dt@kernel.org>, Andrew Murray <amurray@thegoodpenguin.co.uk>, Tom
 Joseph <tjoseph@cadence.com>, Jingoo Han <jingoohan1@gmail.com>, Gustavo
 Pimentel <gustavo.pimentel@synopsys.com>, Marek Vasut
 <marek.vasut+renesas@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>, Heiko
 Stuebner <heiko@sntech.de>
Subject: RE: [PATCH v9 7/8] PCI: rcar: Add endpoint mode support
Thread-Topic: [PATCH v9 7/8] PCI: rcar: Add endpoint mode support
Thread-Index: AQHWGZzLICAcEkFDPkCpmtDZc1hYrqiHyDlA
Date: Fri, 24 Apr 2020 06:01:48 +0000
Message-ID: <TYAPR01MB454466465C5E89E57262E911D8D00@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <1587666159-6035-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1587666159-6035-8-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1587666159-6035-8-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com; 
x-originating-ip: [124.210.22.195]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e9ba4607-e44c-4936-4950-08d7e814fa19
x-ms-traffictypediagnostic: TYAPR01MB3343:|TYAPR01MB3343:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TYAPR01MB334373454D6C192C1D8B9147D8D00@TYAPR01MB3343.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2733;
x-forefront-prvs: 03838E948C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:TYAPR01MB4544.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(396003)(39860400002)(376002)(346002)(366004)(316002)(52536014)(2906002)(110136005)(4326008)(66946007)(7696005)(107886003)(6506007)(558084003)(64756008)(55236004)(55016002)(66476007)(54906003)(86362001)(66446008)(8676002)(66556008)(76116006)(186003)(5660300002)(71200400001)(8936002)(478600001)(9686003)(33656002)(81156014)(7416002)(26005)(921003);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Tzm5O3LpoTFqX6FtFBn5yp7uaZSsjXHctRnKq8XqNG4LFb2HzgTQlMQhaceX3I6CTqliPCI127EFH3JH0RkPBwECVcid+8j9+lKmdd+aLyGex3MLs2inZT+yHsaFUX9yjh1RokyctcBEZXa2LrKPNvNV08YuOcMgIbmi51fs5opI4Iotn/QFkyaC8Y8JsZOCwAPFyi+9FbswMALJtuWhUgw4nIS90Y8HStJqdniHVHfNYaqJTD+4j6aG3d1WjlaevLixcIAssgsflfUtPZZcugCYo23Xmk9JSr3Kp3ijd+8tSVOXttyoPI9k6rc0m6+HJua8FTO0UKdDozHMXSIc7y4gjLcS/rUL1VqFw2iWFISnWkvIinDy4BMhT8ryRkIpHSliWvobN1WK9FsxnT1Ik0VQVnGodXx1FlVDGMtDZaIS8P32BFK3PM0dxXHaDWwWa1kleyV1IQKdM9uwUuRnHG0pup7LP6iYVLN2X6WKc6k=
x-ms-exchange-antispam-messagedata: TkuTStUg3ow9pN49psf6P5/Id5N/yBu5wzoV1L9F0ax4UcN6XUmzQOk9vrYFS81GIjRvjVccBE7hfgAuuCrFfdST8SgBzjGwHb6kOz28oECmRklPjYk+6Tfa1k9Rm0HfsXeULE+4Y/XU+5XzXvpSpQ==
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9ba4607-e44c-4936-4950-08d7e814fa19
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2020 06:01:48.7606 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6nFDgI0faCvv+lSXfWICEwCHlgUrthS6focMqySsjEDxZhtlKqW7dyfUWrL2L62Jmdg8bDbi0R4KLB6noo/I+4eaCgCQNmIdQLHitmMMiGHpC4vfT573KDHCsnks0vcS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB3343
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_230151_508716_20D70303 
X-CRM114-Status: UNSURE (   7.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.140.125 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar-san,

> From: Lad Prabhakar, Sent: Friday, April 24, 2020 3:23 AM
> 
> Add support for R-Car PCIe controller to work in endpoint mode.
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

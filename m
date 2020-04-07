Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 912371A04DB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 04:25:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7eKHkTVCk17Cq/Fj7VWxHVSCq8w2C01FYZTCpCFouUM=; b=RvOiBV1vbje4/r
	2ijm8qaoH1HPDQuP9jEk2XdlnPocMl1LKA5DcXZhD7skwmNVdgfrG5R2LocThM17xpM6pcYpZ2UC/
	D+7xqMpbF23r/2aVA0XOY9KB+jsMYqOmNXcIjrqQfkGwh40Tu8kAEa4Y/U693Wg62ObK1eLg9NnJe
	z0GfmO7pve/Dc3Jz5Lj1MXx/+5AObfTeqK4m4TGra3Zb8OldPlm0z7QEQyuZfzai+BBpOcPZPoHWI
	KWBFSMl+xclDWlenapZ2DkkUL6RSZ3VUehd0x1LvLEa8kD5E3FOi5MSAUw6h8O7XsXcsrYDLvRqs+
	kaKUBCcdg1Zu9Fggl4zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLdvd-0004Xd-5B; Tue, 07 Apr 2020 02:25:29 +0000
Received: from mail-eopbgr60068.outbound.protection.outlook.com ([40.107.6.68]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLdvV-0004Wv-Sc
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 02:25:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fJxVq4IeAahj3/x7a8BW5x1G5Gf5klyFcS9R2bWBHD1CEUgO3XIQTx5RQLThpcgxzFy3l11COzCvp4c6axfs/S76Pt3KIPUX/UTvQPMXZyIep+uJ3FOjUctbcodWuBAC7rdEOZBgQfI3jHZ18QWFXJqH+rsgMP/NFVCFTcBa81p/spk3Ui3Agjz0MBoZ0MH/WQTSnx3GPGCFbbUvGb5VX2alcfa6cBoQAhLoldeu7P3WqloHhhS57f+cthxy4u2Jl3aJAJRpxJZOdM4MNRxdpzdJholInsZouHN6QAZFxl0aybGUpqbkPmfwVjphFp7qzOukzrao2jQGxOzygy3odQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ScxOowEfTiyiGsFkDrqFYl36+e5ewe0rAGQ+mmc3X+I=;
 b=S9EnTNoZDy9krvaUUmGzp546UFZ+d+dE8yH7dLbCZWOBomMJcdk3uqnZMK34pRmbQq/qCFKwCCu7AmbS1QmLmWWlkPlIpwfNYC8kE6xWqScQLKgQX7Z3euxbkDzkOqXhvvWhQEVDIcIUcG8Bs8n3+c703OGd/igGLZmxPPTurApZpjgcjmJsuyRHERv2uo4DVa/FVynm1KnFevOny+wmJiOqufoP+WefX7IUhr1mTVDULdY9iwovhfUV/HbQWog3SbUafczXfwCcEq+3kKLBZnYyp67mXOCQwgCWCPmh+ELQMA4uYXfkd2HO7AoInlCA1mAAzb3Q0QmUsQMD1D1O+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ScxOowEfTiyiGsFkDrqFYl36+e5ewe0rAGQ+mmc3X+I=;
 b=Clf8XNvYfUUnf60aBZAYpbKsOoOTCx3KNConU+hB7Clt7sTWhk1ZlWP+XgoyagRE3++hgJQgSJbeGw6bzak3NxKGJizuDKtC9tqxfUnl65bMfssDlc6kOPTJ18kUbuFnDI8DkpsIk8eDYeAndcdnmT4NOMVjcHdWJE/cPlsqI8M=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4504.eurprd04.prod.outlook.com (2603:10a6:20b:19::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.16; Tue, 7 Apr
 2020 02:25:17 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2878.018; Tue, 7 Apr 2020
 02:25:17 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH RESEND v3 00/15] arm64: dts: imx8: architecture
 improvement and adding imx8qm support
Thread-Topic: [PATCH RESEND v3 00/15] arm64: dts: imx8: architecture
 improvement and adding imx8qm support
Thread-Index: AQHVnUT3q35gy5JegUu6TsJJk6i5iahtzKDA
Date: Tue, 7 Apr 2020 02:25:17 +0000
Message-ID: <AM6PR04MB4966440BB0F9D56977A9699180C30@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1573994635-14479-1-git-send-email-aisheng.dong@nxp.com>
In-Reply-To: <1573994635-14479-1-git-send-email-aisheng.dong@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [218.82.155.143]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 98f883c6-2614-4d3f-05eb-08d7da9ae994
x-ms-traffictypediagnostic: AM6PR04MB4504:|AM6PR04MB4504:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB4504D78E3E26B5A501C8293480C30@AM6PR04MB4504.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 036614DD9C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(366004)(346002)(136003)(39850400004)(396003)(376002)(64756008)(76116006)(8676002)(7696005)(66476007)(54906003)(6506007)(66946007)(316002)(53546011)(81166006)(52536014)(66446008)(478600001)(81156014)(33656002)(4326008)(44832011)(26005)(186003)(55016002)(110136005)(9686003)(8936002)(66556008)(86362001)(2906002)(71200400001)(5660300002)(32563001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aljGc7kL8LgRcRDn5dbzDnvFRpilRpq2DgxQ3o4MRHfrp37+wUEaZLhSDF+51EZPBKl+SSa/AfMQcRw6WEggt+SzBtx4oOW8M8X3xZ0Ztv4OOgiGDad5dQSNLBTq595r1r7hunKKDYp/eiH70fFOuBbVVW+OjrRf4cOyNYfa3hxwJOVTQO7hgLPzYZyIiJFBWxmOHKQHLpn9KZj2Ib3600PdH6Yi0SXHWBqM0RG0FNG+wW/dOu3Qv1mC5NpVkEpaUot0gnIAiHaNpyTAznVqrM+UB5ETFrYiGrkaHgB3qYgLifTxRmTf2VJcS0c7vUClc+jY1RYG+dVZOtFGIW6vip6d4vOaXB6a4ol8OGwdPwECB98UTiUF6pUYrSHPoWZvNwWpeKq87xSVw2mhahTvGwbe6cFKu16omrqDswv4bs/5+sHlYSPPKmVnfPT4hrh0rkMKPtK2h3aLpGsXHT/OlVRH34t4DD0Dg2jnnXFsB2tnTOZ7yZYew42GAsiJqcqq
x-ms-exchange-antispam-messagedata: wJ0k1P7s5yXTEXVoyj62aT2sHmDpeAxYKQRBWnr5MFUwT10j7u7tXuz288gOE7L1Nk8nCgd6init3miP/ijKiyV8hilQLoa3Z5XFMgLkUgSJ2qGemK32+WKR0KJFx75hjcsvDj4ZZKnaxJhMwDGzdA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98f883c6-2614-4d3f-05eb-08d7da9ae994
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2020 02:25:17.3646 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HJmEiGww02HoQTr3pbUhukKB4Knw5ebUJzjPkvpf7DMD03LFb1HVHdf7evCfs/vHaSf23g4KoDn8XAAroR30JA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4504
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_192521_925566_ABF3A8B2 
X-CRM114-Status: GOOD (  18.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "sboyd@kernel.org" <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

Do you have any comments about this patchset?
BTW, it depends on the latest clock patchset which is pending for quite a long time.

Regards
Aisheng

> From: Dong Aisheng <aisheng.dong@nxp.com>
> Sent: Sunday, November 17, 2019 8:44 PM
> Subject: [PATCH RESEND v3 00/15] arm64: dts: imx8: architecture improvement
> and adding imx8qm support
> 
> IMX SCU based platforms (e.g. MX8QM/MX8QXP) are comprised of a number
> of SS (Subsystems), those SS may be shared between different SoCs while most
> of them can be reused like Devices Resources, Clocks, Power domains and etc.
> 
> This patch series aims to improve the MX8 architecture to comply with the HW
> design to save a lot of duplicated codes and benefits us a better maintainability
> and scalability in the future.
> 
> This patch series depends on another clk new binding series:
> 
> NOTE: for the missing undocumented compatible strings for the new SoC
> IMX8QM in this patch series. It will be sent in another patch series later.
> 
> ChangeLog:
> v2->v3:
>  * use clock-indices property instead of bit-offset property suggested by Shawn
> Guo
>  * rebase to latest shawn/for-next
> v1->v2:
>  * change to the new two cells scu clock binding, so original adding scu clocks
>    patches were removed.
>  * Move scu pd node above clk node
> 
> Dong Aisheng (15):
>   arm64: dts: imx8qxp: add fallback compatible string for scu pd
>   arm64: dts: imx8qxp: move scu pd node before scu clock node
>   arm64: dts: imx8qxp: orginize dts in subsystems
>   arm64: dts: imx8: add lsio lpcg clocks
>   arm64: dts: imx8: add conn lpcg clocks
>   arm64: dts: imx8: add adma lpcg clocks
>   arm64: dts: imx8: switch to two cell scu clock binding
>   arm64: dts: imx8: switch to new lpcg clock binding
>   arm64: dts: imx8qm: add lsio ss support
>   arm64: dts: imx8qm: add conn ss support
>   arm64: dts: imx8: split adma ss into dma and audio ss
>   arm64: dts: imx8qm: add dma ss support
>   arm64: dts: imx: add imx8qm common dts file
>   arm64: dts: imx: add imx8qm mek support
>   arm64: defconfig: add imx8qm mek support
> 
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  .../boot/dts/freescale/imx8-ss-adma.dtsi      |   8 +
>  .../boot/dts/freescale/imx8-ss-audio.dtsi     |  68 +++
>  .../boot/dts/freescale/imx8-ss-conn.dtsi      | 187 ++++++++
>  .../arm64/boot/dts/freescale/imx8-ss-ddr.dtsi |  19
> +  .../arm64/boot/dts/freescale/imx8-ss-dma.dtsi | 210 +++++++++
>  .../boot/dts/freescale/imx8-ss-lsio.dtsi      | 311 +++++++++++++
>  arch/arm64/boot/dts/freescale/imx8qm-mek.dts  | 144 ++++++
>  .../boot/dts/freescale/imx8qm-ss-conn.dtsi    |  21 +
>  .../boot/dts/freescale/imx8qm-ss-dma.dtsi     |  51 +++
>  .../boot/dts/freescale/imx8qm-ss-lsio.dtsi    |  61 +++
>  arch/arm64/boot/dts/freescale/imx8qm.dtsi     | 180 ++++++++
>  .../boot/dts/freescale/imx8qxp-ai_ml.dts      |  20 +-
>  .../freescale/imx8qxp-colibri-eval-v3.dtsi    |   8 +-
>  .../boot/dts/freescale/imx8qxp-colibri.dtsi   |  12 +-
>  arch/arm64/boot/dts/freescale/imx8qxp-mek.dts |  12 +-
>  .../boot/dts/freescale/imx8qxp-ss-adma.dtsi   |  37 ++
>  .../boot/dts/freescale/imx8qxp-ss-conn.dtsi   |  21 +
>  .../boot/dts/freescale/imx8qxp-ss-lsio.dtsi   |  61 +++
>  arch/arm64/boot/dts/freescale/imx8qxp.dtsi    | 425 ++----------------
>  arch/arm64/configs/defconfig                  |   1 +
>  21 files changed, 1432 insertions(+), 426 deletions(-)  create mode 100644
> arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-ddr.dtsi
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-mek.dts
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-ss-conn.dtsi
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-ss-lsio.dtsi
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8qm.dtsi
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-ss-conn.dtsi
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-ss-lsio.dtsi
> 
> --
> 2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

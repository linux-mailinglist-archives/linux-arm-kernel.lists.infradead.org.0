Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D72371FCAFB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 12:35:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d2TkWJeYLBviDWVb1azzif5NSU2h2pwEp4dolVSXHhA=; b=U1Z4AWQ/VG3kLv
	AVUnKlFdDjOrdwgbWg6dKf73Vdo2tOBXb5anOwa2HGBk5DZP9WLv6c6vpjdddV8ezKLuXOcgLqdru
	ZhNY3touUmdn8XYorA6UU+8hgixaGgV333VuA874s8KLWwAJyEDmpMqjSpR6sgpv/RDWfQwdhjWQa
	y7NfR7mDyDglOO4grklpOlF8Stk3N9aHRsgBEry2cLkAaQrck0WQMIY2snLxGtkET3/RWfZL6v2Dm
	R0wfth6Yrx3CD8K6FygbiMGrUtatk/wJ1savfpHaDdt1oiqAZ1E+aUs8ialFYnku0mZgVPiL07aE0
	HGZ/GA/2Wz1/4ciVL1nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlVPH-0008PT-DW; Wed, 17 Jun 2020 10:34:59 +0000
Received: from mail-eopbgr80058.outbound.protection.outlook.com ([40.107.8.58]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlVP7-0008Og-Gl
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 10:34:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lGRlf7iaXUelfeKM/yPUqs4BomYYm5IrjJXenVBdbDYpxh+a6/U65SAJ+h89sxlI2ZIuQl5KnCndqJMjMAnU66eGKwjetSeEAi4UkN5MpBf0Qy5mh3LBUT49JMH6YbS/cup1z3MAHZGitn5e4oFmOhuK40Ep2d6n/sl9frwstfJO0GGTfj3fEmIro1t4e0KsAXBnavO1Bi6mhyIXISX0PZuYu6jfwGWhIQEyWxs17okl+z09XkgblaHWzhQuBXjPgEGlsng+9uAXSEo96lsmAQC0J7Dy79YlcAplP8v3agdsCyh4oltN6eJzNjEdXxb71A/xUWUbNWybW8fTJwmOKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O3EurD+TM0RnBE6S6o8LIahDye1Qr24o29M91Lp9fa8=;
 b=DB5G6q8YRU1jcQse7WyrBFFfDXrc3AMtN2BQBJGkzibWsj9ekRLaIaiIEyrYk6O5r5mC9Yjd5H6wwBxWHLJzBnXS0hHNAXi2UvYPUkLR1p9W2yIc9rjl1c2KC2hmC0hGypWu/zo8M28FVngU4J6lME2glgTB+Vc2XIOeNC5CMvty97WNwtPFrbpO7QgAWTPK2L92f4sZ+LYLSSE04KUqXwsvFoHRjdhKc7yvSwkqbQz2pYMqQQf51LZ2EtLkyz6eNPU7ribtFjLCIP6ctiHwXlBv1/Sjq1wmBDjo/GautEf019YayLxEfQtFfQAwuKzEoTIvHQVtuP4jj45JYMsvmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O3EurD+TM0RnBE6S6o8LIahDye1Qr24o29M91Lp9fa8=;
 b=JcgyJLxvvjBO8G3Y70e/CJ8tqcJmXRb0sU1remTSGsX4QJidqmIPLCSts4RJvFYimwrMY/P/6b7BGWKQAQJtbTT/ulZfhX3/I2t1NulhMcbNVL9vn7jqHt/LsPTMpuW1EoCrdaSR5Iccyc4RGDrC000av34cVrpUSkDbatWEE3A=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5959.eurprd04.prod.outlook.com (2603:10a6:20b:9c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18; Wed, 17 Jun
 2020 10:34:45 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3088.028; Wed, 17 Jun 2020
 10:34:45 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "linux@armlinux.org.uk"
 <linux@armlinux.org.uk>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "oleksandr.suvorov@toradex.com"
 <oleksandr.suvorov@toradex.com>, Stefan Agner <stefan.agner@toradex.com>,
 "arnd@arndb.de" <arnd@arndb.de>, Abel Vesa <abel.vesa@nxp.com>, Peng Fan
 <peng.fan@nxp.com>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "allison@lohutok.net" <allison@lohutok.net>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "info@metux.net" <info@metux.net>, Leonard
 Crestez <leonard.crestez@nxp.com>, Andy Duan <fugang.duan@nxp.com>, Daniel
 Baluta <daniel.baluta@nxp.com>, "yuehaibing@huawei.com"
 <yuehaibing@huawei.com>, "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>
Subject: RE: [PATCH V2 2/9] ARM: imx: Select MXC_CLK for ARCH_MXC
Thread-Topic: [PATCH V2 2/9] ARM: imx: Select MXC_CLK for ARCH_MXC
Thread-Index: AQHWPjGjLfNEVvc8HUmhxuTW0pJGcKjcqIMg
Date: Wed, 17 Jun 2020 10:34:45 +0000
Message-ID: <AM6PR04MB4966F4A5E0276AEDB5605260809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1591687933-19495-1-git-send-email-Anson.Huang@nxp.com>
 <1591687933-19495-3-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1591687933-19495-3-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6d53e41f-0c4f-45c7-37bb-08d812aa0db4
x-ms-traffictypediagnostic: AM6PR04MB5959:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB5959B84957AB3CC45BA9A64D809A0@AM6PR04MB5959.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:854;
x-forefront-prvs: 04371797A5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aI7xI4yu7zftKFZ/cztIc+gp+pNGr1AQrRRxeHtzKiq2XWlMiX+nYPBdp5I8yU4nFdEQoxt2AIbXvt48rbBNArkRpUXhfzuQndr+pcsa/VOlYEW3mjwwCkYSfpDnvMFnyr3l493jK+ItZ+R49loX0qtE7V4j6GqrimUegiJyN//WyPfemA7c0fOQlvXyGnG3Usgu4aRjX9mzb4RAlOMsff0z05mXRu+ScjERTn+v5crzIQLOgb+Lsxei/LktJIS6TxNIje0WcWRs5pRhwmgmZSBjIdT0klOsl8H3bh4vP9yFndDAkY5MdQD13nzTVBQAL6bzfSyoLN50Af8X1RX1FboBIlvFrmKqPcv85CBOvm5rbU6sBM9gQk94tnmvPfWkNZeoGrE5h6pEde7Gvc8pKQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(136003)(346002)(396003)(39860400002)(83380400001)(4326008)(66946007)(52536014)(44832011)(26005)(86362001)(5660300002)(64756008)(66476007)(76116006)(66446008)(66556008)(6506007)(110136005)(8676002)(8936002)(7416002)(316002)(7696005)(478600001)(9686003)(55016002)(71200400001)(2906002)(4744005)(186003)(33656002)(921003)(21314003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: RtgtYQWQEm+YOg+jGrevBj8FV+29pFYTjLEuUFsOyjwYgF10owyTQv9KhHMXAwuRFUmlh9fdDRpRZZ4i7o2oq+f5oIRuLsrXVJybpKTtYtABUbvrIBSbb5F3Zh0XIsSv+Dh29GV5syRYP8MWo0tl0rlL+SjHyt+ifB37uZNbhc+U7bWGK78MM4k2FjgTUQ5q1eIaHWhVD8WAIbX63YukwxMa+Tzhf2NbqHt63V0FjUOyyjWrrFwZDQYL68awtv9l4MITp+gu+TFJOF20Zk9rIyp8suG8qdfoMBL/oTIDwfqX8FSBgBYyaHsym28bakmaAeH7ISQX/BhBjLKJefy4WKfOwijU5RMbAR+Y4heZ4nSbscWgIq49SHxryZ+RAOMjnXC1ZoA3X2EqJVDeoqLRbIlQY/3e1fMJ72N7qL/jO/Od1gCaEHhX/GVcgP4827a8/g+jVMvtMaZ+j0mSehOayhhmCdITxoukdhB2TBQIAc9hHq5Fd6lC/TZoCrHstK3i
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d53e41f-0c4f-45c7-37bb-08d812aa0db4
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2020 10:34:45.6090 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kgAOhnb0KEG/RGz4o+qGVTho1etLQOXmzOeL69T603bAM9c9EGswPF9+AWE8XdRmB7a6llmA2TM66ZFk1iQjfA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5959
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_033449_558870_67B61016 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.58 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.58 listed in wl.mailspike.net]
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson Huang <Anson.Huang@nxp.com>
> Sent: Tuesday, June 9, 2020 3:32 PM
> 
> i.MX common clock drivers may support module build, so it is NOT selected by
> default, for ARCH_MXC ARMv7 platforms, need to select it manually to make
> build pass.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Can't the original def_xxx work?

config MXC_CLK
        tristate
        def_tristate ARCH_MXC

Regards
Aisheng

> ---
> No change.
> ---
>  arch/arm/mach-imx/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig index
> e7d7b90..47b10d2 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -4,6 +4,7 @@ menuconfig ARCH_MXC
>  	depends on ARCH_MULTI_V4_V5 || ARCH_MULTI_V6_V7 ||
> ARM_SINGLE_ARMV7M
>  	select ARCH_SUPPORTS_BIG_ENDIAN
>  	select CLKSRC_IMX_GPT
> +	select MXC_CLK
>  	select GENERIC_IRQ_CHIP
>  	select GPIOLIB
>  	select PINCTRL
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

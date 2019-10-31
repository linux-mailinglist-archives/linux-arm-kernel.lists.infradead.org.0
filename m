Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86FA3EA850
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 01:39:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PdxPUG5lTWI2k/9583AFTOrSUjy/FHr8bkShGHozTmk=; b=Gkm8ccbutN9TK3
	lkCYDDJKHanwiRHpF2x7she6fU5b/TCTSuhzTJltwCPu7CcPQJE0vlhRW6QcEo1Lg4lEKsWQgB8DN
	9DgdU0fb7Q8cOkfPGfyRy5imSjcHrdTeneI5D3gZ8hp1Z0U/QT1coskW6dl/nOWHOEgMTTa3rn/Tg
	tGJrgRHLJCgOk52A5qpixXu3B57ZWhLQCiNFW68B8fps6fZnoKHIsB6aDoBTJat6J/StYKpsFsAjZ
	HPmlUUS6729CFTPdIQ6gIBE/dC/zjPnMspZkkA08uW2Bp/53yrOC7yHhMGJ32DYH5kVy+xQP+d/Be
	EzP2xXvJEkyeDBafSjMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPyUY-00022l-EG; Thu, 31 Oct 2019 00:39:10 +0000
Received: from mail-eopbgr50062.outbound.protection.outlook.com ([40.107.5.62]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPyUQ-000229-4v
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 00:39:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dAeEcjbZlLNdgvsgaq0SXSfBzOVfFzlA1AsJlI0YtYkvLWo131p7Vsg6Dn6gOM4dX1fUzI53WQOAoQVhxJzE94GbLFzuEGN5fOl6pK0NagNOfw+ldWLfCMaY00mWm8YTUfI8ZGXTJe4n4Gibx/+IQ3KP8QAcFNrnf/+GZwayXkKDG0Wz8rsBeK7k4oCkyMcajGeWwRb3EpZfO/fBxjq57SNV3wxY9DKnfZ3peqMnUngLLnB8Wg9BRtkrA88H2tUGnFJhVJIKj2/YVKNltDuumAunWFLT8GBjJCIVDTxf9ovobZpyHYqN/QMuYE9Wx0xEwrguHRlJa509IX2NW77xPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kPh/al13WmMDAcCnTRa2FyjLaEBQYGYYBFBr7I7TlHg=;
 b=DLW45kHBSz/u3PbH2UyOpH2MJjDjYdxpV/enrKH/cWzJvry+gBCRPYnuS6dSve/9lL7zIpAm2okF26SCVghSA5Xfy5XdrGpJOPOIuxoso2BJ0K4He9iwLXcm/6vEkd/oBzKe5ZInO6c5VORofSyEnXb9Lmy13ukPsr1vWKjLnHw+U4RcL73nU1zaw9Y6ygtI6IVGyYo9YnYmMLwwrNOKDm7Zj5WfsGg/+ABmSnbQzBanDnOn5+PGhtfmDV0pUADXo8mirtfPIOQZ39yfM5x9nDNcEW8ePliII8dlPd6hh00tKiNV204Yta9rVxSRqCDYnHs9zbJ3tDOCVUlFv0Dyiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kPh/al13WmMDAcCnTRa2FyjLaEBQYGYYBFBr7I7TlHg=;
 b=GcZNB+m2LW9xEVAKF+6BySeMPVNPEWcIJEK65/Gv0vU6wQxQn5zfxr6/Hs6hXsq4TntVGFio8jDb/BQtqwF7+DcDxTHHe71vyGXWSo28+/GHCkyqIwmL9ZL7SAs8txiLdfrL0YYBqjJJ/Tf2B4i3njvBlV35b/6UwCooJJX6ZKg=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3948.eurprd04.prod.outlook.com (52.134.70.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.22; Thu, 31 Oct 2019 00:38:56 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0%6]) with mapi id 15.20.2387.025; Thu, 31 Oct 2019
 00:38:56 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: RE: [PATCH] ARM: dts: imx7ulp-evk: Use APLL_PFD1 as usdhc's clock
 source
Thread-Topic: [PATCH] ARM: dts: imx7ulp-evk: Use APLL_PFD1 as usdhc's clock
 source
Thread-Index: AQHVjkCC3ogaxYgXmk2GcsFLOZjtv6dxmV+AgAJRHqA=
Date: Thu, 31 Oct 2019 00:38:55 +0000
Message-ID: <DB3PR0402MB391696BD522A252C9E386F0BF5630@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1572343372-6303-1-git-send-email-Anson.Huang@nxp.com>
 <CAOMZO5CnBCbM2uhDpgUgRVXkVsPTDw27CxZUp3+FMZi+7DH1XQ@mail.gmail.com>
In-Reply-To: <CAOMZO5CnBCbM2uhDpgUgRVXkVsPTDw27CxZUp3+FMZi+7DH1XQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 898f49bc-107f-4396-a3ee-08d75d9ab647
x-ms-traffictypediagnostic: DB3PR0402MB3948:|DB3PR0402MB3948:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB39484F5E5200636B0CA511A9F5630@DB3PR0402MB3948.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 02070414A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(366004)(376002)(39860400002)(396003)(189003)(199004)(9686003)(8676002)(44832011)(4326008)(6246003)(305945005)(99286004)(7696005)(6436002)(74316002)(2906002)(66066001)(81166006)(316002)(8936002)(54906003)(7736002)(76176011)(25786009)(5660300002)(76116006)(66476007)(66446008)(66556008)(6116002)(64756008)(256004)(6916009)(55016002)(229853002)(11346002)(478600001)(476003)(71190400001)(52536014)(3846002)(486006)(33656002)(14454004)(81156014)(446003)(102836004)(71200400001)(186003)(66946007)(26005)(53546011)(6506007)(86362001)(1411001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3948;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KvTlvNpDUuBR4iPkUw2b/SnPblCY8f8Wu5Ja4mNgEpE8iPqTk1YrH37y4OxnqIKffvY4e4Ud5exgOxfF3u+QWMfp5t3pGSPN3NiMEm4D9OmkfeiG5XsD1NHDKSQw3nBF3GLB/GYIHs1t1CrSXw6BoB9tPePPd4ai2cHaTSFaenPE89oLNojJ7fbe57wGCjaChaWtDC1cy9tRKsV05EpqO6L2YByQMQTr7u4MWcVeJk0q/gqgKf8dAfRKHgKkYKS8ZPUl2ZK8jm5f8e6w1rpKrB2pStRACCLp4PEYuEZ43LBJTKq49KB9LH+TdFI8P9tk5GyrnBEHoP6lgUnBn4YdqhBgrqkh7a0pO1i62hr4zijNFclvcKt+lDRpkNKdjEoGBPtIc7BWggkkK4w+cGWgaGnJCjg1T33GzlRASHS8eSVcJmaNQ3V3NCn2sJkZMLdh
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 898f49bc-107f-4396-a3ee-08d75d9ab647
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2019 00:38:55.7861 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Fs2mqTOZUtokOGL3nd37v3Llgs2jl38IyHoLJ8ruq3jqmjWmdCx2mEpkeI/3/KtLZGVjCPItcVqQOX6KYTUmRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3948
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_173902_351267_D3364429 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.62 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, "open list:OPEN FIRMWARE AND FLATTENED
 DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, "moderated
 list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Fabio

> On Tue, Oct 29, 2019 at 7:06 AM Anson Huang <Anson.Huang@nxp.com>
> wrote:
> >
> > i.MX7ULP does NOT support runtime switching clock source for PCC,
> > APLL_PFD1 by default is usdhc's clock source, so just use it in kernel
> > to avoid below kernel dump during kernel boot up and make sure kernel
> > can boot up with SD root file-system.
> >
> > [    3.035892] Loading compiled-in X.509 certificates
> > [    3.136301] sdhci-esdhc-imx 40370000.mmc: Got CD GPIO
> > [    3.242886] mmc0: Reset 0x1 never completed.
> > [    3.247190] mmc0: sdhci: ============ SDHCI REGISTER DUMP
> ===========
> > [    3.253751] mmc0: sdhci: Sys addr:  0x00000000 | Version:  0x00000002
> > [    3.260218] mmc0: sdhci: Blk size:  0x00000200 | Blk cnt:  0x00000001
> > [    3.266775] mmc0: sdhci: Argument:  0x00009a64 | Trn mode:
> 0x00000000
> > [    3.273333] mmc0: sdhci: Present:   0x00088088 | Host ctl: 0x00000002
> > [    3.279794] mmc0: sdhci: Power:     0x00000000 | Blk gap:  0x00000080
> > [    3.286350] mmc0: sdhci: Wake-up:   0x00000008 | Clock:    0x0000007f
> > [    3.292901] mmc0: sdhci: Timeout:   0x0000008c | Int stat: 0x00000000
> > [    3.299364] mmc0: sdhci: Int enab:  0x007f010b | Sig enab: 0x00000000
> > [    3.305918] mmc0: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00008402
> > [    3.312471] mmc0: sdhci: Caps:      0x07eb0000 | Caps_1:   0x0000b400
> > [    3.318934] mmc0: sdhci: Cmd:       0x0000113a | Max curr: 0x00ffffff
> > [    3.325488] mmc0: sdhci: Resp[0]:   0x00000900 | Resp[1]:  0x0039b37f
> > [    3.332040] mmc0: sdhci: Resp[2]:   0x325b5900 | Resp[3]:  0x00400e00
> > [    3.338501] mmc0: sdhci: Host ctl2: 0x00000000
> > [    3.343051] mmc0: sdhci:
> ============================================
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> Thanks, with this patch applied I can get SD card rootfs to get mounted:
> 
> Tested-by: Fabio Estevam <festevam@gmail.com>
> 
> I think this fix deserves a Fixes tag so that it can be backported to older
> kernels.

Will add fix tag in V2, thanks.

Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

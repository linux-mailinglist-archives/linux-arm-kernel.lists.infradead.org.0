Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DBDA185D67
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 15:11:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wduBjvk/2RezAzj3+yXMzzGbrbcYnge82cdgCIc4/4E=; b=Vc8ziGoSr6e0sS
	/hOsIYbKuf3zLCkmGTtsLBPHvqub8jOwvwYEASRkIUao368x5PUZHBbzwv0CILX4pSI/V1bTUvHHC
	/n7kywfqHJpO6lDllknuNng4QFIkAo5AmNnAPzsN7OfLw6Wl8S3HF/f6aQ60tjR0xYrgD/VqnjZgN
	B57su2ckcztGRltZjt7fxLJghEbEDw5E6yliHbwy6X7ot7bKQxbeJGQNmT/EfDGcw9xSNyj6A2pqz
	LXvfC1vjtuDHJVpxblHftOlvEErXIOnqjquhXeXq8kyKYHRwNRtKdNY4ukWCdgzi4qFhDtRxp+6iH
	PQzcw8QZ8LDEEhXwqFCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDTyl-000570-Ce; Sun, 15 Mar 2020 14:10:59 +0000
Received: from mail-ve1eur01on0618.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::618]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDTyZ-00056P-0G
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 14:10:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fi++fl8r3bqAAL828k0CPpr71t/nwaSGKQRS4n4v4OJwK9r0m3lFe8PcKj8wUUI1bPcmMt84oIvd4uR9VANFwRmdK3OeutXuNnuQRp5KarIt9XtDvuvkaYmx6VuGS4etPlHUbnHIG0mR6LQqvKKPykDzdIjctiSZIIQa4FfAM05FPGMAXzBkj3tGJxfTChNgHohvSF8lJ9jykk7QlILYgEqjLDFD9M5lfYSDbpKRByPhdch8QVhFHYLJPE0fCQIa0NkZ1DVtIo2f0x6Bo/f8uEVs4MmCmnHOlrHgdqOrD/K6mi2xwVPKpIF+dhIaD/QijDjEbT+Kc+uc2VonwH3FxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z2EO4HknYgLt17MtUj/YEDOIKP1mlVfNFunxOKxfpjI=;
 b=QRqDFUrIbqyz4r+sxKXUPFgnH56tWId5uTtwNNfUjb7fhtk/po8sg3eXfITwkMppXJw59C2AIwhrdCxkspFo++OjJ4BkR2TSXD6sPoXZzenHk1RsBSeCp01mH/A+v7vltGkos/4MM+QftU4yBrHlLT4uiNG404zRL6QSkGuxbaJFKM+O/5OR75uxHE9Xui9yooy3+JcwtTPPeqYgafavRtBDGzn+pEWYSFDi2+UW1rc6h3UOuUT05gPM1/YtVBiaXKepu2aP1WswtnZyJ18hfbpPmDfZ8LydrC8KkC1tzuQlScD8Z+aqi43phvLucvaDVAW6WAAv5eKt78lK5Wz+6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z2EO4HknYgLt17MtUj/YEDOIKP1mlVfNFunxOKxfpjI=;
 b=KR48iTYMTenLjBZ2Ln34VaoST89iBMFuCOqCATpKukb+hce98sKCHBFdBtl7XSXRft9U4TNosC8VHt1sq1P00jSftuTWDoKOAhonehmj9rGTgelPjWeUijHlHpc3p7bb7HUZ61Mim3hK1rIJuPT+DxGeF5PsgCqklrPMFuGr8Kg=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB6066.eurprd04.prod.outlook.com (20.179.33.204) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.13; Sun, 15 Mar 2020 14:10:40 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::8cb2:6bfa:b5bc:2ae3]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::8cb2:6bfa:b5bc:2ae3%7]) with mapi id 15.20.2814.021; Sun, 15 Mar 2020
 14:10:40 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>, Stephen Boyd
 <sboyd@kernel.org>
Subject: RE: [PATCH V6 00/12] clk: imx8: add new clock binding for better pm
 support
Thread-Topic: [PATCH V6 00/12] clk: imx8: add new clock binding for better pm
 support
Thread-Index: AQHV+tC4KM3qOryI0kukDYglzXuSqahJsFvw
Date: Sun, 15 Mar 2020 14:10:39 +0000
Message-ID: <AM0PR04MB42117B51ACA7E84CDB7995F380F80@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1584279836-29825-1-git-send-email-aisheng.dong@nxp.com>
In-Reply-To: <1584279836-29825-1-git-send-email-aisheng.dong@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 479f2d35-47b4-4504-f980-08d7c8eaa44c
x-ms-traffictypediagnostic: AM0PR04MB6066:|AM0PR04MB6066:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6066F2141A6D46D9EE140C4280F80@AM0PR04MB6066.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0343AC1D30
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39850400004)(346002)(376002)(366004)(136003)(396003)(199004)(7696005)(2906002)(52536014)(6506007)(5660300002)(45080400002)(44832011)(186003)(26005)(316002)(33656002)(966005)(110136005)(54906003)(478600001)(4326008)(66556008)(64756008)(66446008)(66476007)(66946007)(76116006)(8936002)(8676002)(81156014)(81166006)(9686003)(86362001)(71200400001)(55016002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6066;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qfl11QlFhXcBUifEu5/MdktWVTRZOoYe619R9W8Q6xSZJ4d0t84RQCA1kx8n2cgE3IiJZtRSD2R0kKCp1mnYAeH1Xs0SDrSUYb0wAtYKcXTjyjocmkEl+56gaKoReibOTedmSHUCizkfJbTDWEZyzqMxfR7OWoZfC1qT8Qu3w+6q2/0bYhoNmb3ZPHQUMHYn7dbyaYYbT3qXFLvYuSP8Wz2+N6k737odQ9HXG9G0JLUub9mTlpsqkHltpi7mjFUZuMjMx83dK9+1PNQl36t2tt44yV1wBPP5gopQyaKnjxhr9yCwZI6iPaVrHCl+tBm8KkLnQrQC9PiV/Fl6+vXrw8IyD5EpO91BOUEVR5NYN4WA1G769PHS6Bf1neKqQ6CcpzgOXhcXmA9TxCMOA3DjI/95n2ss5p0nq6oVyskqFzfCiVwMDexsMcggs8L580vbo25Yi33OMLK3sPJlrlyRa9amMmie6x3JApnLs7ltfTwFQfdHLcDurD65xs+xK77lwEtKb2k+m4cTLjFKYVL9BA==
x-ms-exchange-antispam-messagedata: NPnEnNRyiTVFneNWyc5XJu/8DF1iK1K47XH8/6DPXMEnXht4H/e0A2Ue3INZNuztb1YmQYhfmeIecVVf7NP4XnFdVW7FkQmJD8Qm54eBE7XjAK23fv+dO8UvofrSPqSbdgKqFd2lMNurn/3WvTmJ1g==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 479f2d35-47b4-4504-f980-08d7c8eaa44c
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2020 14:10:39.9015 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FbrBfcjFsFbjqt49eL/E9P5h7u5rvBjYZC3SAksi0ugacBZsr9pqlqq/zXvawI8EKEXZWeU+Fuoyoa5QhT317w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_071047_408278_D3922DEC 
X-CRM114-Status: GOOD (  21.37  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:618 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.1 FORGED_SPF_HELO        No description available.
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 Oliver Graute <oliver.graute@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "dongas86@hotmail.com" <dongas86@hotmail.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen,

> From: Dong Aisheng <aisheng.dong@nxp.com>
> Sent: Sunday, March 15, 2020 9:44 PM
> 
> This patch series is a preparation for the MX8 Architecture improvement.
> As for IMX SCU based platforms like MX8QM and MX8QXP, they are comprised
> of a couple of SS(Subsystems) while most of them within the same SS can be
> shared. e.g. Clocks, Devices and etc.
> 
> However, current clock binding is using SW IDs for device tree to use which can
> cause troubles in writing the common <soc>-ss-xx.dtsi file for different SoCs.
> 
> This patch series aims to introduce a new binding which is more close to
> hardware and platform independent and can makes us write a more general
> drivers for different SCU based SoCs.
> 
> Another important thing is that on MX8, each Clock resource is associated with
> a power domain. So we have to attach that clock device to the power domain in
> order to make it work properly. Further more, the clock state will be lost when
> its power domain is completely off during suspend/resume, so we also introduce
> the clock state save&restore mechanism.
> 
> It's based on latest shanw/for-next branch.
> 
> The top commit is:
> 4559a11e48d5 Merge branch 'imx/defconfig' into for-next
> 

I carefully went through all your review comments on V4 [1] and i'm sure all of them have been addressed.
And for the V5-Resend version [2] , we didn't receive your comment.
It seems Shawn is also waiting for your feedback for the next step.
Could you help check V6?

For V6, only a minor update that added scu clk unregister if met error. As the original code does not support it,
so i added an extra patch to handle it.

[1] https://lore.kernel.org/linux-clk/AM0PR04MB421181E4376070636898906F80A10@AM0PR04MB4211.eurprd04.prod.outlook.com/t/
[2] https://patchwork.kernel.org/cover/11248249/

Regards
Aisheng

> ChangeLog:
> v5->v6:
>  * add scu clk unregister if add provider failed
> v4->v5:
>  * Address all comments from Stephen
> v3->v4:
>  * use clk-indices for LPCG to fetch each clks offset from dt
> v2->v3:
>  * change scu clk into two cells binding
>  * add clk pm patches to ease the understand of the changes
> v1->v2:
>  * SCU clock changed to one cell clock binding inspired by arm,scpi.txt
>    Documentation/devicetree/bindings/arm/arm,scpi.txt
>  * Add required power domain property
>  * Dropped PATCH 3&4 first, will send the updated version accordingly
>    after the binding is finally determined,
> 
> 
> Dong Aisheng (12):
>   dt-bindings: firmware: imx-scu: new binding to parse clocks from
>     device tree
>   dt-bindings: clock: imx-lpcg: add support to parse clocks from device
>     tree
>   clk: imx: scu: add two cells binding support
>   clk: imx: scu: bypass cpu power domains
>   clk: imx: scu: allow scu clk to take device pointer
>   clk: imx: scu: add runtime pm support
>   clk: imx: scu: add suspend/resume support
>   clk: imx: imx8qxp-lpcg: add parsing clocks from device tree
>   clk: imx: lpcg: allow lpcg clk to take device pointer
>   clk: imx: clk-imx8qxp-lpcg: add runtime pm support
>   clk: imx: lpcg: add suspend/resume support
>   clk: imx: scu: unregister clocks if add provider failed
> 
>  .../bindings/arm/freescale/fsl,scu.txt        |  12 +-
>  .../bindings/clock/imx8qxp-lpcg.txt           |  36 ++-
>  drivers/clk/imx/clk-imx8qxp-lpcg.c            | 139 +++++++++++
>  drivers/clk/imx/clk-imx8qxp.c                 | 136 ++++++-----
>  drivers/clk/imx/clk-lpcg-scu.c                |  53 +++-
>  drivers/clk/imx/clk-scu.c                     | 231 +++++++++++++++++-
>  drivers/clk/imx/clk-scu.h                     |  56 ++++-
>  include/dt-bindings/clock/imx8-lpcg.h         |  14 ++
>  include/dt-bindings/firmware/imx/rsrc.h       |  23 ++
>  9 files changed, 610 insertions(+), 90 deletions(-)  create mode 100644
> include/dt-bindings/clock/imx8-lpcg.h
> 
> --
> 2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

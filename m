Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E78D186892
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 11:05:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vDWxgCgb7eWj/ObYzY0Ac9M71Ftsok/wdO2CxLrg1Yk=; b=N1366SV8pbpQqa
	6MgcwDkoUWXK8OEtdGNFENttZcm/awgB5tfR9OtHNvpNAAwiuYrr+1YBZl24Efcgz9BBVlm2kYoIu
	JToxw6gI6EpduN08+PQ7gmJHNmQeVh2953NUvA20VERXpu/J050xBbOPWwJr/wsXHoXID5EWUv72u
	9eNrTwhGWE9lb9FBDxYz7gpCXtllzmTl2Rq483rB4kceB4k699VgL1h7sY16L8GUG8Q+fF/Cv4tmG
	YgRRqgY6gpF21q3vRi4XOR/vwYSDAJjyVjo9laCzsAn6T8CTBou6eUEnO9bH6jysR3s+ZBHXWvFFO
	GSpWeSj26T1Wxs7YkNmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDmc9-0002xA-28; Mon, 16 Mar 2020 10:04:53 +0000
Received: from mail-db8eur05on2070.outbound.protection.outlook.com
 ([40.107.20.70] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDmbx-0002w9-Jf
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 10:04:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hwJOj4TqVN3fy7uz2z8NR8X51L63BHTz0Sgd1kOQzP/+2H5mF4xS29am9QbmCzv0C/dm3XVPWJ1EuGf2Ef0xhDEyp6oazgFQb0Iomv4sLS7m3+L9CGtV/hqpoHMMNStQDMhZlQiH1oW8dC17Ou5cy5oLaLxMFOjIaLta0gTqoG+rAXmD5ZLpP9xD+ZhJzsTm6uSoHJNPBiB226FTDr94TTi8iXGhE54IBt9p1785g440Q0Gg1g12QnU+CpUg/28Fzde8kOrGS+2dj4Musf1/BycC3WW5AYn04iK3ZaZfhtm4E2RnpMNMQJzoNQSFW7C8x0G6K3AESgf/dlQfPPnWkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SBUUHG5Ozi+m8kCqRE6r2bDW+Rrkk5RR/zz3f5abcXU=;
 b=jxSYALj0Vw/RbSxYRl99M5vbZ8AYFM4fxzTGcB/ZFLL/rnJxi/FzUS4bZjlsfDAHctpOXVunENBcwuxk4KyQFmEFqZDKhKMQ07GOrvCPnqVNE5j+bOX3ZtyZ9kTDhyNWt432IcMghJo1XOoRyAzE4i/zAawWU3SCgojLmVurSIzja3qrcgGE6CeWscJ1NAVs4jIyfpoBL3w1g6/FR1EWGdvy7rku/ijXPP7LFH8LDxc8q9+DeaRBGeiEX+AnXg1OinR9sN81HOeR/xm2H6kSaU/y4sITFo4nGg5EPuzd1prml13cBfN+MjvvGR+6bAYeBP3To7P2abRW0mlSjM/9FA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SBUUHG5Ozi+m8kCqRE6r2bDW+Rrkk5RR/zz3f5abcXU=;
 b=Y1hSTzGhZ5ioxwugjb4jSJI2n60W6MCKzFK+nXcRoU7rt+CiDub0QWB759z+qnEpJYfKWqg/8JJm6pk+ZlnJ4s/9fp8QnKGiyEHZMfli7xETyGoayWqu6QFPZRwbPSONg8IiuBri0moeAeqTaCbvIbXHNW13ZCDTf/UdFXNM9AE=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB7137.eurprd04.prod.outlook.com (10.186.130.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.21; Mon, 16 Mar 2020 10:04:34 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::8cb2:6bfa:b5bc:2ae3]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::8cb2:6bfa:b5bc:2ae3%7]) with mapi id 15.20.2814.021; Mon, 16 Mar 2020
 10:04:34 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Anson Huang <anson.huang@nxp.com>
Subject: RE: [PATCH V2 1/2] arm64: dts: imx8qxp-mek: Sort labels alphabetically
Thread-Topic: [PATCH V2 1/2] arm64: dts: imx8qxp-mek: Sort labels
 alphabetically
Thread-Index: AQHV+zLkFHZY0iZYO0qE2+EkfrOYNKhKufmAgAAIpICAAAPNgIAANbiw
Date: Mon, 16 Mar 2020 10:04:34 +0000
Message-ID: <AM0PR04MB4211C02DF855F3444A839FC880F90@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1584321993-8642-1-git-send-email-Anson.Huang@nxp.com>
 <20200316060024.GG17221@dragon>
 <DB3PR0402MB3916C7F4D25024A30FF4EABDF5F90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20200316064456.GJ17221@dragon>
In-Reply-To: <20200316064456.GJ17221@dragon>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5e41bcd7-4d5d-480e-6cbe-08d7c9916ded
x-ms-traffictypediagnostic: AM0PR04MB7137:|AM0PR04MB7137:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB7137D0D0BFEDAA2AD6F16E3880F90@AM0PR04MB7137.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-forefront-prvs: 03449D5DD1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(376002)(366004)(396003)(136003)(199004)(2906002)(33656002)(4326008)(966005)(6636002)(66946007)(478600001)(66556008)(66476007)(64756008)(66446008)(86362001)(76116006)(316002)(186003)(6506007)(110136005)(54906003)(5660300002)(81166006)(7696005)(9686003)(8936002)(71200400001)(55016002)(8676002)(44832011)(81156014)(52536014)(26005)(32563001)(473944003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB7137;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1brpO2Oie0oY4ofxrdXF5m5/1+yIDFN8cjpzvL0tFOs8SWX9c+HMn3LApsPAslmx90+/vKpbOH8xIASPyQ/G00zdbUPMrsmoD5W1nBPUW5UEAVd/PnE+7o4HjPt0J52VR9RLd/yRrWIbJP8Nh9LnreLpWapQoHK9LkSe5TFQb0nG3q98KF8K4BnY8Q0Al1wCJXpXbcMoWvzolVbEQoYloniVqbKvhwCMfsTxTwH6MqdI1lWScbfI/unhIntSRge12vysAR/jNA1ja80skv0petNpnRAmJErjYVeYf1prJDRj13h4yWyhbxNHTgYEIEY//7YrCOeY/Yor03w+R22qYPFpTMRAezh3zsDKdrHOeTxtOGIi72caYiffzZzdHdjUbl+houOhsfX/BuM8HozJGjZ8/CwLThpXDgf76A07Ry7mMlx2p+jQFqov9+0oQxLiToR6C8Y8GoF8Wv8OLCSjOQXfyPhyICC/SCsJzWKl0MmBeZHZNRcBnEsCrijj/roZs7I49k39+v3cDsWRY6Wb5LDRucIlxwd/YmPs5vdNdVtLB/VFw8gdxsYXgOHoJBLqFxSTmVU2+Pbh8381LcIleF/AoYkgAvbfipeStqOYjfI=
x-ms-exchange-antispam-messagedata: YbWD0fyY0En++7+hLIfuM/vHlYAhfhtfPpCf9EEJ5eeFYsJVtXRILKmJNjzsaUO9T6QLcMn62dIobn1rMG+xVIFHYuPTkn4TuIQziGYj+6SxiOVNlEmq0biVnPIi1BuCj4xi6RnmWqIwjbtGj3QOOw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e41bcd7-4d5d-480e-6cbe-08d7c9916ded
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2020 10:04:34.7242 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kf8f1HC8MHrE1lIPuXn6l8lN1NJNCoYRstwSuGqNApTo/ZHrupAao1AJ6sj4jKe81KmIDJQIVCT3uLokFVHVgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7137
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_030441_653157_32C70309 
X-CRM114-Status: GOOD (  21.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.70 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Shawn Guo <shawnguo@kernel.org>
> Sent: Monday, March 16, 2020 2:45 PM
> 
> On Mon, Mar 16, 2020 at 06:31:21AM +0000, Anson Huang wrote:
> > Hi, Shawn
> >
> > > Subject: Re: [PATCH V2 1/2] arm64: dts: imx8qxp-mek: Sort labels
> > > alphabetically
> > >
> > > On Mon, Mar 16, 2020 at 09:26:32AM +0800, Anson Huang wrote:
> > > > Sort the labels alphabetically for consistency.
> > > >
> > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > > ---
> > > > Changes since V1:
> > > > 	- Rebase to latest branch, no code change.
> > > > ---
> > > >  arch/arm64/boot/dts/freescale/imx8qxp-mek.dts | 50
> > > > ++++++++++++++++-----------
> > > >  1 file changed, 30 insertions(+), 20 deletions(-)
> > > >
> > > > diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> > > > b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> > > > index d3d26cc..b1befdb 100644
> > > > --- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> > > > +++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> > > > @@ -30,18 +30,7 @@
> > > >  	};
> > > >  };
> > > >
> > > > -&adma_lpuart0 {
> > > > -	pinctrl-names = "default";
> > > > -	pinctrl-0 = <&pinctrl_lpuart0>;
> > > > -	status = "okay";
> > > > -};
> > > > -
> > > > -&fec1 {
> > > > -	pinctrl-names = "default";
> > > > -	pinctrl-0 = <&pinctrl_fec1>;
> > > > -	phy-mode = "rgmii-id";
> > > > -	phy-handle = <&ethphy0>;
> > > > -	fsl,magic-packet;
> > > > +&adma_dsp {
> > > >  	status = "okay";
> > > >
> > > >  	mdio {
> > >
> > > Here is a rebase issue, i.e. adma_dsp shouldn't get a mdio child node.
> > > It came from the conflict with one commit on my fixes branch.  I
> > > decided to drop the series for the coming merge window.  Let's start
> > > over again after
> > > 5.7-rc1 becomes available.
> >
> > OK, I am also confused by this conflict, I normally do the patch based
> > on your for-next branch, and I did NOT meet the conflict at all, then
> > I redo it based on your dt branch I met the conflict and fix it...
> >
> > So, do I need to resend the patch series later when 5.7-rc1 available?
> 
> You need to resend later.

Hi Shawn,

Could we hold on this patch as subsys prefix (e.g adma_) will be removed later and
devices will be embedded into each subsys dtsi?
So this re-order may become meaningless which also potentially cause a lot troubles
on the rebase of the dts re-org patch:
[RESEND,v3,00/15] arm64: dts: imx8: architecture improvement and adding imx8qm support
https://patchwork.kernel.org/cover/11248271/

Regards
Aisheng

> 
> Shawn
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

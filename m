Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 407FA11A055
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 02:06:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d69PuGc+HXmVRMoO2DkrUeYfsUldtg84qgM3QRVdJhg=; b=GrOaBAbxPvfsFT
	n2O+O+/ctftu7gx/yYLuc5MyNefRnfRWiKSUQM0eVqCtfmpPzCzNfX0qRJZrICYYTyyO0oA823x1w
	h/5fJi1vnqb4WBQKtq41YkNnktqidHOSShqbPNVcru0dPzJFgIapzpAE2ACDYQ2whuiI70UvRxOZD
	3Sv7wmClmOM1P7JIF1002Z61bjjZZVKObOVzcAv9l7NvcfFMaTPuRgK0+JIg/akRbT8k8VN5fpomr
	U06M0mJa3lchYa/DPjofWEzmMc3rhAXbLWNMCXW2vHAz1d4a+2n1/+QuRzWNRNWt7kec29yQWFsBK
	vtZ9N8McZe4qbJSTePJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieqST-0006wo-Ud; Wed, 11 Dec 2019 01:06:29 +0000
Received: from mail-ve1eur02on0618.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::618]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieqSM-0006wA-Qh
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 01:06:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FVqLXKOrQzJK2OANme7zss5w1WCYHjm1x08B8d1JXt9jjzOGdotLa88SiQWYmT69hbzRqFRzoLNtbumyXhjCiCIqiyokYHrVOJ8XshRkOv2rrSv/eUIURwAvPiS7qIT0EByQk0wqNdbo28ZZOrnTKFbwyxeV7/AkJRmqgKQRXzd6cNVIrKnAkakMl71txvHFvmFBoFGjmTCtvFPX/oucdtm3TIMG4UdsP7vlPX87y5je4IpywjpgWc/1Fytsc9AprafACibWiDJbWq7COLCA1DBRa18JAnP/DDLp5alF6Zt5t7rUQT3s+QWRWJBMnbJlORfamXFCQjO4XlPrJsCX5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lP2NOVOLsq+AI4DJZBETqqWXxPuUTGlYLuEPgi11Fc8=;
 b=Ux8VZQT99jzwUT+flkhcEzHJSwC09alhbRJ/RaZBUcOEgwW5qh8jJ47+UoFRqInsBcQ+ks2g7gaFhi+MN4y/mC5JpE+bOimv8Gk+B3XJIJy0gIYTE+lgOxcxW7Tl6f7cbO1NPPAKz7b6xJyQygjHUSvfGEF2Gq6NK2GA6omTOCQVYJTjWd7p9acwU/D1MqNs7JMzSKJfT623+9YnluDoSXPhobkrTXl6jqn85PHc4vet4CISY4XJg6hgaz2hopxAgvTiHku1tOmbQHendTR/7MvshdrRLhyJzRK1aTktq/wKaNnPWUvYquwZGVG9MQcOUPuqHrrzXAGxO4FKj17acA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lP2NOVOLsq+AI4DJZBETqqWXxPuUTGlYLuEPgi11Fc8=;
 b=T3SunRuLE2uoNcRJikVzZCJlxbTDqKXvwqStdwFuDnwmqh6HMdxcXdu7B8GHJTSo0CV1L8K6BrwSxTG68bvR2E66nJlaTxV4y74f74eE1kGA08JR6rpKqOOLzhrHxiEWOS0QmPpgw/YiMLb5hdwWcsQfhHzAjeg0zk8kTi8DrRk=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3818.eurprd04.prod.outlook.com (52.134.71.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.14; Wed, 11 Dec 2019 01:06:17 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::b5ce:fe6b:6c06:fdb1]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::b5ce:fe6b:6c06:fdb1%6]) with mapi id 15.20.2516.018; Wed, 11 Dec 2019
 01:06:17 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>
Subject: RE: [PATCH 1/3] ARM: dts: imx6ul-14x14-evk: Add sensors' GPIO
 regulator
Thread-Topic: [PATCH 1/3] ARM: dts: imx6ul-14x14-evk: Add sensors' GPIO
 regulator
Thread-Index: AQHVikhFrshNJnCYpE+PA285m4wtLae0aMuQ
Date: Wed, 11 Dec 2019 01:06:17 +0000
Message-ID: <DB3PR0402MB3916D3DB4C0CE0017FC2D4B1F55A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1571906920-29966-1-git-send-email-Anson.Huang@nxp.com>
 <VI1PR04MB7023CD288FCC57806F067FD9EE5B0@VI1PR04MB7023.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB7023CD288FCC57806F067FD9EE5B0@VI1PR04MB7023.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 15fc07c5-c717-429c-19be-08d77dd65379
x-ms-traffictypediagnostic: DB3PR0402MB3818:|DB3PR0402MB3818:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB38183E1B1397BA05D21BA1BAF55A0@DB3PR0402MB3818.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 024847EE92
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(366004)(136003)(346002)(39860400002)(199004)(189003)(4326008)(186003)(26005)(8936002)(7696005)(44832011)(55016002)(53546011)(2906002)(66556008)(64756008)(9686003)(76116006)(33656002)(66476007)(8676002)(52536014)(478600001)(66446008)(54906003)(110136005)(6506007)(81156014)(66946007)(86362001)(316002)(71200400001)(81166006)(5660300002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3818;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rK9Ow2rWuvLI5y5L7F3yKKlUdFO81DFXaG6YwzlR/wqLfbYID9cpZ+ma/IgLCEH+860w9xw/r6hmYslwNXfRjODe5Uw88ncT+9Hh1O1FIMouZ9wowmUUkQS/KuIx8lr6R3Jb4a8VKcV0tsnNM6/Bny4KSzx4shsNBv+eVlmSozjk56Z7tFp+TKy+6dOStXkIyHe37XOSEas2WErJ6xvL80oi3mIcTaJeynpdDsQvjR2boKEWRtz2reHSAcpbb1MTVos+PnJm1h8ucqVhRxO5dJuxIJskjX0U7srO80DK6KPQefkeXOeBla75LjCTYmCxwQctO27/U3bK89GUszmEdt7bfsCBgI9JoH6CCHUbFQb2gA3ZtVjsS358lR23NPzjrs8kr6ntVKWZ86JdBwwRWIC1Uy12MLr2S3u+iZcRder3ge7M8IdaWdAc4DXW+H5oX52lOti56kDo5/P3Gen/xLezBZL5Zi2bJgHLwBN2mDnUM+A5Yf5V8dHgCCaECCde
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15fc07c5-c717-429c-19be-08d77dd65379
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2019 01:06:17.1963 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BCaaHA9awY1rthJBpTjgea/HzcOllJKqIjJnocFJPVo/PyqhJG+U/O/bQ5cUwORy/ej12Qf+C/dwesh4llL3Ww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3818
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_170623_033463_8332A8F1 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:618 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FORGED_SPF_HELO        No description available.
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
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> Subject: Re: [PATCH 1/3] ARM: dts: imx6ul-14x14-evk: Add sensors' GPIO
> regulator
> 
> On 24.10.2019 11:51, Anson Huang wrote:
> > On i.MX6UL 14x14 EVK board, sensors' power are controlled by
> > GPIO5_IO02, add GPIO regulator for sensors to manage their power.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> For me this breaks network boot on imx6ul evk, relevant log snippet is this:
> 
>      fec 20b4000.ethernet eth0: Unable to connect to phy
>      IP-Config: Failed to open eth0
> 
> Looking at schematics (SPF-28616_C2.pdf) I see that SNVS_TAMPER2 pin is
> connected to PERI_PWREN which controls VPERI_3V3 which is used across
> the board:
>   * Sensors (VSENSOR_3V3)
>   * Ethernet (VENET_3V3)
>   * Bluetooth
>   * CAN
>   * Arduino header
>   * Camera
> 
> Maybe there are board revision differences? As far as I can tell this regulator
> is not specific to sensors so it should be always on.

You are correct, this regulator controls many other peripherals, I should make it always ON for now
to make sure NOT break other peripheral, and after all other peripherals controlled
by this regulator have added this regulator management, then the always ON can be
removed.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

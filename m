Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8148D14A3FA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 13:34:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f1SyHDl+pvDWdvfwvXmWK+alX7hm808S81BQRihd4SQ=; b=AI4hyN63G6Hx0J
	6yuX7EYop7++Npn89eD4UtmuV5RaYylovz8bqbdvEYb2TNgvKOwa/o2z1/u47EHLMjk/w62VWFIou
	ecfrl+MBlz3o4nnjuG4h+3H/noueW+PJ8aNTnAbQbGgFefyaf3TxzvaC4+M8iYf07ypezK4RKFKqx
	oMm9Khx29IoHW0lwUzTUpxaho/OkqFXn6iFmzoS6jRAEByKnk5h2uKeGvDCWXrgBznJRKALA3PlnL
	nM3HSBUytu0HWPLByVF3ZIz8I8tuUnFCNT7XP+jz54G/mMcyzsUgi8m5bqHPVeVLOv6XfotV1+wUd
	K4ONzjMoWD4iUFBQ1yEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw3ad-00070l-7u; Mon, 27 Jan 2020 12:34:03 +0000
Received: from mail-eopbgr50072.outbound.protection.outlook.com ([40.107.5.72]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw3aS-0006zq-Or
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 12:33:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RghuW1yvDqEqnGan/KjDXLzUw5uc2Hnf9+aayH5S0R5Jok4Ys42MBRLDQovzkzKNgrSxjMwXPyuWIoXNi4tOQZ4WE8osVQ5dWy3iKjHAxRvCRmoR8+3yDwhDoSPBposgDN9tardrLbdn1CL6rlF2xfv0dIswQBbDunQJD/k9i0duxEo9mqChT3/eCXNoUH8LDGZDEkR+/cElb1yc8mXKHc1bDePbFpFHPNH7iWdDJMYGuvEKQa/zVu+jF0d2HL4If7CiqpZ8nH8bPPtE4I89i/op5B0TYOCJGIwZRJK75PR3GSJVMkxhYmq2EBAbm0U7suz+eBU6i5J7zNv5SdBd2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rWf2tbweuAz8xqbIEizhowXSbEV7vSIVmZiS0wt9NTA=;
 b=YxYXltCKd4GrUdlYPCdQJDzz8i+H89Uy917RCaJRNXZH5xuDCyR3fW4bvoTJC1w246iSoR2T7QhAW3+n2BJwc9+Fie6d+wxFrEdRdN04/Ag17nXsAhz++GrtzirdpwnH95JFX2dsNZaZmsSSUOEL8FnuyIEcRwrMVdecuxWiQq3jC5QkTjDEbPEUdiy6GIwcfaUPX1flvDL1zt7n1NRFkAq/z6cIZFFjQ5gczvFuxQDFFXZ6NWI5tkqDQ93QUlpxpBvIRcX6lb/Sgbd0ldD/UKkDIF4t27ERQ3rx/BGVXTp0ct21ZgW7CGs68EMRMQEaPWAN+AoLkXp1hZkm0x99vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rWf2tbweuAz8xqbIEizhowXSbEV7vSIVmZiS0wt9NTA=;
 b=R+MLFr9x1swKngIXk4/weAHZVaWanouad2risrlF4rT+RHJkfnN73LLSQHIT/TFvCGy/k6ZcQ6uyLz7bu7MkObpYBpaVjju0NAhBWIJepcwKTQUP6DmQWTiOX9xM3w7o0igJCaPZk2h7KLsebtm237o2jkzwo2utg3RNO5waUbY=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4883.eurprd04.prod.outlook.com (20.176.215.204) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.22; Mon, 27 Jan 2020 12:33:50 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2665.017; Mon, 27 Jan 2020
 12:33:49 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: RE: [PATCH V2 0/5] soc: imx: increase build coverage for imx8 soc
 driver
Thread-Topic: [PATCH V2 0/5] soc: imx: increase build coverage for imx8 soc
 driver
Thread-Index: AQHV1PZk+mGdzzCjckexq+nG+OcySqf+VfQAgAAbviA=
Date: Mon, 27 Jan 2020 12:33:49 +0000
Message-ID: <AM0PR04MB4481E1AACAC4285D49E721AD880B0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1580117979-4629-1-git-send-email-peng.fan@nxp.com>
 <CAK8P3a2YLo4rNBXu9NhvKv6QOFUcZhCVXNR4XJe_0Kc_RJ=ubA@mail.gmail.com>
In-Reply-To: <CAK8P3a2YLo4rNBXu9NhvKv6QOFUcZhCVXNR4XJe_0Kc_RJ=ubA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a7464c71-8d82-4e65-6a5f-08d7a3252965
x-ms-traffictypediagnostic: AM0PR04MB4883:|AM0PR04MB4883:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB488373235429091B8BD349CD880B0@AM0PR04MB4883.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 02951C14DC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(396003)(366004)(346002)(376002)(189003)(199004)(8936002)(81156014)(53546011)(4744005)(8676002)(6506007)(7416002)(71200400001)(81166006)(316002)(76116006)(66556008)(26005)(66476007)(6916009)(64756008)(186003)(66446008)(66946007)(52536014)(2906002)(44832011)(54906003)(86362001)(33656002)(9686003)(55016002)(478600001)(7696005)(5660300002)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4883;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: F2ksliVQgSP1uZaySxdpg9U6hDayH8FDOSyRah+PLhvbgxdRMOSmbWCCibcLOofuv0W5dV+Iy2auhNjYItbo9uFkJbJDemtW83xHQvR3f3qIxH658cdWxX+FTuKvj/39lv8/TlYgYHUR14mfVy/HHK8KxboRZ1Bk9FGi7PO3guGelLGlWVlSNpHPmyzlRYrNkwR6UarCOE9IKZciCkzTWtc8sFybhXYHE3P5bs0ZBup2ivEjTcdt60h8d4iYF/uPI18Z2e5C0k2WnQFVOMrH+Ag23vMuUm6RgSscJicgauRnsL5S2XXhJWXcDIl2vAKOIfdAgafbcWUxs/AtqBueGx1+YjxBj7XGNSZJVgDw9DSmL9qJRB4wu2qxoiLV+BknqytxFMOzuYV1b4xdKIqvijuIoFmrbLlqO5iI8JgCPpQsObekwc2WSJZLnJwgStAA
x-ms-exchange-antispam-messagedata: VEMKmetQzF8ucn/8ElYiF/9QvwB8AYZT60rZXyDNj4H9/be6J7JmurQSdIyM8hi91dYR9/FfcCq7ypFatUatPR/rFGdGwj68p1qSzXPMKAbb/qv3eu4AgcXXt57OLGt7XyYh6w29YfAuMbNJld1VXg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7464c71-8d82-4e65-6a5f-08d7a3252965
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2020 12:33:49.9220 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FjQ8vSbXGG9xOOvJrkMqU4qZvKny6jmBNifFqHULj1xwgjSqxR/vMW9LsUYetf0GVXIY1l5j4XSsO8FtalXBsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4883
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_043352_811720_41A55626 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.72 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "will@kernel.org" <will@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

> Subject: Re: [PATCH V2 0/5] soc: imx: increase build coverage for imx8 soc
> driver
> 
> On Mon, Jan 27, 2020 at 10:44 AM Peng Fan <peng.fan@nxp.com> wrote:
> >
> > From: Peng Fan <peng.fan@nxp.com>
> >
> >
> > V2:
> >  Include Leonard's patch to fix build break after enable compile test
> > Add Leonard's R-b tag
> >
> > Rename soc-imx8.c to soc-imx8m.c which is for i.MX8M family Add
> > SOC_IMX8M for build gate soc-imx8m.c Increase build coverage for i.MX
> > SoC driver
> 
> The changes all look good to me, but I'd just do it all in one combined patch, as
> the changes are all logically part of the same thing. You can leave Leonard's fix
> as a [PATCH 1/2]  if you want, but the rest should clearly be a single change.

There is a arm64 defconfig change, should it be also included in the single change?

Thanks,
Peng.

> 
>       Arnd
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

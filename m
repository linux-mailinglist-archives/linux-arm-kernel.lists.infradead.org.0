Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6EF149E8B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 06:05:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YF9ZHnuM831Kmu/b8S4HqMsz9/rUseAYQEn1iBTPRjY=; b=egcsoFGzahDSvl
	cv+Ktg2JGAff3nG9szGs35VmkkKmGh2bnccFhObeR6zmeT47e72tHj6hCcmEx9aPAPvbULYZ7mPld
	X4f2kTDRuRUeRMruDg9A4yXYz8WWLQFUefM+5hqZ0WdOtO8E9hrpiYaIOjYDjPD5Udh6T34/AgVLw
	URh+vtm0IGlhT2rj7lbIck4sjEHVrzTlYCysoXTyaWdq2Yk9JdxLIa74M8PI/wKZTN92sV1EAxt9d
	qWkT8rKgGWa4el8kLPYsM2d5ZgTgpWquxnb5rZ3nQisAFudIOPbHfSUFEOkeeET86ETF+T9HSPkQv
	vFWfIYASldoRR8F60EHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivwaV-0001i2-F5; Mon, 27 Jan 2020 05:05:27 +0000
Received: from mail-db5eur03on0600.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::600]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivwaL-0001hU-AJ
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 05:05:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bU72Ee8qOGCj2qb3nTNxtRoNndU7Vf7aRJ+CrfUMeOm1XGqUlRv17ddo6XRV7lEhP3xVDf4Vc85xaM5VavccsLLqY5fS7txyfoGsnrEUpepVtwXsabKUtYuD5xls6md057/2n4kPmUb0wwbdvtKHOssEtuqb3b/kgLcP6shdhMrZlqnABPqVwBddGGlpUHsMCt4Rv3JPIShW5d5kntcpCMgYzWQrh2Ngxl+uEnC6HkrE6vz5ADfKHlw5G00AGVjgXbf8EdDsCamCVA4bcWycqWx8iGSZJ+LKuKlYsrjRRU+klJlbNCrwWIGdcqxmudooXUze5j5czPX8FNkH5ag5+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3W4gXg10UPcb4CGIgK2TupZ2ij1EsbWMfKwcIwea5pM=;
 b=bUOzPBfC5jOOvtioybThh/kJhPuXwCFdDFP5+avSPR8REzcOWny8jP7QgmRpe8DJ/ZZ+ahBw4hweHcMoQc4L0nMe4RX0j2P+u8Wb2fgXpeNzfSOXhb1lzpM43yfmSwQ/LpAeRShpR8EqSkEvuxOZF093XnXzVmqBiFSZjqOLSfbRm46M81/TmcR6gmN3HkjMXqAYvEZ1m5rO7opd9nwfzS8/38bfw3nGKMyq5tGe3cDBSaxWMLx3bOjpsQtXiAUvHt4H631xB/yaxBSviZ4y1HLNXgC+JQPTBRF+ybbHL2QJOyvUIXGniYxVzggZ/60S8oqg6B8PNz21AA6lb6dzdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3W4gXg10UPcb4CGIgK2TupZ2ij1EsbWMfKwcIwea5pM=;
 b=BToHEjvnkChIuBugJucDXb9NRsOoWaGitYiLCHTajWp8ls/TTAK7qS+Ie1+y+lfCS3DcRMFX2Wge4gpwvPmOu6vl/l/CrBBAdIWnFHTcatGQPTPeCaBY91w6zKDGlEErzqAouLR6Ac1tGwrJ3zqittUOwikeoggw3KmJlkCLcg4=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5217.eurprd04.prod.outlook.com (20.176.214.76) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.22; Mon, 27 Jan 2020 05:05:14 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2665.017; Mon, 27 Jan 2020
 05:05:14 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Adam Ford <aford173@gmail.com>, Arnd Bergmann <arnd@arndb.de>
Subject: RE: [PATCH] soc: imx: Makefile: only build soc-imx8 when CONFIG_ARM64
Thread-Topic: [PATCH] soc: imx: Makefile: only build soc-imx8 when CONFIG_ARM64
Thread-Index: AQHVyrHXB0HrD3qW50ui9P9S7z/H8qfp0NaAgAADRlCAACnrAIABBSNwgACHbgCADn0MAIAEANYw
Date: Mon, 27 Jan 2020 05:05:14 +0000
Message-ID: <AM0PR04MB4481B8BDAD2CD7376208B5F2880B0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1578989048-10162-1-git-send-email-peng.fan@nxp.com>
 <20200114081751.3wjbbnaem7lbnn3v@pengutronix.de>
 <AM0PR04MB4481A2FB7E2C56C2386297E888340@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CAK8P3a3x55A8y9kR34zy8YyRhto8uay7PZGbDAufupiNS3+ihA@mail.gmail.com>
 <AM0PR04MB44813A1D55659658E3FA203188370@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CAK8P3a29=KWrhO8uu7mMS2gbeCGpkL7Q-xaaUVO2wcVD9MN93g@mail.gmail.com>
 <CAHCN7xKtfKVQeaAg9sjvc3cHjLoAqAX6F-JyvkG5u23w1OG8CA@mail.gmail.com>
In-Reply-To: <CAHCN7xKtfKVQeaAg9sjvc3cHjLoAqAX6F-JyvkG5u23w1OG8CA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 23991152-37aa-4cb4-2b4f-08d7a2e67e54
x-ms-traffictypediagnostic: AM0PR04MB5217:|AM0PR04MB5217:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5217EFFC89AF1051DC96D1D2880B0@AM0PR04MB5217.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02951C14DC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10001)(10009020)(4636009)(396003)(346002)(366004)(376002)(39860400002)(136003)(189003)(199004)(8936002)(6506007)(71200400001)(53546011)(8676002)(81156014)(81166006)(64756008)(316002)(66446008)(66556008)(66476007)(76116006)(186003)(110136005)(26005)(66946007)(54906003)(52536014)(5660300002)(2906002)(44832011)(45080400002)(478600001)(966005)(33656002)(9686003)(55016002)(86362001)(7696005)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5217;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cE8jb81hETjgHEQgws8vXznhv12Kq1TOzWtYEzUnlB5OGQ6pF4tiq31DYmyXlG9CrqOddnoZHfHnul50l91iWd58aAHZxcZjL4OJpIpFEPeoU5P1kxe0IyOMmPbVpCPD9uFuuFIHI16/JLOJygi4gx6oDtnuhY/qNfydAFilgn8WX64T9HWoiM/ER0dMhwuJwhRerNwOA923+13O7nDKdEZqLZDtIcz94Foe7WMGINpgj33S6GbyxuE1hyjZk9A7B625299ZZc2RWHUmCF3/xkQJN2Owj34pob1+3DLFdC+7Ah+tDvX/eTVn77dTm2Hw2keEtgRBFUh/CFNPCVVNa67ukPo/feKTvQe/YFRmYnQ+y3gofGhZyzo+9fzLQpPDvrKxBqm0632RdAcfAGjR64LoPRI2lhzlc3xW20nRRfbT1S8BOhxt+elb63yIWFZmtllQquJUwFmAg/RyTc+PXijgkZjzQgWuxu2AWjTf9bjS1aKnfwgAZR0Zp/4e1dFjySIvwsgmXGm1WwaN+Wrxlk4gsAGCu2TtiUHtuQkmf6U5bFZwHk7aQK0tNOx8TtFGyYCvL+Jx9umFQ9okg6QRAw==
x-ms-exchange-antispam-messagedata: wa0i9EUA/WmV9Ge6KVY+NhXNxdoVh8MtlDx0XbgZ/CJZFr+8CQ+IlTGRGqyurhLEyo0piyX/1XtyFfbyZFBr+uhVcbX1cCwFlZQB7A3HuIQRkwul9zfFsSu8V864va8nCuB4gXqGmNeOtwCwO//7xg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23991152-37aa-4cb4-2b4f-08d7a2e67e54
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2020 05:05:14.0724 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5ROtNW56XrtB7JbD6hhkUiRlkGXSvvj/IbEOdwH0AXisshrxErjHJ+UoFa2YYv/1AB7tYdSHzu/pnJgs/AIQLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5217
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_210517_362689_FA2F9AA8 
X-CRM114-Status: GOOD (  28.74  )
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:600 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 1.4 FORGED_SPF_HELO        No description available.
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH] soc: imx: Makefile: only build soc-imx8 when
> CONFIG_ARM64
> 
> On Wed, Jan 15, 2020 at 4:39 AM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > On Wed, Jan 15, 2020 at 3:38 AM Peng Fan <peng.fan@nxp.com> wrote:
> > > > Subject: Re: [PATCH] soc: imx: Makefile: only build soc-imx8 when
> > > > CONFIG_ARM64 On Tue, Jan 14, 2020 at 9:32 AM Peng Fan
> <peng.fan@nxp.com> wrote:
> > > > > > Subject: Re: [PATCH] soc: imx: Makefile: only build soc-imx8
> > > > > > when
> > > > >
> > > > > There is no SOC_IMX8 currently. Need to introduce one in
> > > > > arch/arm64/Kconfig.platforms. But I not see other vendors
> > > > > introduce options like SOC_XX. Is this the right direction to
> > > > > add one in Kconfig.platforms?
> > > >
> > > > I think it would be more consistent with the other platforms to
> > > > have a symbol in drivers/soc/imx/Kconfig to control whether we build
> that driver.
> > >
> > > Ok, I'll add Kconfig entry in drivers/soc/imx/Kconfig for various i.MX SoCs.
> >
> > I was thinking of one entry for this driver.
> >
> > > > For some SoCs, we also allow running 32-bit kernels, so it would
> > > > not be wrong to allow enabling the symbol on 32-bit ARM as well,
> > > > but this is probably something where you want to consider the
> > > > bigger picture to see if you want to support that configuration or not.
> > >
> > > Does the current upstream kernel support 32bit kernels on ARM64
> > > platforms without vendor specific stuff. I recalled that several
> > > years ago, NXP people tried to upstream 32bit kernel support, but rejected
> by you.
> >
> > We have at least some Broadcom SoCs that are supported this way. As
> > long as you can use the same dtb file on a regular multi_v7_defconfig
> > I see no problem with doing this.
> >
> > What I would like to avoid though are ports that require extra code in
> > arch/arm/mach-* that is not needed for the 64-bit target, or ports to
> > 64-bit hardware that only run in 32-bit mode.
> >
> > > So Is there any plan to support 32bit kernel on AARCH64 in upstream
> > > kernel?
> > > Or any suggestions?
> >
> > I don't think there should be 32-bit kernel running in aarch64-ilp32
> > mode. This was discussed way back when the aarch64-ilp32 user space
> > patches first appeared.
> >
> > Generally speaking you are usually better off running an aarch64
> > kernel using aarch32 user space, but there may be reasons for running
> > an ARMv8 aarch32 kernel on the same hardware and there is no technical
> > reason why this shouldn't work for a clean port.
> >
> > We never really supported ARMv8-aarch32 in arch/arm/ as a separate
> > target, but usually building an ARMv7 kernel is close enough to
> > ARMv8-aarch32 that things just work. If you would like to help out
> > making ARMv7VE and ARMv8-aarch64 proper targets for arch/arm/, let me
> > know and we can discuss what parts are missing.
> 
> I would be interested in learning more about running the i.MX8M in 32-bit
> mode.  I'm looking at running Linux on a device with < 1GB of RAM, so having
> 32-bit pointers and instructions would be preferred.
> My preference would be to run as ARMv7 for migration purposes, but I'm
> open to alternatives.
> 
> Does anyone have any suggestions on where I might find some generic stuff
> for either iMX8M or generic ARMv8 docs for doing something like this?

We did a porting for one customer, but code is not public available.

First let uboot switch to AARCH32 mode when booting Linux, this is already
supported by uboot mailine.

Second, create a mach-imx8m.c under arch/arm/mach-imx to handle i.MX8M
just like other i.mx arm32 socs. This is not preferred by Linux community.

3rd, build i.MX8M drivers when using imx_v7_defconfig( or imx_v6_v7_defconfig
in upstream)

Regards,
Peng.

> 
> adam
> 
> >
> >      Arnd
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists
> > .infradead.org%2Fmailman%2Flistinfo%2Flinux-arm-kernel&amp;data=02%
> 7C0
> >
> 1%7Cpeng.fan%40nxp.com%7Cce51e0735fe547fa561f08d7a0e5ae22%7C686
> ea1d3bc
> >
> 2b4c6fa92cd99c5c301635%7C0%7C0%7C637154780637371999&amp;sdata
> =n1wX%2FF
> >
> FbDvpcYpE%2FDQZLA8mqhNugtcguit%2F8Mo%2B2O7Q%3D&amp;reserved=
> 0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

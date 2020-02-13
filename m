Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A21F15B92D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 06:48:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fl9bY9XpLtKOsjtnj3PSkHZrKDr6U0D0yA8WcChjJgI=; b=iGJXwWfM8d6ETU
	Q+uwnP0Joc6Q7CfvnFOIOfqw1Dctad60vfiaH83eIO7JoKWAMW2VJZ7C6TSWhD0EOwdMQHoPbARRA
	5xhHmcIqBefEM5csGVLaH4z7hH6HZ+W+LJqbSuLC0VCHqMsPt1WCQtY8ErbqSe5shJQLgSvcRkf9C
	EEUydq+k6nLtuHWrFP1KL+pZOy6xPp2EnASGNmWqr/8ig4EPCU66N8NaDnflsl2VsupDMGduIb2ah
	zrbQ+rxy/CLbFkjq87/FIFTQcItAeb/9mhu0ZwgflnphkvaMFLvEbUvRoxaCu03F5jjKElrkq61uu
	DFK1jpycxMZX8QNMIoYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j27Lt-0006dk-Ec; Thu, 13 Feb 2020 05:47:53 +0000
Received: from mail-am6eur05on2085.outbound.protection.outlook.com
 ([40.107.22.85] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j27Lk-0006cc-CD
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 05:47:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lXQ188hqPajdKeMpGG38RUTX502ugH2uLdXY5S05m1/0E2eXxaSZBlJnkMkjkHBeG3cI4CrRtwlglNNNTGl88sL7rE6OI4YsFdTd6p4TRrWdtVtwQtF9c3esryxwWGPbDDylemauAwXyQhD6HIMHpCZR2iblHOS2stU8PfgccziDfMccJsAffy4TFvccWEJqJSJWlM0Ah5yo2qafY72XxXcHLq5NlLMEcdwQxKWDTh9Vvl/kyPRbPTLmDDkEuiLmNssdrpjFWYJh4BTriMovwp/pCnrRKB9Wvh9wlBhUJIVemH6dvqAY7xLLsDoFJmNo07VGkGZzp7wezJEw3Srk0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+94hQSTQH7hkERSjsDb3B1nd2jylc7LRPIUmdcMFsHg=;
 b=XY3g29h7FZWcBneHapkQiD34OlT3byjKtypxbnakIrncdJGtV7AnyK656h+VZlseFOz2VdF/rVZoAJvdB/XxbKLVQu4KkRqxpmzyZNho7GaLY5+/e1xOfv9eni/MffyvBMJB4FNk5swCknsO5E83h30xHz6Eua/W7UXp736CYhJgfIj/TmqX3OIFrighWDazSXqHJZFCkneQ1oWMNUEd63Az2/v1eEYhyyUBsuCCdIoGNKy+CUKm8dn1XzCWBF7LzQ4/ccCjPmhy6NTCKPeGacxRon896RP/UrW7GFadjRt1tvCwYcS2MDPZVCfxpqENmi01PteDRYAc2dza/yteTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+94hQSTQH7hkERSjsDb3B1nd2jylc7LRPIUmdcMFsHg=;
 b=Ycy2XHJ3ysLjtkJ7+Uoqi/FbU/s3XF3FutW3pG63tz5XZpLr5UB7NfGKTuXS+fGT20MksPbXSj1JnCGgB7n6FkaW0AVHQW4FaupUu/SVBnNbhH2fxsTx8r46If10YJ2womv7k85S9fiPZf7nVLRYWd9XFKyr9Zrv9pazvTvX10k=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB7059.eurprd04.prod.outlook.com (10.186.128.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.23; Thu, 13 Feb 2020 05:47:41 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.024; Thu, 13 Feb 2020
 05:47:41 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [RFC 1/4] ARM: imx: use device_initcall for imx_soc_device_init
Thread-Topic: [RFC 1/4] ARM: imx: use device_initcall for imx_soc_device_init
Thread-Index: AQHVzFB5yGe49vkt3U6MybEMHs/GuKfuHFMAgABnHtCAKkUKgIAAAEXQ
Date: Thu, 13 Feb 2020 05:47:41 +0000
Message-ID: <AM0PR04MB448134507B4F957C06F1315A881A0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1579167145-1480-1-git-send-email-peng.fan@nxp.com>
 <1579167145-1480-2-git-send-email-peng.fan@nxp.com>
 <AM7PR04MB6981B45633536729EBEB427487310@AM7PR04MB6981.eurprd04.prod.outlook.com>
 <AM0PR04MB448103B7C47B9AA5621A731A88310@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200213054344.GM11096@dragon>
In-Reply-To: <20200213054344.GM11096@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: bfd9e836-20df-4179-5b25-08d7b0483d87
x-ms-traffictypediagnostic: AM0PR04MB7059:|AM0PR04MB7059:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB70592BEACA86EF8F97E37215881A0@AM0PR04MB7059.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 031257FE13
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(376002)(346002)(366004)(199004)(189003)(7416002)(478600001)(55016002)(9686003)(8936002)(6506007)(316002)(4326008)(76116006)(8676002)(66556008)(66476007)(66946007)(66446008)(64756008)(54906003)(186003)(6916009)(5660300002)(81166006)(81156014)(2906002)(33656002)(71200400001)(7696005)(44832011)(86362001)(52536014)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB7059;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iNWSFcwMBFcwXZNiIqDE2BGl+9wi2gnccfzk4ChwAY3IL78u4VxVqnY35mlEVpK28qo+lkqkMzI5xvYvi61Be0+uaaXLhXzobHusPN4VDctZmMxQ0FRN6lmWOIue1ZxwwBNRt0cEFlw+WoOxyduzFW5ldT3LpSf3YVqMzp6gPLNffuz71B/RI2pVGiT3M7311+SLWfv9p4WCo+J6znZlGkkZ68EFdMiuidNmY0O7lb/u7uy8pj8CdZ/+F3hMeWME6dlz8gdWuDahiYZ6vYpMF6NCXaFHwACTSvFAtVFONhryoYi8upI3rRjI1tFhABx4Jrt8vDlGwshkEMBW1VKnjYBKpyUmr66RMgUU31doePeaOaAnc0H3HfxdQcreKNkWfw8qSg7C9P3Gm9RwFzYO67JBCSZ62FXHRL9uzVUVQ8E2yBTEoZlMtcVUHMITgT/c
x-ms-exchange-antispam-messagedata: s0LmqOBfSCu/tsPof4TIxgYKgAnvugV2gIVoH1XQjYVOEljwDP3pVxcRToG3kEvQo/+v/3be86tBfFNJRNgILEp4qc/4ic6YZ7j0ukPvpb6o6izpojkI3aPvLMrrsKryJOA+21xDmzjCvbiYiiZ/FQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bfd9e836-20df-4179-5b25-08d7b0483d87
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2020 05:47:41.2059 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Th4zP8pZJEGGazaKfY3WYttRLYCb829KA7ThSzVK1Nis+eBCXXhLu67/YI7eD7i8TDBqxQTWhsu4io31rgOVaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_214744_584372_E296A42B 
X-CRM114-Status: GOOD (  16.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "info@metux.net" <info@metux.net>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "git@andred.net" <git@andred.net>, Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "allison@lohutok.net" <allison@lohutok.net>, Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [RFC 1/4] ARM: imx: use device_initcall for imx_soc_device_init
> 
> On Fri, Jan 17, 2020 at 08:15:54AM +0000, Peng Fan wrote:
> > > > Subject: [RFC 1/4] ARM: imx: use device_initcall for
> > > > imx_soc_device_init
> > > >
> > > > From: Peng Fan <peng.fan@nxp.com>
> > > >
> > > > This is preparation to move imx_soc_device_init to
> > > > drivers/soc/imx/
> > > >
> > > > There is no reason to must put dt devices under /sys/devices/soc0,
> > > > they could also be under /sys/devices/platform, so we could pass
> > > > NULL as parent when calling of_platform_default_populate.
> > > >
> > >
> > > This change will impact various internal test case & userspace lib, I think.
> > > Need to ask test team & other developer to double check the impact.
> >
> > /sys/devices/soc0 is still there, the patchset only moves the platform
> > devices which under /sys/devices/soc0 to /sys/devices/platform
> 
> Jacky's concern still stands, as there are many user spaces which will be
> broken and need update.

The soc device itself still under /sys/devices/soc0, the soc_id/revision still there.
It is just the platform devices moved to /sys/devices/platform.

When I confirm with Jacky before, his concern is soc_id/revision will be
moved. But this is not true, they are still there as before.

> 
> > In this way, we aligned with ARM64. And simplify arch code by moving
> > the code to drivers/soc/imx. In future, considering more cleanup, we
> > could merge the code to soc-imx8.c, since they share similar silicon
> > rev ocotp logic.
> 
> Though this is a good thing from maintenance point of view, we do not want
> to break user spaces.

Actually not break user spaces, since this is RFC, I not expect this be merged.
If you agree, I could post normal V1 patchset.

Thanks,
Peng.

> 
> Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

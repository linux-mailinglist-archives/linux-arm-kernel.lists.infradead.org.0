Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A26361DAA55
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 08:04:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h6udGwNCqeJK1BfhSm73xQT/64zPfftAythQsmy/qIk=; b=dt9l4gF8Z+UpKY
	Ruvgy4M9l+txTCkZ9wJ6LfBRnuv2AsZhfUmBiAaw24qlEya2bFxlcS1mz18zITYCBRC4u1Zqg+0Ek
	choZIBjYFDLV99HQ/KqqoJvXZThdTF9TfowLVwZ3XsvLzZ0pqOlUfUyNq1sAFlUb4gJQ3QGfYekM5
	FBcMTfQvfu7yG7eayBW4pAfpPH0C0PTk0taHocS89OlC1wqHWIuT554abk4vLXDFM4DmZyq37A5q6
	G0OkZHuLJ80yOUCjKkbgebX3yHxjkSJtRpSLjHvV6QaDTY47AmgoF/9WN2MZSMl1jiU5sG1KxqlPe
	9WHtVmHiskpjR5KPrjfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbHpg-000732-98; Wed, 20 May 2020 06:04:00 +0000
Received: from mail-am6eur05on2047.outbound.protection.outlook.com
 ([40.107.22.47] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbHpC-0006ov-V4
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 06:03:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j67kiQRwBO/YUv2NhNpthQFfh35aIKPWO2mmq/uG6Ri+7t9tT8cIzBc9U/dV9qjMlQOMoXlr9Z1o9GeC/K3WepkBwHcdz4qY8o1oqUDZ3a4RFSwVUA9l5zoqTRlm7eAogoDuTLEBwTaZsp3lEg+k3gUSsvDQKpAvFp1crdXzj6ZwNMDVV1PkrTvMtTQ8mn6GA13cY8hwRwmiQdmCJQ/eBbhSVQ7uak5Wk1PKoDwjZggKrCHwmhd1M5RdKSOfcK5yWgeoGMs2MdXZBMv4BFOTAD+EJqHLlcZ+xWP/U5hakF9CNCDr/KPblym9vJ7XH9G9GqAygBEzWokfJdG/pHmVyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Adx0XvIznMVwwYuSxuVXQ+o22YNJ3Uag1UAbRGlH9ao=;
 b=aaM6k1WFluya8RPtI/PFAirUd+0phPA6CwoVZF3b4TsYof7WV20eERlC7u9YuJEqXSzM125Ie/Fx1S2z592NUL7YVAuU02XRdXQ8Eu6D5fXgIo+Bdy/Byok2FFf/SQSlXa6n/WAxkvvUYZcHXXOCWxdZ8kHU0wS2tGL1g7b10UrfqCnvZHpOD/npKoX+ccTea5B4a0N7wkZMJd/uw6mZYwuyD418iVRowjrlFI2M/OiuqGTIvKGunGDBgK6arJLCZjq0A4SJAulZp7siRELvRVSclaLNWrcUlZMPLwnqJf4oBlvLmljVkPvG4Nl6YIHwvoTe96/Erke2dpOm0se7oQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Adx0XvIznMVwwYuSxuVXQ+o22YNJ3Uag1UAbRGlH9ao=;
 b=kCl3u2ZBo862ZpSk8WpepbJiIKMUba293jlhpcfGMvDx6UG/nTk7sV6zjU6b13ckGY2F4MLxs57NvKS0oxEl+Sru6e1P6thJfrdd42oAHM2f3YU/sM0biNxSRCH9PbnENB1iydXds9RhMBE7LRoJgmBZMioozCCxLe8dPVMMU7w=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Wed, 20 May
 2020 06:03:28 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3021.020; Wed, 20 May 2020
 06:03:27 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Shawn Guo <shawn.gsc@gmail.com>
Subject: RE: [PATCH V2 0/3] ARM: imx: move cpu code to drivers/soc/imx
Thread-Topic: [PATCH V2 0/3] ARM: imx: move cpu code to drivers/soc/imx
Thread-Index: AQHWHgg+JPBPF27xHUaxW24Mbwr/7aiwRvoAgAArWgCAACoYcA==
Date: Wed, 20 May 2020 06:03:27 +0000
Message-ID: <DB6PR0402MB2760791698EADD705F5B2E6F88B60@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <1588151843-2133-1-git-send-email-peng.fan@nxp.com>
 <20200520005638.GA11739@dragon>
 <CAJBJ56J-q7BreW9L4B7QbCkmxPEkpY6YMrBbzG3HWk3FL+wJwg@mail.gmail.com>
In-Reply-To: <CAJBJ56J-q7BreW9L4B7QbCkmxPEkpY6YMrBbzG3HWk3FL+wJwg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: effd6c56-543f-4f1c-b50b-08d7fc838388
x-ms-traffictypediagnostic: DB6PR0402MB2760:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB27601EEE89568824E0F4DB6588B60@DB6PR0402MB2760.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 04097B7F7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KhmiAKhlp4tTlzJDYF167mKrmrCAzTEtKGOB2MjZ3yUYjsebW6qvfdhn2Zx3n/0/qDcSsNZIl+kYv6WW80GGps68BU8fvtaFjolCw7KF2DnjNPoPSIqHWuRKYyU2PaItkGgiGLraeSqy477cu8OKYPPAQ04ngTDN/NlNUYA6SKn6hCGw7RDziKOYbf2sGGGPl1KhdYoAUgVt1jadYB0lmhkbbI5siSQ4rxVziu/XaLqvN+27U7OIrEpIaGNkUt8/lti83U3lepZuk9uocGJf41WLrMp7tN3HdRGmKcZ2aBaEtamhofnN+YeZ8HDqnK+EyFAfvHpeLoGy5s7uBKIazQzSJ875bAizKtM83kYQqM/rT+cYwb0vcIdC/ho49E6epOFDqBjSX2VridMqprQsBQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(376002)(366004)(136003)(346002)(396003)(52536014)(71200400001)(76116006)(66946007)(316002)(83080400001)(66446008)(4326008)(7416002)(54906003)(5660300002)(2906002)(6916009)(8936002)(9686003)(7696005)(966005)(55016002)(478600001)(45080400002)(66556008)(53546011)(6506007)(64756008)(66476007)(26005)(186003)(44832011)(33656002)(86362001)(8676002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: TEYJ7eUJfWmepcU61xJcnDvpTVMy1wdNkY1KExAK7j4PtWG1qR7+207Q4/ulK5o2v1gaDPs3mkqmBksX3N7CZUOl9bVXM/3K0CvG/4X31J6hGrcyYOFNflLd2+1hDmtMJl5GoA16enWkMOHlPrJb2FuZ3xwuYmFZqg5HhjZJwOwCnpSH/fX4xeJfIIuSAH5DYme3lSzWQBP6JPED2evb3GT6pr2kGwm0WbnAgbWsc9H/kqv9+/o7qmxge33gB23APuZ+YaloQgJ/vEe2bO5mqVsspOr1zydvFMShkkop6xg3CwtPGVWoxS42OmMEmRov8o7C2Vmxlqk0tNYNxu/R5F7qIXHQSeIg3yvPh4GL7jsj2XN8/LpOWxrIyVW66bGoKri3hxb1aGvW/1WAF/enYJdOokP3di7+lgk+RHrpIb/nW5mVkUs6egj8iafukB+8ENLgqeQzAg2jw7eUY33uxGDPMF+WYDD4VzsUL52eA+TbiXzZIAbyA8i2bFPlL6mI
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: effd6c56-543f-4f1c-b50b-08d7fc838388
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2020 06:03:27.2375 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PXIge/aGVhdUiYKXmcfDjupzYr96+qbVPGgkqcYWYIubbZt7UlI5te0dJhWameO3MlowqbJqQJ33paH785SflA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2760
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_230330_995971_2DAC3208 
X-CRM114-Status: GOOD (  19.88  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.47 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "info@metux.net" <info@metux.net>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "git@andred.net" <git@andred.net>, Sascha Hauer <s.hauer@pengutronix.de>,
 "allison@lohutok.net" <allison@lohutok.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

> Subject: Re: [PATCH V2 0/3] ARM: imx: move cpu code to drivers/soc/imx
> 
> On Wed, May 20, 2020 at 8:57 AM Shawn Guo <shawnguo@kernel.org>
> wrote:
> >
> > On Wed, Apr 29, 2020 at 05:17:20PM +0800, peng.fan@nxp.com wrote:
> > > From: Peng Fan <peng.fan@nxp.com>
> > >
> > > V2:
> > >  Keep i.MX1/2/3/5 cpu type for completness  Correct return value in
> > > patch 1/3  use CONFIG_ARM to guard compile soc-imx.c in patch 3/3
> > >
> > > V1:
> > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpa
> > >
> tchwork.kernel.org%2Fcover%2F11433689%2F&amp;data=02%7C01%7Cpen
> g.fan
> > > %40nxp.com%7C3fe49570a6824631476908d7fc6e5cd3%7C686ea1d3bc2
> b4c6fa92c
> > >
> d99c5c301635%7C0%7C0%7C637255423274738401&amp;sdata=ELtEt3Nbg
> kUg83w4
> > > UbCftkVMu0toYDUXJy4MgLc8qbQ%3D&amp;reserved=0
> > > RFC version :
> > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpa
> > >
> tchwork.kernel.org%2Fcover%2F11336433%2F&amp;data=02%7C01%7Cpen
> g.fan
> > > %40nxp.com%7C3fe49570a6824631476908d7fc6e5cd3%7C686ea1d3bc2
> b4c6fa92c
> > >
> d99c5c301635%7C0%7C0%7C637255423274738401&amp;sdata=RE%2Fprw
> CLb7fQpY
> > > hmszlnXxTBKJVdEXsjMBrd2ZHmKc8%3D&amp;reserved=0
> > >
> > > Nothing changed in v1, just rename to formal patches
> > >
> > > Shawn,
> > >  The original concern has been eliminated in RFC discussion,  so
> > > this patchset is ready to be in next.
> > > Thanks.
> > >
> > > Follow i.MX8, move the soc device register code to drivers/soc/imx
> > > to simplify arch/arm/mach-imx/cpu.c
> > >
> > > I planned to use similar logic as soc-imx8m.c to restructure
> > > soc-imx.c and merged the two files into one. But not sure, so still
> > > keep the logic in cpu.c.
> > >
> > > There is one change is the platform devices are not under
> > > /sys/devices/soc0 after patch 1/4. Actually ARM64 platform devices
> > > are not under /sys/devices/soc0, such as i.MX8/8M.
> > > So it should not hurt to let the platform devices under platform dir.
> > >
> > > Peng Fan (3):
> > >   ARM: imx: use device_initcall for imx_soc_device_init
> > >   ARM: imx: move cpu definitions into a header
> > >   soc: imx: move cpu code to drivers/soc/imx
> >
> > Applied all, thanks.
> 
> Unfortunately, I have to drop this, as it turns out the series needs a rebase
> onto for-next.  The series conflicts with 'ARM: vf610: report soc info via soc
> device' there.

I just posted out v3 which rebased on latest next tree and resolved the conflicts.

Thanks,
Peng.

> 
> Shawn
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

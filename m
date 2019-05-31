Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7801530645
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 03:40:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xHDVsQPUGAfZLRJph+gIuQ2cAOexOlYp0VxGWOzLmQc=; b=ngB8byxsJ/uRcc
	6c81YOkF2iofXslCR+Qdg/EbNq3BTu5kiDHjCMY8EUrOUz31KgeAjYG3hoN6SbDl2XCMV6kPc3Ls6
	DKssXjmYkqm1UvuAB8AdJbJP27hf/Q5jV9oktMIwI4G817BXJjfrLsgkcUj4v41nbJRlWStOwVlTA
	eVSHTfrYViCGjy7Skpe4Et7K3D5prp0gw54o5SiPlOMECFy5CKRsLPkBIOl20JApyBEKIAS65T/R9
	CVUM3VrlMWogsS7uv6IiXWihjLLkpwwYylUVaT5NDhllfmynWFCLkBZLD8r25BRsevq/yusa3y8Gv
	xc40Gsj/5scOxcD7XfVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWWWX-0001j1-9b; Fri, 31 May 2019 01:40:01 +0000
Received: from mail-eopbgr10044.outbound.protection.outlook.com ([40.107.1.44]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWWWP-0001i6-HN
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 01:39:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TTNhtGYhPPJuhqHryhWsl4UxIu51hGi1bhHDVlxWVZs=;
 b=Jt5+NigsheRAWNKyDjrqpkSUxdakp4dsTD+S2MtJRPfoKw/VKL/9ya8Uq++W3+oZYxLMcDl+3xkk48GV8y8opFv9bbpptiKPDmENJznVX0e6MBPMibIxhYdDV1NLY80qHEOCKw3NlKhlXMsInimmvkxQr3Foc1u/LJUFiLuQMTc=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4419.eurprd04.prod.outlook.com (52.135.152.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.19; Fri, 31 May 2019 01:39:46 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378%6]) with mapi id 15.20.1922.021; Fri, 31 May 2019
 01:39:46 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Andre Przywara <andre.przywara@arm.com>
Subject: RE: [PATCH 0/2] mailbox: arm: introduce smc triggered mailbox
Thread-Topic: [PATCH 0/2] mailbox: arm: introduce smc triggered mailbox
Thread-Index: AQHVESt7O8zUR8j7k0mzGFqyu7YBg6Z4+DAAgAVHW8CABVJUgIAA7cKA
Date: Fri, 31 May 2019 01:39:45 +0000
Message-ID: <AM0PR04MB4481C97696C68ECF5E6D4A7988190@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190523060437.11059-1-peng.fan@nxp.com>
 <4ba2b243-5622-bb27-6fc3-cd9457430e54@gmail.com>
 <AM0PR04MB4481C44F9B5EFCDD076EF728881D0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20190530122329.235d13c7@donnerap.cambridge.arm.com>
In-Reply-To: <20190530122329.235d13c7@donnerap.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 786c4c99-cd19-4c30-f99b-08d6e568dcb5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4419; 
x-ms-traffictypediagnostic: AM0PR04MB4419:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <AM0PR04MB44199DA2C5EA75D91654B1E588190@AM0PR04MB4419.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 00540983E2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(376002)(39860400002)(396003)(366004)(189003)(199004)(229853002)(3846002)(54906003)(6116002)(6306002)(6246003)(4326008)(8676002)(14444005)(44832011)(256004)(476003)(25786009)(14454004)(71190400001)(99286004)(71200400001)(5660300002)(55016002)(6436002)(8936002)(81156014)(81166006)(53936002)(26005)(76116006)(7696005)(7736002)(33656002)(53546011)(73956011)(76176011)(478600001)(305945005)(66946007)(6506007)(446003)(186003)(66556008)(64756008)(66446008)(86362001)(74316002)(15650500001)(11346002)(66476007)(45080400002)(68736007)(316002)(7416002)(6916009)(66066001)(52536014)(486006)(9686003)(102836004)(2906002)(966005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4419;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: T5Q75JgpGJuwx5PbjB+x2jtIPe9AZoiB4HAME/qoB2gHCZ3vJHeNayYZnfaRjKMCJcy3o2SY0TLUogW3i6oiaTBKZxD+1H8kyxE7/Njo7otniBpH6aOdTUYYnpR026Jzx5MLpqviE/yOs2339hpSSuKOufpDZ/8W3niNMBSdonSyVfLnPsRum/zn0tvyLTfFw3aUNyf1+nOffW8G+1KVTEmuoEnSxg4dL0y/9oZW90JY1Yp1XEF8MZelFgkjF2BuiB2XPYhZklBRIhFIpuouFXcBsTb/BSsHgmqqwfwv7m1fzjYfPvWJcEXohJXxHdSL80aofCmJXWUvbzN6LJ0mEJ205qppU/F4gA/1urS/84N0nQnpC4lKLCdmR88mv8l+dXC3OeWcG64aGXelHUO4/5skHgevjCTalLp1t1AL7/o=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 786c4c99-cd19-4c30-f99b-08d6e568dcb5
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2019 01:39:46.0737 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4419
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_183953_653411_F0AB93A4 
X-CRM114-Status: GOOD (  42.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.44 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Florian Fainelli <f.fainelli@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> 
> > > Subject: Re: [PATCH 0/2] mailbox: arm: introduce smc triggered
> > > mailbox
> > >
> > > Hi,
> > >
> > > On 5/22/19 10:50 PM, Peng Fan wrote:
> > > > This is a modified version from Andre Przywara's patch series
> > > >
> > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flo
> > > re.ke
> rnel.org%2Fpatchwork%2Fcover%2F812997%2F&amp;data=02%7C01%7Cpe
> > >
> ng.fan%40nxp.com%7C010c9ddd5df645c9c66b08d6dfa46cb2%7C686ea1d3b
> > >
> c2b4c6fa92cd99c5c301635%7C0%7C0%7C636942294631442665&amp;sdat
> > >
> a=BbS5ZQtzMANSwaKRDJ62NKrPrAyaED1%2BvymQaT6Qr8E%3D&amp;rese
> > > rved=0.
> > > > [1] is a draft implementation of i.MX8MM SCMI ATF implementation
> > > > that use smc as mailbox, power/clk is included, but only part of
> > > > clk has been implemented to work with hardware, power domain only
> > > > supports get name for now.
> > > >
> > > > The traditional Linux mailbox mechanism uses some kind of
> > > > dedicated hardware IP to signal a condition to some other
> > > > processing unit, typically a dedicated management processor.
> > > > This mailbox feature is used for instance by the SCMI protocol to
> > > > signal a request for some action to be taken by the management
> processor.
> > > > However some SoCs does not have a dedicated management core to
> > > provide
> > > > those services. In order to service TEE and to avoid linux
> > > > shutdown power and clock that used by TEE, need let firmware to
> > > > handle power and clock, the firmware here is ARM Trusted Firmware
> > > > that could also run SCMI service.
> > > >
> > > > The existing SCMI implementation uses a rather flexible shared
> > > > memory region to communicate commands and their parameters, it
> > > > still requires a mailbox to actually trigger the action.
> > >
> > > We have had something similar done internally with a couple of minor
> > > differences:
> > >
> > > - a SGI is used to send SCMI notifications/delayed replies to
> > > support asynchronism (patches are in the works to actually add that
> > > to the Linux SCMI framework). There is no good support for SGI in
> > > the kernel right now so we hacked up something from the existing SMP
> > > code and adding the ability to register our own IPI handlers
> > > (SHAME!). Using a PPI should work and should allow for using request_irq()
> AFAICT.
> >
> > So you are also implementing a firmware inside ATF for SCMI usecase, right?
> >
> > Introducing SGI in ATF to notify Linux will introduce complexity,
> > there is no good framework inside ATF for SCMI, and I use
> > synchronization call for simplicity for now.
> 
> I think we don't disagree, but just to clarify on one thing:
> 
> I think we should avoid tying this driver to specific protocol or software on the
> other end, be it ATF or SCMI. After all it's just a mailbox driver, meant to signal
> some event (and parameters) to some external entity. Yes, SCMI (or SCPI back
> then) was the reason to push for this, but it should be independent from that.

Thanks, I agree.

> I am not even sure we should mention it too much in the documentation.

I think we need a usecase here, so it should be fine.

> 
> So whether the receiving end is ATF or something else it irrelevant, I think. For
> instance we have had discussions in Xen to provide guests some virtualised
> device management support, and using an HVC mailbox seems like a neat
> solution. This could be using the SCMI (or SCPI) protocol, but that's not a
> requirement. In this case the Xen hypervisor would be the one to pick up the
> mailbox trigger, probably forwarding the request to something else (Dom0 in
> this case).

I do not get the point "forwarding the request", DomU HVC will trap to Xen,
so how to forward to Dom0?

Thanks,
Peng.

> Also having a generic SMC mailbox could avoid having the actual hardware
> mailbox drivers in the kernel, so EL3 firmware could forward the request to an
> external management processor, and Linux would just work, without the need
> to describe the actual hardware mailbox device in some firmware tables. This
> might help ACPI on those devices.
> 
> Cheers,
> Andre.
> 
> > >
> > > - the mailbox identifier is indicated as part of the SMC call such
> > > that we can have multiple SCMI mailboxes serving both standard
> > > protocols and non-standard (in the 0x80 and above) range, also they
> > > may have different throughput (in hindsight, these could simply be
> > > different channels)
> > >
> > > Your patch series looks both good and useful to me, I would just put
> > > a provision in the binding to support an optional interrupt such
> > > that asynchronism gets reasonably easy to plug in when it is
> > > available (and desirable).
> >
> > Ok. Let me think about and add that in new version patch.
> >
> > Thanks,
> > Peng.
> >
> > >
> > > >
> > > > This patch series provides a Linux mailbox compatible service
> > > > which uses smc calls to invoke firmware code, for instance taking
> > > > care of SCMI
> > > requests.
> > > > The actual requests are still communicated using the standard SCMI
> > > > way of shared memory regions, but a dedicated mailbox hardware IP
> > > > can be replaced via this new driver.
> > > >
> > > > This simple driver uses the architected SMC calling convention to
> > > > trigger firmware services, also allows for using "HVC" calls to
> > > > call into hypervisors or firmware layers running in the EL2 exception
> level.
> > > >
> > > > Patch 1 contains the device tree binding documentation, patch 2
> > > > introduces the actual mailbox driver.
> > > >
> > > > Please note that this driver just provides a generic mailbox
> > > > mechanism, though this is synchronous and one-way only (triggered
> > > > by the OS only, without providing an asynchronous way of
> > > > triggering request from the firmware).
> > > > And while providing SCMI services was the reason for this
> > > > exercise, this driver is in no way bound to this use case, but can
> > > > be used generically where the OS wants to signal a mailbox
> > > > condition to firmware or a hypervisor.
> > > > Also the driver is in no way meant to replace any existing
> > > > firmware interface, but actually to complement existing interfaces.
> > > >
> > > > [1]
> > > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2F
> > > > gith
> > > >
> > >
> ub.com%2FMrVan%2Farm-trusted-firmware%2Ftree%2Fscmi&amp;data=02
> > > %7C01%7
> > > >
> > >
> Cpeng.fan%40nxp.com%7C010c9ddd5df645c9c66b08d6dfa46cb2%7C686ea1
> > > d3bc2b4
> > > >
> > >
> c6fa92cd99c5c301635%7C0%7C0%7C636942294631442665&amp;sdata=kN
> > > 9bEFFcsZA
> > > > 1ePeNLLfHmONpVaG6O5ajVQvKMuaBXyk%3D&amp;reserved=0
> > > >
> > > > Peng Fan (2):
> > > >   DT: mailbox: add binding doc for the ARM SMC mailbox
> > > >   mailbox: introduce ARM SMC based mailbox
> > > >
> > > >  .../devicetree/bindings/mailbox/arm-smc.txt        |  96
> > > +++++++++++++
> > > >  drivers/mailbox/Kconfig                            |   7 +
> > > >  drivers/mailbox/Makefile                           |   2 +
> > > >  drivers/mailbox/arm-smc-mailbox.c                  | 154
> > > +++++++++++++++++++++
> > > >  include/linux/mailbox/arm-smc-mailbox.h            |  10 ++
> > > >  5 files changed, 269 insertions(+)  create mode 100644
> > > > Documentation/devicetree/bindings/mailbox/arm-smc.txt
> > > >  create mode 100644 drivers/mailbox/arm-smc-mailbox.c  create
> mode
> > > > 100644 include/linux/mailbox/arm-smc-mailbox.h
> > > >
> > >
> > >
> > > --
> > > Florian


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

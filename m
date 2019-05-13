Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A69361B0DC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 09:10:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=idykbKONgIOyczHLZNKIJ6gKIiBGkENsQn6aFI5Mhf0=; b=Ag6YJ4QqXhU+52
	1lA1zHVDBFXESVp3mr40qWvj6yWi1wOPgy+6WRkJIy+bNDM7NQxa/ga0Y0T7DyyeANrsKTzbl04hR
	jNZPNGhhvHV4/+qI/JM8AuCREv2r0/GPu3WE2v3p5U/T8MFpbebfOnXA+OuqQfm0aDfbrZdfb5YDH
	Tj/EnAg5Rt2Ya9r4kNhHWz+4Vxv4gcPfdBmfgAkABDkdHKLdC+d/3qnUovTdECs388TpnqfuuJjT7
	9hkf17tf/nML2FhMNWRsQ/9JlynTcqE/kIzOrgYGPIGsf4DFprEkmvUt0QYbeqm73ngAn6fIvPkPb
	ukwQPsaT2ItHs2MDVEWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ56D-0002K7-2d; Mon, 13 May 2019 07:10:13 +0000
Received: from mail-eopbgr30053.outbound.protection.outlook.com ([40.107.3.53]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ561-0001y8-2e
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 07:10:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EZd9aphw3VirxzHMt+IHC729yAv5yBRz9vrUHHt3zGU=;
 b=XrMkBwbxFlnBTvOr45u3y8PJQz5EQTxi6hEuRyovx/Kc24O5zhjsqfsSZK35C6Ryd8I9SOnV5m/9WrTR4zb3HP5+FN/kvJpwht3srfKGiPx4mFyPMWpPFhGpbBlEYvBjoLAOC+CAUSE28eS6sPNdBdrg9eo7yYkoZWySNfr9aOw=
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com (10.168.65.10) by
 VI1PR0401MB2639.eurprd04.prod.outlook.com (10.168.66.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.21; Mon, 13 May 2019 07:09:57 +0000
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::5e3:7122:7d0e:7fb7]) by VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::5e3:7122:7d0e:7fb7%3]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 07:09:57 +0000
From: Pankaj Bansal <pankaj.bansal@nxp.com>
To: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>, Will Deacon
 <will.deacon@arm.com>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel
 <joro@8bytes.org>
Subject: RE: [ARM SMMU] Dynamic StreamID allocation
Thread-Topic: [ARM SMMU] Dynamic StreamID allocation
Thread-Index: AdUHKxeT0UQZA1BdS6SusO/TAZQ/qAACkjeAAIkDXYA=
Date: Mon, 13 May 2019 07:09:57 +0000
Message-ID: <VI1PR0401MB249699B9BA183B18997532D0F10F0@VI1PR0401MB2496.eurprd04.prod.outlook.com>
References: <VI1PR0401MB24969CE24E4FB91EC8551DEBF10C0@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <f0c3abd6-7b9f-8b68-14fa-3c6cf393ddc9@arm.com>
In-Reply-To: <f0c3abd6-7b9f-8b68-14fa-3c6cf393ddc9@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pankaj.bansal@nxp.com; 
x-originating-ip: [92.120.0.4]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cdfd5bdc-1633-4f49-3947-08d6d77201dc
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0401MB2639; 
x-ms-traffictypediagnostic: VI1PR0401MB2639:
x-ms-exchange-purlcount: 4
x-microsoft-antispam-prvs: <VI1PR0401MB2639DC2B6B00627ECBDE73E6F10F0@VI1PR0401MB2639.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(346002)(39860400002)(366004)(376002)(13464003)(189003)(199004)(11346002)(66066001)(256004)(76116006)(14444005)(5660300002)(8936002)(66476007)(446003)(66446008)(64756008)(66556008)(66946007)(33656002)(86362001)(476003)(81156014)(81166006)(44832011)(52536014)(45080400002)(73956011)(486006)(68736007)(8676002)(110136005)(9686003)(54906003)(14454004)(6246003)(25786009)(2906002)(53936002)(305945005)(478600001)(186003)(74316002)(7736002)(99286004)(966005)(3846002)(76176011)(55016002)(6116002)(6306002)(6436002)(71190400001)(71200400001)(316002)(4326008)(6506007)(7696005)(102836004)(53546011)(26005)(229853002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2639;
 H:VI1PR0401MB2496.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5Q9XW5zE8B1tRgZRszQIMOUh2ISAvWOuiwkr1rQ1X9X5QWz/VzH2GjiRkiqhMBJSRQyLyJdkrZNCPzs/HkeEBf9Kh0gIkPaujIVDisab+2IiVWaDcgFz0XR6NOIj4WJjVRwdI7BgVwD6YM7yIJU9fKKovFPCYS7FMW16FYBmdHcZMhRTkKfmz7oGUqO2czULqosIoBtZ59/q1Ra0Pf+cTir7bZVs/kw7m5elr/Xnb76xbLw3TXfAhAROM3g0j6hL1cwdhH6ExpHO5Xy/C4Ycw2iZgEnserU3Dj4CkHY0c/5yYHSk0Vt5PMXbGJfo/cpuALtgK0jodpmrgPkMys4kVjBUlwRz5jutKzTokPM2SQbxk8c3mEk+kR56+zHkBxHbL4CsL1dqZoEA1X3i1v0MyM55Tg8oAMxevJGU3fvuF3A=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cdfd5bdc-1633-4f49-3947-08d6d77201dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 07:09:57.4975 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2639
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_001001_183452_F7FD120B 
X-CRM114-Status: GOOD (  20.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Varun Sethi <V.Sethi@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Nipun Gupta <nipun.gupta@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jean,

> -----Original Message-----
> From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
> Sent: Friday, 10 May, 2019 07:07 PM
> To: Pankaj Bansal <pankaj.bansal@nxp.com>; Will Deacon
> <will.deacon@arm.com>; Robin Murphy <robin.murphy@arm.com>; Joerg
> Roedel <joro@8bytes.org>
> Cc: iommu@lists.linux-foundation.org; Varun Sethi <V.Sethi@nxp.com>; linux-
> arm-kernel@lists.infradead.org; Nipun Gupta <nipun.gupta@nxp.com>
> Subject: Re: [ARM SMMU] Dynamic StreamID allocation
> 
> On 10/05/2019 13:33, Pankaj Bansal wrote:
> > Hi Will/Robin/Joerg,
> >
> > I am s/w engineer from NXP India Pvt. Ltd.
> > We are using SMMU-V3 in one of NXP SOC.
> > I have a question about the SMMU Stream ID allocation in linux.
> >
> > Right now the Stream IDs allocated to a device are mapped via device tree to
> the device.
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Felix
> > ir.bootlin.com%2Flinux%2Flatest%2Fsource%2FDocumentation%2Fdevicetree%
> > 2Fbindings%2Fiommu%2Farm%2Csmmu-
> v3.txt%23L39&amp;data=02%7C01%7Cpankaj
> > .bansal%40nxp.com%7C3cbe8bd4827e425afd0f08d6d54c925e%7C686ea1d3b
> c2b4c6
> >
> fa92cd99c5c301635%7C0%7C0%7C636930922220665343&amp;sdata=vIG5u5n
> XR5iRp
> > uuuGjeFxKBtA5f5ohf91znXX0QWm1c%3D&amp;reserved=0
> >
> > As the device tree is passed from bootloader to linux, we detect all the stream
> IDs needed by a device in bootloader and add their IDs in respective device
> nodes.
> > For each PCIE Endpoint (a unique BDF (Bus Device Function)) on PCIE bus, we
> are assigning a unique Stream ID in bootloader.
> >
> > However, this poses an issue with PCIE hot plug.
> > If we plug in a pcie device while linux is running, a unique BDF is assigned to
> the device, for which there is no stream ID in device tree.
> >
> > How can this problem be solved in linux?
> 
> Assuming the streamID associated to a BDF is predictable (streamID = BDF
> + constant), using the iommu-map property should just work:
> 
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Felixir.boo
> tlin.com%2Flinux%2Flatest%2Fsource%2FDocumentation%2Fdevicetree%2Fbind
> ings%2Fpci%2Fpci-
> iommu.txt&amp;data=02%7C01%7Cpankaj.bansal%40nxp.com%7C3cbe8bd482
> 7e425afd0f08d6d54c925e%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0
> %7C636930922220665343&amp;sdata=GkkovEnvhd5dN%2BGdh%2FnKCyW5Cd
> EnLDP3cWTrk%2B%2FO7EQ%3D&amp;reserved=0
> 
> It describes the streamIDs of all possible BDFs, including hotplugged functions.

You mean that we should increase the "length" parameter (in (rid-base,iommu,iommu-base,length) touple) ?
This would cater to any *new* Bus Device Function being detected on PCIE bus?
Is that right ?
Right now when we make iommu-map in bootloader, we are giving one RID per BDF:
https://elixir.bootlin.com/u-boot/latest/source/drivers/pci/pcie_layerscape_fixup.c#L168

But isn't the better approach to make it dynamic in linux?
i.e. as soon as a new device is detected "requester id" is allocated to it from available pool.
When device is removed, return the "requester id" to pool.
is there any h/w limitation which prevents it?

Regards,
Pankaj Bansal
> 
> Thanks,
> Jean
> 
> >
> > Is there a way to assign (and revoke) stream IDs at run time?
> >
> > Regards,
> > Pankaj Bansal
> >
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists
> > .infradead.org%2Fmailman%2Flistinfo%2Flinux-arm-
> kernel&amp;data=02%7C0
> >
> 1%7Cpankaj.bansal%40nxp.com%7C3cbe8bd4827e425afd0f08d6d54c925e%7C6
> 86ea
> >
> 1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C636930922220665343&amp;sda
> ta=2La
> > GBHO2%2Bbqk519uJvCatlHyRCtAPPjKO8Gxu1bQHBM%3D&amp;reserved=0
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F056114A0B6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 10:28:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kxDtKPjkNi1QykYyOoUDK+p02VdVRE8decpLliGBQJw=; b=uCqHNAV/NYKULT
	42SHPWRu2AVk3MDgVrm2qaB/tL7Q1ouJBp8HNX61oTc8n6R55Gvy0XwEVQ746WWmUwiKLKhHaMl7f
	Dru6DozbHAemP+QhRJbvYtyaJS13eo+TaYPDNqM0aUxuzr5bzlWqKsL/7iBursBYAvuEUbH/bYQVf
	/cUD761osuGbJyBoIGm3GIuSrITrpB4rZ8Ut80/EdNb7M+4YZOfkjrfk2oAkNZakBB1tbFeMpdQWn
	lm0hb+atQWDVgSMtFKglB9KdDvPldzGJXuKyJzzuaQDrh2ANtvBTRudlSolISrOsnO39Y6dbEby0Z
	EJKY/YTkNL08VvPsyXig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw0gv-0000xj-DH; Mon, 27 Jan 2020 09:28:21 +0000
Received: from mail-bn8nam11on2070.outbound.protection.outlook.com
 ([40.107.236.70] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw0gi-0000x0-6c
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 09:28:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WPMl3s83rl3w/UGbpDm+LOYq9git6S8T8DHBShGu62p4/NGJxdHE2G6/ARN7ppr9tsr4Zrh+8T4Px1MZ4xF7azmymPnsvIvSkTr+gKysOGIcx0UHDyZAJvTEVS/OOK9Kdi43Ghk7Yzt4nE1M34KgzBfUWZ2RtE9dAI7Zs33kcjGAvqQGse1WpgRxAZR0OtE516T449DGk6oi5Z260C6+4YZuh2sSZ7ClgqGETTv/TF1Tkj93EhH9PshdGjBPZu/j7q8Q3mebEK0ogT95WV8WLkXZ/8H1PqXmeaeKHJyrP/4imJSIsZ2CbPQay7kAmLXHUcQDKVCAx4M6b//8RNslEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B1UlNqjRAyhapYPaDO/R7dxljyO0ba3EicN+CC0HuXk=;
 b=axAp3NWJS7cQ+h00x6YgncLMt2ZOt9fA1sTfjaRYzRUtNPgpkrpgDrL69Vnilix3OPwyA06K/77I7353Th8Mazu6Azu3kK+X1IFvuHUzdXFItgKdTXYf/X/CFGyK3ggMUBDhu/8E9C1xy67AStAOtVeSIWH4uQFDSDjwzcmpX+QR6MCnV4FFzkyR2n8FyL52l6OlhU6jdG+jQsqKDAdoWqVSodye1p9TqQaVebtvBGy8vXyIsf5eUkVX+mdE85nAexZRrcuqcpFCLEeNzjrMfozBHzZRj+nV2yl4xdNJwtW3nfbtb4v2AayRZmQHcw5tFpILOfOqXmvU02AZ5j6VwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B1UlNqjRAyhapYPaDO/R7dxljyO0ba3EicN+CC0HuXk=;
 b=ga0YTKM5w0jlTtC01AoVIH7OKSOtu+BAXMqQ0cEj1KO0MgszalacvO+cF36WhTUtSQ+cb9zJ8FYUP7P5/44kGzQlWG6Agjbsfa/nH2aTghinufyvK2RBAJY3a9xl4IC6CHSWNukD6ssbET2sxhO0Llig/0njFKhDqf0PhzvavQg=
Received: from CH2PR02MB7000.namprd02.prod.outlook.com (20.180.9.216) by
 CH2PR02MB6888.namprd02.prod.outlook.com (20.180.10.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.22; Mon, 27 Jan 2020 09:28:05 +0000
Received: from CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::969:436f:b4b8:4899]) by CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::969:436f:b4b8:4899%7]) with mapi id 15.20.2665.026; Mon, 27 Jan 2020
 09:28:05 +0000
From: Radhey Shyam Pandey <radheys@xilinx.com>
To: Andre Przywara <andre.przywara@arm.com>, Rob Herring <robh@kernel.org>
Subject: RE: [PATCH 14/14] net: axienet: Update devicetree binding
 documentation
Thread-Topic: [PATCH 14/14] net: axienet: Update devicetree binding
 documentation
Thread-Index: AQHVx6zAwkWlmecTYkaoyYejTEfW+Kf1um2AgARdAICABDs/YA==
Date: Mon, 27 Jan 2020 09:28:04 +0000
Message-ID: <CH2PR02MB70009C7F41F729A7FA02023DC70B0@CH2PR02MB7000.namprd02.prod.outlook.com>
References: <20200110115415.75683-1-andre.przywara@arm.com>
 <20200110115415.75683-15-andre.przywara@arm.com>
 <20200121215109.GA26808@bogus>
 <20200124162903.722468f1@donnerap.cambridge.arm.com>
In-Reply-To: <20200124162903.722468f1@donnerap.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=radheys@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a226d874-cd50-4198-1cd6-08d7a30b36bc
x-ms-traffictypediagnostic: CH2PR02MB6888:|CH2PR02MB6888:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR02MB68882F1B6956DDCE5C1D7390C70B0@CH2PR02MB6888.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02951C14DC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(346002)(39860400002)(136003)(366004)(199004)(189003)(76116006)(66946007)(64756008)(66556008)(66476007)(110136005)(15650500001)(86362001)(54906003)(66446008)(33656002)(2906002)(316002)(55016002)(26005)(8676002)(81166006)(81156014)(52536014)(8936002)(6506007)(478600001)(71200400001)(7696005)(4326008)(5660300002)(9686003)(53546011)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6888;
 H:CH2PR02MB7000.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: y1kW834Ppm4eZJsUuT7VeVn20lidthJk4XBDPJOSMOmgalKw/aZBTs1t0S66YrbC8WtzVhyQLSR02hGytcSPOKYmpHYw2vZZdppE90hQAGIHAXtH1imnkMJC6HC+XmtU1/bChtaTpI5TfrST4NhEgYdyK2LzqLOunOPzFa3/85nO6QNCjMwhmcIJG4YCK24cq8ds1BZSJpAz4i/Aw+xwMw7LcHQeN5iXiNHso25QDRRoWd7vMnwpsjPusb9F8jJBxjZTsJJ0Zpb3ejf4fgOZnPzrB5gdsjAHaksbcQ4f0kPkqmLexv6+EbOttnoR+NnUqdKPQJFxGpV0gqUC4XZ8a58jX/xn3a2IpNQd/2CvL26OP05buXuXTz0ujO2GuFd95mnVYymOCjGOxNGv+1ZEA0ES3L7QxJOZVeIzxiJEVMWsYWxOHjRggjZI/VLnnITR
x-ms-exchange-antispam-messagedata: 6uufy3oIJ3fZFUzZrKeoSkd7ksdwb1EE1MeSZUN7qK7lQZm3ksZ7k697GcNS7STW6jq6BJQfQYd0Y0FVinVbtGQdXc21KKTbTv4vdh2ZFdbbtbIru9hWhepGwfNzJat0zknaY2nKO4W3l0KAhWM8gw==
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a226d874-cd50-4198-1cd6-08d7a30b36bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2020 09:28:05.2458 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WNM+ilKHCJnhXHHqcco1vaReX9yj0ddrY0eQtHLhh0Jj2vrj6IjxhWDywNe+nNdK0IbNwaFP+/otVYIr/QPZFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6888
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_012808_318033_7ABF5AEA 
X-CRM114-Status: GOOD (  30.14  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.70 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Robert Hancock <hancock@sedsystems.ca>, Michal Simek <michals@xilinx.com>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Andre Przywara <andre.przywara@arm.com>
> Sent: Friday, January 24, 2020 9:59 PM
> To: Rob Herring <robh@kernel.org>
> Cc: David S . Miller <davem@davemloft.net>; Radhey Shyam Pandey
> <radheys@xilinx.com>; Michal Simek <michals@xilinx.com>; Robert Hancock
> <hancock@sedsystems.ca>; netdev@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org; Mark Rutland
> <mark.rutland@arm.com>; devicetree@vger.kernel.org
> Subject: Re: [PATCH 14/14] net: axienet: Update devicetree binding
> documentation
> 
> On Tue, 21 Jan 2020 15:51:09 -0600
> Rob Herring <robh@kernel.org> wrote:
> 
> Hi Rob,
> 
> thanks for having a look!
> 
> > On Fri, Jan 10, 2020 at 11:54:15AM +0000, Andre Przywara wrote:
> > > This adds documentation about the newly introduced, optional
> > > "xlnx,addrwidth" property to the binding documentation.
> > >
> > > While at it, clarify the wording on some properties, replace obsolete
> > > .txt file references with their new .yaml counterparts, and add a more
> > > modern example, using the axistream-connected property.
> > >
> > > Cc: Rob Herring <robh+dt@kernel.org>
> > > Cc: Mark Rutland <mark.rutland@arm.com>
> > > Cc: devicetree@vger.kernel.org
> > > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > > ---
> > >  .../bindings/net/xilinx_axienet.txt           | 57 ++++++++++++++++---
> > >  1 file changed, 50 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/net/xilinx_axienet.txt
> b/Documentation/devicetree/bindings/net/xilinx_axienet.txt
> > > index 7360617cdedb..78c278c5200f 100644
> > > --- a/Documentation/devicetree/bindings/net/xilinx_axienet.txt
> > > +++ b/Documentation/devicetree/bindings/net/xilinx_axienet.txt
> > > @@ -12,7 +12,8 @@ sent and received through means of an AXI DMA
> controller. This driver
> > >  includes the DMA driver code, so this driver is incompatible with AXI DMA
> > >  driver.
> > >
> > > -For more details about mdio please refer phy.txt file in the same directory.
> > > +For more details about mdio please refer to the ethernet-phy.yaml file in
> > > +the same directory.
> > >
> > >  Required properties:
> > >  - compatible	: Must be one of "xlnx,axi-ethernet-1.00.a",
> > > @@ -27,14 +28,14 @@ Required properties:
> > >  		  instead, and only the Ethernet core interrupt is optionally
> > >  		  specified here.
> > >  - phy-handle	: Should point to the external phy device.
> > > -		  See ethernet.txt file in the same directory.
> > > -- xlnx,rxmem	: Set to allocated memory buffer for Rx/Tx in the
> hardware
> > > +		  See the ethernet-controller.yaml file in the same directory.
> > > +- xlnx,rxmem	: Size of the RXMEM buffer in the hardware, in bytes.
> > >
> > >  Optional properties:
> > > -- phy-mode	: See ethernet.txt
> > > +- phy-mode	: See ethernet-controller.yaml.
> > >  - xlnx,phy-type	: Deprecated, do not use, but still accepted in
> preference
> > >  		  to phy-mode.
> > > -- xlnx,txcsum	: 0 or empty for disabling TX checksum offload,
> > > +- xlnx,txcsum	: 0 for disabling TX checksum offload (default if
> omitted),
> > >  		  1 to enable partial TX checksum offload,
> > >  		  2 to enable full TX checksum offload
> > >  - xlnx,rxcsum	: Same values as xlnx,txcsum but for RX checksum
> offload
> > > @@ -48,10 +49,20 @@ Optional properties:
> > >  		       If this is specified, the DMA-related resources from that
> > >  		       device (DMA registers and DMA TX/RX interrupts) rather
> > >  		       than this one will be used.
> > > - - mdio		: Child node for MDIO bus. Must be defined if PHY
> access is
> > > +- mdio		: Child node for MDIO bus. Must be defined if PHY
> access is
> > >  		  required through the core's MDIO interface (i.e. always,
> > >  		  unless the PHY is accessed through a different bus).
> > >
> > > +Required properties for axistream-connected subnode:
> > > +- reg		: Address and length of the AXI DMA controller MMIO
> space.
> > > +- interrupts	: A list of 2 interrupts: TX DMA and RX DMA, in that order.
> > > +
> > > +Optional properties for axistream-connected subnode:
> > > +- xlnx,addrwidth: Specifies the configured address width of the DMA. Newer
> > > +		  versions of the IP allow setting this to a value between
> > > +		  32 and 64. Defaults to 32 bits if not specified.
> >
> > I think this should be expressed using dma-ranges. This is exactly the
> > purpose of dma-ranges and we shouldn't need a device specific property
> > for this sort of thing.

dma-ranges define the relationship between the physical address spaces of the
parent and child nodes. In this case, ethernet and dma (parent-child) have
the same view of physical address space.   Do we mean to use the child-size
dma-range field and determine the address width?

> 
> OK, after talking to Robin about it, I think I will indeed drop the whole usage of
> xlnx,addrwidth altogether.
> Some thoughts:
> - An integrator would choose the addrwidth value in the IP to be big enough for
> the whole bus. In our case it's actually 40 bits, because this is the max address
> size the interconnect supports. So any possible physical address the kernel could
> come up with would be valid for the DMA IP.
> - Because of this we set the DMA mask to either 64-bit or 32-bit, depending on
> the auto detection of the MSB registers.
> - If some integrator screws this up anyway, they can always set dma-ranges in
> the parent to limit the address range. IIUC, no further code would be needed in
> the Ethernet driver, as this would be handled by some (DMA?) framework?

I think the current driver design will be simplified once we switch to the
dmaengine framework and use the xilinx dma(drivers/dma/xilinx_dma.c) driver.
The address width parsing is already handled by the dma driver. I am working
on an RFC to remove dma code from axiethernet and planning to post patchset.
Hopefully, that should address all concerns.

> 
> Does that make sense?
> 
> Cheers,
> Andre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

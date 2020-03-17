Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 667F0187FE1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 12:05:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oISS2zWJoOoBIhZaTvloaQME6pGOHn0qpUsm3tnI9pY=; b=Qs2DvdBTlzKpJ1
	UD0ejJTXVvVdOL3c2eMFLYWyuANIDuCJp4FMarMfEA8qqA9k/GbKdYbyNcZyTW/EnIm+NJhB/9BTr
	O40VJEfrLnvlHNOcdiRizp6iNzrMk9r1UT5p72tHVw5ZtM3RNv80pZRFIg/hR8OifLt9uKdHyPu1J
	9ctdxgzzIKnHyv7slg9y2H2XqhCZND1O7UwO2qjFdkJSbFCT7rshm+cXumZ49loZmImdUAsBZ4jKi
	8FgEkCKJHuAPlow5pcUvCHBmTaOIYYBSowrBHJqx7BJelaHpqQdYJIbo3/oxmlPaZ/9RTZq+kVk4S
	fVEVAVdKybFjFsdNQMKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEA25-0007Tc-Lw; Tue, 17 Mar 2020 11:05:14 +0000
Received: from mail-eopbgr1410100.outbound.protection.outlook.com
 ([40.107.141.100] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEA1i-0007O6-VS; Tue, 17 Mar 2020 11:04:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f8wpCC8z+NH8eAIxMw+ByNTHy3O6iP0nWaDX511Um7uYKgEoOQYLxK4EK22O3UMnl7tmYf1E/5YRaMNY67t27Pb7eigDcAI9dfQPRl502vsB0FE/JPxy0dNcGF5EmgUKbAcN2RI65bgkyI7RZe+qpdAmq0K7Utb/CIzX0XUbBSnevMCTJL0Ta7gUXCVK7Nxd6iBX7NV9jc2a1fBDV4gIuUsEntyQNOClwl8JyYWTozOholF4bnwgmUeeky/ZR8C7NugnUXwKeMRmkQa4VVTrB3vwSJgrA8LY+x083PyBifohC8X+nQfxtimJ0vMHf931nhfNvIVyj0+yAcOf0TADgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1KZ5I9i9RFAr5cTFpdxQRY/Nifkj/dyHFtodqrT1KEI=;
 b=kkgQ8NAi6SKjhgtx+MHe87zSlorPpCmod0JTqTQRmtHo1TsqR+idt7dYHKdemRfAqEK4IvRoKkRFEB84cMWMNUFr1DA1Xi0btvUv3uJw3B97RPc2KUVBPqWjcAbaAqSfAX0/f+EIhD0HunbmTaYc7FE9RXN8RfQItHfxnCheHwR1wGL4M9QpxEaDH6H9a54MoU4wKp2lbc8Zw9Pr8IqJxB9BPlO9ZY1Q6Mimw6v1cx4E73STUNNIRhUI/kHKXXlRJu0nyl/jDV5mGpEFNdAHvqyw3F70e2DRXBVvlMUanbVpghKGor4kn6rh7g55FTj1SvC0jgRbGGctTqAR/MTEVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1KZ5I9i9RFAr5cTFpdxQRY/Nifkj/dyHFtodqrT1KEI=;
 b=F+PNJyzs21sabwrTlIeosq6p5h8FBuEkQ0qs3PZxsYcUTCSUvJgnrPuvnuDI8qgvrzY6UC7nVU5w9QJAKu6vAeBOjjlY3Ioz0qBBq7Jb6mVnuMHAW5AVz1sc+Wfza4+nwr30WzmEHdvUtnOAHMkEIA1Ji2R7JBX/qg495CfUo8o=
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com (20.179.175.203) by
 TYAPR01MB3616.jpnprd01.prod.outlook.com (20.178.138.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.16; Tue, 17 Mar 2020 11:04:48 +0000
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06]) by TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06%4]) with mapi id 15.20.2814.021; Tue, 17 Mar 2020
 11:04:48 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, Lad
 Prabhakar <prabhakar.csengg@gmail.com>
Subject: RE: [PATCH v5 4/7] PCI: endpoint: Add support to handle multiple base
 for mapping outbound memory
Thread-Topic: [PATCH v5 4/7] PCI: endpoint: Add support to handle multiple
 base for mapping outbound memory
Thread-Index: AQHV7k2kfqtu6T0o2UCPs98u98LxN6hMgYXQgAAogACAAAq1EA==
Date: Tue, 17 Mar 2020 11:04:47 +0000
Message-ID: <TYAPR01MB4544DD58C495D0ED223B1A7BD8F60@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200228154122.14164-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <TYAPR01MB4544599A72C88666B4F972B7D8F60@TYAPR01MB4544.jpnprd01.prod.outlook.com>
 <OSBPR01MB359001B994CFC0CB45170AB0AAF60@OSBPR01MB3590.jpnprd01.prod.outlook.com>
In-Reply-To: <OSBPR01MB359001B994CFC0CB45170AB0AAF60@OSBPR01MB3590.jpnprd01.prod.outlook.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com; 
x-originating-ip: [124.210.22.195]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 40cdaf7d-7c99-4e70-a0cd-08d7ca6301fc
x-ms-traffictypediagnostic: TYAPR01MB3616:|TYAPR01MB3616:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TYAPR01MB3616EB1081916F4653C5FDE5D8F60@TYAPR01MB3616.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0345CFD558
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(39860400002)(346002)(376002)(366004)(136003)(199004)(2906002)(55016002)(45080400002)(9686003)(52536014)(33656002)(5660300002)(7696005)(81156014)(86362001)(55236004)(66476007)(8936002)(66556008)(66446008)(64756008)(6506007)(8676002)(81166006)(76116006)(316002)(54906003)(66946007)(110136005)(71200400001)(186003)(26005)(7416002)(4326008)(478600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:TYAPR01MB3616;
 H:TYAPR01MB4544.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vKg9heLUPw7IXxdJx74cdvN6lyVIzVnwAnRCr6SCjjQ4j1QXpTyGlqd2mDD6J/19k49QJszxe+nJKFGjCBjjLymA6cDMry02UNVReepIJZWJ5aGai8iJFpDIXhtAJNllyjSjUfxp+6tTlp55asN8wph9P5V+gadCkDEZjN1iy4T3C5SXsA6mOfrTnx1ydU6kKIk6yAQYhIuOOATYyzU1Q4b1SFNaAddPQGSkPckHURdoSyflOh6ubZY3+bA3wJBi/Ylgz/s8S76/TG2cWCR8K+AAhczsA1rFgwwbZB5IZKyjFZwQ3gRPkwxCS1e8URMZ6QGGv+b2LJgoVtH8cO3c/tU4zmroMakN1CDEuwYpoJTslSQ4M9MZ6JLbrwOT+HPHL2PgBAWvKHPqKpmUCq3QhAkPDjydRuctahPB6OqHKG+OarZcKhGuE3ouK7RzLVOM
x-ms-exchange-antispam-messagedata: Ic3nNC5rtt0av+fTfzcEHAeO+iosDu6qHdqUwW1246qUKBIyVhKm6uWerY49VGGEiR+TXtgPBEWaarXYE3VYc620Oge7xiROQEIOhOqVaR3CJpbKpdJNkw52DRbrIvpBAMQZrHNc3bYfENlkNt6i1g==
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40cdaf7d-7c99-4e70-a0cd-08d7ca6301fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2020 11:04:47.7342 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 31GP9C05q0AwyLTkFmi5cw5uvHcx7oYOXaCLBuja4IGUxwxMbBSmCH7emkSm+HLcLBh8H52ron+RvvD5gvQ7MZygP1strqoQvsJ1CPG+i6e5G8ZN+ZwIM3ENAhiU88DA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB3616
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_040451_144995_9E0A3DFB 
X-CRM114-Status: GOOD (  23.58  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.141.100 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Jingoo Han <jingoohan1@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar-san,

Just in my opinion though, automatically adding new line of email client
should be disabled or setting larger characters.
# In my side, I change the setting as 132 characters on Outlook :)

> From: Prabhakar Mahadev Lad, Sent: Tuesday, March 17, 2020 7:04 PM
<snip>
> > > -int __pci_epc_mem_init(struct pci_epc *epc, phys_addr_t phys_base,
> > size_t size,
> > > -		       size_t page_size)
> > > +int __pci_epc_mem_init(struct pci_epc *epc, struct
> > pci_epc_mem_window *windows,
> > > +		       int num_windows)
> > >  {
> > > -	int ret;
> > > -	struct pci_epc_mem *mem;
> > > -	unsigned long *bitmap;
> > > +	struct pci_epc_mem *mem = NULL;
> > > +	unsigned long *bitmap = NULL;
> > >  	unsigned int page_shift;
> > > -	int pages;
> > > +	size_t page_size;
> > >  	int bitmap_size;
> > > -
> > > -	if (page_size < PAGE_SIZE)
> > > -		page_size = PAGE_SIZE;
> > > -
> > > -	page_shift = ilog2(page_size);
> > > -	pages = size >> page_shift;
> > > -	bitmap_size = BITS_TO_LONGS(pages) * sizeof(long);
> > > -
> > > -	mem = kzalloc(sizeof(*mem), GFP_KERNEL);
> > > -	if (!mem) {
> > > -		ret = -ENOMEM;
> > > -		goto err;
> > > -	}
> > > -
> > > -	bitmap = kzalloc(bitmap_size, GFP_KERNEL);
> > > -	if (!bitmap) {
> > > -		ret = -ENOMEM;
> > > -		goto err_mem;
> > > +	int pages;
> > > +	int ret;
> > > +	int i;
> > > +
> > > +	epc->mem_windows = 0;
> > > +
> > > +	if (!windows)
> > > +		return -EINVAL;
> > > +
> > > +	if (num_windows <= 0)
> > > +		return -EINVAL;
> > > +
> > > +	epc->mem = kcalloc(num_windows, sizeof(*mem), GFP_KERNEL);
> > > +	if (!epc->mem)
> > > +		return -EINVAL;
> > > +
> > > +	for (i = 0; i < num_windows; i++) {
> > > +		page_size = windows[i].page_size;
> > > +		if (page_size < PAGE_SIZE)
> > > +			page_size = PAGE_SIZE;
> > > +		page_shift = ilog2(page_size);
> > > +		pages = windows[i].size >> page_shift;
> > > +		bitmap_size = BITS_TO_LONGS(pages) * sizeof(long);
> > > +
> > > +		mem = kzalloc(sizeof(*mem), GFP_KERNEL);
> > > +		if (!mem) {
> > > +			ret = -ENOMEM;
> > > +			goto err_mem;
> > > +		}
> > > +
> > > +		bitmap = kzalloc(bitmap_size, GFP_KERNEL);
> > > +		if (!bitmap) {
> > > +			ret = -ENOMEM;
> > > +			goto err_mem;
> > > +		}
> > > +
> > > +		mem->bitmap = bitmap;
> > > +		mem->window.phys_base = windows[i].phys_base;
> >
> > I could not understand why the window member is needed.
> > I think original members (just phys_base and size) are enough.
> > Also, this function doesn't store the page_size to mem->window.page_size.

I'm sorry, but I meant the window member is in the left side (mem->window.phys_base).
In other words, this patch changes the struct pci_epc_mem like below, but
I'm thinking this change is not needed because struct pci_epc will have
multiple windows as "array of address space of the endpoint controller".
---
struct pci_epc_mem {
-	phys_addr_t	phys_base;
-	size_t		size;
+	struct pci_epc_mem_window window;
---

> Because,  for example on RZ/Gx platforms, following are the windows on endpoint device
> where the root's address can be mapped, but where as on other platforms atm there
> exists just single window to map. Also on RZ/Gx platforms if a window is allocated say of
> size 1K, rest of the window cannot be used for other allocations.
> 
> 1: 0xfe000000 0 0x80000
> 2: 0xfe100000 0 0x100000
> 3: 0xfe200000 0 0x200000
> 4: 0x30000000 0 0x8000000
> 5: 0x38000000 0 0x8000000
> 
> Struct pci_epc_mem_window, represents the above windows.

Yes, I understood it.

> window.page_size is set by endpoint controller drivers as done in this patch.

I meant the left side. No one change the mem->window.page_size so that
the value seems to be 0. Of course, for now, this is no problem because
no one uses this value though.

<snip>
> > >  /**
> > >   * struct pci_epc_mem - address space of the endpoint controller
> > > - * @phys_base: physical base address of the PCI address space
> > > - * @size: the size of the PCI address space
> > > + * @window: address window of the endpoint controller
> > >   * @bitmap: bitmap to manage the PCI address space
> > > - * @pages: number of bits representing the address region
> > >   * @page_size: size of each page
> > > + * @pages: number of bits representing the address region
> > >   */
> > >  struct pci_epc_mem {
> > > -	phys_addr_t	phys_base;
> > > -	size_t		size;
> > > +	struct pci_epc_mem_window window;
> > >  	unsigned long	*bitmap;
> > >  	size_t		page_size;
> > >  	int		pages;
> > > @@ -85,7 +97,8 @@ struct pci_epc_mem {
> > >   * @dev: PCI EPC device
> > >   * @pci_epf: list of endpoint functions present in this EPC device
> > >   * @ops: function pointers for performing endpoint operations
> > > - * @mem: address space of the endpoint controller
> >
> > If my idea is acceptable, this should be "default address space ...".
> >
> Could you please elaborate more on how you would like the structures to be organized.

 * @mem: default address space of the endpoint controller.

And, if I assumed the "array of address space of the endpoint controller"
is renamed as struct pci_epc_mem **windows and when __pci_epc_mem_init() is succeeded,
the function should set the mem value right before return as the first window like below.

+	epc->mem = epc->windows[0];
+	epc->num_windows = num_windows;

	return 0;

Best regards,
Yoshihiro Shimoda


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 511AF19D214
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 10:23:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vZoLS6xt6HIWI9UTdr1L9TqmtksnLuhHfKxwOl1KrLo=; b=Anr4bp4UTnxe8m
	ZkJamKwPG3h64h7DAfD6b6bfGZu75qahMDLlGWxNj0jD7gu9/ye+eauA1lGcrrGB9SsNUXhQYs5sM
	pSfq+oEHKwhPcACfS12l+uWJrZI38vB0day0eUf8lmLmkVBsY8iZQYdFy29+C+ypTyfAbhSH1atmV
	tXIk6V6zNScvlsDWnWgTNl6cLQVzFg4yv8sIqZtoTdkWEuwYdRRoeeoG+kFukctV0j0aS3nN18m2n
	NXTiCulRNyVSmrs9smq27wo26VkkIDwIUFCNfXkXbqQal2+XPna08MIPdEKl/bVASJ+FMQYwFUbxT
	rwzD7ypA3XXjn/0KloIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKHbc-0008O6-F9; Fri, 03 Apr 2020 08:23:12 +0000
Received: from mail-eopbgr1400103.outbound.protection.outlook.com
 ([40.107.140.103] helo=JPN01-TY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKHbV-0008Mu-GE; Fri, 03 Apr 2020 08:23:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ChfcYv78eevv4PZmlPOXsOtYTrer59LB/9zzARi88W3wSIT5xTyTeN3Utu/FklO9ktnDxOIq6T7COEOb6/jrUTcedq2OsuIxiMbZ5wRMMopf4wXPmk5pNYleZ82sF96T+2krFvKi4SR/0aq8x/5b+0mRZoQCSHCzD+j483k9whit0hY97AEIYIWn3qFvxeEHi7uiMfUFO4jw4G2Rsud07N1CaksAHIZ1UqXvrmEbkDacHECOEGoXV04sisdwShAjvvSYX5uEmgaAVdCQdZcpNGMymLnmojwlPQwgxgytfERmwRLMlJnhW6hROwVwWyZtVamVZbIZx3QH0wfYTfz6Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pGvyEbhqf0qyOFT/7/TP4FzUlZi+KYl/sQd7h7dKTwg=;
 b=MhTSXuWz92PHvQpNKjTvoAKmsyGqX68nkFY7trQc5ikR99FYHJwqVFMLaptM3yfxAUQ9O9xpEQuic4Jo+wLv4C2XoDq7adXkZtbF8s6eZnnpPQrBY5A4lZSLgASihPcjuoOmd9mOLdMr/jiXLpOVVwMrhkEoGzeXihqEgj7dYAOgdfVoKwM763Xo11uXV31k6gPpQlfFuWuLZdg6P43+N1XKem8w4Uh0hQka6KdbjALQHbzmsr+1RMpvxQvvHzGSEFHbwh2caVTh9ty4blj8InJaJQz0jRZal2lLG00g1UnU7RcnnUopBTbqNPMspTyDbYGXNJU5/0MeraeDgf2lXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pGvyEbhqf0qyOFT/7/TP4FzUlZi+KYl/sQd7h7dKTwg=;
 b=Sayg3KkmjRbawCTFwIS+qJg0cSs57CHxgeXT1EqBmVWCCD6CowCAfUSap1977YH6SUVBxXX9Bz9Qgv4I4wVUpZKAvr5NXc+0Bf9Wbh9T0MBbVoXye0TPjIRUGlGc8O2Favv3oG9thqAmomQhc/p7PYr0yR0CrEVnxd2Iz0qBV6Y=
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com (20.179.175.203) by
 TYAPR01MB5484.jpnprd01.prod.outlook.com (20.180.229.205) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.15; Fri, 3 Apr 2020 08:23:02 +0000
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06]) by TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06%4]) with mapi id 15.20.2878.017; Fri, 3 Apr 2020
 08:23:02 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, Bjorn
 Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus
 Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Marek Vasut
 <marek.vasut+renesas@gmail.com>, "linux-pci@vger.kernel.org"
 <linux-pci@vger.kernel.org>
Subject: RE: [PATCH v6 06/11] PCI: endpoint: Add support to handle multiple
 base for mapping outbound memory
Thread-Topic: [PATCH v6 06/11] PCI: endpoint: Add support to handle multiple
 base for mapping outbound memory
Thread-Index: AQHWCSZxsnMUaMwx50Sb61CF2skZ+6hnC2TA
Date: Fri, 3 Apr 2020 08:23:02 +0000
Message-ID: <TYAPR01MB45442959B9FD7299D2CB8D73D8C70@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <1585856319-4380-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1585856319-4380-7-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1585856319-4380-7-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com; 
x-originating-ip: [124.210.22.195]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8f2a7999-066b-46c5-5365-08d7d7a83a44
x-ms-traffictypediagnostic: TYAPR01MB5484:|TYAPR01MB5484:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TYAPR01MB5484113B8E990871C9B527F9D8C70@TYAPR01MB5484.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0362BF9FDB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:TYAPR01MB4544.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(366004)(396003)(346002)(376002)(136003)(39860400002)(64756008)(66946007)(66476007)(66446008)(6506007)(2906002)(76116006)(8676002)(55236004)(71200400001)(7696005)(66556008)(54906003)(110136005)(9686003)(81166006)(81156014)(86362001)(26005)(186003)(55016002)(478600001)(4326008)(33656002)(52536014)(7416002)(316002)(8936002)(5660300002)(107886003)(921003)(1121003);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IcPBzgJ/JYU42AePfmb8DD4OWFUwR5NPn/dXHoQ3B86kuwH1m0m+blBxsPfNTBIEVB1XPossB6K+0wrjrGIi9L4hetCkM2gikmTc1SdHP8PhF+MkFylYU9Bmdf88owaSorcuD18pm00KZTHbxIJCmIxGvd6H9+xVaph3plbYdoO61NDRm0yZxKuKDh6yDcKjWew6DvSEsf8BTusLqUL0OhhbP9gpQ9lbu0f6nrI3WPSSDhh9VRNvw7IF8Ws4xwRcK+WjMlxvUWaZPjpVvxYcripIQJbWKvh8N7y6sgiYGEk8yjWNLIq59kfR8KT1gsBav7WEDy8R8ynU0z/hbd9rNiAOnRyUnXEEpbWG5PQu3xLjAFq2t0f9f6+gn+UhJnKD7etJUy9lDdSGp2+S00AiJqBo0fvRknnbCevGu4kZUSp8u+70nPD19oxod5r920XN6rXcUQpYXlImME0knB0EmyMoPL8w8LDUUsgSD1gYsHjgYh3gm4EZR6+JVEHpOFJk
x-ms-exchange-antispam-messagedata: unVehdxk5f6RyEL7GkNCaxU9DNmVK9aBFZ8YP8/r3zhBIL2WH74VNaLzbzbDK0lBWr3hubeoPinw0YEIBaGaj+UVEcXdzITha5syV3KLq5AG1DCI7uZwAjyhz4TXuKBZZSW+i2cpZ/vVv9M6couYIg==
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f2a7999-066b-46c5-5365-08d7d7a83a44
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2020 08:23:02.6239 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ytYDVHqRIeJc44AAupBX0nWvvtAuIQENHQTGa8LLPFB45jgzDaOupkput9nStgY2iQlstLIUgjxYZiL/G8qrUhGioNz9USbpm0+rlkWXkOAzhA5WaH6iLR27z8LHbQzZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB5484
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_012305_644294_F535D44C 
X-CRM114-Status: GOOD (  30.15  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.140.103 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Chris Paterson <Chris.Paterson2@renesas.com>, Heiko Stuebner <heiko@sntech.de>,
 Arnd Bergmann <arnd@arndb.de>, Jingoo Han <jingoohan1@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Frank Rowand <frowand.list@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Tom Joseph <tjoseph@cadence.com>, Simon Horman <horms@verge.net.au>,
 Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar-san,

Thank you for the patch!

> From: Lad Prabhakar, Sent: Friday, April 3, 2020 4:39 AM
> 
> R-Car PCIe controller has support to map multiple memory regions for
> mapping the outbound memory in local system also the controller limits
> single allocation for each region (that is, once a chunk is used from the
> region it cannot be used to allocate a new one). This features inspires to
> add support for handling multiple memory bases in endpoint framework.
> 
> With this patch pci_epc_mem_init() initializes address space for endpoint
> controller which support single window and whereas __pci_epc_mem_init()
> now accepts pointer to multiple windows supported by endpoint controller.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
> @@ -38,61 +38,95 @@ static int pci_epc_mem_get_order(struct pci_epc_mem *mem, size_t size)
>  /**
>   * __pci_epc_mem_init() - initialize the pci_epc_mem structure
>   * @epc: the EPC device that invoked pci_epc_mem_init
> - * @phys_base: the physical address of the base
> - * @size: the size of the address space
> - * @page_size: size of each page
> + * @windows: pointer to windows supported by the device
> + * @num_windows: number of windows device supports
>   *
>   * Invoke to initialize the pci_epc_mem structure used by the
>   * endpoint functions to allocate mapped PCI address.
>   */
> -int __pci_epc_mem_init(struct pci_epc *epc, phys_addr_t phys_base, size_t size,
> -		       size_t page_size)
> +int __pci_epc_mem_init(struct pci_epc *epc, struct pci_epc_mem_window *windows,
> +		       unsigned int num_windows)
>  {
> -	int ret;
> -	struct pci_epc_mem *mem;
> -	unsigned long *bitmap;
> +	struct pci_epc_mem *mem = NULL;
> +	unsigned long *bitmap = NULL;
>  	unsigned int page_shift;
> -	int pages;
> +	size_t page_size;
>  	int bitmap_size;
> +	int pages;
> +	int ret;
> +	int i;
> 
> -	if (page_size < PAGE_SIZE)
> -		page_size = PAGE_SIZE;
> +	epc->num_windows = 0;
> 
> -	page_shift = ilog2(page_size);
> -	pages = size >> page_shift;
> -	bitmap_size = BITS_TO_LONGS(pages) * sizeof(long);
> +	if (!windows || !num_windows)
> +		return -EINVAL;
> 
> -	mem = kzalloc(sizeof(*mem), GFP_KERNEL);
> -	if (!mem) {
> -		ret = -ENOMEM;
> -		goto err;
> -	}
> +	epc->windows = kcalloc(num_windows, sizeof(*mem), GFP_KERNEL);
> +	if (!epc->windows)
> +		return -ENOMEM;
> 
> -	bitmap = kzalloc(bitmap_size, GFP_KERNEL);
> -	if (!bitmap) {
> -		ret = -ENOMEM;
> -		goto err_mem;
> -	}
> +	for (i = 0; i < num_windows; i++) {
> +		page_size = windows[i].page_size;
> +		if (page_size < PAGE_SIZE)
> +			page_size = PAGE_SIZE;
> +		page_shift = ilog2(page_size);
> +		pages = windows[i].size >> page_shift;
> +		bitmap_size = BITS_TO_LONGS(pages) * sizeof(long);
> +
> +		mem = kzalloc(sizeof(*mem), GFP_KERNEL);
> +		if (!mem) {
> +			ret = -ENOMEM;
> +			i -= 1;

nit: We can use i--;

> +			goto err_mem;
> +		}
> +
> +		bitmap = kzalloc(bitmap_size, GFP_KERNEL);
> +		if (!bitmap) {
> +			ret = -ENOMEM;
> +			kfree(mem);
> +			i -= 1;

nit: We can use i--;

<snip>
> @@ -122,31 +167,56 @@ EXPORT_SYMBOL_GPL(pci_epc_mem_exit);
>  void __iomem *pci_epc_mem_alloc_addr(struct pci_epc *epc,
>  				     phys_addr_t *phys_addr, size_t size)
>  {
> -	int pageno;
>  	void __iomem *virt_addr = NULL;
> -	struct pci_epc_mem *mem = epc->mem;
> -	unsigned int page_shift = ilog2(mem->page_size);
> +	struct pci_epc_mem *mem;
> +	unsigned int page_shift;
> +	int pageno = -EINVAL;
>  	int order;
> +	int i;
> 
> -	size = ALIGN(size, mem->page_size);
> -	order = pci_epc_mem_get_order(mem, size);
> -
> -	mutex_lock(&mem->lock);
> -	pageno = bitmap_find_free_region(mem->bitmap, mem->pages, order);
> -	if (pageno < 0)
> -		goto ret;
> +	for (i = 0; i < epc->num_windows; i++) {
> +		mem = epc->windows[i];
> +		mutex_lock(&mem->lock);

This is my feeling though, calling mutex_lock() in the loop seems
to cause overhead. And, if we call mutex_lock() at out-of the loop,
I think we can write single mutex_unlock() calling.

> +		size = ALIGN(size, mem->window.page_size);

I'm sorry I should have realized this in the previous review,
but overwriting this size is possible to cause an issue at second time or more loops.
So, the first argument of ALIGN should be kept for the loop.

> +		order = pci_epc_mem_get_order(mem, size);
> 
> -	*phys_addr = mem->phys_base + ((phys_addr_t)pageno << page_shift);
> -	virt_addr = ioremap(*phys_addr, size);
> -	if (!virt_addr)
> -		bitmap_release_region(mem->bitmap, pageno, order);
> +		pageno = bitmap_find_free_region(mem->bitmap, mem->pages,
> +						 order);
> +		if (pageno >= 0) {
> +			page_shift = ilog2(mem->window.page_size);
> +			*phys_addr = mem->window.phys_base +
> +				((phys_addr_t)pageno << page_shift);
> +			virt_addr = ioremap(*phys_addr, size);
> +			if (!virt_addr)
> +				bitmap_release_region(mem->bitmap,
> +						      pageno, order);
> +			mutex_unlock(&mem->lock);
> +			return virt_addr;

As I mentioned above, if mutex_lock() is called at out-of-loop,
we can use "goto ret;" here like the original code,

> +		}
> +		mutex_unlock(&mem->lock);

and we can remove this.

> +	}
> 
> -ret:
> -	mutex_unlock(&mem->lock);
>  	return virt_addr;
>  }
>  EXPORT_SYMBOL_GPL(pci_epc_mem_alloc_addr);
> 
> +struct pci_epc_mem *pci_epc_get_matching_window(struct pci_epc *epc,
> +						phys_addr_t phys_addr)
> +{
> +	struct pci_epc_mem *mem;
> +	int i;
> +
> +	for (i = 0; i < epc->num_windows; i++) {
> +		mem = epc->windows[i];
> +
> +		if (phys_addr >= mem->window.phys_base &&
> +		    phys_addr < (mem->window.phys_base + mem->window.size))
> +			return mem;
> +	}
> +
> +	return NULL;
> +}
> +
>  /**
>   * pci_epc_mem_free_addr() - free the allocated memory address
>   * @epc: the EPC device on which memory was allocated
> @@ -159,14 +229,23 @@ EXPORT_SYMBOL_GPL(pci_epc_mem_alloc_addr);
>  void pci_epc_mem_free_addr(struct pci_epc *epc, phys_addr_t phys_addr,
>  			   void __iomem *virt_addr, size_t size)
>  {
> +	struct pci_epc_mem *mem;
> +	unsigned int page_shift;
> +	size_t page_size;
>  	int pageno;
> -	struct pci_epc_mem *mem = epc->mem;
> -	unsigned int page_shift = ilog2(mem->page_size);
>  	int order;
> 
> +	mem = pci_epc_get_matching_window(epc, phys_addr);
> +	if (!mem) {
> +		pr_err("failed to get matching window\n");
> +		return;
> +	}
> +
> +	page_size = mem->window.page_size;
> +	page_shift = ilog2(page_size);
>  	iounmap(virt_addr);
> -	pageno = (phys_addr - mem->phys_base) >> page_shift;
> -	size = ALIGN(size, mem->page_size);
> +	pageno = (phys_addr - mem->window.phys_base) >> page_shift;
> +	size = ALIGN(size, page_size);
>  	order = pci_epc_mem_get_order(mem, size);
>  	mutex_lock(&mem->lock);
>  	bitmap_release_region(mem->bitmap, pageno, order);
> diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
> index e0ed9d01f6e5..d5da11cf0f2a 100644
> --- a/include/linux/pci-epc.h
> +++ b/include/linux/pci-epc.h
> @@ -65,20 +65,28 @@ struct pci_epc_ops {
>  	struct module *owner;
>  };
> 
> +/**
> + * struct pci_epc_mem_window - address window of the endpoint controller
> + * @phys_base: physical base address of the PCI address window
> + * @size: the size of the PCI address window
> + * @page_size: size of each page
> + */
> +struct pci_epc_mem_window {
> +	phys_addr_t	phys_base;
> +	size_t		size;
> +	size_t		page_size;
> +};
> +
>  /**
>   * struct pci_epc_mem - address space of the endpoint controller
> - * @phys_base: physical base address of the PCI address space
> - * @size: the size of the PCI address space
> + * @window: address window of the endpoint controller
>   * @bitmap: bitmap to manage the PCI address space
> - * @pages: number of bits representing the address region
> - * @page_size: size of each page
>   * @lock: mutex to protect bitmap
> + * @pages: number of bits representing the address region

Perhaps, we should not change the "@pages" line.

Best regards,
Yoshihiro Shimoda


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

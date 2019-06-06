Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CAE036B23
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 06:50:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qr0QdMHaC5gPunoSmCz76GEhTXoB2JJ2aiDg7Doy/aE=; b=c3YjENp2IEiX/2
	py/2jcDuYkq0OBJcMsQgUmvjbP9f6ULQh1CqKi9Mq0aMmwNSxKM8FLC7hgUvR+qZyTU/GEtMbwIUU
	gj5y7ybDewgydDd5zYWvUhudm7iP4HSAUnNzLKQMdod3vrbzja07h/mgYv6tTi0/36z1uww6efC6n
	6RpyipMyOIdIRlgECVCM4gVgU9Mg9GvQ8Ir+cB3Xmzd9wR0EYg/u6xD3mqJqsCRGAYh7L2IuBkR2B
	TlW5DI4TVI4HsJIgvmAabX0cmU4vydn67ioGbkKjKDCOKS0pU/+bawDs8e8NdKv8iaNRb0PTcYbkN
	7N3HPOZOjsZt4uwHGb1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYkLe-00062z-8O; Thu, 06 Jun 2019 04:49:58 +0000
Received: from mail-eopbgr780089.outbound.protection.outlook.com
 ([40.107.78.89] helo=NAM03-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYkLW-00062c-5t
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 04:49:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GA2eHGpAu1es7HA7iiZ5inAY8Lav75+DHNtIRuBG44g=;
 b=FOOZmwcYzi1amDF2hN1yb3uHyLONXTxevKeM9GmXSK0P79kAZJg04hUD6mjH8wpxIjZ9kZ1msGdXNP9dUj+bDoXPZ7RYqZwb9wf3za2HWwVVk+e5eraSchehSpBMLakGW3K9iA7sQIUJNLfzyaKXs6qED6Yk4K9Umd+cHbpGJSA=
Received: from CH2PR02MB6453.namprd02.prod.outlook.com (52.132.228.24) by
 CH2PR02MB6232.namprd02.prod.outlook.com (52.132.230.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Thu, 6 Jun 2019 04:49:45 +0000
Received: from CH2PR02MB6453.namprd02.prod.outlook.com
 ([fe80::8121:11ae:9021:ba9e]) by CH2PR02MB6453.namprd02.prod.outlook.com
 ([fe80::8121:11ae:9021:ba9e%7]) with mapi id 15.20.1965.011; Thu, 6 Jun 2019
 04:49:45 +0000
From: Bharat Kumar Gogada <bharatku@xilinx.com>
To: Marc Zyngier <marc.zyngier@arm.com>, "lorenzo.pieralisi@arm.com"
 <lorenzo.pieralisi@arm.com>
Subject: RE: [PATCH v3] PCI: xilinx-nwl: Fix Multi MSI data programming
Thread-Topic: [PATCH v3] PCI: xilinx-nwl: Fix Multi MSI data programming
Thread-Index: AQHVFhtj/xw1FyY99Ue19JMf95x7KaaFalwAgAQ7/wCABHIyEA==
Date: Thu, 6 Jun 2019 04:49:45 +0000
Message-ID: <CH2PR02MB6453666163FAF313746EC9C4A5170@CH2PR02MB6453.namprd02.prod.outlook.com>
References: <1559133469-11981-1-git-send-email-bharat.kumar.gogada@xilinx.com>
 <20190531160956.GB9356@redmoon>
 <5de53585-e90f-77d2-bd96-025e1b39a573@arm.com>
In-Reply-To: <5de53585-e90f-77d2-bd96-025e1b39a573@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=bharatku@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 75c1fe68-9e72-44dc-6b2b-08d6ea3a65e3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:CH2PR02MB6232; 
x-ms-traffictypediagnostic: CH2PR02MB6232:
x-ld-processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
x-microsoft-antispam-prvs: <CH2PR02MB62327FB63EB7A9C6E315083CA5170@CH2PR02MB6232.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(346002)(396003)(39850400004)(366004)(199004)(189003)(6246003)(5660300002)(73956011)(54906003)(4326008)(2906002)(229853002)(107886003)(33656002)(25786009)(76116006)(66446008)(66946007)(66556008)(256004)(446003)(99286004)(71190400001)(8676002)(316002)(68736007)(476003)(66476007)(53936002)(64756008)(71200400001)(52536014)(110136005)(81166006)(81156014)(14454004)(8936002)(14444005)(6436002)(86362001)(486006)(6506007)(66066001)(3846002)(7736002)(55016002)(76176011)(102836004)(305945005)(53546011)(74316002)(9686003)(478600001)(26005)(6116002)(2501003)(11346002)(186003)(7696005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6232;
 H:CH2PR02MB6453.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: vvVqAG3Q0HxvmHlVH1M+x1cPg6RZKXrlhKaYlRO9Zd7S+2lUpEr4/j9bC4+jphxgIW99vuPXTIRFISjjnmW69aD+V09U8mzgTFp0BfZc06WOD29pubAryTV2q/dViQSzoKVoS1nCP/jZKb4iUGFrOyWq1DgecHitcL256c+ibKtIJt3iBezSNdQKaAfCoBIhTYr2pbI6lUDjWBy9o/sDDSP2/xpFwDgM5n4NK75Ru0kxOInYxPiRkI0z6Geqa7ejaghjl6ksCbhvnHsH2luU+C+2MxVHTwfDyUuY7EOWkP5Emqbx/EoqAw+Z8lsXMNWBnmNjN10vIrZdmne5xjGIXGrJrN1NBgpqGnN+U7k23pv4H2BdpkBHvSfMwISpA5+IvqOtbnnf48klJX40hMoXhnp3Mn8FMIFgUPnbOoKqrcM=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75c1fe68-9e72-44dc-6b2b-08d6ea3a65e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 04:49:45.5970 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bharatku@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6232
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_214950_218961_8D33C62A 
X-CRM114-Status: GOOD (  30.96  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.78.89 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "bhelgaas@google.com" <bhelgaas@google.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Ravikiran Gummaluri <rgummal@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> On 31/05/2019 17:09, Lorenzo Pieralisi wrote:
> > [+Marc]
> >
> > On Wed, May 29, 2019 at 06:07:49PM +0530, Bharat Kumar Gogada wrote:
> >> The current Multi MSI data programming fails if multiple end points
> >> requesting MSI and multi MSI are connected with switch, i.e the
> >> current multi MSI data being given is not considering the number of
> >> vectors being requested in case of multi MSI.
> >> Ex: Two EP's connected via switch, EP1 requesting single MSI first,
> >> EP2 requesting Multi MSI of count four. The current code gives MSI
> >> data 0x0 to EP1 and 0x1 to EP2, but EP2 can modify lower two bits due
> >> to which EP2 also sends interrupt with MSI data 0x0 which results in
> >> always invoking virq of EP1 due to which EP2 MSI interrupt never gets
> >> handled.
> >
> > If this is a problem it is not the only driver where it should be
> > fixed it seems. CC'ed Marc in case I have missed something in relation
> > to MSI IRQs but AFAIU it looks like HW is allowed to toggled bits
> > (according to bits[6:4] in Message Control for MSI) in the MSI data,
> > given that the data written is the hwirq number (in this specific MSI
> > controller) it ought to be fixed.
> 
> Yeah, it looks like a number of MSI controllers could be quite broken in this
> particular area.
> 
> >
> > The commit log and patch should be rewritten (I will do that) but
> > first I would like to understand if there are more drivers to be
> > updated.
> >
> > 
Hi Lorenzo and Marc, thanks for your time.
Marc, I'm yet to test the below suggested solution,
GIC v2m and GIC v3 supports multi MSI, do we see above issue in these MSI controllers ?

Regards,
Bharat
> >
> >> Fix Multi MSI data programming with required alignment by using
> >> number of vectors being requested.
> >>
> >> Fixes: ab597d35ef11 ("PCI: xilinx-nwl: Add support for Xilinx NWL
> >> PCIe Host Controller")
> >> Signed-off-by: Bharat Kumar Gogada <bharat.kumar.gogada@xilinx.com>
> >> ---
> >> V3:
> >>  - Added example description of the issue
> >> ---
> >>  drivers/pci/controller/pcie-xilinx-nwl.c | 11 ++++++++++-
> >>  1 file changed, 10 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/pci/controller/pcie-xilinx-nwl.c
> >> b/drivers/pci/controller/pcie-xilinx-nwl.c
> >> index 81538d7..8efcb8a 100644
> >> --- a/drivers/pci/controller/pcie-xilinx-nwl.c
> >> +++ b/drivers/pci/controller/pcie-xilinx-nwl.c
> >> @@ -483,7 +483,16 @@ static int nwl_irq_domain_alloc(struct
> irq_domain *domain, unsigned int virq,
> >>  	int i;
> >>
> >>  	mutex_lock(&msi->lock);
> >> -	bit = bitmap_find_next_zero_area(msi->bitmap, INT_PCI_MSI_NR, 0,
> >> +
> >> +	/*
> >> +	 * Multi MSI count is requested in power of two
> >> +	 * Check if multi msi is requested
> >> +	 */
> >> +	if (nr_irqs % 2 == 0)
> >> +		bit = bitmap_find_next_zero_area(msi->bitmap,
> INT_PCI_MSI_NR, 0,
> >> +					 nr_irqs, nr_irqs - 1);
> >> +	else
> >> +		bit = bitmap_find_next_zero_area(msi->bitmap,
> INT_PCI_MSI_NR, 0,
> >>  					 nr_irqs, 0);
> >>  	if (bit >= INT_PCI_MSI_NR) {
> >>  		mutex_unlock(&msi->lock);
> >> --
> >> 2.7.4
> >>
> 
> This doesn't look like the best fix. The only case where nr_irqs is not
> set to 1 is when using Multi-MSI, so the '% 2' case actually covers all
> cases. Now, and in the interest of consistency, other drivers use a
> construct such as:
> 
> offset = bitmap_find_free_region(bitmap, bitmap_size,
> 				 get_count_order(nr_irqs));
> 
> which has the advantage of dealing with the bitmap setting as well.
> 
> I'd suggest something like this (completely untested):
> 
> diff --git a/drivers/pci/controller/pcie-xilinx-nwl.c
> b/drivers/pci/controller/pcie-xilinx-nwl.c
> index 3b031f00a94a..8b9b58909e7c 100644
> --- a/drivers/pci/controller/pcie-xilinx-nwl.c
> +++ b/drivers/pci/controller/pcie-xilinx-nwl.c
> @@ -482,15 +482,13 @@ static int nwl_irq_domain_alloc(struct
> irq_domain *domain, unsigned int virq,
>  	int i;
> 
>  	mutex_lock(&msi->lock);
> -	bit = bitmap_find_next_zero_area(msi->bitmap, INT_PCI_MSI_NR, 0,
> -					 nr_irqs, 0);
> -	if (bit >= INT_PCI_MSI_NR) {
> +	bit = bitmap_find_free_region(msi->bitmap, INT_PCI_MSI_NR,
> +				      get_count_order(nr_irqs));
> +	if (bit < 0) {
>  		mutex_unlock(&msi->lock);
>  		return -ENOSPC;
>  	}
> 
> -	bitmap_set(msi->bitmap, bit, nr_irqs);
> -
>  	for (i = 0; i < nr_irqs; i++) {
>  		irq_domain_set_info(domain, virq + i, bit + i, &nwl_irq_chip,
>  				domain->host_data, handle_simple_irq,
> @@ -508,7 +506,7 @@ static void nwl_irq_domain_free(struct irq_domain
> *domain, unsigned int virq,
>  	struct nwl_msi *msi = &pcie->msi;
> 
>  	mutex_lock(&msi->lock);
> -	bitmap_clear(msi->bitmap, data->hwirq, nr_irqs);
> +	bitmap_release_region(msi->bitmap, data->hwirq,
> get_count_order(nr_irqs));
>  	mutex_unlock(&msi->lock);
>  }
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

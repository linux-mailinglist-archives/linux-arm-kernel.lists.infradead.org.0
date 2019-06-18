Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B04934A0C1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 14:28:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6xCTyE4Rpb839jKZ6hB0SZM4s0nMukoJZqtbsjqWvXI=; b=ugw7Cq5w7HCaWe
	puE91q4ikLZ1YkQhUETKgJdMYumzJ5Zy/Az4weMtR1N2lhXECCSRDrxONno8cCwYS8dVq4tP79OfQ
	ClBPitPAXSwKH86KITZyBGo8H6736HxwXzKFr/l7C99SUCtQsZ4mslHS0+MW0i7KHBVkdlpr9t+K1
	IzqSyyNxHfMpPSeNzMSW87ZF9P/fG9aEhE3dHnF1QPeviOS5bw5VCsz/eDEGKguVCbZ/ONyNEhWaK
	acwo1Y0CEYPAkib+sSCq51N+UwRC+EOAkZEJcugQzCBcz/+YQJRBrtgWSBSDUQsIZHK4VQVxT4Kd0
	tBqZxfA2ZH6lOEcYKFbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdDDm-0006Oz-7W; Tue, 18 Jun 2019 12:28:18 +0000
Received: from mail-eopbgr810073.outbound.protection.outlook.com
 ([40.107.81.73] helo=NAM01-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdDDb-0006OU-6R
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 12:28:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Zm0jDVCCqDNt3W3hYGDEGAmc01tkRV943G38pqB4Sk=;
 b=sRKGWk/SCxhS/YV7Q3c+BqvnrQegVnK8Qi+BOiWALDnQVnyitVkldjEhLaKjIKGzIsWMdNbF0K3vc7CFWPfNdJxyvM9zdRwXURTlH94SOJBrxTpjsc6tOnbaz2hvTiMHKaxYALjtYZqBPz5ehU4qh5ySRrqqpgWwjHuiS/3w7hI=
Received: from CH2PR02MB6453.namprd02.prod.outlook.com (52.132.228.24) by
 CH2PR02MB6038.namprd02.prod.outlook.com (10.255.156.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.12; Tue, 18 Jun 2019 12:28:02 +0000
Received: from CH2PR02MB6453.namprd02.prod.outlook.com
 ([fe80::8121:11ae:9021:ba9e]) by CH2PR02MB6453.namprd02.prod.outlook.com
 ([fe80::8121:11ae:9021:ba9e%7]) with mapi id 15.20.1987.014; Tue, 18 Jun 2019
 12:28:02 +0000
From: Bharat Kumar Gogada <bharatku@xilinx.com>
To: "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>
Subject: RE: [PATCH v4] PCI: xilinx-nwl: Fix Multi MSI data programming
Thread-Topic: [PATCH v4] PCI: xilinx-nwl: Fix Multi MSI data programming
Thread-Index: AQHVIQgn2G+6s2M/0EWS6kSrcyuXeqafme0AgAHGMRA=
Date: Tue, 18 Jun 2019 12:28:02 +0000
Message-ID: <CH2PR02MB6453032A01A540F5E9C58402A5EA0@CH2PR02MB6453.namprd02.prod.outlook.com>
References: <1560334679-9206-1-git-send-email-bharat.kumar.gogada@xilinx.com>
 <20190617092108.GA18020@e121166-lin.cambridge.arm.com>
In-Reply-To: <20190617092108.GA18020@e121166-lin.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=bharatku@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a8a8c915-509f-4a90-5541-08d6f3e86840
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:CH2PR02MB6038; 
x-ms-traffictypediagnostic: CH2PR02MB6038:
x-ld-processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
x-microsoft-antispam-prvs: <CH2PR02MB6038D8E2226D32A77D3FD2D0A5EA0@CH2PR02MB6038.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 007271867D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(136003)(376002)(346002)(366004)(189003)(199004)(64756008)(102836004)(2351001)(26005)(6506007)(478600001)(66556008)(11346002)(66446008)(73956011)(6436002)(66476007)(7696005)(55016002)(33656002)(66946007)(446003)(76116006)(5640700003)(76176011)(476003)(86362001)(486006)(6246003)(107886003)(186003)(74316002)(4326008)(25786009)(5660300002)(68736007)(7736002)(8676002)(71190400001)(71200400001)(66066001)(2501003)(81166006)(81156014)(14444005)(256004)(6916009)(229853002)(8936002)(6116002)(3846002)(52536014)(9686003)(99286004)(2906002)(316002)(54906003)(53936002)(305945005)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6038;
 H:CH2PR02MB6453.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: WNdCFm0SSUIRPzx9vJ8YYWRjSWAyk+/mprF8p4ksaYl2r5T/Eyb+L/lnTQGILW30TgI7CLFxhafHZpdGztSP3Ww49WrPnUrVRcW4gBbF7tN/gMZKJvTYtCaZG0cR1GjU/7WOVxgCZYTRPvZjYv4BsFcv5FtSdpgr9N5g6mfrahFWNiGkexYKu0tFBj+KAaHnZQ2lDG0neTqj/GZsXE8z0ODHetwS7EBEGieP5sSCcN9o6WQi4IQZ8gK1kef80d4sXO47xwaeobRm0+H0s0JMmT/OOQBNo2L3Opk2s1EV9xNbNPr3A7AnOT2NIlTrEofd0iI311Y+E0aEMoGauAG1DcWHjqE9qbYqMAPnKZQxli0Kb/TO1MZsmAlvRWBqtYQZeYRdKGa2Qije/NZjgEET5ysNmU7soPthTWrTslfLPFk=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a8a8c915-509f-4a90-5541-08d6f3e86840
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2019 12:28:02.4873 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bharatku@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_052807_303998_904B1BEB 
X-CRM114-Status: GOOD (  19.47  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.81.73 listed in list.dnswl.org]
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
Cc: "marc.zyngier@arm.com" <marc.zyngier@arm.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ravikiran Gummaluri <rgummal@xilinx.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> 
> On Wed, Jun 12, 2019 at 03:47:59PM +0530, Bharat Kumar Gogada wrote:
> > The current Multi MSI data programming fails if multiple end points
> > requesting MSI and multi MSI are connected with switch, i.e the
> > current multi MSI data being given is not considering the number of
> > vectors being requested in case of multi MSI.
> > Ex: Two EP's connected via switch, EP1 requesting single MSI first,
> > EP2 requesting Multi MSI of count four. The current code gives MSI
> > data 0x0 to EP1 and 0x1 to EP2, but EP2 can modify lower two bits due
> > to which EP2 also sends interrupt with MSI data 0x0 which results in
> > always invoking virq of EP1 due to which EP2 MSI interrupt never gets
> > handled.
> >
> > Fix Multi MSI data programming with required alignment by using number
> > of vectors being requested.
> >
> > Fixes: ab597d35ef11 ("PCI: xilinx-nwl: Add support for Xilinx NWL PCIe
> > Host Controller")
> >
> > Signed-off-by: Bharat Kumar Gogada <bharat.kumar.gogada@xilinx.com>
> > ---
> > V4:
> >  - Using a different bitmap registration API whcih serves single and multi
> >    MSI requests.
> > ---
> >  drivers/pci/controller/pcie-xilinx-nwl.c | 11 +++++------
> >  1 file changed, 5 insertions(+), 6 deletions(-)
> 
> Applied to pci/xilinx for v5.3, please have a look and check if the commit log
> I wrote provides a clear description of the issue.
> 
> Lorenzo
Thanks Lorenzo and Marc.
Lorenzo, can you please point to link for above commit.

Regards,
Bharat
> > diff --git a/drivers/pci/controller/pcie-xilinx-nwl.c
> > b/drivers/pci/controller/pcie-xilinx-nwl.c
> > index 81538d7..a9e07b8 100644
> > --- a/drivers/pci/controller/pcie-xilinx-nwl.c
> > +++ b/drivers/pci/controller/pcie-xilinx-nwl.c
> > @@ -483,15 +483,13 @@ static int nwl_irq_domain_alloc(struct
> irq_domain *domain, unsigned int virq,
> >  	int i;
> >
> >  	mutex_lock(&msi->lock);
> > -	bit = bitmap_find_next_zero_area(msi->bitmap, INT_PCI_MSI_NR, 0,
> > -					 nr_irqs, 0);
> > -	if (bit >= INT_PCI_MSI_NR) {
> > +	bit = bitmap_find_free_region(msi->bitmap, INT_PCI_MSI_NR,
> > +				      get_count_order(nr_irqs));
> > +	if (bit < 0) {
> >  		mutex_unlock(&msi->lock);
> >  		return -ENOSPC;
> >  	}
> >
> > -	bitmap_set(msi->bitmap, bit, nr_irqs);
> > -
> >  	for (i = 0; i < nr_irqs; i++) {
> >  		irq_domain_set_info(domain, virq + i, bit + i, &nwl_irq_chip,
> >  				domain->host_data, handle_simple_irq, @@
> -509,7 +507,8 @@ static
> > void nwl_irq_domain_free(struct irq_domain *domain, unsigned int virq,
> >  	struct nwl_msi *msi = &pcie->msi;
> >
> >  	mutex_lock(&msi->lock);
> > -	bitmap_clear(msi->bitmap, data->hwirq, nr_irqs);
> > +	bitmap_release_region(msi->bitmap, data->hwirq,
> > +			      get_count_order(nr_irqs));
> >  	mutex_unlock(&msi->lock);
> >  }
> >
> > --
> > 2.7.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

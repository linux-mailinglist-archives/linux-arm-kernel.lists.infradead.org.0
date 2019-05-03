Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 834601326F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 18:46:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xT4ipbTs3KUlzZTM++CHlfvF1zlxCAouK83uc4/cZKo=; b=jRsL5BgPWY81+P
	FrSnAecIZQFFIp08T+gTVoCl3+qnC5WB+pUZ2thWBNwivw4CbXBzirN1vaE+Tbr2kpenAiCeiUnBc
	WLXkO9AE7EGiuyO0FxqH+7V9jsQ34t2sumrTOGnMnkLvmxl8VeF9YEmZFD0u3E1VSNqhwYN5L4Yim
	1T0y39IAo1bgx+QCeyoFAf87fM49EQehsNlQwFAfbTiIBGYup7N+tRvgbAkeSiw6rU527C9YDAsyr
	7i/Sb2GcG37Xc7MbMeS+ksn2WitSIuXiMPWqMHJ1yamwL8rAQzL0fnItzNnsf+lo2YidYWFQ+K3p6
	zkCsmQ7FkC5yGjGg+12g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMbKI-0003wW-Sw; Fri, 03 May 2019 16:46:22 +0000
Received: from mail-eopbgr760045.outbound.protection.outlook.com
 ([40.107.76.45] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMbKB-0003kT-7u
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 16:46:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZyeKXjuLVx4N3byCKRmz6/xpeVmn9stm0hlwtFtwJ38=;
 b=fAazJZIjQnYDfWZ0OVyUF0MZ8bUu3ni6qCeF2wB6JNuQLDfYts8MnvCA2P+x1nw8W43Tf+0Uv2owYZ85K5yHrlJ0akmPMMeLkVRrFswa0lvifQgd6uyYasK1bQguWkQXvTcBJTjO8T6qu94XF2P2W7l/uIVVE/TERYhTne7MwyA=
Received: from BL0PR02MB5681.namprd02.prod.outlook.com (20.177.241.92) by
 BL0PR02MB5554.namprd02.prod.outlook.com (20.177.241.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.15; Fri, 3 May 2019 16:46:12 +0000
Received: from BL0PR02MB5681.namprd02.prod.outlook.com
 ([fe80::6cde:f726:b36e:752d]) by BL0PR02MB5681.namprd02.prod.outlook.com
 ([fe80::6cde:f726:b36e:752d%5]) with mapi id 15.20.1856.012; Fri, 3 May 2019
 16:46:12 +0000
From: Dragan Cvetic <draganc@xilinx.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: RE: [PATCH V3 04/12] misc: xilinx_sdfec: Add open, close and ioctl
Thread-Topic: [PATCH V3 04/12] misc: xilinx_sdfec: Add open, close and ioctl
Thread-Index: AQHU/UVLGOE4w/2X+U+k4o4ho4ebiKZYHQyAgAGHpkA=
Date: Fri, 3 May 2019 16:46:12 +0000
Message-ID: <BL0PR02MB568178214B7789431977E91BCB350@BL0PR02MB5681.namprd02.prod.outlook.com>
References: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
 <1556402706-176271-5-git-send-email-dragan.cvetic@xilinx.com>
 <20190502172345.GC1874@kroah.com>
In-Reply-To: <20190502172345.GC1874@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=draganc@xilinx.com; 
x-originating-ip: [149.199.80.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8b40228e-8ec4-4a49-2613-08d6cfe6da03
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:BL0PR02MB5554; 
x-ms-traffictypediagnostic: BL0PR02MB5554:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BL0PR02MB55545B0DEE28FC221B76E5D8CB350@BL0PR02MB5554.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 0026334A56
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(39860400002)(136003)(346002)(396003)(189003)(199004)(13464003)(6916009)(7736002)(6506007)(53546011)(316002)(4744005)(9686003)(76116006)(76176011)(66946007)(186003)(6246003)(66066001)(73956011)(102836004)(26005)(256004)(7696005)(14444005)(55016002)(4326008)(99286004)(6306002)(66476007)(5660300002)(305945005)(478600001)(8936002)(71190400001)(54906003)(476003)(74316002)(486006)(33656002)(53936002)(8676002)(68736007)(11346002)(86362001)(71200400001)(107886003)(229853002)(52536014)(14454004)(81156014)(6436002)(81166006)(66556008)(2906002)(3846002)(6116002)(64756008)(966005)(25786009)(66446008)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB5554;
 H:BL0PR02MB5681.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: kDgpFwzbaFdpn54ECrAxppV6QyF54Rk/HpcCdlGrSd6I4Run4EalxQLK43hj1hRVRUjhYWxpBZ/y9YDN77izkxzls5GKhlMYRQvvmkwhWRQ1OY5VBlXQW9R9iSKGHaCxqoMiUyGehnrTaC6pmNxLenBZwQwlub9EO6JTgYwQzSEM0n4lILmv/NKOKx+MgQmzHBaxRE9nV86wcfdf5MX39empKw5d2kaHUrej2KhadxJK9biL5MWIeYkfN8SYB6/oSDS1uBaZxOO74faAkQfKqNXiMRhRcdRObnoSmP9QngtBnDuGfLUvFA69gbrKCo/eZCdJEshs1OlMsWtS+frGi7t7V+EW3y8/+cBkGOPomtuSPbGk8na0dwd4DGscsx+1E7SlTynydEoGgv4tIt0yLDM8S0VCcYd0+cYv7QMbObs=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b40228e-8ec4-4a49-2613-08d6cfe6da03
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2019 16:46:12.5121 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB5554
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_094615_285866_D2470E64 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "arnd@arndb.de" <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Michal Simek <michals@xilinx.com>,
 Derek Kiernan <dkiernan@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Greg KH [mailto:gregkh@linuxfoundation.org]
> Sent: Thursday 2 May 2019 18:24
> To: Dragan Cvetic <draganc@xilinx.com>
> Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> Subject: Re: [PATCH V3 04/12] misc: xilinx_sdfec: Add open, close and ioctl
> 
> On Sat, Apr 27, 2019 at 11:04:58PM +0100, Dragan Cvetic wrote:
> > Add char device interface per DT node present and support
> > file operations:
> > - open(),
> > - close(),
> > - unlocked_ioctl(),
> > - compat_ioctl().
> 
> Why do you need compat_ioctl() at all?  Any "new" driver should never
> need it.  Just create your structures properly.

This was a comment from Arnd, see https://lkml.org/lkml/2019/3/19/377.
Please advise.

> 
> thanks,
> 
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

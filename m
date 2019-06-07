Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A32E38806
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 12:34:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8LvCyU5uAYQqSfyH5DkpAaGhUKlNA6Roa2ivkukz7HE=; b=BhKOBLHhtcyH3a
	9nsEzgV0AgrwjfAoAgoab1fhkhOgCyJa865+kuDgl5kUQLD8OPT7M8mX5jYUoV1Kp6hnS3aQETGgW
	7BFWqnqJwE7vDpFSH4Cm1r0AQY44obIcO7mOAdaEi8pTrgT1cuEBoiCY9Ek7GUen2t7a9DzVKhgTr
	nRlktPFl1RkLog304XZq/ki0VCrRwcOVikXsFYNDVu6YpVrr4U3szldvilHpIh+Tu9TpOXfW+Q3MF
	SZ+eNDuroFCDw1Ix0uSmHgvZye7vBUoLrtusxruSKhw7eo9SarBQGDkYht1yTvaY9eL5/4FU0XF9y
	ruEVWiL0dJI/WBFkBybw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZCCc-0003u6-JQ; Fri, 07 Jun 2019 10:34:30 +0000
Received: from mail-db5eur03on060b.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::60b]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZCCT-0003tI-De
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 10:34:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z5pyzSK8lTfLo8/0AahnfN56P3TILhaeqNw8O9n7K90=;
 b=Oc8UW3z29ceFeK0tnUXjOjHVGqKj3uxKLb+Kj7AkjbCCKpiWW0Az9u0Tc3nqxud2Q+u/SYDLguB7YyXNwpsF8lTgFDMO7sYmkz81i9VvQ74wCMEGtRlkh2URVrn7Q1OaQe6U+xkk2qXRj1Yp6/Otkk2fh6w+JF9g42RbJ7Xmf7k=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB5099.eurprd08.prod.outlook.com (10.255.18.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Fri, 7 Jun 2019 10:34:15 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::b4db:b3ed:75ff:167]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::b4db:b3ed:75ff:167%3]) with mapi id 15.20.1965.011; Fri, 7 Jun 2019
 10:34:15 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Catalin Marinas <Catalin.Marinas@arm.com>
Subject: Re: [PATCH v2 12/12] arm64: mm: Introduce 52-bit Kernel VAs
Thread-Topic: [PATCH v2 12/12] arm64: mm: Introduce 52-bit Kernel VAs
Thread-Index: AQHVFXBfQ/qgG7U3eU6OwvEdwXAf8KaNPYGAgALQoAA=
Date: Fri, 7 Jun 2019 10:34:15 +0000
Message-ID: <20190607103353.GA1509@capper-debian.cambridge.arm.com>
References: <20190528161026.13193-1-steve.capper@arm.com>
 <20190528161026.13193-13-steve.capper@arm.com>
 <20190605153441.GC50849@arrakis.emea.arm.com>
In-Reply-To: <20190605153441.GC50849@arrakis.emea.arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [113.29.88.7]
x-clientproxiedby: DM5PR18CA0053.namprd18.prod.outlook.com
 (2603:10b6:3:22::15) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0f2816b0-2533-4d7d-7cc0-08d6eb33afa1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB5099; 
x-ms-traffictypediagnostic: DB8PR08MB5099:
nodisclaimer: True
x-microsoft-antispam-prvs: <DB8PR08MB509907C790740E918F04B08481100@DB8PR08MB5099.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0061C35778
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39850400004)(376002)(346002)(136003)(366004)(189003)(199004)(66066001)(478600001)(72206003)(99286004)(81156014)(58126008)(6862004)(33656002)(81166006)(8676002)(71200400001)(5660300002)(71190400001)(7736002)(6506007)(476003)(386003)(6246003)(54906003)(486006)(55236004)(316002)(52116002)(3846002)(26005)(6116002)(44832011)(68736007)(53936002)(229853002)(11346002)(76176011)(446003)(186003)(2906002)(102836004)(6486002)(86362001)(6436002)(73956011)(66446008)(66476007)(66556008)(64756008)(66946007)(1076003)(305945005)(8936002)(6636002)(4326008)(14454004)(6512007)(256004)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5099;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: RFfhgBGh6MtVdxXtIBj5UJkdPISzBXeNB9n7NcOQQyH4Fh0Fm9qZZT2XXvB9oDU/2p14MxL0SHeTplvTzciOg6DxxADlUTGOCWIGU6MwU/Q9XEs7LEniofpLYyqICzAYefBevGJDNbj+EbHsXhxY5nwgX75+9WAHetO45Y7C0ykJfeoSMdr4/H0CwwdiT8XDWMwF50bBHYY/wmCIbOXOq+Uwr4wtEHMDwR1L4sx5t8DXdD1lJnPfrjtoZcuKpZcIzmNN4H6/HympIC0yAjQwWshA9COrtL3opnNw2HvxTmmSma6tRYlxF9KzOEw5Rtp85Xv1/A1WlLx8UeaTMmP3VMq98RlmL116/ATiFNK45JU/Zx1H6nNkwuBSLkc7GeB4wM6vykqwZB8gf1Rsg27Gyyjh/RSoA7trKSC8lJwrtvk=
Content-ID: <608A9A2FFD7D93499E0913E814A43B17@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f2816b0-2533-4d7d-7cc0-08d6eb33afa1
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2019 10:34:15.2843 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Steve.Capper@arm.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5099
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_033421_493507_3E06083B 
X-CRM114-Status: GOOD (  20.98  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:60b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "crecklin@redhat.com" <crecklin@redhat.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 Marc Zyngier <Marc.Zyngier@arm.com>,
 "bhsharma@redhat.com" <bhsharma@redhat.com>, Will Deacon <Will.Deacon@arm.com>,
 nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 05, 2019 at 04:34:41PM +0100, Catalin Marinas wrote:
> Hi Steve,

Hi Catalin,

> 
> On Tue, May 28, 2019 at 05:10:26PM +0100, Steve Capper wrote:
> >  config ARM64_USER_VA_BITS_52
> >  	bool "52-bit (user)"
> >  	depends on ARM64_64K_PAGES && (ARM64_PAN || !ARM64_SW_TTBR0_PAN)
> > +	select HAS_VA_BITS_52
> >  	help
> >  	  Enable 52-bit virtual addressing for userspace when explicitly
> >  	  requested via a hint to mmap(). The kernel will continue to
> > @@ -751,11 +755,28 @@ config ARM64_USER_VA_BITS_52
> >  
> >  	  If unsure, select 48-bit virtual addressing instead.
> >  
> > +config ARM64_USER_KERNEL_VA_BITS_52
> > +	bool "52-bit (user & kernel)"
> > +	depends on ARM64_64K_PAGES && (ARM64_PAN || !ARM64_SW_TTBR0_PAN)
> > +	select HAS_VA_BITS_52
> > +	help
> > +	  Enable 52-bit virtual addressing for userspace when explicitly
> > +	  requested via a hint to mmap(). The kernel will also use 52-bit
> > +	  virtual addresses for its own mappings (provided HW support for
> > +	  this feature is available, otherwise it reverts to 48-bit).
> > +
> > +	  NOTE: Enabling 52-bit virtual addressing in conjunction with
> > +	  ARMv8.3 Pointer Authentication will result in the PAC being
> > +	  reduced from 7 bits to 3 bits, which may have a significant
> > +	  impact on its susceptibility to brute-force attacks.
> > +
> > +	  If unsure, select 48-bit virtual addressing instead.
> 
> With the latest version of this series, it doesn't look like will get a
> performance hit for enabling 52-bit VA for the kernel (well, subject to
> some testing). If that's the case, is it still worth having separate
> user and user+kernel 52-bit VA Kconfig entries? It also gets pretty
> confusing as I think you can now select both or just the latter for the
> same feature.

Yeah, I was wondering if it would be better to just have a single
52-bit VA configuration entry. I think the performance should be fine.

> 
> BTW, do you plan to repost following comments? At a quick look, the
> reset of the patches seem fine to me.
> 

Thanks :-)

I'll repost another version of the series with a few simplifications
that Ard and Marc mentioned along with single 52-bit VA configuration
option.

Cheers,
-- 
Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

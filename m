Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B754609C6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:51:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1u29AVo3goxW01uA4xAP29p6pVeV1FuBU4x+emZ+19c=; b=DN4mS7CiMB1v3f
	6evagvcAg/JZNFWRrhErTyVU/RsGdg+hPix+7XK9qShxVfxfp8rT6hohcYcrP9+MAR/8ucbSTY2vR
	J7J05pguvpIh/BcV6nHB1qV5ffh5zc10J1/tir2r1Faf8tdfz40WbJivgiM2XFJZmehYgOl5nkJP3
	PiBVGiV4nkoZNHXEZUDgPSevgqYEuIOZnH1Dao3nqwLPR+BpdwueP29s8Wln12InKU4978Lhctb5h
	+Qw04Xa30/gCiRskZeYERbxxQu+pCkEVvHfDT0KveN1pLaDSjk4CVup1aWakI8d84Z2QZgB5XwT+L
	xYIQr7kOGK0gEqlKWPvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQUk-0006ra-JA; Fri, 05 Jul 2019 15:51:30 +0000
Received: from mail-eopbgr20086.outbound.protection.outlook.com ([40.107.2.86]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQQi-0001la-Vw
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 15:47:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YxxJg4MIQ+kXyl/JgM+TzdLaXplemI/Hm2Vm6B9MMgg=;
 b=WfGwnsreFN2W6n4FYF56NOwkTFfhAVZd+oWsfT5Qq2/xWDoyXSG3m+py4VJ3TcOdHOcJHwUv4hA4GBgEVO6Ciu7ih4RDE4H9GDsJUw5ttiwWJzNJae1wQW/xh8uGJzID3UaGRWgzybPvPq4H4HHXn6k+WvHp6Xj476t+7h80V1o=
Received: from VI1PR05MB4141.eurprd05.prod.outlook.com (10.171.182.144) by
 VI1PR05MB4157.eurprd05.prod.outlook.com (10.171.182.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Fri, 5 Jul 2019 15:47:17 +0000
Received: from VI1PR05MB4141.eurprd05.prod.outlook.com
 ([fe80::f5d8:df9:731:682e]) by VI1PR05MB4141.eurprd05.prod.outlook.com
 ([fe80::f5d8:df9:731:682e%5]) with mapi id 15.20.2052.019; Fri, 5 Jul 2019
 15:47:17 +0000
From: Jason Gunthorpe <jgg@mellanox.com>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH v3 0/4] Devmap cleanups + arm64 support
Thread-Topic: [PATCH v3 0/4] Devmap cleanups + arm64 support
Thread-Index: AQHVK/HAM2r3dJ5EjUuvQfApLyHQmKat3lEAgAA0MoCAAAH5AIAAxnaAgAwArgCAABJ8AIAADxQAgAAJ3QCAATLjgA==
Date: Fri, 5 Jul 2019 15:47:16 +0000
Message-ID: <20190705154713.GF31525@mellanox.com>
References: <cover.1558547956.git.robin.murphy@arm.com>
 <20190626073533.GA24199@infradead.org>
 <20190626123139.GB20635@lakrids.cambridge.arm.com>
 <20190626153829.GA22138@infradead.org> <20190626154532.GA3088@mellanox.com>
 <20190626203551.4612e12be27be3458801703b@linux-foundation.org>
 <20190704115324.c9780d01ef6938ab41403bf9@linux-foundation.org>
 <20190704195934.GA23542@mellanox.com>
 <20190704135332.234891ac6ce641bf29913d06@linux-foundation.org>
 <20190704212850.GB23542@mellanox.com>
In-Reply-To: <20190704212850.GB23542@mellanox.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BL0PR0102CA0037.prod.exchangelabs.com
 (2603:10b6:208:25::14) To VI1PR05MB4141.eurprd05.prod.outlook.com
 (2603:10a6:803:4d::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jgg@mellanox.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [156.34.55.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bae908f3-8803-4511-a3c6-08d701600e6a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR05MB4157; 
x-ms-traffictypediagnostic: VI1PR05MB4157:
x-microsoft-antispam-prvs: <VI1PR05MB4157E5DC3835CEF64F122137CFF50@VI1PR05MB4157.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 008960E8EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(136003)(346002)(39860400002)(366004)(189003)(199004)(66446008)(66556008)(64756008)(66476007)(66946007)(73956011)(6246003)(68736007)(36756003)(53936002)(71190400001)(71200400001)(6436002)(14444005)(256004)(11346002)(476003)(2616005)(6512007)(1076003)(5660300002)(446003)(86362001)(486006)(54906003)(386003)(7416002)(81156014)(25786009)(3846002)(6116002)(102836004)(6916009)(8676002)(14454004)(33656002)(99286004)(76176011)(229853002)(66066001)(6486002)(52116002)(6506007)(2906002)(4326008)(305945005)(316002)(81166006)(8936002)(26005)(478600001)(7736002)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR05MB4157;
 H:VI1PR05MB4141.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0/6Z+Bfs/UvVgFelpooJC+yb5+DJ55uzjAsttdFZPI8cmBLjPsYzungODysy6hjpr18R6P/3meVc8KOhdZPgJQuMVBtFQhczTA7Wdw7H4ZRKu/96B68qJD0sh0DxxBqfEeWFvkJxTJJqFKvuDMKq0wjmLja3Vm+NJ7Ouxioy3/qDjdAxJdeTQYdXC2AlwmlMXWSGB4LnDfjhwQJpmqu9KjANmkqfmxLRUwhcbufFnCWYtpUD8UXRCOIVr4szwSklgvYs1PDp6uv6Uq/qSgcPzFrFVjm007CKBefMP70suVIsSGomXML1Mb1DTvgLDHBx4NtifsL0MerLiwoBZV7m6p2ERH9Onfx+XqZ2kLG0IaW5wP9fW/iRteoSGvBkdwXs/cinq6QhFaVAiZjbVBjukBjNIY3mcqMGq/JE8lwioio=
Content-ID: <447BAA9C69B30443BF5B2CEE61EC6F33@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bae908f3-8803-4511-a3c6-08d701600e6a
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2019 15:47:16.9430 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jgg@mellanox.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4157
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_084721_127699_274EBED4 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Michal Hocko <mhocko@suse.com>,
 "anshuman.khandual@arm.com" <anshuman.khandual@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Dan Williams <dan.j.williams@intel.com>, Robin Murphy <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 04, 2019 at 06:28:50PM -0300, Jason Gunthorpe wrote:

> > It's a large patchset and it appears to be mainly (entirely?) code
> > cleanups.  I don't think such material would be appropriate for a late
> > -rc7 merge even if it didn't conflict with lots of other higher
> > priority pending functional changes and fixes!
> 
> I see your other email you resolved the conflicts - so please let me
> know if you want to proceed with dropping CH's series or not, I'll
> make a special effort to get that change into tomorrows linux-next if
> you want (it is already 6pm here)

I spent some time this morning looking at the various conflicts, and I
think Dan is right, they are mangable. In the sense we can forward a
merge resolution to Linus and it is not completely crazy. Most hunks
are the usual mechanical sort of conflicts.

Like Stephen, only two small conflict hunks in the memremap.c give me
any pause, and I'm confident with CH and Dan's help it can be resolved
robustly. If Linus doesn't like it then we fall back to dropping CH's
series.

So, here is a fourth idea..

We remove hmm.git entirely from your workflow (ie you revert commit
"cc5dfd59e375f Merge branch 'hmm-devmem-cleanup.4' into rdma.git hmm"
in your local version of linux-next) and I will send hmm.git to Linus
after Dan's patches and others are merged by you to Linus. With Dan
and CH's help I will forward the reviewed conflict resolution.

This will not disturb the -mm patch workflow at all, and you can put
everything back the way it was on July 3.

What do you think about this?

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

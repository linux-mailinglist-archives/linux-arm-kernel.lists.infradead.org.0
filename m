Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75FCF5FE32
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 23:29:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=13kLjDoVuLmy4QhUdT+BaiWGWtCY4kQQRea39vXUALQ=; b=UgFFzd976EVyDb
	X6xJ5SHtU552jOIwMCxdN43vu61CAZ2el4JWb/gsYTPLQp7DKGV4Jkvh9os8B9WCRFZ27n984IjJR
	0aJ5nrC9mKgd1YUix8kZM77HhHWpz1VXY0ubM04bH0GFjB9AAjdrNIahbCSqDDBqdODwdF/7b6yZ7
	HebHa/W+RGy4nTfoQRjYMV67ROBpGFTv8xj2sJQu2psVOR2ej7W3QQWHSTghrMowMODZ9DuNg1tA5
	IUdRvTWCIun8G3L67VrvNzVs+te4VDZHux1muI3ScSC+1NLgyAr/vJPdLf+zWdyZINWwvgQXKbmze
	EdATsANsULGvzFoC+ONA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj9IP-0001RL-O0; Thu, 04 Jul 2019 21:29:37 +0000
Received: from mail-eopbgr20056.outbound.protection.outlook.com ([40.107.2.56]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj9Hn-0001DG-Ct
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 21:29:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FzrIxZPRXFQpJbkXBZfe9b+ex1RCZ3jZqSg6FVANuEg=;
 b=k14i41lKIR7K3YX4vICpwjjL8lxmU5cY2GWO7zYln0REMVAjOvxSzdt8QSBIxl6a0MD9iLQ2QNOsVGBZ+/8Css1cHoBSPsMyutusm6HgIauANlw7V+cke7T80UzaJ3XUwIKIRi8rfLtxqg4QLTn+se4uzoptMWKD5V2ifoV7wsI=
Received: from VI1PR05MB4141.eurprd05.prod.outlook.com (10.171.182.144) by
 VI1PR05MB6014.eurprd05.prod.outlook.com (20.178.127.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18; Thu, 4 Jul 2019 21:28:54 +0000
Received: from VI1PR05MB4141.eurprd05.prod.outlook.com
 ([fe80::f5d8:df9:731:682e]) by VI1PR05MB4141.eurprd05.prod.outlook.com
 ([fe80::f5d8:df9:731:682e%5]) with mapi id 15.20.2032.019; Thu, 4 Jul 2019
 21:28:54 +0000
From: Jason Gunthorpe <jgg@mellanox.com>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH v3 0/4] Devmap cleanups + arm64 support
Thread-Topic: [PATCH v3 0/4] Devmap cleanups + arm64 support
Thread-Index: AQHVK/HAM2r3dJ5EjUuvQfApLyHQmKat3lEAgAA0MoCAAAH5AIAAxnaAgAwArgCAABJ8AIAADxQAgAAJ3QA=
Date: Thu, 4 Jul 2019 21:28:54 +0000
Message-ID: <20190704212850.GB23542@mellanox.com>
References: <cover.1558547956.git.robin.murphy@arm.com>
 <20190626073533.GA24199@infradead.org>
 <20190626123139.GB20635@lakrids.cambridge.arm.com>
 <20190626153829.GA22138@infradead.org> <20190626154532.GA3088@mellanox.com>
 <20190626203551.4612e12be27be3458801703b@linux-foundation.org>
 <20190704115324.c9780d01ef6938ab41403bf9@linux-foundation.org>
 <20190704195934.GA23542@mellanox.com>
 <20190704135332.234891ac6ce641bf29913d06@linux-foundation.org>
In-Reply-To: <20190704135332.234891ac6ce641bf29913d06@linux-foundation.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MN2PR04CA0006.namprd04.prod.outlook.com
 (2603:10b6:208:d4::19) To VI1PR05MB4141.eurprd05.prod.outlook.com
 (2603:10a6:803:4d::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jgg@mellanox.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [156.34.55.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d5ea08e7-e074-4157-6e83-08d700c69d65
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR05MB6014; 
x-ms-traffictypediagnostic: VI1PR05MB6014:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <VI1PR05MB601420B2E47CBEC22759ECACCFFA0@VI1PR05MB6014.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0088C92887
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(136003)(396003)(376002)(366004)(189003)(199004)(6306002)(8676002)(81166006)(36756003)(6512007)(53936002)(81156014)(6436002)(2906002)(102836004)(26005)(6916009)(99286004)(52116002)(76176011)(14444005)(256004)(186003)(6506007)(386003)(68736007)(66066001)(8936002)(6486002)(1076003)(229853002)(6116002)(7416002)(11346002)(305945005)(2616005)(476003)(316002)(6246003)(54906003)(14454004)(86362001)(478600001)(446003)(66476007)(71200400001)(33656002)(73956011)(71190400001)(66446008)(66556008)(66946007)(64756008)(966005)(4326008)(486006)(25786009)(5660300002)(3846002)(7736002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR05MB6014;
 H:VI1PR05MB4141.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GZhpXph8JQTGJITEs1uAnNGeBubFnAoQYzEo901XU5xi1gvsUfc2XUrlN9pMi+ZO6mQX/YsukdIcAoDfJq7YWux0bFz2RHa7DKPr8JVkYm0pu7+qsrV2LVCupYivVRjdUnPkwFCB1ZFZrGhh9aU6lBeWzr5MGsfHaY9GD+VbKELzIldDZB/61wVeOd88ade/tPRAUFpeOTkKjlOwM0fuA9iKsewiXCsvddPMRnTY2k3YMqAS4tl4h6ED5DiOfUXkwM7MzlTzMUOnQwRYDLmK3E7XrTKr6+bmIZqa6zkiYbjZ5bKGoirb3zVYAhhfPlp1bV6uA2orjwL+mNNs7tn+EbJxk70PTMtPLqy/VKWJCK5wUC8SQSN/U485oOOwGAC7sXW5GnD6W82hKBOu7f6sDa8vbiD939d7ZmnTp5fWDTA=
Content-ID: <9DE2EFC78892704782174E84794C9CF6@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5ea08e7-e074-4157-6e83-08d700c69d65
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2019 21:28:54.2548 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jgg@mellanox.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6014
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_142859_959625_8556D05F 
X-CRM114-Status: GOOD (  24.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.56 listed in list.dnswl.org]
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

On Thu, Jul 04, 2019 at 01:53:32PM -0700, Andrew Morton wrote:
> On Thu, 4 Jul 2019 19:59:38 +0000 Jason Gunthorpe <jgg@mellanox.com> wrote:
> 
> > On Thu, Jul 04, 2019 at 11:53:24AM -0700, Andrew Morton wrote:
> > > On Wed, 26 Jun 2019 20:35:51 -0700 Andrew Morton <akpm@linux-foundation.org> wrote:
> > > 
> > > > > Let me know and I can help orchestate this.
> > > > 
> > > > Well.  Whatever works.  In this situation I'd stage the patches after
> > > > linux-next and would merge them up after the prereq patches have been
> > > > merged into mainline.  Easy.
> > > 
> > > All right, what the hell just happened? 
> > 
> > Christoph's patch series for the devmap & hmm rework finally made it
> > into linux-next
> 
> We're talking about "dev_pagemap related cleanups v4", yes?
>
> I note that linux-next contains "mm: remove the HMM config option"
> which was present in Christoph's v3 series but wasn't present in v4. 
> Perhaps something has gone wrong here.

When CH sent v4 to the list it was corrupted, v3 is the one to
reference for content.

Here is the mailing thread discussing this:

https://lore.kernel.org/linux-mm/20190702184201.GO31718@mellanox.com/

> > sorry, it took quite a few iterations on the list to
> > get all the reviews and tests, and figure out how to resolve some
> > other conflicting things. So it just made it this week.
> > 
> > Recall, this is the patch series I asked you about routing a few weeks
> > ago, as it really exceeded the small area that hmm.git was supposed to
> > cover. I think we are both caught off guard how big the conflict is!
> 
> I guess I was distracted - I should have taken a look to see how
> mergable it all was.

Okay, fair enough. I also could have also done more checks myself with
linux-next

> It's a large patchset and it appears to be mainly (entirely?) code
> cleanups.  I don't think such material would be appropriate for a late
> -rc7 merge even if it didn't conflict with lots of other higher
> priority pending functional changes and fixes!

I see your other email you resolved the conflicts - so please let me
know if you want to proceed with dropping CH's series or not, I'll
make a special effort to get that change into tomorrows linux-next if
you want (it is already 6pm here)

Regards,
Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

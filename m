Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C96CC5FD9B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 22:00:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2v/1Faqjx8yed8k3lpZvGedjztw+9Fgk3tZDZDJbryI=; b=ndEYamALhr/4wC
	vJgG/7bqjDV7T8QibuqdIjah90YzszlGcZoFkW2MJ0FFvTxmF6UmIYmClh3IX6lW01I95OkdDt/Vr
	viwu7lEtDsd4lZTDeHE3gyQKDpPRYJu4YtTN3chaSuew/yYMxVHpculJHNDLzlHWUysMglz9Ku5v+
	Qy0gzV4ElhEmS/OTMzxQZt6NdCEch7sGZl9dXhMLIfdfoHfh69AUNzQps7o8tG3e8BXKJo66VlAY8
	4NWBij5dEuHxmUiGY89YheJYFC3jGYc4sBKyDaSTzViFl/JLjF8hPj0RiA4Av/ZXHR9O1YdS2ZxyR
	GAc7GSVdYY3ZPWFK7+0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj7tf-00052W-5L; Thu, 04 Jul 2019 19:59:59 +0000
Received: from mail-eopbgr40052.outbound.protection.outlook.com ([40.107.4.52]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj7tR-00050a-0w
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 19:59:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CVGOHmLSP/JIZtqpwRtiDiY1SzX40ljEnPrYndO1vII=;
 b=qW39W5DO8ZPjCLawPUoIOl9ykwyA1mN7FyeohBoGboPGP2l/bY/S9IYz7YJPOEnYAeDnIhKv7geh+kz412/1TQEbzeWJ7ckn7uS8K6tcIr0CYWWeGuE0PtMOvXJ80wYt9KK6oWUQ0z0Boy5eAYLKBjuDuNE/Yi2gZXFsKj3xNrw=
Received: from VI1PR05MB4141.eurprd05.prod.outlook.com (10.171.182.144) by
 VI1PR05MB3167.eurprd05.prod.outlook.com (10.170.237.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Thu, 4 Jul 2019 19:59:39 +0000
Received: from VI1PR05MB4141.eurprd05.prod.outlook.com
 ([fe80::f5d8:df9:731:682e]) by VI1PR05MB4141.eurprd05.prod.outlook.com
 ([fe80::f5d8:df9:731:682e%5]) with mapi id 15.20.2032.019; Thu, 4 Jul 2019
 19:59:39 +0000
From: Jason Gunthorpe <jgg@mellanox.com>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH v3 0/4] Devmap cleanups + arm64 support
Thread-Topic: [PATCH v3 0/4] Devmap cleanups + arm64 support
Thread-Index: AQHVK/HAM2r3dJ5EjUuvQfApLyHQmKat3lEAgAA0MoCAAAH5AIAAxnaAgAwArgCAABJ8AA==
Date: Thu, 4 Jul 2019 19:59:38 +0000
Message-ID: <20190704195934.GA23542@mellanox.com>
References: <cover.1558547956.git.robin.murphy@arm.com>
 <20190626073533.GA24199@infradead.org>
 <20190626123139.GB20635@lakrids.cambridge.arm.com>
 <20190626153829.GA22138@infradead.org> <20190626154532.GA3088@mellanox.com>
 <20190626203551.4612e12be27be3458801703b@linux-foundation.org>
 <20190704115324.c9780d01ef6938ab41403bf9@linux-foundation.org>
In-Reply-To: <20190704115324.c9780d01ef6938ab41403bf9@linux-foundation.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MN2PR01CA0017.prod.exchangelabs.com (2603:10b6:208:10c::30)
 To VI1PR05MB4141.eurprd05.prod.outlook.com
 (2603:10a6:803:4d::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jgg@mellanox.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [156.34.55.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5bcf9b6e-f6b5-43f1-0787-08d700ba2543
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR05MB3167; 
x-ms-traffictypediagnostic: VI1PR05MB3167:
x-microsoft-antispam-prvs: <VI1PR05MB31673E959366D797D0F55226CFFA0@VI1PR05MB3167.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1051;
x-forefront-prvs: 0088C92887
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(376002)(366004)(136003)(396003)(189003)(199004)(54906003)(476003)(2616005)(7736002)(305945005)(186003)(446003)(11346002)(7416002)(53936002)(478600001)(6512007)(6246003)(229853002)(316002)(6436002)(14454004)(33656002)(6486002)(2906002)(256004)(99286004)(76176011)(8936002)(1076003)(36756003)(68736007)(386003)(6506007)(66066001)(71200400001)(102836004)(25786009)(86362001)(26005)(66446008)(71190400001)(64756008)(66476007)(486006)(66556008)(81156014)(4326008)(81166006)(6916009)(8676002)(3846002)(52116002)(66946007)(5660300002)(73956011)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR05MB3167;
 H:VI1PR05MB4141.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5FQR5yQC+//7srTU9m1LCNnAMEM/TLHDdkInE9OLvXRPtlk4D5Qp6NyskQNYKVt/RsRSFT8bGxMLNwfaRainxw4PKuFQCbyW6wzGMJmdh3B+wkTxyGFaPPUhr5O0niY3+hOpmgrSOqjP1gwjRYrxdadYKB1rRzhT8wzIkwJZl4FRhmDdO1nMXLvWqsrqFOZySjGgN8X9d1rwtGw0ujeLfj9SdVCKukEToOXli0J1redwycxy31Zerk0EqSfU8sk1PP00V7QLcyjzmsUp8BAjCT9fqdK8/VG5J+WTlmob3rLQrLoO/ycv/Rv2IZIcoFsH8Q5xhlKDSDOnhGPKFC70p3Xkj1anqobtgSg1IBYxDpzUjJoDsLgmCYS9HF/Qq0ngmXdTPJZqChFCg1Bu/cGnh+rid/d1ox7nYJpPbJV9aqg=
Content-ID: <E7B95E329110B24BA206433070923C07@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bcf9b6e-f6b5-43f1-0787-08d700ba2543
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2019 19:59:38.9039 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jgg@mellanox.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB3167
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_125945_079293_34B54D11 
X-CRM114-Status: GOOD (  26.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.52 listed in list.dnswl.org]
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

On Thu, Jul 04, 2019 at 11:53:24AM -0700, Andrew Morton wrote:
> On Wed, 26 Jun 2019 20:35:51 -0700 Andrew Morton <akpm@linux-foundation.org> wrote:
> 
> > > Let me know and I can help orchestate this.
> > 
> > Well.  Whatever works.  In this situation I'd stage the patches after
> > linux-next and would merge them up after the prereq patches have been
> > merged into mainline.  Easy.
> 
> All right, what the hell just happened? 

Christoph's patch series for the devmap & hmm rework finally made it
into linux-next, sorry, it took quite a few iterations on the list to
get all the reviews and tests, and figure out how to resolve some
other conflicting things. So it just made it this week.

Recall, this is the patch series I asked you about routing a few weeks
ago, as it really exceeded the small area that hmm.git was supposed to
cover. I think we are both caught off guard how big the conflict is!

> A bunch of new material has just been introduced into linux-next.
> I've partially unpicked the resulting mess, haven't dared trying to
> compile it yet.  To get this far I'll need to drop two patch series
> and one individual patch:
  
> mm-clean-up-is_device__page-definitions.patch
> mm-introduce-arch_has_pte_devmap.patch
> arm64-mm-implement-pte_devmap-support.patch
> arm64-mm-implement-pte_devmap-support-fix.patch

This one we discussed, and I thought we agreed would go to your 'stage
after linux-next' flow (see above). I think the conflict was minor
here.

> mm-sparsemem-introduce-struct-mem_section_usage.patch
> mm-sparsemem-introduce-a-section_is_early-flag.patch
> mm-sparsemem-add-helpers-track-active-portions-of-a-section-at-boot.patch
> mm-hotplug-prepare-shrink_zone-pgdat_span-for-sub-section-removal.patch
> mm-sparsemem-convert-kmalloc_section_memmap-to-populate_section_memmap.patch
> mm-hotplug-kill-is_dev_zone-usage-in-__remove_pages.patch
> mm-kill-is_dev_zone-helper.patch
> mm-sparsemem-prepare-for-sub-section-ranges.patch
> mm-sparsemem-support-sub-section-hotplug.patch
> mm-document-zone_device-memory-model-implications.patch
> mm-document-zone_device-memory-model-implications-fix.patch
> mm-devm_memremap_pages-enable-sub-section-remap.patch
> libnvdimm-pfn-fix-fsdax-mode-namespace-info-block-zero-fields.patch
> libnvdimm-pfn-stop-padding-pmem-namespaces-to-section-alignment.patch

Dan pointed to this while reviewing CH's series and said the conflicts
would be manageable, but they are certainly larger than I expected!

This series is the one that seems to be the really big trouble. I
already checked all the other stuff that Stephen resolved, and it
looks OK and managable. Just this one conflict with kernel/memremap.c
is beyond me. 

What approach do you want to take to go forward? Here are some thoughts:

CH has said he is away for the long weekend, so the path that involves
the fewest people is if Dan respins the above on linux-next and it
goes later with the arm patches above, assuming defering it for now
has no other adverse effects on -mm.

Pushing CH's series to -mm would need a respin on top of Dan's series
above and would need to carry along the whole hmm.git (about 44
patches). Signs are that this could be managed with the code currently
in the GPU trees.

If we give up on CH's series the hmm.git will not have conflicts,
however we just kick the can to the next merge window where we will be
back to having to co-ordinate amd/nouveau/rdma git trees and -mm's
patch workflow - and I think we will be worse off as we will have
totally given up on a git based work flow for this. :(

> mm-sparsemem-cleanup-section-number-data-types.patch
> mm-sparsemem-cleanup-section-number-data-types-fix.patch

Stephen used a minor conflict resolution for this one, I checked it
carefully and it looked OK.

> I thought you were just going to move material out of -mm and into
> hmm.git.  

Dan brought up a patch from Ira conflicting with CH's work and we did
handle that by moving a single patch, as well I moved several hmm
specific patches early in the cycle.

> Didn't begin to suspect that new and quite disruptive material would
> be introduced late in -rc7!!

Unfortunately a non-rebasing tree like hmm.git should only get patches
into linux-next once they are fully reviewed and done on the list. I
did not attempt to run separately patches 'under review' into
linux-next as you do. 

Actually I didn't even know this would benefit your workflow, rebasing
patches on top of linux-next is not part of the git based workflow I'm
using :(

AFAIK Dan and CH were both tracking conflicts with linux-next, so I'd
like to hear from Dan what he thinks about his series, maybe the
rebase is simple & safe for him? Dan and CH were working pretty
closely on CH's series.

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

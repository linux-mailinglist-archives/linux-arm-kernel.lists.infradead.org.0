Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B304EAD2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 16:36:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iLg59VaerhMAfXdwZHj2Tr81lu4PJifuZNK2w48Ylrg=; b=DEZoq4Scm2g7TL
	eivJ8qGkjxoRPprUWVUgmqQ0t02+SGLfGwKqhl2yB3KIOr1I/dgvgjmYGPbqlLaUHljxvtfd5IUf5
	9H5MsHFutnOlmLueH2Ars+pbBKtuXSrzoukiztoscr4KMqu997qGWMc0yRe4LatQU44/DZgJfyHQl
	vv+4YPf1QkmAyFX4g6Zm8rpvrFeFZCQD3krAI+ok4dh7s9kCOq1d2xvPznY9/YoDMz+XQsVfq7lF8
	zsqkEL+VBdFLI/y0jWWqVJSCH1mvGWnTYl/5LY7PBpgRxKTastJi0dqfDMcblqB9/XWGVnmxpTJTj
	RO8kg197QWiyx9YPElYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heKeB-0001Br-NN; Fri, 21 Jun 2019 14:36:11 +0000
Received: from mail-eopbgr00044.outbound.protection.outlook.com ([40.107.0.44]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heKdy-0001BP-BH
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 14:36:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NX5L5F8xPNoJ5V01tQB34FROEeVHHpne1sUFjq/ejGY=;
 b=tqAjREXxnx8hE2bqXIoeIy3DDhwPviqOBrxrnYOVFBwek97GDcXe2IsPRK6kZugNUCWRsrwywSgu0DHg3djMSlRFNEmk5QCGzrA/LTW0F/HAUkE70obv1f8NK5rB7KnMSGfPAkfAjmfFhUsHHVHcS2qyEch61Sz9IfGHVzgy/A8=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB5243.eurprd08.prod.outlook.com (20.179.15.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.12; Fri, 21 Jun 2019 14:35:54 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::b4db:b3ed:75ff:167]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::b4db:b3ed:75ff:167%3]) with mapi id 15.20.1987.014; Fri, 21 Jun 2019
 14:35:54 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Anshuman Khandual <Anshuman.Khandual@arm.com>
Subject: Re: [PATCH V6 3/3] arm64/mm: Enable memory hot remove
Thread-Topic: [PATCH V6 3/3] arm64/mm: Enable memory hot remove
Thread-Index: AQHVJlX53xPGOkVoAU2rO4Hf7Xy7J6amMIYA
Date: Fri, 21 Jun 2019 14:35:53 +0000
Message-ID: <20190621143540.GA3376@capper-debian.cambridge.arm.com>
References: <1560917860-26169-1-git-send-email-anshuman.khandual@arm.com>
 <1560917860-26169-4-git-send-email-anshuman.khandual@arm.com>
In-Reply-To: <1560917860-26169-4-git-send-email-anshuman.khandual@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [82.20.117.196]
x-clientproxiedby: DM5PR18CA0057.namprd18.prod.outlook.com
 (2603:10b6:3:22::19) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 255e8f05-0120-466c-08c8-08d6f655c382
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB5243; 
x-ms-traffictypediagnostic: DB8PR08MB5243:
nodisclaimer: True
x-microsoft-antispam-prvs: <DB8PR08MB5243320303F4912FC6AAB43881E70@DB8PR08MB5243.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0075CB064E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(366004)(346002)(136003)(376002)(199004)(189003)(66446008)(5660300002)(3846002)(229853002)(54906003)(66066001)(8676002)(6246003)(6486002)(6862004)(81156014)(4326008)(6436002)(316002)(81166006)(66476007)(66556008)(6512007)(66946007)(53936002)(14444005)(99286004)(58126008)(8936002)(44832011)(76176011)(7416002)(6636002)(26005)(33656002)(446003)(102836004)(7736002)(64756008)(486006)(52116002)(6116002)(186003)(73956011)(476003)(25786009)(71200400001)(71190400001)(2906002)(86362001)(11346002)(6506007)(386003)(68736007)(478600001)(14454004)(305945005)(256004)(1076003)(72206003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5243;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: dlqzxa4c3rI15RIYjatdpzG4RA3W30poknff97UGqg+YZ9slzXe1e90bipr9EPWaFPm2KynI0rxMfy7783taBsoETxHXuo888UztQ8fXKJQF2B93AbjfNkqXuSINJnnnUBOH1UK8c+SFcgYHrhw6a12K6kEbUeGomLLQ5NAjXOVcHmqQ8SRlCv3KxSHn60nmHIApe7W2iOE0B4YEgqoAgEtRFRBCvK9SX6WKXKBbZkkPWaqSK3dKGprAn44V+1VP1WaDh5o6U7+UNTBqyaK52f6Epjsks/FHE5wvtNLNP+u3SZ3lAe8XkkcTPnRJLGInzsb3vfiS6UFSQN3JWQePxJVTQxXkPPT8eLv3x4spesy6ktZQ0gEtbEmSQ7Gpz5iA/CDbqNf4sNHGFdD8eEWcXoXhl2uK6xX1lnHSPp0rY8Q=
Content-ID: <13FA276463D2474F8F2A95257EB18BC4@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 255e8f05-0120-466c-08c8-08d6f655c382
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2019 14:35:53.8832 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Steve.Capper@arm.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5243
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_073558_434339_1F8528AB 
X-CRM114-Status: GOOD (  23.07  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.44 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, "mhocko@suse.com" <mhocko@suse.com>,
 "mgorman@techsingularity.net" <mgorman@techsingularity.net>,
 "david@redhat.com" <david@redhat.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>, Will Deacon <Will.Deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "logang@deltatee.com" <logang@deltatee.com>,
 "arunks@codeaurora.org" <arunks@codeaurora.org>, "cai@lca.pw" <cai@lca.pw>,
 Ard Biesheuvel <Ard.Biesheuvel@arm.com>,
 "cpandya@codeaurora.org" <cpandya@codeaurora.org>,
 James Morse <James.Morse@arm.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>, nd <nd@arm.com>,
 "ira.weiny@intel.com" <ira.weiny@intel.com>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "osalvador@suse.de" <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anshuman,

On Wed, Jun 19, 2019 at 09:47:40AM +0530, Anshuman Khandual wrote:
> The arch code for hot-remove must tear down portions of the linear map and
> vmemmap corresponding to memory being removed. In both cases the page
> tables mapping these regions must be freed, and when sparse vmemmap is in
> use the memory backing the vmemmap must also be freed.
> 
> This patch adds a new remove_pagetable() helper which can be used to tear
> down either region, and calls it from vmemmap_free() and
> ___remove_pgd_mapping(). The sparse_vmap argument determines whether the
> backing memory will be freed.
> 
> remove_pagetable() makes two distinct passes over the kernel page table.
> In the first pass it unmaps, invalidates applicable TLB cache and frees
> backing memory if required (vmemmap) for each mapped leaf entry. In the
> second pass it looks for empty page table sections whose page table page
> can be unmapped, TLB invalidated and freed.
> 
> While freeing intermediate level page table pages bail out if any of its
> entries are still valid. This can happen for partially filled kernel page
> table either from a previously attempted failed memory hot add or while
> removing an address range which does not span the entire page table page
> range.
> 
> The vmemmap region may share levels of table with the vmalloc region.
> There can be conflicts between hot remove freeing page table pages with
> a concurrent vmalloc() walking the kernel page table. This conflict can
> not just be solved by taking the init_mm ptl because of existing locking
> scheme in vmalloc(). Hence unlike linear mapping, skip freeing page table
> pages while tearing down vmemmap mapping.
> 
> While here update arch_add_memory() to handle __add_pages() failures by
> just unmapping recently added kernel linear mapping. Now enable memory hot
> remove on arm64 platforms by default with ARCH_ENABLE_MEMORY_HOTREMOVE.
> 
> This implementation is overall inspired from kernel page table tear down
> procedure on X86 architecture.
> 
> Acked-by: David Hildenbrand <david@redhat.com>
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---

FWIW:
Acked-by: Steve Capper <steve.capper@arm.com>

One minor comment below though.

>  arch/arm64/Kconfig  |   3 +
>  arch/arm64/mm/mmu.c | 290 ++++++++++++++++++++++++++++++++++++++++++++++++++--
>  2 files changed, 284 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 6426f48..9375f26 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -270,6 +270,9 @@ config HAVE_GENERIC_GUP
>  config ARCH_ENABLE_MEMORY_HOTPLUG
>  	def_bool y
>  
> +config ARCH_ENABLE_MEMORY_HOTREMOVE
> +	def_bool y
> +
>  config SMP
>  	def_bool y
>  
> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> index 93ed0df..9e80a94 100644
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -733,6 +733,250 @@ int kern_addr_valid(unsigned long addr)
>  
>  	return pfn_valid(pte_pfn(pte));
>  }
> +
> +#ifdef CONFIG_MEMORY_HOTPLUG
> +static void free_hotplug_page_range(struct page *page, size_t size)
> +{
> +	WARN_ON(!page || PageReserved(page));
> +	free_pages((unsigned long)page_address(page), get_order(size));
> +}

We are dealing with power of 2 number of pages, it makes a lot more
sense (to me) to replace the size parameter with order.

Also, all the callers are for known compile-time sizes, so we could just
translate the size parameter as follows to remove any usage of get_order?
PAGE_SIZE -> 0
PMD_SIZE -> PMD_SHIFT - PAGE_SHIFT
PUD_SIZE -> PUD_SHIFT - PAGE_SHIFT

Cheers,
-- 
Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

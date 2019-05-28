Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D782CCD7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 19:01:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c+8amW0kSqliT1afOuAjwc4jjSpSvjDHUO4assD2SWo=; b=jPFoyKLaI2PGSD
	r2fc5d1AV3FYcExCXIIpJx7PL1ZE68xoVu7t/R+lBmp9EMCxtoU4vFJUDuIvGc3bttSalfbIuXsSb
	UjG3xC23cXavaSlsUkShKXYfzzg7f5GVVefcoq8hR1nTWX5v7oqSvk55uYMOd2YgQL/dUBYJK/s5J
	lPlpxYqbcptpD7HGrgntoKXmQ5t8deYwJzH3vWbIX8Bx/nBKzTHm1WzqGMBzLHJyV6DnjDoAgtmUN
	bzcOaWL/NhdEWCfJ+FM5bVFepim6otC6mcF6Mpvk9DfSJ7ZPQ9CgYXuGN6pwGTC0Hbyh+W8ercnm/
	zUUdeenJpNZBxchwiRHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVfTt-0006gj-Sc; Tue, 28 May 2019 17:01:45 +0000
Received: from mail-vi1eur04on060f.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::60f]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVfTl-0006e6-Rk
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 17:01:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bCwlOmQKePf6huPPxWjIhWT433NcKcvkiGvvEpJ8dUg=;
 b=Us4nnzOpxp+ss8h2ymOccsbyd4xitW2v/7RKRwKTVXohXdct4oy3GTyDLEGWgOMkGtCbdnQel3XFH0oVHU34C2hU7BQ1pXQ72QbX+zguPE+yWIYfi6U11v1/Wqu6sujSz/bOyXjgh4vV/DVvh8uMOjTRe/qYqs0wfyFdlWZbamA=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB4187.eurprd08.prod.outlook.com (20.179.9.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.19; Tue, 28 May 2019 17:01:30 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::b4db:b3ed:75ff:167]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::b4db:b3ed:75ff:167%3]) with mapi id 15.20.1922.021; Tue, 28 May 2019
 17:01:30 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Marc Zyngier <Marc.Zyngier@arm.com>
Subject: Re: [PATCH v2 01/12] arm/arm64: KVM: Formalise end of direct linear
 map
Thread-Topic: [PATCH v2 01/12] arm/arm64: KVM: Formalise end of direct linear
 map
Thread-Index: AQHVFW/x742AqOVF50emc0crforbhKaAuY6AgAAJf4A=
Date: Tue, 28 May 2019 17:01:29 +0000
Message-ID: <20190528170116.GA13287@capper-debian.cambridge.arm.com>
References: <20190528161026.13193-1-steve.capper@arm.com>
 <20190528161026.13193-2-steve.capper@arm.com>
 <aaec6c01-0610-c9aa-a091-177749a29852@arm.com>
In-Reply-To: <aaec6c01-0610-c9aa-a091-177749a29852@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.96.140]
x-clientproxiedby: DM5PR18CA0058.namprd18.prod.outlook.com
 (2603:10b6:3:22::20) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: eb360c4d-36ff-4345-24d7-08d6e38e20b0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB8PR08MB4187; 
x-ms-traffictypediagnostic: DB8PR08MB4187:
nodisclaimer: True
x-microsoft-antispam-prvs: <DB8PR08MB41877A34ADACF378959E14DC811E0@DB8PR08MB4187.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2733;
x-forefront-prvs: 00514A2FE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(366004)(376002)(39860400002)(396003)(189003)(199004)(66476007)(64756008)(25786009)(66946007)(66446008)(256004)(73956011)(2906002)(8936002)(14444005)(66556008)(54906003)(305945005)(8676002)(99286004)(7736002)(52116002)(33656002)(81156014)(86362001)(81166006)(102836004)(53546011)(6506007)(386003)(76176011)(58126008)(44832011)(186003)(446003)(26005)(6436002)(4326008)(6862004)(6246003)(6116002)(3846002)(6636002)(14454004)(478600001)(72206003)(316002)(53936002)(66066001)(6512007)(229853002)(71190400001)(71200400001)(1076003)(68736007)(6486002)(5660300002)(11346002)(486006)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB4187;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 2ttUfxV5F8Bkg/JqROt3f5GDRXwL0sY1uOBV0MzW3Xn0QXX4Yr/EG5cmD1LNv0zq4KzCM38WunoAyA3U2yJMwkNcFUw3lG/EFtZloeGksUVCqX9OOIzcAAsvE1WfbQZr6WinjFY+c+KaDNi6RDMjsI7spPzmnNNQ3dmBEHKGMNOLxRUjzURiVMsxPIWknP/9C862VBnLW1pYZhng5wHEyhWQZqO1GpMxB/IHWa1smKiT+8lvIK+CP0i4o/gimqkaD+nWCND/HEWxnkDI54WnYupBhgwMW8kMXTGml4gLcpJeeBuOwtiT73v4Cto9aNO/XIFGltxd8fCWa2OonpPzXm1bTmWbTiO/4Xc6jfTkaKpriCoelSZe++oh03pE8Pb3iuufDxJz0PowEFyLTvUcNF9RIxcsCwV4dSX6n0N6Uo0=
Content-ID: <0ECCE47806ABD94C8FD1CA9620858854@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb360c4d-36ff-4345-24d7-08d6e38e20b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2019 17:01:29.9615 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Steve.Capper@arm.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB4187
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_100137_936772_BD759098 
X-CRM114-Status: GOOD (  24.14  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:60f listed in]
 [list.dnswl.org]
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
Cc: "crecklin@redhat.com" <crecklin@redhat.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "bhsharma@redhat.com" <bhsharma@redhat.com>, Will Deacon <Will.Deacon@arm.com>,
 nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 05:27:17PM +0100, Marc Zyngier wrote:
> Hi Steve,

Hi Marc,

> 
> On 28/05/2019 17:10, Steve Capper wrote:
> > We assume that the direct linear map ends at ~0 in the KVM HYP map
> 
> Do we? This has stopped being the case since ed57cac83e05f ("arm64: KVM:
> Introduce EL2 VA randomisation").
> 
> > intersection checking code. This assumption will become invalid later on
> > for arm64 when the address space of the kernel is re-arranged.
> > 
> > This patch introduces a new constant PAGE_OFFSET_END for both arm and
> > arm64 and defines it to be ~0UL
> > 
> > Signed-off-by: Steve Capper <steve.capper@arm.com>
> > ---
> >  arch/arm/include/asm/memory.h   | 1 +
> >  arch/arm64/include/asm/memory.h | 1 +
> >  virt/kvm/arm/mmu.c              | 4 ++--
> >  3 files changed, 4 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm/include/asm/memory.h b/arch/arm/include/asm/memory.h
> > index ed8fd0d19a3e..45c211fd50da 100644
> > --- a/arch/arm/include/asm/memory.h
> > +++ b/arch/arm/include/asm/memory.h
> > @@ -24,6 +24,7 @@
> >  
> >  /* PAGE_OFFSET - the virtual address of the start of the kernel image */
> >  #define PAGE_OFFSET		UL(CONFIG_PAGE_OFFSET)
> > +#define PAGE_OFFSET_END		(~0UL)
> >  
> >  #ifdef CONFIG_MMU
> >  
> > diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> > index 8ffcf5a512bb..9fd387a63b9b 100644
> > --- a/arch/arm64/include/asm/memory.h
> > +++ b/arch/arm64/include/asm/memory.h
> > @@ -52,6 +52,7 @@
> >  	(UL(1) << VA_BITS) + 1)
> >  #define PAGE_OFFSET		(UL(0xffffffffffffffff) - \
> >  	(UL(1) << (VA_BITS - 1)) + 1)
> > +#define PAGE_OFFSET_END		(~0UL)
> >  #define KIMAGE_VADDR		(MODULES_END)
> >  #define BPF_JIT_REGION_START	(VA_START + KASAN_SHADOW_SIZE)
> >  #define BPF_JIT_REGION_SIZE	(SZ_128M)
> > diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
> > index 74b6582eaa3c..e1a777275b37 100644
> > --- a/virt/kvm/arm/mmu.c
> > +++ b/virt/kvm/arm/mmu.c
> > @@ -2202,10 +2202,10 @@ int kvm_mmu_init(void)
> >  	kvm_debug("IDMAP page: %lx\n", hyp_idmap_start);
> >  	kvm_debug("HYP VA range: %lx:%lx\n",
> >  		  kern_hyp_va(PAGE_OFFSET),
> > -		  kern_hyp_va((unsigned long)high_memory - 1));
> > +		  kern_hyp_va(PAGE_OFFSET_END));
> >  
> >  	if (hyp_idmap_start >= kern_hyp_va(PAGE_OFFSET) &&
> > -	    hyp_idmap_start <  kern_hyp_va((unsigned long)high_memory - 1) &&
> > +	    hyp_idmap_start <  kern_hyp_va(PAGE_OFFSET_END) &&
> >  	    hyp_idmap_start != (unsigned long)__hyp_idmap_text_start) {
> >  		/*
> >  		 * The idmap page is intersecting with the VA space,
> > 
> 
> This definitely looks like a move in the wrong direction (reverting part
> of the above commit). Is it that this is just an old patch that should
> have been dropped? Or am I completely missing the point?

I suspect this is a case of me rebasing my series... poorly.
I'll re-examine the logic here and either update the patch or the commit
log to make it clearer.

Cheers,
-- 
Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 259A92D902
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 11:26:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=76ki5ij3IclMroOmvO1DgdenAfcbyahNEyh5kCK52Rw=; b=XysUtDgdJv8jnJ
	lGDU5NxWFudM5+zVn8hppLH2a5FKxELyQwu4d8f/idnifm7MHEUhtLs4WRzktgvgc4TJEMgRWxVCR
	Bwkvh9TIMFtT3tQWRz28TF7i/oxgAcLREpHSzHwf5QZy7rMcno+6oA6Xh4EZLucIQPnIXOgFbNYWO
	MoFCsvnAn0IKchJi31zDU7dnY0yXqoCF1e8OO+851iOd2eQqDnXHwqKMkhQVP2hqxNdGLVjASaMTQ
	B2mPZs6wIEeZY2j29KyX0ySG0ScWzsQTPrrGyyJpgDhdg+z2XZsMyLag7Htb6bQCsMNS7ylGX8K6s
	fx2c/Vnw064j3LDZtoVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVur0-0005TB-DN; Wed, 29 May 2019 09:26:38 +0000
Received: from mail-eopbgr70084.outbound.protection.outlook.com ([40.107.7.84]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVuqt-0005Sq-6U
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 09:26:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KsdXAsQGPriEnkmSM+1ZuHpfCqRIljpqi02ap5OBbZA=;
 b=H+sdbrlWN7Fr5tj6aQ29v3ErT+ljkeL1hxn5IxNkWo7q5GVAXFfak9OhpCRYYL7M5cth9N0kR6SLywcwbHPN7/0IHOq83DduUM4VIDZawcagOpSvO/5DKP17SDVEfg0vR5FJxyDm4gQE2pg41pUB2hfPFXJ6Zvr3+jzEBZK7UpE=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB3994.eurprd08.prod.outlook.com (20.179.9.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.18; Wed, 29 May 2019 09:26:26 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::b4db:b3ed:75ff:167]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::b4db:b3ed:75ff:167%3]) with mapi id 15.20.1922.021; Wed, 29 May 2019
 09:26:26 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Marc Zyngier <Marc.Zyngier@arm.com>
Subject: Re: [PATCH v2 01/12] arm/arm64: KVM: Formalise end of direct linear
 map
Thread-Topic: [PATCH v2 01/12] arm/arm64: KVM: Formalise end of direct linear
 map
Thread-Index: AQHVFW/x742AqOVF50emc0crforbhKaAuY6AgAAaQgCAAQJxAA==
Date: Wed, 29 May 2019 09:26:26 +0000
Message-ID: <20190529092616.GA7196@capper-debian.cambridge.arm.com>
References: <20190528161026.13193-1-steve.capper@arm.com>
 <20190528161026.13193-2-steve.capper@arm.com>
 <aaec6c01-0610-c9aa-a091-177749a29852@arm.com>
 <20190528170116.GA13287@capper-debian.cambridge.arm.com>
In-Reply-To: <20190528170116.GA13287@capper-debian.cambridge.arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: DM5PR18CA0061.namprd18.prod.outlook.com
 (2603:10b6:3:22::23) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cbc2347c-1b33-4c66-bb65-08d6e417b955
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB8PR08MB3994; 
x-ms-traffictypediagnostic: DB8PR08MB3994:
nodisclaimer: True
x-microsoft-antispam-prvs: <DB8PR08MB399458D030BF59820B81EC2A811F0@DB8PR08MB3994.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0052308DC6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(376002)(346002)(39860400002)(136003)(189003)(199004)(14444005)(33656002)(26005)(25786009)(99286004)(186003)(316002)(68736007)(476003)(11346002)(446003)(76176011)(52116002)(386003)(6506007)(53546011)(102836004)(66556008)(66446008)(73956011)(486006)(66476007)(64756008)(5660300002)(1076003)(66946007)(229853002)(6486002)(14454004)(7736002)(256004)(6436002)(53936002)(81156014)(3846002)(6116002)(8676002)(81166006)(8936002)(2906002)(6246003)(478600001)(54906003)(4326008)(58126008)(72206003)(6512007)(71200400001)(71190400001)(6862004)(66066001)(44832011)(86362001)(6636002)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB3994;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pjnfR+YqBhwwj2CciiHzIY2K6MtidDVXOGhsl7hj7oq4KDY3NWHdgWdy40EGDJVO4GHd+hrengXohbSZF3+UMXM5ZjR/Dt8FXU4golpUO3ISS1kS9c3CVp1f1bwYv5Z1gmG8R3oXPbLBRUl/O+CPZNE9Wdqr238HFV4Eem8114Ayj8QnUxpUlLuI0p6yMpHRAXnR+I1A23SKAkp7nOtkymQdeAwieYmCRALYjAaaNY1ayX4/e0JvvBLvF7V/yOfa0yP2l6TWDZhC21PBpvZIhqcJ7Zx/3SMcIPvIUb0w6cBdxKmIfCSdIjpFFmJGyyxH9kjhhf89wobfxJuvmoAZInqxLGLDhRqdVZRH0hKTnwtdyfU+nJ1KYiHDg5m443WufV/RFke0M3GJe3VnlZDcoRX1/wEiFCsZZUeZEB61Lzk=
Content-ID: <3A7964E74DAAFA4E905EE48CC6F1C27D@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbc2347c-1b33-4c66-bb65-08d6e417b955
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2019 09:26:26.8525 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Steve.Capper@arm.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB3994
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_022631_324698_4934780B 
X-CRM114-Status: GOOD (  26.88  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.84 listed in list.dnswl.org]
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

On Tue, May 28, 2019 at 05:01:29PM +0000, Steve Capper wrote:
> On Tue, May 28, 2019 at 05:27:17PM +0100, Marc Zyngier wrote:
> > Hi Steve,
> 
> Hi Marc,
> 
> > 
> > On 28/05/2019 17:10, Steve Capper wrote:
> > > We assume that the direct linear map ends at ~0 in the KVM HYP map
> > 
> > Do we? This has stopped being the case since ed57cac83e05f ("arm64: KVM:
> > Introduce EL2 VA randomisation").
> > 
> > > intersection checking code. This assumption will become invalid later on
> > > for arm64 when the address space of the kernel is re-arranged.
> > > 
> > > This patch introduces a new constant PAGE_OFFSET_END for both arm and
> > > arm64 and defines it to be ~0UL
> > > 
> > > Signed-off-by: Steve Capper <steve.capper@arm.com>
> > > ---
> > >  arch/arm/include/asm/memory.h   | 1 +
> > >  arch/arm64/include/asm/memory.h | 1 +
> > >  virt/kvm/arm/mmu.c              | 4 ++--
> > >  3 files changed, 4 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/arch/arm/include/asm/memory.h b/arch/arm/include/asm/memory.h
> > > index ed8fd0d19a3e..45c211fd50da 100644
> > > --- a/arch/arm/include/asm/memory.h
> > > +++ b/arch/arm/include/asm/memory.h
> > > @@ -24,6 +24,7 @@
> > >  
> > >  /* PAGE_OFFSET - the virtual address of the start of the kernel image */
> > >  #define PAGE_OFFSET		UL(CONFIG_PAGE_OFFSET)
> > > +#define PAGE_OFFSET_END		(~0UL)
> > >  
> > >  #ifdef CONFIG_MMU
> > >  
> > > diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> > > index 8ffcf5a512bb..9fd387a63b9b 100644
> > > --- a/arch/arm64/include/asm/memory.h
> > > +++ b/arch/arm64/include/asm/memory.h
> > > @@ -52,6 +52,7 @@
> > >  	(UL(1) << VA_BITS) + 1)
> > >  #define PAGE_OFFSET		(UL(0xffffffffffffffff) - \
> > >  	(UL(1) << (VA_BITS - 1)) + 1)
> > > +#define PAGE_OFFSET_END		(~0UL)
> > >  #define KIMAGE_VADDR		(MODULES_END)
> > >  #define BPF_JIT_REGION_START	(VA_START + KASAN_SHADOW_SIZE)
> > >  #define BPF_JIT_REGION_SIZE	(SZ_128M)
> > > diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
> > > index 74b6582eaa3c..e1a777275b37 100644
> > > --- a/virt/kvm/arm/mmu.c
> > > +++ b/virt/kvm/arm/mmu.c
> > > @@ -2202,10 +2202,10 @@ int kvm_mmu_init(void)
> > >  	kvm_debug("IDMAP page: %lx\n", hyp_idmap_start);
> > >  	kvm_debug("HYP VA range: %lx:%lx\n",
> > >  		  kern_hyp_va(PAGE_OFFSET),
> > > -		  kern_hyp_va((unsigned long)high_memory - 1));
> > > +		  kern_hyp_va(PAGE_OFFSET_END));
> > >  
> > >  	if (hyp_idmap_start >= kern_hyp_va(PAGE_OFFSET) &&
> > > -	    hyp_idmap_start <  kern_hyp_va((unsigned long)high_memory - 1) &&
> > > +	    hyp_idmap_start <  kern_hyp_va(PAGE_OFFSET_END) &&
> > >  	    hyp_idmap_start != (unsigned long)__hyp_idmap_text_start) {
> > >  		/*
> > >  		 * The idmap page is intersecting with the VA space,
> > > 
> > 
> > This definitely looks like a move in the wrong direction (reverting part
> > of the above commit). Is it that this is just an old patch that should
> > have been dropped? Or am I completely missing the point?
> 
> I suspect this is a case of me rebasing my series... poorly.
> I'll re-examine the logic here and either update the patch or the commit
> log to make it clearer.
>

Hi Marc,
Thanks, this was indeed an overzealous rebase. I've removed this patch from the
series and kvmtool is happy booting guests (when rebased to v5.2-rc2).

Cheers,
-- 
Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

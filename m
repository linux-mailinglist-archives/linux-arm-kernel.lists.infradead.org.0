Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFB442329
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 12:59:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hSDeFf7vmOaAUqhyNY6k/4Ic0ZuAhfSLEYP8gDZM9UE=; b=c+ee9vXeLHiQVA
	/9w8CJ51gvMXSWVMUYeJpH3268rwbWHs6ye/JARb/StT0J2Jx263FUyMQYdVyC2FgrJ8JMZCz5j1w
	mwL3A6fGqm+y3lqWLKYM9W0i1bYS21htI4wV9yAwe1s7SqK1jrZ2NojvkGAe1hzIcl0AGx0S2f84s
	+uFfbWhThCgWK1oqhQzyOZhcbbVdlwTQhKCxMl9dz7sER4q1ZIEyY6pxzk5Qb0QkImcdGrAFGjkEY
	bnuKjSN/AaNc2/v/URylq8pkOHfbg12q7X798zxf/ZjEwpnzh0t8J6wMUGcxZHsSNfbIAfWZDDcCu
	48kUHXYOhbnCV3hNKXKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb0yG-0005m0-WA; Wed, 12 Jun 2019 10:59:13 +0000
Received: from mail-eopbgr140048.outbound.protection.outlook.com
 ([40.107.14.48] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb0y1-0005hz-Aa
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 10:58:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xcp+cCzrvr1L1Y3g/ZOjI4rjJKJnTitnnFBsYnd4tTc=;
 b=5D2vjrT7ELZ4PSO1CIC+gb6xItFFrgxUGjg7j8qv0In9NeKeCOP+p6foCRqJ5EmFmZ3kVF2pNXIHHw8tDnK9HemsnX4+Y2Z7RdY/VmBB5ENLaNATTZYIJBCyQ2IrviygPoXlSx7JtbDUqbSRb+lwsd3sikdwVo+zxUyyaAf2n14=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB3963.eurprd08.prod.outlook.com (20.179.10.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Wed, 12 Jun 2019 10:58:52 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::b4db:b3ed:75ff:167]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::b4db:b3ed:75ff:167%3]) with mapi id 15.20.1965.017; Wed, 12 Jun 2019
 10:58:52 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Catalin Marinas <Catalin.Marinas@arm.com>
Subject: Re: [PATCH v2 08/12] arm64: mm: Logic to make offset_ttbr1 conditional
Thread-Topic: [PATCH v2 08/12] arm64: mm: Logic to make offset_ttbr1
 conditional
Thread-Index: AQHVFXAfaxebuXEqpEyNVdQ5jZ056aaVA8yAgALs6oA=
Date: Wed, 12 Jun 2019 10:58:52 +0000
Message-ID: <20190612105841.GA1763@capper-debian.cambridge.arm.com>
References: <20190528161026.13193-1-steve.capper@arm.com>
 <20190528161026.13193-9-steve.capper@arm.com>
 <20190610141813.GA10165@c02tf0j2hf1t.cambridge.arm.com>
In-Reply-To: <20190610141813.GA10165@c02tf0j2hf1t.cambridge.arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: DM5PR18CA0065.namprd18.prod.outlook.com
 (2603:10b6:3:22::27) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1a0b794d-0d6c-4be2-19dc-08d6ef24f4b7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB3963; 
x-ms-traffictypediagnostic: DB8PR08MB3963:
nodisclaimer: True
x-microsoft-antispam-prvs: <DB8PR08MB3963C137FB97E71DFCBDEA0381EC0@DB8PR08MB3963.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(136003)(366004)(39860400002)(376002)(52314003)(199004)(189003)(7736002)(256004)(81166006)(8676002)(81156014)(8936002)(5660300002)(68736007)(71190400001)(71200400001)(186003)(6436002)(4326008)(54906003)(6862004)(14454004)(6246003)(53936002)(6486002)(25786009)(316002)(52116002)(1076003)(3846002)(72206003)(6116002)(6636002)(11346002)(66066001)(6506007)(6512007)(76176011)(229853002)(386003)(478600001)(99286004)(486006)(44832011)(476003)(66476007)(64756008)(66446008)(102836004)(66556008)(58126008)(305945005)(33656002)(73956011)(66946007)(446003)(26005)(86362001)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB3963;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +OEudA56wAemrt7QgLMln9mlsXI0E+rA0mh8W+WJxwLZetvjE4gT6whmlbGPudlxTESgtm71E2Ff8wvuAXtBMpVcYouBWUIzj5a03wKru56zK7ovmeRfEsftVUZ2DTDsSwg97qLyq2fJL3N25pdF2d9suPGQ+kzOhM6nOQTNDfBLi9PI2d2KfiW+abDxHPZuaem3R/x2sk5EXCotVu042hvjh5TfN+/3U9SFYVigShGOJnodL2niSshiSYU8pz/hXWHCLHrefoedavsqOq20Qd3B2rEZuwgBILQzCvu4lXeq8b6gX+zjQqX3gWHdBRWKPUINuBoZnQCDEdfNulO5lhuSjfc36KC/zOO6Wh4EuN+M5UgXXdn97QHzlzoMG+w88QUNzpXLCxDq8NuN4TtcxZu2n0mhKoaittS6JYBxEcE=
Content-ID: <95E897001FA79049B2F55EF37ED0ED8F@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a0b794d-0d6c-4be2-19dc-08d6ef24f4b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 10:58:52.6943 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Steve.Capper@arm.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB3963
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_035857_385449_22DBAF15 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.48 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.48 listed in wl.mailspike.net]
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

On Mon, Jun 10, 2019 at 03:18:13PM +0100, Catalin Marinas wrote:
> Hi Steve,
> 

Hi Catalin,

> On Tue, May 28, 2019 at 05:10:22PM +0100, Steve Capper wrote:
> > diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
> > index 039fbd822ec6..a42c392ed1e1 100644
> > --- a/arch/arm64/include/asm/assembler.h
> > +++ b/arch/arm64/include/asm/assembler.h
> > @@ -548,6 +548,14 @@ USER(\label, ic	ivau, \tmp2)			// invalidate I line PoU
> >  	.macro	offset_ttbr1, ttbr
> >  #ifdef CONFIG_ARM64_USER_VA_BITS_52
> >  	orr	\ttbr, \ttbr, #TTBR1_BADDR_4852_OFFSET
> > +#endif
> > +
> > +#ifdef CONFIG_ARM64_USER_KERNEL_VA_BITS_52
> > +alternative_if_not ARM64_HAS_52BIT_VA
> > +	orr	\ttbr, \ttbr, #TTBR1_BADDR_4852_OFFSET
> > +alternative_else
> > +	nop
> > +alternative_endif
> >  #endif
> >  	.endm
> 
> As a nitpick, you could write alternative_else_not_endif instead of the
> last three lines.
> 

Thanks yeah that makes it easier to read.

> Anyway, we use offset_ttbr1 in a few early cases via
> idmap_cpu_replace_ttbr1 where the alternative framework hasn't got the
> chance to patch the instructions. I suggest you open-code the feature
> check in here, I don't think we use this on any fast path.
> 

Apologies for not spotting that, okay, I'll query the vabits_actual
inside idmap_cpu_replace_ttbr1.

Cheers,
-- 
Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8A914BE5E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 18:14:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J0SmIRacEmd0TVUa98M/EaaKU9F+PH1u4bZWiR9AxEI=; b=ZRayeMtX1L1BDg
	6qELg4GKSwCbkZCYxA3Dqdtt60QRupefGWpKKDVyOnbqPAPN2e3owh5vjLhDqL7vf0ucSWVYV/un+
	NOMlfUQHXICRhvVoVSt0iqSnhpxnQ1c/qU4/cDXH44X29oLbDGvvBjVaL4Vta/yorGfJ/c7l+glTA
	egA2aNo1tf1oPXIPlM/f4t067jVycQMl7uWcg6vG3LTckR8JY2JD0yNrtqFR/Vw2bLXeyM6UsMVDr
	bgnzf9xC/72+jSUphz2yo5dj6Fs5U4qP/3TQRJTuGjq2dNLjhEreNi8IXgQlWLJty5XkJ6tMmC6E3
	s1ZTlBLjRqxyj8NktFXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwURj-00044F-Vj; Tue, 28 Jan 2020 17:14:39 +0000
Received: from sv2-smtprelay2.synopsys.com ([149.117.73.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwURa-00043d-4Q; Tue, 28 Jan 2020 17:14:31 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 7695440806;
 Tue, 28 Jan 2020 17:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1580231667; bh=JvKmCuUTNL4iUOVu78Qd4rTdNCqY5tQQ1mVSu1JOuHs=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=eZFeKkwhX7PH39cItmopJnaxxUclrKulcBr7XqovPBI0u+27T3d3X/lwjYopMqpR4
 tbn7Peh7ny7OM8jgb5H0wp4pXv6wbFCIMe/xqZpiKqRDoxXivA3Y61JLkpVs2BmPrP
 oOJp+sg7A/dJqr+lk/XdgvccsubHGWip/pTRuzy16K6YXYru6FBzFtU9pPAQ/4oTSC
 jnuvBVlNNdX+poh0gyu1XgRz/KvKgfKMndbms5jaLgfB+I9zaUU1rrRmU+NQQf1BM3
 GtYks05nCG8pQ4apNnJkeDh6zKfZdG4eiCPe9UjzunCiXZ9KQ9Co/cI5amv1PPY6JJ
 TxzRFwAhhH+DA==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 762E0A0067;
 Tue, 28 Jan 2020 17:14:08 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 28 Jan 2020 09:14:08 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 28 Jan 2020 09:14:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CXo+xcjlJ8WLICyJ2pOeYvTTCGSD1vYOrIk2jw6GYdpvFWmhyVoo0HC+w4VxSBwYXpZC1IHdyc4APuX9bhq/2d6N+iGAEJZHhxg1lWxwvwSK0vtVaxmqFMwdBA494CJ7O1wa0BFy6KknQMm676z1uXIymHOTFVoP61w57Mghp2/p+h/hN0afqWPshtF/xy7qn6MYBAd+Eu1L+YqylRTCYcmmdxtl6Y2yCCAUzu5OEQxtLnmQeCJQPGMARJJfXH94ssI0BXKxU8G5QuTbK0b/dT560YgkuS4lqk3PVkXoeKI8oFduuzRkYFT/msPZ+4AJlb8NyQfPy5cZ8RqaZe3ifw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JvKmCuUTNL4iUOVu78Qd4rTdNCqY5tQQ1mVSu1JOuHs=;
 b=eFOg0EKCPCv8E5mrPCfclCHSGXkJQl+JRHSlxVsN/84mDv3+9so7bA2h0fN9Y2SycxpLwFkTykMFv5eE18CuhRDkX5Dkl0bB/wLp5IQDr0FS4akyd/eCwMYQF1T6Wt+whlw7Mi2ChJ08FTW+L/RDKv19XDbtRQjB05edRZ5iqpLE6ONpaHnUiT03Cn96F1uU6sFkxXdfSO/9c6WIw0IwsA0HhJ+Lm0L88gMdkuWQXwwMEZ7z7c2QjVYbomGuNNeGDeWxgA1/Kp+DAGN67br5sXcLhorVBsIqmVauXLX0Pl8kJ4IfTuo5Xq+DrO2GRbSyuw5CanPkDXlWLgvV5S3PUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JvKmCuUTNL4iUOVu78Qd4rTdNCqY5tQQ1mVSu1JOuHs=;
 b=awPpksEToYbCsL8EJr5oIAO4xY7nsrKjgFZH7/4cGX0BusI3beLQEE2HYN/lzue7ukIUFO5rHAZg5J0NaHX0jnWhSRMVd1JjnCHpa8w9BIh0gn927HhNqw7a7uamoQT39/3HTgnH1mHOmEknKojWJ/UbbNSSBLuDexc3iN1F2Lw=
Received: from BYAPR12MB3592.namprd12.prod.outlook.com (20.178.54.89) by
 BYAPR12MB3400.namprd12.prod.outlook.com (20.178.54.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.23; Tue, 28 Jan 2020 17:14:05 +0000
Received: from BYAPR12MB3592.namprd12.prod.outlook.com
 ([fe80::39a1:22ee:7030:8333]) by BYAPR12MB3592.namprd12.prod.outlook.com
 ([fe80::39a1:22ee:7030:8333%6]) with mapi id 15.20.2665.026; Tue, 28 Jan 2020
 17:14:05 +0000
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Qian Cai <cai@lca.pw>, Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V12] mm/debug: Add tests validating architecture page
 table helpers
Thread-Topic: [PATCH V12] mm/debug: Add tests validating architecture page
 table helpers
Thread-Index: AQHV1XpKRF306px9dEGOLGVKM9THdaf/VaiAgAAPI4CAAAeRAIAA5V0A
Date: Tue, 28 Jan 2020 17:14:05 +0000
Message-ID: <b4ad58b0-304c-bd94-311e-1750c74ccf1f@synopsys.com>
References: <1580174873-18117-1-git-send-email-anshuman.khandual@arm.com>
 <14882A91-17DE-4ABD-ABF2-08E7CCEDF660@lca.pw>
 <214c0d53-eb34-9b0c-2e4e-1aa005146331@arm.com>
 <016A776F-EFD9-4D2B-A3A9-788008617D95@lca.pw>
In-Reply-To: <016A776F-EFD9-4D2B-A3A9-788008617D95@lca.pw>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vgupta@synopsys.com; 
x-originating-ip: [149.117.75.13]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 015da85d-ebc8-4a2d-e116-08d7a4157aa5
x-ms-traffictypediagnostic: BYAPR12MB3400:
x-microsoft-antispam-prvs: <BYAPR12MB34001B6A5074393F8FF29B93B60A0@BYAPR12MB3400.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 029651C7A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(189003)(199004)(6512007)(31696002)(4326008)(86362001)(498600001)(6506007)(53546011)(66556008)(6486002)(66476007)(64756008)(66446008)(76116006)(2906002)(66946007)(54906003)(110136005)(36756003)(81166006)(8936002)(81156014)(7416002)(7406005)(186003)(2616005)(26005)(71200400001)(31686004)(5660300002)(8676002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR12MB3400;
 H:BYAPR12MB3592.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: H9FcOT2KiM7N1fZ6eAAf0bUUR8ORXc9w/yszE4JY7j2uDrArNFHYOaQjOGjc8Y5IDC1cOW1sgFD/lG1P273BGxIuEMc6pZGMjop/S7sK+QFmqieOemMrngUuLKPRwMaZZvF2Ffyjs9+NztUznRPm4WS7OPE1pdKUYvgTS5YvYKlfr7H7Uba6QUlx9YFMcHyIulAJRjvBRSMpeLqSEBxRnjxt4W4mWrr+dGEvq49AYfO+d2FXz420wlVW/l+jwZg03qmA0WHf51jYdW6JAyMbCmcDOxq6xIaQopEdSjtLx4qWJsH9IL4eLQ3VRAbJ/ffUZ/IVa2qPUoZX+W2l4nfxSGMcPdZAxADXOgJbX6wec4KF8EgANU66C/CDgSQ8oV7SuaiAOZC5vY6Lz3dSHJdMtzulSl1QhwrPwTsBQx1jBVZbzz1j9Wj9xKmVfXnURIG9
x-ms-exchange-antispam-messagedata: QglAsK9q4xtn8gOA0HmEBA5p49ezaKzQECgljgN7TYhC+kW0LnaZLBoYAU31XN6HrAkT+af34oE8+hSq+2ZimKtvB8Tn5D17KVH+BE8Qh3evckDfChPMuriryi4rNXidrja/rDPBe9ZkAxjiN5AswA==
x-ms-exchange-transport-forked: True
Content-ID: <7C4A7FD0FCAB004286BDCEDDB0447312@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 015da85d-ebc8-4a2d-e116-08d7a4157aa5
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2020 17:14:05.0407 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KJHSGvi6NdcZH9ceNp0lebLg/K+ttp+GZqsB95A/Nqhj9KFLhw4LifAi9aMUgmiZ0UOj2lH7TyzAuw5/pJoTVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB3400
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_091430_248277_4A1AD885 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>,
 "linux-sh@vger.kernel.org" <linux-sh@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, James Hogan <jhogan@kernel.org>, Tetsuo
 Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Dave Hansen <dave.hansen@intel.com>, Paul
 Mackerras <paulus@samba.org>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, "x86@kernel.org" <x86@kernel.org>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 arcml <linux-snps-arc@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Ingo Molnar <mingo@kernel.org>, Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Mark
 Brown <broonie@kernel.org>, "Kirill A .
 Shutemov" <kirill@shutemov.name>, Dan
 Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>, Ard
 Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Burton <paul.burton@mips.com>, Mike
 Rapoport <rppt@linux.vnet.ibm.com>, Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMS8yNy8yMCA3OjMzIFBNLCBRaWFuIENhaSB3cm90ZToNCj4NCj4+PiBXaGF04oCZcyB0aGUg
dmFsdWUgb2YgdGhpcyBibG9jayBvZiBuZXcgY29kZT8gSXQgb25seSBzdXBwb3J0cyB4ODYgYW5k
IGFybTY0DQo+Pj4gd2hpY2ggYXJlIHN1cHBvc2VkIHRvIGJlIGdvb2Qgbm93Lg0KPj4gV2UgaGF2
ZSBiZWVuIG92ZXIgdGhlIHVzZWZ1bG5lc3Mgb2YgdGhpcyBjb2RlIG1hbnkgdGltZXMgYmVmb3Jl
IGFzIHRoZSBwYXRjaCBpcw0KPj4gYWxyZWFkeSBpbiBpdCdzIFYxMi4gQ3VycmVudGx5IGl0IGlz
IGVuYWJsZWQgb24gYXJtNjQsIHg4NiAoZXhjZXB0IFBBRSksIGFyYyBhbmQNCj4+IHBwYzMyLiBU
aGVyZSBhcmUgYnVpbGQgdGltZSBvciBydW50aW1lIHByb2JsZW1zIHdpdGggb3RoZXIgYXJjaHMg
d2hpY2ggcHJldmVudA0KPiBJIGFtIG5vdCBzdXJlIGlmIEkgY2FyZSB0b28gbXVjaCBhYm91dCBh
cmMgYW5kIHBwYzMyIHdoaWNoIGFyZSBwcmV0dHkgbXVjaCBsZWdhY3kNCj4gcGxhdGZvcm1zLg0K
DQpZb3UgcmVhbGx5IG5lZWQgdG8gYnJ1c2ggdXAgb24geW91ciBkZWZpbml0aW9uIGFuZCBrbm93
bGVkZ2Ugb2Ygd2hhdCAibGVnYWN5IiBtZWFucy4NCkFSQyBpcyBhY3RpdmVseSBtYWludGFpbmVk
IGFuZCB1c2VkIGJ5IHNldmVyYWwgY3VzdG9tZXJzLCBzb21lIGluIGFyY2gvYXJjL3BsYXQqDQph
bmQgc29tZSBub3QgaW4gdGhlcmUuDQpJdCBpcyBwcmVzZW50IGluIGJyb2FkYmFuZCByb3V0ZXJz
IHVzZWQgYnkgbWFqb3IgSVNQLCBtYXNzaXZlbHkgbXVsdGljb3JlIGRlZXANCnBhY2tldCBpbnNw
ZWN0aW9uIHN5c3RlbSBmcm9tIEVaQ2hpcCwgYW5kIG1hbnkgbW9yZS4uLi4NCg0KU3VyZSB5b3Ug
bWF5IG5vdCBjYXJlIGFib3V0IHRoZW0sIGJ1dCB0aGUgbWFpbnRhaW5lcnMgZm9yIHRoZSBwbGF0
Zm9ybXMgZG8uDQpJdCB3b3VsZCBoYXZlIGJlZW4gYmV0dGVyIGlmIHlvdSBoYWQgc3BlbnQgdGhl
IHRpbWUgYW5kIGVuZXJneSBpbiBpbXByb3ZpbmcgdGhlDQpjb2RlIG92ZXIgMTIgcmV2aXNpb25z
IHJhdGhlciB0aGFuIGJpa2Ugc2hlZGRpbmcuDQoNCi1WaW5lZXQNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

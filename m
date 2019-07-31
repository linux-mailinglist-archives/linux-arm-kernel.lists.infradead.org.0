Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8BF7CC0A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 20:36:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3V0T4J12A/1ug6S3NPFC/Goi38uKbJqrx79SfsSH8+c=; b=ZldP1iRcB3+fgT
	wcA4+SFagUQmz8S/9Fjt5MDSD6fvo8Kv+zDfRTxaaxJsUJf/SkDmicTA6WVHv9NAhW+uzKScmOlHd
	cAl1aFHgkiI2E827HlY25mOtqgJLXcJ2enEm+owNNbKSl489q3cnuaABSbhd8NIFN1it2C/EFdndJ
	kshN2magGvDjC7MYkcS79r/kkZn7lSUKCR7cmWuJSwp9879zs5Ec4Nt+Ad244KAG+/XrDS8w4o/uN
	PL1a8IRVXDlM2BQ5dJH+S3SxqS10nOtNgXymRzbs440ZGB8jmlOUBtWoxM1f4M7xoYzRoD7Iz9YzZ
	BxRYS7BPOk1FbBaX+BtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hstSI-0004sX-8D; Wed, 31 Jul 2019 18:36:06 +0000
Received: from mail-eopbgr750098.outbound.protection.outlook.com
 ([40.107.75.98] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hstSB-0004rm-CF
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 18:36:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ErnyXIxFRHgzR6meCxotIVOjfLfbAPO9pLb0j7iNvAoLRT9AwgFrRPpAUvluY02Thi45CqWyLVkz5NWgm+Ld238zHv5RSksMr1bYfW6Z/LEqLWSz9PJNSfaersMXklr5JkRa58dpi+Zwv2ewSH1ND5lSppqTdDmX/FxaX706jGAvoDBcuE3B03s4RqecVezwY0cnw5jnlMTKgj7siLuGeEcEKqwo2YGQ2OcJx1cypNJR8625GqJc4iHjHl2jevl2jhN5oSQBnoLiIGaqqxkC6JXufJ9wU8+ebjm4RMB5Ass8mWSvyotUV5iLIDa8tmL5RYIC7aIXFlIXwpGYH37+Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8dNQpS/Jg0Nw3/hlZ1jZGketQBWFL/7YPXyZgDiZiWs=;
 b=lSH2mEMbNhZUVWOZJI7Bvz6297NwjGJ2tM2MVBYnwAE/j8xbi9cSw8xjBWMiXv5xHmgNLHtDVWsItPfs1UKnE4LSdv/LXLlVt0jgtGnVoX2wiBMzAD3ADPv/9nWgF03jmlzLhx7TTYBt8Zvwz6d/Jp+PZPewMy6APMcznKveYJqLB89/opAl57tSkiQFiU3dqdYO1nI4AErx4lF5n6Att4plkPujZOLrrmmIWE+01XUKxmntMp1lS7lX0aXgxRQNlNGO2Nv7uvR7+NpseDcIlo8pjZJ8KK1Sime1aXwRf3WfuYAEPDEla1QCMOyDOX94jZoqEePY3yMUUrKYB9jOoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wavecomp.com;dmarc=pass action=none
 header.from=mips.com;dkim=pass header.d=mips.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wavecomp.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8dNQpS/Jg0Nw3/hlZ1jZGketQBWFL/7YPXyZgDiZiWs=;
 b=HXEavXJju8T5eXyV6meS6Pz8rey5vqwJ4INtcKYWqlAtWjZR+dB9penVqj3pSOiFACOzLYz0j6VH2AK8rg82chUXZvjhckKvXEI/ldDiObuaEKErTRkGKh6hb5zjkPoPh5hs/Tgc1wPJIKeaujUO0WDLUlaNZH20Ge/917D/Zkc=
Received: from CY4PR2201MB1272.namprd22.prod.outlook.com (10.171.214.23) by
 CY4PR2201MB1750.namprd22.prod.outlook.com (10.165.89.37) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Wed, 31 Jul 2019 18:35:54 +0000
Received: from CY4PR2201MB1272.namprd22.prod.outlook.com
 ([fe80::c99b:131e:aaf3:bd81]) by CY4PR2201MB1272.namprd22.prod.outlook.com
 ([fe80::c99b:131e:aaf3:bd81%4]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 18:35:54 +0000
From: Paul Burton <paul.burton@mips.com>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v10 05/22] mips: mm: Add p?d_leaf() definitions
Thread-Topic: [PATCH v10 05/22] mips: mm: Add p?d_leaf() definitions
Thread-Index: AQHVR87Ju77hWp4AA06O29fl9/EI+w==
Date: Wed, 31 Jul 2019 18:35:54 +0000
Message-ID: <20190731183553.klqcwrvannde5vd7@pburton-laptop>
References: <20190731154603.41797-1-steven.price@arm.com>
 <20190731154603.41797-6-steven.price@arm.com>
In-Reply-To: <20190731154603.41797-6-steven.price@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR04CA0069.namprd04.prod.outlook.com
 (2603:10b6:300:6c::31) To CY4PR2201MB1272.namprd22.prod.outlook.com
 (2603:10b6:910:6e::23)
user-agent: NeoMutt/20180716
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pburton@wavecomp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [12.94.197.246]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4e5d9b92-2934-4a14-393e-08d715e5ebb1
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR2201MB1750; 
x-ms-traffictypediagnostic: CY4PR2201MB1750:
x-microsoft-antispam-prvs: <CY4PR2201MB175052BAC195319EF3E14C18C1DF0@CY4PR2201MB1750.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(7916004)(39850400004)(136003)(366004)(396003)(376002)(346002)(189003)(199004)(6512007)(9686003)(33716001)(6116002)(14454004)(3846002)(6246003)(66556008)(64756008)(66446008)(66946007)(66476007)(53936002)(81166006)(81156014)(8936002)(58126008)(478600001)(54906003)(316002)(5660300002)(256004)(11346002)(305945005)(102836004)(71190400001)(7416002)(71200400001)(44832011)(99286004)(7736002)(25786009)(6436002)(486006)(4326008)(229853002)(66066001)(476003)(446003)(26005)(6486002)(6916009)(68736007)(42882007)(386003)(2906002)(76176011)(6506007)(52116002)(1076003)(8676002)(186003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR2201MB1750;
 H:CY4PR2201MB1272.namprd22.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: wavecomp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Ghlbs9lPlEfe+MQp8JFnIINZAfY79XqwfNm1xy9Yhak9chG0qpcC/yO6g9QO3aFag6mM8j0QLfYekb99M4ULWonkF4jJfotRBRCyqkslG2NBDI1aPdZEP3r1PVvuHSXWyEiv1c3I0Z8ONCcgFgt8SzRcEBKEas210OmJz96VwKqIhuDj1MMfIxOhdO+i+gRTBOEgTtbvP3wj1+3ReiihOILzplmjYtf812pzNPxAHS3pqEo+Ra+aaeoexvF0GUMamHV6EmT+E2vd5hO75X5AM7k279Jaj8kLw+17DfBGTcGK/GAy5g4616HF3wHzxpsmqD6CIJ12CKOCPFcRgk4kMkFExX+EwWSVUAxtBASwbNqlZ2h8jICp6P19tyW8KwDAxZ+tf1Tn8Ox70vVtrVo3NcCpritK7HpmBZKUqOrObbs=
Content-ID: <5488D8D5D3898647984FD526517E363C@namprd22.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: mips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e5d9b92-2934-4a14-393e-08d715e5ebb1
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 18:35:54.4557 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 463607d3-1db3-40a0-8a29-970c56230104
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pburton@wavecomp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR2201MB1750
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_113559_424717_76A5FCEE 
X-CRM114-Status: GOOD (  17.13  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.98 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Will Deacon <will@kernel.org>, "Liang, 
 Kan" <kan.liang@linux.intel.com>, "x86@kernel.org" <x86@kernel.org>,
 Ingo Molnar <mingo@redhat.com>, James Hogan <jhogan@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>,
 =?iso-8859-1?Q?J=E9r=F4me_Glisse?= <jglisse@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, James Morse <james.morse@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Steven,

On Wed, Jul 31, 2019 at 04:45:46PM +0100, Steven Price wrote:
> walk_page_range() is going to be allowed to walk page tables other than
> those of user space. For this it needs to know when it has reached a
> 'leaf' entry in the page tables. This information is provided by the
> p?d_leaf() functions/macros.
> 
> If _PAGE_HUGE is defined we can simply look for it. When not defined we
> can be confident that there are no leaf pages in existence and fall back
> on the generic implementation (added in a later patch) which returns 0.
> 
> CC: Ralf Baechle <ralf@linux-mips.org>
> CC: Paul Burton <paul.burton@mips.com>
> CC: James Hogan <jhogan@kernel.org>
> CC: linux-mips@vger.kernel.org
> Signed-off-by: Steven Price <steven.price@arm.com>

Acked-by: Paul Burton <paul.burton@mips.com>

Thanks,
    Paul

> ---
>  arch/mips/include/asm/pgtable.h | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/mips/include/asm/pgtable.h b/arch/mips/include/asm/pgtable.h
> index 7d27194e3b45..238ca243ad31 100644
> --- a/arch/mips/include/asm/pgtable.h
> +++ b/arch/mips/include/asm/pgtable.h
> @@ -627,6 +627,11 @@ static inline pmd_t pmdp_huge_get_and_clear(struct mm_struct *mm,
>  
>  #endif /* CONFIG_TRANSPARENT_HUGEPAGE */
>  
> +#ifdef _PAGE_HUGE
> +#define pmd_leaf(pmd)	((pmd_val(pmd) & _PAGE_HUGE) != 0)
> +#define pud_leaf(pud)	((pud_val(pud) & _PAGE_HUGE) != 0)
> +#endif
> +
>  #define gup_fast_permitted(start, end)	(!cpu_has_dc_aliases)
>  
>  #include <asm-generic/pgtable.h>
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9800F113118
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 18:51:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=aJq8Lj812kyQ5Kl9jJOaX6cl4PNv02dZUb1VZlcIYbQ=; b=Wpx+bhk9zi86Uo
	D2Z1oQNm9XT6WJImO46ye60moLr2wYdHWplA2vMxAgQlIK1Q9GFiNVBNfCeVlB8k9yrAgfJf/3AGe
	MPMZdjCfCxw25A0NNqUyQzrENnIPi802vXMPwxoLE4cNpXw9acYbsMXpAiis4VQ1OIZoPkkszXJqu
	5KJrvjr6p86+NPDsk4Hwf4wbdAeJQqc5sRvpY35IW5+Bt0ZHjFzr/KkdzyHDVx2gm9141FlQ91ZJp
	/jL6oTemqUkDbo3jnNSJQrJuuLyhkBGQzyoWg6I3DXTDOGFiaJWdjyrPYkZQIalSI9ijfvW9CfU6Y
	5pJUp/oKbKLfVEOuTODA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icYo2-0008D0-0y; Wed, 04 Dec 2019 17:51:18 +0000
Received: from mail-eopbgr690058.outbound.protection.outlook.com
 ([40.107.69.58] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icYnu-0008Cf-8v
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 17:51:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Moz9WYazWrVbRcRjn7BEIGoKcDvqIpS2Y9/9eT7Dvk/jGL8VsM3tkgLmXAdCjzfsRezIOPiDnK5XODOaTlzPoz+bVKtBBd6LFtxW6NeO8IVEPWasQbjBLUq+6fNq417pXq80tQnrEUtICjLrZPRmZr+Ufs9Z5TcHgAM+wjAExd8/NCRpPNiG0yTA4RIET3bOnpFToG5IgPfLwU386CXIDwoyNlBnbE9LVHxBeFqMVz7tWHiLm3L+W9az6jir8pKPgQZl4F9EAPVVXqXVmhHrNg2LVuRxeAIrTYLcUmziVTYYQSNz8bLanPNrT3kSqad5h8JkREiNkuv96AEueQJLrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=resmRhbbEdLQiaABkrvWa7UP0bKuajx8zrPkJ7jGyEY=;
 b=RLOIo2O9jCIv5K1mp2DNT1bavg2sTWDx8k/mlGGN5K7cNh24//mZIDXBza4aYQyjguHHw5RRYO6PBnZLUr+i/pVSaaOHVeIblvZFQdV2mMRZbPheEUniFvlRQSu4l5lFIvARQ+m6Di+JIYXUOs7rZGEj6ytABfDCzf+0I5GsvTTmAVt4ajUzrRaHba27xSqJF0ns3yUuOXj13n6cedEpWgTXW6BV07DpIMQPCvV+GwNdvyBtf8aeqdSdIovnZpbte1l1lDciFcjvEsmSd18MYHwJ8y4lL9aEysZzNFN/L8q3pe7JuG00AD2TqxJlsAgcmHtGx+Blf1JTGLYv2Yp/CQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vmware.com; dmarc=pass action=none header.from=vmware.com;
 dkim=pass header.d=vmware.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vmware.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=resmRhbbEdLQiaABkrvWa7UP0bKuajx8zrPkJ7jGyEY=;
 b=rPpnFb1z0BrL2i/CtPpIowXppmzE+RFBwCy20iOA6KYgnUb6VY61TlHSn8ElnbiSP/VkG+yIpnO6+DdzvvMIYHikdYZnXz7FQdjMHQO93iw4EgPnZEvApsTOIZ+OFa2p1RTYJFArh4gYuALyT9tcwKOu9rFZBqwJtodLgqWed6k=
Received: from MN2PR05MB6141.namprd05.prod.outlook.com (20.178.241.217) by
 MN2PR05MB6111.namprd05.prod.outlook.com (20.178.240.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.5; Wed, 4 Dec 2019 17:51:06 +0000
Received: from MN2PR05MB6141.namprd05.prod.outlook.com
 ([fe80::611e:6a6b:9109:5aa8]) by MN2PR05MB6141.namprd05.prod.outlook.com
 ([fe80::611e:6a6b:9109:5aa8%7]) with mapi id 15.20.2516.003; Wed, 4 Dec 2019
 17:51:06 +0000
From: Thomas Hellstrom <thellstrom@vmware.com>
To: Steven Price <steven.price@arm.com>, David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v15 00/23] Generic page walk and ptdump
Thread-Topic: [PATCH v15 00/23] Generic page walk and ptdump
Thread-Index: AQHVqsB6USxvVndKC0O+X8JyjIw6Ng==
Date: Wed, 4 Dec 2019 17:51:06 +0000
Message-ID: <MN2PR05MB61416E0CF8A99C91CD69FC43A15D0@MN2PR05MB6141.namprd05.prod.outlook.com>
References: <20191101140942.51554-1-steven.price@arm.com>
 <1572896147.5937.116.camel@lca.pw>
 <7B040741-EC8A-4CC0-964B-4046AE2E617A@lca.pw>
 <16da6118-ac4d-a165-6202-0731a776ac72@arm.com>
 <911fac4a-2204-f994-a101-16a60fba12e8@redhat.com>
 <0FA196FD-3FCD-431A-AA3E-21BF00EA07DC@lca.pw>
 <9d5f1689-db82-a6da-d51d-08070aa4bad5@redhat.com>
 <20191204163235.GA1597@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=thellstrom@vmware.com; 
x-originating-ip: [155.4.205.35]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 19d7ffd5-9909-4955-959f-08d778e289b5
x-ms-traffictypediagnostic: MN2PR05MB6111:
x-microsoft-antispam-prvs: <MN2PR05MB611135ED1D2BF841A8BBA04CA15D0@MN2PR05MB6111.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0241D5F98C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(346002)(136003)(366004)(376002)(55674003)(43544003)(189003)(199004)(76176011)(7696005)(45080400002)(229853002)(14454004)(6436002)(81166006)(81156014)(66476007)(66556008)(64756008)(66946007)(4326008)(86362001)(33656002)(8676002)(2906002)(76116006)(91956017)(55016002)(66446008)(966005)(6246003)(6306002)(14444005)(3846002)(71200400001)(102836004)(478600001)(6116002)(9686003)(71190400001)(8936002)(7416002)(316002)(52536014)(6506007)(53546011)(26005)(186003)(74316002)(5660300002)(99286004)(305945005)(7736002)(110136005)(25786009)(54906003)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR05MB6111;
 H:MN2PR05MB6141.namprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: vmware.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: x2OLX0yjNFcT1EEx1vxWzhLV6rn+WQMnWMeFUDRfUFmrprXvctVTrM+BhE2JgyiF5jm3z2ebXQ0633TH+uiv/exSE2q7qjruCikK1YTzU8Yp07nwIu7UJBOOZBGjWQKDzoiv9aMZnMKu+8+r9GgY7Yk/mldpIu2oy4acLge/muez80rj6PNPpN0NXvup1TWG+jlwv5ZZ2HJcZBIik8HLqq5rmjSjzUe+lBL8C4qRwCwyLgNhFFjBie/svI+CvhfQBlTNy26LVcQHoUe7FIElOijQlquHNrepPpZg8NdUGsSO/Ofl4ihW5HttLhVaW3CYNIuDT6uInGD7H8wzVKk4xCQnimdyjdJ8L+FC7/G+H1n0fHqVKxhwMwRqzsdMSra//tG92L4A9jxhs764r6W0coz33xOsa1nVO1nzfL7Ksz8S/VW2CxNJRl4l3jsY93hvn75o+vMkO7nw88Ib6FtlhtmkoKgw0lLaL3manGu+vigH/YlIkfo7bTdluV04jJYExvzt/hlhBZWvnOo4QsephwVWD/oA4/YPh8UpKEEZBqoSrGLfxVAKng9bMF7bU4WuybOycYCiMe4k4PPg5UsTHw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vmware.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19d7ffd5-9909-4955-959f-08d778e289b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2019 17:51:06.2246 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 777infu+mfbHdoYbtVmWIen0OrDr1SrCuKCYq9XkVJogJMTS+a3y30aoVSkccATQUyXI1p5ZxHTnUAAU+DPn/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR05MB6111
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_095110_371423_C7F4424A 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.58 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Dave Hansen <dave.hansen@linux.intel.com>, James Morse <James.Morse@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 the arch/x86 maintainers <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>,
 =?iso-8859-1?Q?J=E9r=F4me_Glisse?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Qian Cai <cai@lca.pw>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Borislav Petkov <bp@alien8.de>, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "Liang, Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/4/19 5:32 PM, Steven Price wrote:
> On Wed, Dec 04, 2019 at 02:56:58PM +0000, David Hildenbrand wrote:
>> On 04.12.19 15:54, Qian Cai wrote:
>>>
>>>> On Dec 3, 2019, at 6:02 AM, David Hildenbrand <david@redhat.com> wrote:
>>>>
>>>> On 06.11.19 16:05, Steven Price wrote:
>>>>> On 06/11/2019 13:31, Qian Cai wrote:
>>>>>>
>>>>>>> On Nov 4, 2019, at 2:35 PM, Qian Cai <cai@lca.pw> wrote:
>>>>>>>
>>>>>>> On Fri, 2019-11-01 at 14:09 +0000, Steven Price wrote:
>>>>> [...]
>>>>>>>> Changes since v14:
>>>>>>>> https://nam04.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.kernel.org%2Flkml%2F20191028135910.33253-1-steven.price%40arm.com%2F&amp;data=02%7C01%7Cthellstrom%40vmware.com%7C9f50ca595f81432eff5b08d778d7968a%7Cb39138ca3cee4b4aa4d6cd83d9dd62f0%7C0%7C1%7C637110739727088799&amp;sdata=B3n6TFU7hluQyAXUOEaHBAGNC8mhscMfxSJi%2FrFr%2Flo%3D&amp;reserved=0
>>>>>>>> * Switch walk_page_range() into two functions, the existing
>>>>>>>>   walk_page_range() now still requires VMAs (and treats areas without a
>>>>>>>>   VMA as a 'hole'). The new walk_page_range_novma() ignores VMAs and
>>>>>>>>   will report the actual page table layout. This fixes the previous
>>>>>>>>   breakage of /proc/<pid>/pagemap
>>>>>>>> * New patch at the end of the series which reduces the 'level' numbers
>>>>>>>>   by 1 to simplify the code slightly
>>>>>>>> * Added tags
>>>>>>> Does this new version also take care of this boot crash seen with v14? Suppose
>>>>>>> it is now breaking CONFIG_EFI_PGT_DUMP=y? The full config is,
>>>>>>>
>>>>>>> https://nam04.safelinks.protection.outlook.com/?url=https%3A%2F%2Fraw.githubusercontent.com%2Fcailca%2Flinux-mm%2Fmaster%2Fx86.config&amp;data=02%7C01%7Cthellstrom%40vmware.com%7C9f50ca595f81432eff5b08d778d7968a%7Cb39138ca3cee4b4aa4d6cd83d9dd62f0%7C0%7C1%7C637110739727088799&amp;sdata=ymVh49kh7VL9yseRdkjSbTwRh%2B7yBXxhK7QMTUzwn4U%3D&amp;reserved=0
>>>>>>>
>>>>>> V15 is indeed DOA here.
>>>>> Thanks for finding this, it looks like EFI causes issues here. The below fixes
>>>>> this for me (booting in QEMU).
>>>>>
>>>>> Andrew: do you want me to send out the entire series again for this fix, or
>>>>> can you squash this into mm-pagewalk-allow-walking-without-vma.patch?
>>>>>
>>>>> Thanks,
>>>>>
>>>>> Steve
>>>>>
>>>>> ---8<---
>>>>> diff --git a/mm/pagewalk.c b/mm/pagewalk.c
>>>>> index c7529dc4f82b..70dcaa23598f 100644
>>>>> --- a/mm/pagewalk.c
>>>>> +++ b/mm/pagewalk.c
>>>>> @@ -90,7 +90,7 @@ static int walk_pmd_range(pud_t *pud, unsigned long addr, unsigned long end,
>>>>>  			split_huge_pmd(walk->vma, pmd, addr);
>>>>>  			if (pmd_trans_unstable(pmd))
>>>>>  				goto again;
>>>>> -		} else if (pmd_leaf(*pmd)) {
>>>>> +		} else if (pmd_leaf(*pmd) || !pmd_present(*pmd)) {
>>>>>  			continue;
>>>>>  		}
>>>>>
>>>>> @@ -141,7 +141,7 @@ static int walk_pud_range(p4d_t *p4d, unsigned long addr, unsigned long end,
>>>>>  			split_huge_pud(walk->vma, pud, addr);
>>>>>  			if (pud_none(*pud))
>>>>>  				goto again;
>>>>> -		} else if (pud_leaf(*pud)) {
>>>>> +		} else if (pud_leaf(*pud) || !pud_present(*pud)) {
>>>>>  			continue;
>>>>>  		}
>>>>>
>>>>>
>>>> Even with this fix, booting for me under QEMU fails. See
>>>>
>>>> https://nam04.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.kernel.org%2Flinux-mm%2Fb7ce62f2-9a48-6e48-6685-003431e521aa%40redhat.com%2F&amp;data=02%7C01%7Cthellstrom%40vmware.com%7C9f50ca595f81432eff5b08d778d7968a%7Cb39138ca3cee4b4aa4d6cd83d9dd62f0%7C0%7C1%7C637110739727088799&amp;sdata=fRuLrmrzNEkU2MFzSVdyVyXyRoyZ95yZOYuy7aMSi7A%3D&amp;reserved=0
>>>>
>>> Yes, for some reasons, this starts to crash on almost all arches here, so it might be worth
>>> for Andrew to revert those in the meantime while allowing Steven to rework.
>> I agree, this produces too much noise.
> I've bisected this problem and it's a merge conflict with:
>
> ace88f1018b8 ("mm: pagewalk: Take the pagetable lock in walk_pte_range()")
>
> Reverting that commit "fixes" the problem. That commit adds a call to
> pte_offset_map_lock(), however that isn't necessarily safe when
> considering an "unusual" mapping in the kernel. Combined with my patch
> set this leads to the BUG when walking the kernel's page tables.
>
> At this stage I think it's best if Andrew drops my series and I'll try
> to rework it on top -rc1 fixing up this conflict and the other x86
> 32-bit issue that has cropped up.

Hi,

Unfortunately I wasn't aware of that conflict.

Perhaps something similar to this

https://elixir.bootlin.com/linux/v5.4/source/mm/memory.c#L2012

would fix at least this particular issue?

/Thomas




>
> Steve
>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

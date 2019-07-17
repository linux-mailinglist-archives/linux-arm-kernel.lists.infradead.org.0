Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2666B59F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 06:47:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rvFI1Wey2T+DVag/aCmfClYYABzG2IWYLdRyKCiFnv0=; b=mnrh5V9Cq8jxEW
	uVxML5YRERiGzNU0LvQnINq//43oNfEwu46lulBbKVX6+HsN9BdD4zOmGzKAAaNr9w89gzbKWkVMu
	ZptWoL61Zi6Hsqb+UQpWJZwDhlVnw/48bDkJthbQ6IYLjDU/P1SKLSEJn+XWu3pzXoaXYtMNUd4rb
	35iyzUR4gt5xs/OGA6luleEk0//5R1GtdOvslufBZMxFYE6Quheup1IiNFJHFRFTT7ao0JhrOab6F
	dwoOdmU8oFaGg+Yocq/Hhxxvz9saJ7K/GtYn7jKUfm5YPU/zU9sIG7XPqhm8SUEmFJZCF6En+bySt
	dImY00UANPrtrybvfvcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnbq9-0006es-Kw; Wed, 17 Jul 2019 04:46:53 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnbpT-0006dv-Sv
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 04:46:13 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x6H4joLE018141; Tue, 16 Jul 2019 21:45:50 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=9qHjrt9rb5dwUdoSFZsd07VYnDC/rFi79vBg6fY56+A=;
 b=OoenaqK2EdJ989Ve64NUrOyFCTUIHUHtctuh0Un+7kOWHXdslao1jFT/xHa+N/w3eJqd
 UmR2najCWukYiesEqX6glg32325JVgktZdI9bicAjgTriOpH627Y4atdKNXaZREpARnl
 Yp1ZGaODDiZypIukws3VaweLQblFNNQNHIoLH3cIWHnb47sM6MLU9q6ZYFa7tDyFSJfS
 3yl5jgIR/xwOxeVsYxnKhf2PN0fJcxKKIQGT57k5Hnf3Kro4t5cQ/WlF4PnXOfKnAFAn
 VI5V5DN0itLgHDFTJZ+PwnCswcYtxTXUWsu0YK5JeyrXLDW5M49ddE8BncBPu8vjuyv2 eA== 
Received: from sc-exch04.marvell.com ([199.233.58.184])
 by mx0a-0016f401.pphosted.com with ESMTP id 2ts07vep87-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 16 Jul 2019 21:45:50 -0700
Received: from SC-EXCH02.marvell.com (10.93.176.82) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Tue, 16 Jul
 2019 21:45:49 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (104.47.32.59) by
 SC-EXCH02.marvell.com (10.93.176.82) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Tue, 16 Jul 2019 21:45:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ebC8EfSEH9JMoRuyCmQRKoxRAkwt7k7Tx7Nbm3JB0fQG/T8c5mz/yMWSGUAPQU+mBAyN3jxFBdFK+D0ntL3lTl2LaYpTgTV89VYnJMMRlK0RVix6JYb0FnnGC+l5qwDa5JjI1WKF4wuIUUKCYY5hQPSf0CRYrTss/7HwAItllWG3dM5BjluimF7d85MaYj1Jjx6TgmBkqKlRX/Q1dqlJjdlB6gCaAgzDDcbIWnl+Y/Xb1tKKWUgaDXYqbjfgyBLJeh4y7WpcicjoGbqF53DhACATrhV5+HPXMBDs/NtKDsPHpFfivW9JPiIOC39PlWVLeMKJga2kX7UtQWE0ylxudQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9qHjrt9rb5dwUdoSFZsd07VYnDC/rFi79vBg6fY56+A=;
 b=bwmZmO5JyTM2mhA+mKZgGYOajSdP1xDMfhq4F0j1Snja7BFm8qIx4WU8PUVx4qIzZGcm07kD62n6J6YJTM66vQCQ0qIgDMTSoU3+Xpfmh7boPslZyTS2GuQHG+8Z0URiOzjagdJ5PsKLIWgDPrbDzTuchYYC/HTXBsbQcH56+59xxjbNzYln8Fwe2wRpAz8OtMAkej2rvOAo4Z9SJqAd5yQWApvF0XOMdC+vjlmXdByM0x0eke3VboaJns3ncVufhZqwgV2APBAJJiYE9oD2R9KZmtiPbSkutnLhIQcj9U8WxR+gV5hIlAWRKAfY7MwIN4EpNvOut1sg3rhFVlgyAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=marvell.com;dmarc=pass action=none
 header.from=marvell.com;dkim=pass header.d=marvell.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9qHjrt9rb5dwUdoSFZsd07VYnDC/rFi79vBg6fY56+A=;
 b=jSkN+9Vhak84aQssMi/VZzPCu06j++Gy4QMAI3QqfZ0fUOtyyzzqjC//JwQKRepqdYFLIssYLEPWK/dWZtILojpeg45Y/5DnxQB/6/k4FBxI2ZqGpnVxxBM/K1vly5AmlrEGQg83CEh1wMl76/GJwMkrE04NR1OKv7ulKz9Fq9A=
Received: from MN2PR18MB3055.namprd18.prod.outlook.com (20.178.255.209) by
 MN2PR18MB2878.namprd18.prod.outlook.com (20.179.22.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.10; Wed, 17 Jul 2019 04:45:47 +0000
Received: from MN2PR18MB3055.namprd18.prod.outlook.com
 ([fe80::600f:38e6:1583:487d]) by MN2PR18MB3055.namprd18.prod.outlook.com
 ([fe80::600f:38e6:1583:487d%7]) with mapi id 15.20.2073.012; Wed, 17 Jul 2019
 04:45:47 +0000
From: Shijith Thotton <sthotton@marvell.com>
To: Julien Thierry <Julien.Thierry@arm.com>, Steven Price
 <Steven.Price@arm.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v3 1/9] arm64: perf: avoid PMXEV* indirection
Thread-Topic: [PATCH v3 1/9] arm64: perf: avoid PMXEV* indirection
Thread-Index: AQHVNZo+Qj0T7KNxnEupeA4An+/c8abDsUQAgAABMQCACWYUgIAABfWAgAErSQA=
Date: Wed, 17 Jul 2019 04:45:47 +0000
Message-ID: <374a9f8f-6d1d-a43c-1e25-ab32fcb63b02@marvell.com>
References: <1562596377-33196-1-git-send-email-julien.thierry@arm.com>
 <1562596377-33196-2-git-send-email-julien.thierry@arm.com>
 <72820d6b-145c-c7dd-b285-c3d3b8acd103@arm.com>
 <0e1169eb-1a2a-eaa3-82b2-74b263db527d@arm.com>
 <a9edc2c1-aa25-31ec-2f60-0156b87da731@marvell.com>
 <750864d6-543b-32a4-9b90-4a928c824a4b@arm.com>
In-Reply-To: <750864d6-543b-32a4-9b90-4a928c824a4b@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR08CA0012.namprd08.prod.outlook.com
 (2603:10b6:a03:100::25) To MN2PR18MB3055.namprd18.prod.outlook.com
 (2603:10b6:208:ff::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 19d48df9-5b78-4b15-2255-08d70a71a2c6
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR18MB2878; 
x-ms-traffictypediagnostic: MN2PR18MB2878:
x-microsoft-antispam-prvs: <MN2PR18MB2878865CBCC8C2037F855126D9C90@MN2PR18MB2878.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 01018CB5B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(346002)(366004)(136003)(376002)(199004)(189003)(54906003)(110136005)(2616005)(6436002)(53936002)(446003)(6486002)(11346002)(476003)(6246003)(316002)(81156014)(7416002)(31696002)(6512007)(7736002)(305945005)(2501003)(256004)(14444005)(102836004)(14454004)(52116002)(86362001)(6506007)(4326008)(3846002)(31686004)(26005)(53546011)(386003)(6116002)(25786009)(186003)(64756008)(66446008)(66556008)(2906002)(66476007)(478600001)(36756003)(5660300002)(76176011)(66946007)(8676002)(71200400001)(66066001)(229853002)(71190400001)(99286004)(8936002)(81166006)(68736007)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR18MB2878;
 H:MN2PR18MB3055.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ojGqdIcj0YAWKs3U3Tn7iNVEn9M8rW+0P42wqrxnd4Zp4S9hLbZHJjr3/LUHPjT7lGRsLOmgJiiu9BmK4RC4XGDSm/BN20BijDq13dohgMBKztW6odzp/0IyeCSjtJNszo/uwN3LpDgXCgayddUuW1xIBpOYFeJ7cNz90l3wvSTaR4waE8LNaV7ilKy2TwiAiiCrigXNgMai2iaaYhqsC1Qkfx4vnPrtmzhMs/nRhzIoaQyeyBrAEizDDLsdxaPjgGBn+TTo3puzWEZcTWJzdrKDJ5tyegbmIKtfllsLfOelIKtUmcnymYsYt2zCo661SV1+p5HfkjbiNaX1Ft/5Mn1OQcC9D2jSLTVRmQFy8/PqWdtaOvrJD9UbHX8lamJNW4Aas7qviJwS4ZmORnzE6WKsTpji7FkcooKGlSojOM4=
Content-ID: <E2B95F1935978348B7F56614CBBB0764@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 19d48df9-5b78-4b15-2255-08d70a71a2c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2019 04:45:47.7648 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sthotton@marvell.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB2878
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-07-17_02:2019-07-16,2019-07-17 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_214612_135951_9F2E22BE 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "peterz@infradead.org" <peterz@infradead.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>, Will Deacon <Will.Deacon@arm.com>,
 "acme@kernel.org" <acme@kernel.org>,
 "alexander.shishkin@linux.intel.com" <alexander.shishkin@linux.intel.com>,
 "mingo@redhat.com" <mingo@redhat.com>,
 "namhyung@kernel.org" <namhyung@kernel.org>,
 "jolsa@redhat.com" <jolsa@redhat.com>,
 "liwei391@huawei.com" <liwei391@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Julien,

On 7/16/19 3:54 AM, Julien Thierry wrote:
> On 16/07/2019 11:33, Shijith Thotton wrote:
>> On 7/10/19 4:01 AM, Julien Thierry wrote:
>>> On 10/07/2019 11:57, Steven Price wrote:
>>>> On 08/07/2019 15:32, Julien Thierry wrote:
>>>>> From: Mark Rutland <mark.rutland@arm.com>
>>>>>
>>>>> Currently we access the counter registers and their respective type
>>>>> registers indirectly. This requires us to write to PMSELR, issue an ISB,
>>>>> then access the relevant PMXEV* registers.
>>>>>
>>>>> This is unfortunate, because:
>>>>>
>>>>> * Under virtualization, accessing one registers requires two traps to
>>>>>     the hypervisor, even though we could access the register directly with
>>>>>     a single trap.
>>>>>
>>>>> * We have to issue an ISB which we could otherwise avoid the cost of.
>>>>>
>>>>> * When we use NMIs, the NMI handler will have to save/restore the select
>>>>>     register in case the code it preempted was attempting to access a
>>>>>     counter or its type register.
>>>>>
>>>>> We can avoid these issues by directly accessing the relevant registers.
>>>>> This patch adds helpers to do so.
>>>>>
>>>>> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
>>>>> [Julien T.: Don't inline read/write functions to avoid big code-size
>>>>>     increase, remove unused read_pmevtypern function,
>>>>>     fix counter index issue.]
>>>>> Signed-off-by: Julien Thierry <julien.thierry@arm.com>
>>>>> Cc: Will Deacon <will.deacon@arm.com>
>>>>> Cc: Peter Zijlstra <peterz@infradead.org>
>>>>> Cc: Ingo Molnar <mingo@redhat.com>
>>>>> Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
>>>>> Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
>>>>> Cc: Jiri Olsa <jolsa@redhat.com>
>>>>> Cc: Namhyung Kim <namhyung@kernel.org>
>>>>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>>>>> ---
>>>>>    arch/arm64/kernel/perf_event.c | 96 ++++++++++++++++++++++++++++++++++++------
>>>>>    1 file changed, 83 insertions(+), 13 deletions(-)
>>>>>
>>>>> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
>>>>> index 96e90e2..7759f8a 100644
>>>>> --- a/arch/arm64/kernel/perf_event.c
>>>>> +++ b/arch/arm64/kernel/perf_event.c
>>>>> @@ -369,6 +369,77 @@ static inline bool armv8pmu_event_is_chained(struct perf_event *event)
>>>>>    #define  ARMV8_IDX_TO_COUNTER(x) \
>>>>>     (((x) - ARMV8_IDX_COUNTER0) & ARMV8_PMU_COUNTER_MASK)
>>>>>
>>>>> +/*
>>>>> + * This code is really good
>>>>> + */
>>>>> +
>>>>> +#define PMEVN_CASE(n, case_macro) \
>>>>> +  case n: case_macro(n); break
>>>>> +
>>>>> +#define PMEVN_SWITCH(x, case_macro)                               \
>>>>> +  do {                                                    \
>>>>> +          switch (x) {                                    \
>>>>> +          PMEVN_CASE(0,  case_macro);                     \
>>>>> +          PMEVN_CASE(1,  case_macro);                     \
>>>>> +          PMEVN_CASE(2,  case_macro);                     \
>>>>> +          PMEVN_CASE(3,  case_macro);                     \
>>>>> +          PMEVN_CASE(4,  case_macro);                     \
>>>>> +          PMEVN_CASE(5,  case_macro);                     \
>>>>> +          PMEVN_CASE(6,  case_macro);                     \
>>>>> +          PMEVN_CASE(7,  case_macro);                     \
>>>>> +          PMEVN_CASE(8,  case_macro);                     \
>>>>> +          PMEVN_CASE(9,  case_macro);                     \
>>>>> +          PMEVN_CASE(10, case_macro);                     \
>>>>> +          PMEVN_CASE(11, case_macro);                     \
>>>>> +          PMEVN_CASE(12, case_macro);                     \
>>>>> +          PMEVN_CASE(13, case_macro);                     \
>>>>> +          PMEVN_CASE(14, case_macro);                     \
>>>>> +          PMEVN_CASE(15, case_macro);                     \
>>>>> +          PMEVN_CASE(16, case_macro);                     \
>>>>> +          PMEVN_CASE(17, case_macro);                     \
>>>>> +          PMEVN_CASE(18, case_macro);                     \
>>>>> +          PMEVN_CASE(19, case_macro);                     \
>>>>
>>>> Is 20 missing on purpose?
>>>>
>>>
>>> That would have been fun to debug. Well spotted!
>>>
>>> I'll fix it in the next version.
>>>
>>> Thanks,
>>>
>>
>> Tried perf top/record on this patch and are working fine.
>> Output of perf record on "iperf -c 127.0.0.1 -t 30" is below. (single core)
>>
>> With Pseudo-NMI:
>>       20.35%  [k] lock_acquire
>>       16.95%  [k] lock_release
>>       11.02%  [k] __arch_copy_from_user
>>        7.78%  [k] lock_is_held_type
>>        2.12%  [k] ipt_do_table
>>        1.34%  [k] kmem_cache_free
>>        1.25%  [k] _raw_spin_unlock_irqrestore
>>        1.21%  [k] __nf_conntrack_find_get
>>        1.06%  [k] get_page_from_freelist
>>        1.04%  [k] ktime_get
>>        1.03%  [k] kfree
>>        1.00%  [k] nf_conntrack_tcp_packet
>>        0.96%  [k] tcp_sendmsg_locked
>>        0.87%  [k] __softirqentry_text_start
>>        0.87%  [k] process_backlog
>>        0.76%  [k] __local_bh_enable_ip
>>        0.75%  [k] ip_finish_output2
>>        0.68%  [k] __tcp_transmit_skb
>>        0.62%  [k] enqueue_to_backlog
>>        0.60%  [k] __lock_acquire.isra.17
>>        0.58%  [k] __free_pages_ok
>>        0.54%  [k] nf_conntrack_in
>>
>> With IRQ:
>>       16.49%  [k] __arch_copy_from_user
>>       12.38%  [k] _raw_spin_unlock_irqrestore
>>        9.41%  [k] lock_acquire
>>        6.92%  [k] lock_release
>>        3.71%  [k] lock_is_held_type
>>        2.80%  [k] ipt_do_table
>>        2.06%  [k] get_page_from_freelist
>>        1.82%  [k] ktime_get
>>        1.73%  [k] process_backlog
>>        1.27%  [k] nf_conntrack_tcp_packet
>>        1.21%  [k] enqueue_to_backlog
>>        1.17%  [k] __tcp_transmit_skb
>>        1.12%  [k] ip_finish_output2
>>        1.11%  [k] tcp_sendmsg_locked
>>        1.06%  [k] __free_pages_ok
>>        1.05%  [k] tcp_ack
>>        0.99%  [k] __netif_receive_skb_core
>>        0.88%  [k] __nf_conntrack_find_get
>>        0.71%  [k] nf_conntrack_in
>>        0.61%  [k] kmem_cache_free
>>        0.59%  [k] kfree
>>        0.57%  [k] __alloc_pages_nodemask
>>
>> Thanks Juilen and Wei,
>> Tested-by: Shijith Thotton <sthotton@marvell.com>
>>
> 
> Thanks for testing this and confirming the improvement.
> 
> I'm gonna post a new version soon. Is it alright if I apply this tag for
> the other arm64 patches that enable the use of Pseudo-NMI for the PMU?
> (I'm mostly thinking of patches 8 and 9 since there haven't been
> comments on them and won't have behavioural changes in the next version).
> 

Yes please.

Thanks,
Shijith
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

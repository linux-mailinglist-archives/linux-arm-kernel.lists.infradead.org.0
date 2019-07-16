Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8B26A69D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 12:34:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ig+Ls+huPr+wKW80toL4+WyRX3A95wpPBjkzNg5MS6A=; b=T3Z2Q1CG6toQZF
	r+HnINSDxRlvrmtP/6O7CnkluyC36TccMCv8FZJiTcChirFC1ydf9hFiYvcaNPCWhC/CszCEC+bU+
	k2bHqKJdoKmzsLF4Az2SthgbZZKu4LRfDn1ukjZ5Lw2YvCNzBZhehJh2M76YvIhmmFLDr0GD7/rVA
	Y8lbW83iubjWxtf3W2WplLVzAxnJBc+9Pn3wkc3Tpmk2yAn7LOk8yaxAycE8SAAxtBSEnO9aupA4x
	XdtmWEtPKCOzF5BASJB2u+NdakMwXxG9ud+uHrPtkSYFECdbW0kNAUZSYm5hIkipttT5x8TP484sF
	whxCxMoFZWe2SzER8rOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnKmk-0001Dq-TK; Tue, 16 Jul 2019 10:34:14 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnKmG-0001D1-2c
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 10:33:45 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x6GAL0Cc004895; Tue, 16 Jul 2019 03:33:22 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=Hm7+1RkpLu5BC3PheWVy6PqoqB4R0KwsWfwQ8uLjAVU=;
 b=mxR7jEYzhDDsqAqkjxWUY1/LI2WHliH4mR5OFzbFstho/rTjtRT/z7RCuT1zyXyiaY/v
 fzEe44hwYMSJkgi78roBs5hSC2DNU7cEfsBloci+ZSui14REX2c0QCFCkxn+cPeaJc5f
 HgSmP1Py7hLRsBLCh7CQODwdqhDfEA7Z1lzsMjEkvlOdEmBIWxnHc07VnaViQh4O6iSy
 vKnLqtNLLqH8wGg6bsBRxXiabMdloGJc041jfqLCa2LEi6ueN1OPxnDo6zyIfjmw6iaT
 4t/L1rNAC80NdCJ0dzu8l7g/kSc5gJ6fmbOfEekOWmwit8lc0T/H+K6C1DmDiPTKMqwz EQ== 
Received: from sc-exch03.marvell.com ([199.233.58.183])
 by mx0a-0016f401.pphosted.com with ESMTP id 2ts07vat55-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 16 Jul 2019 03:33:22 -0700
Received: from SC-EXCH02.marvell.com (10.93.176.82) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Tue, 16 Jul
 2019 03:33:21 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.58) by
 SC-EXCH02.marvell.com (10.93.176.82) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Tue, 16 Jul 2019 03:33:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d54byrcaC97VhxBCXaJFuGXyfetFAK8F41eIZ1g4IoYOGEh/zoy9LZwTzPTkaMkjcEvMcCPtq1fRbTkuBzQr52RQZ+0iSFfxpgOzm7wtIsqcEgOAz19GESTU81hZYJC9vAMiY9F/KyaKPnMsYbnf7NxhnhEYVC53GCgncIlw/rI2DMZ02R43JHL2QCyZ/WP7lS5uLtJHghzwi+V5vA7cQMGuDQnedj9nHl+NQVuYUsYd+7b6KFuX1MVTciclcylqOok5acpHhSACdUNZpcwdE98VRvvnKnvqpV9DraKcN/+RqByiVxOwwQezE4TZ9+ANrEhWTWsQXnXeTq+9Z3dcyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hm7+1RkpLu5BC3PheWVy6PqoqB4R0KwsWfwQ8uLjAVU=;
 b=BWA/yvgErhp7+ZzvUNmr86A7sCfsF2+pQwgfEhehuARZnmaEdmzg2xN/fwD8bW9y/I12bAxZZyAKNLa58dW9nhdcMT1mDQ7sixuPxEIapxPboTQcLloB4YOe0jQWX7A4kdK39zmJFz8raiV3r+d3aoNzO+KySQM0iUQ4YWgblu5L9phdL1oGNOs7+lg8DGBnz600H44GkUihAhG/cOOZ8wQLuLxflka/L8mShv19N016axD0nd/v9E4AgUwcqyOI5eW+kGEhP3/4mMlXuuJHOZFBcczgZisabhnpRYvXJFt7n71CujJJ9Q6Ro7OLQejpD0HxQmcQTE6Vn27AhX7YXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=marvell.com;dmarc=pass action=none
 header.from=marvell.com;dkim=pass header.d=marvell.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hm7+1RkpLu5BC3PheWVy6PqoqB4R0KwsWfwQ8uLjAVU=;
 b=kUJsZlO3nFDbxEkq6sbidch20NLcXv127hz5J2UeeeeyZiAVRUAJmjmiXzR0gvRoLMU7s08EH7GQX+xcNgrZUlumRtNhrslQCxbGPdvgR5Hk8jSjvSDviTMDBM6Z0QLqwhajYiGivwDDnZ/qp9U6C5+eUmpXvfeatyA1HO6a9H4=
Received: from MN2PR18MB3055.namprd18.prod.outlook.com (20.178.255.209) by
 MN2PR18MB2928.namprd18.prod.outlook.com (20.179.23.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Tue, 16 Jul 2019 10:33:16 +0000
Received: from MN2PR18MB3055.namprd18.prod.outlook.com
 ([fe80::600f:38e6:1583:487d]) by MN2PR18MB3055.namprd18.prod.outlook.com
 ([fe80::600f:38e6:1583:487d%7]) with mapi id 15.20.2073.012; Tue, 16 Jul 2019
 10:33:16 +0000
From: Shijith Thotton <sthotton@marvell.com>
To: Julien Thierry <julien.thierry@arm.com>, Steven Price
 <steven.price@arm.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v3 1/9] arm64: perf: avoid PMXEV* indirection
Thread-Topic: [PATCH v3 1/9] arm64: perf: avoid PMXEV* indirection
Thread-Index: AQHVNZo+Qj0T7KNxnEupeA4An+/c8abDsUQAgAABMQCACWYUgA==
Date: Tue, 16 Jul 2019 10:33:16 +0000
Message-ID: <a9edc2c1-aa25-31ec-2f60-0156b87da731@marvell.com>
References: <1562596377-33196-1-git-send-email-julien.thierry@arm.com>
 <1562596377-33196-2-git-send-email-julien.thierry@arm.com>
 <72820d6b-145c-c7dd-b285-c3d3b8acd103@arm.com>
 <0e1169eb-1a2a-eaa3-82b2-74b263db527d@arm.com>
In-Reply-To: <0e1169eb-1a2a-eaa3-82b2-74b263db527d@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR01CA0021.prod.exchangelabs.com (2603:10b6:a02:80::34)
 To MN2PR18MB3055.namprd18.prod.outlook.com
 (2603:10b6:208:ff::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a673e7b2-b79e-4771-4fd7-08d709d902f8
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR18MB2928; 
x-ms-traffictypediagnostic: MN2PR18MB2928:
x-microsoft-antispam-prvs: <MN2PR18MB29289EC8D7CB7907BC9830E0D9CE0@MN2PR18MB2928.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0100732B76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(376002)(396003)(39860400002)(366004)(189003)(199004)(36756003)(7416002)(54906003)(110136005)(53546011)(99286004)(186003)(66446008)(66556008)(6506007)(386003)(31686004)(2501003)(64756008)(66476007)(76176011)(66946007)(6486002)(478600001)(52116002)(5660300002)(26005)(6436002)(3846002)(6116002)(86362001)(486006)(7736002)(316002)(256004)(229853002)(446003)(6246003)(4326008)(11346002)(14454004)(476003)(2616005)(8676002)(71200400001)(81166006)(81156014)(8936002)(71190400001)(68736007)(31696002)(53936002)(102836004)(66066001)(25786009)(2906002)(305945005)(6512007)(14444005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR18MB2928;
 H:MN2PR18MB3055.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: hi0smATEmWWBYAHSGMHwLFb0ZHEPbuqlWcmat6UaQG95B7HU/p5tYbNnNF/HZCP5iajmKvUommMvZtZ3HmKu++yYRHE97wJHcyGidKA5VT8NmaqMJJruOPFTurElzu00NAnYkztarb05rcH59dP15YHv5pdXJvr46C8nPGk9s5D7UTnsDuiDQ5hdauADWgkI52Zo1FaJsnA1OvMLcy83B9/LdxMzh4b6cQkQe4F8rNoWUQKP57JDEwD7wDfEL3eij84bwXs8tYiMK0FWezLrkq0TvxQY8WgWpWUAa2Wv5/Vx1sljyp8GT/IW6P0sJt6sGdmKKl8quz7RH1dA38Yn2nze3Q0KXIHVGk09rLFpfYbM4eHhRWjsstjAD0Z1xdFfuRu23KUWpfShgvMhhiTk/oud+OVsm29yJi1RI15yFV8=
Content-ID: <7B6C496F96D7514CAED90E21251044EC@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a673e7b2-b79e-4771-4fd7-08d709d902f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2019 10:33:16.2393 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sthotton@marvell.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB2928
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-07-16_03:2019-07-16,2019-07-16 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_033344_302403_9B72B86A 
X-CRM114-Status: GOOD (  18.41  )
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
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



On 7/10/19 4:01 AM, Julien Thierry wrote:
> 
> 
> On 10/07/2019 11:57, Steven Price wrote:
>> On 08/07/2019 15:32, Julien Thierry wrote:
>>> From: Mark Rutland <mark.rutland@arm.com>
>>>
>>> Currently we access the counter registers and their respective type
>>> registers indirectly. This requires us to write to PMSELR, issue an ISB,
>>> then access the relevant PMXEV* registers.
>>>
>>> This is unfortunate, because:
>>>
>>> * Under virtualization, accessing one registers requires two traps to
>>>    the hypervisor, even though we could access the register directly with
>>>    a single trap.
>>>
>>> * We have to issue an ISB which we could otherwise avoid the cost of.
>>>
>>> * When we use NMIs, the NMI handler will have to save/restore the select
>>>    register in case the code it preempted was attempting to access a
>>>    counter or its type register.
>>>
>>> We can avoid these issues by directly accessing the relevant registers.
>>> This patch adds helpers to do so.
>>>
>>> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
>>> [Julien T.: Don't inline read/write functions to avoid big code-size
>>> 	increase, remove unused read_pmevtypern function,
>>> 	fix counter index issue.]
>>> Signed-off-by: Julien Thierry <julien.thierry@arm.com>
>>> Cc: Will Deacon <will.deacon@arm.com>
>>> Cc: Peter Zijlstra <peterz@infradead.org>
>>> Cc: Ingo Molnar <mingo@redhat.com>
>>> Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
>>> Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
>>> Cc: Jiri Olsa <jolsa@redhat.com>
>>> Cc: Namhyung Kim <namhyung@kernel.org>
>>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>>> ---
>>>   arch/arm64/kernel/perf_event.c | 96 ++++++++++++++++++++++++++++++++++++------
>>>   1 file changed, 83 insertions(+), 13 deletions(-)
>>>
>>> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
>>> index 96e90e2..7759f8a 100644
>>> --- a/arch/arm64/kernel/perf_event.c
>>> +++ b/arch/arm64/kernel/perf_event.c
>>> @@ -369,6 +369,77 @@ static inline bool armv8pmu_event_is_chained(struct perf_event *event)
>>>   #define	ARMV8_IDX_TO_COUNTER(x)	\
>>>   	(((x) - ARMV8_IDX_COUNTER0) & ARMV8_PMU_COUNTER_MASK)
>>>
>>> +/*
>>> + * This code is really good
>>> + */
>>> +
>>> +#define PMEVN_CASE(n, case_macro) \
>>> +	case n: case_macro(n); break
>>> +
>>> +#define PMEVN_SWITCH(x, case_macro)				\
>>> +	do {							\
>>> +		switch (x) {					\
>>> +		PMEVN_CASE(0,  case_macro);			\
>>> +		PMEVN_CASE(1,  case_macro);			\
>>> +		PMEVN_CASE(2,  case_macro);			\
>>> +		PMEVN_CASE(3,  case_macro);			\
>>> +		PMEVN_CASE(4,  case_macro);			\
>>> +		PMEVN_CASE(5,  case_macro);			\
>>> +		PMEVN_CASE(6,  case_macro);			\
>>> +		PMEVN_CASE(7,  case_macro);			\
>>> +		PMEVN_CASE(8,  case_macro);			\
>>> +		PMEVN_CASE(9,  case_macro);			\
>>> +		PMEVN_CASE(10, case_macro);			\
>>> +		PMEVN_CASE(11, case_macro);			\
>>> +		PMEVN_CASE(12, case_macro);			\
>>> +		PMEVN_CASE(13, case_macro);			\
>>> +		PMEVN_CASE(14, case_macro);			\
>>> +		PMEVN_CASE(15, case_macro);			\
>>> +		PMEVN_CASE(16, case_macro);			\
>>> +		PMEVN_CASE(17, case_macro);			\
>>> +		PMEVN_CASE(18, case_macro);			\
>>> +		PMEVN_CASE(19, case_macro);			\
>>
>> Is 20 missing on purpose?
>>
> 
> That would have been fun to debug. Well spotted!
> 
> I'll fix it in the next version.
> 
> Thanks,
> 

Tried perf top/record on this patch and are working fine.
Output of perf record on "iperf -c 127.0.0.1 -t 30" is below. (single core)

With Pseudo-NMI:
     20.35%  [k] lock_acquire
     16.95%  [k] lock_release
     11.02%  [k] __arch_copy_from_user
      7.78%  [k] lock_is_held_type
      2.12%  [k] ipt_do_table
      1.34%  [k] kmem_cache_free
      1.25%  [k] _raw_spin_unlock_irqrestore
      1.21%  [k] __nf_conntrack_find_get
      1.06%  [k] get_page_from_freelist
      1.04%  [k] ktime_get
      1.03%  [k] kfree
      1.00%  [k] nf_conntrack_tcp_packet
      0.96%  [k] tcp_sendmsg_locked
      0.87%  [k] __softirqentry_text_start
      0.87%  [k] process_backlog
      0.76%  [k] __local_bh_enable_ip
      0.75%  [k] ip_finish_output2
      0.68%  [k] __tcp_transmit_skb
      0.62%  [k] enqueue_to_backlog
      0.60%  [k] __lock_acquire.isra.17
      0.58%  [k] __free_pages_ok
      0.54%  [k] nf_conntrack_in

With IRQ:
     16.49%  [k] __arch_copy_from_user
     12.38%  [k] _raw_spin_unlock_irqrestore
      9.41%  [k] lock_acquire
      6.92%  [k] lock_release
      3.71%  [k] lock_is_held_type
      2.80%  [k] ipt_do_table
      2.06%  [k] get_page_from_freelist
      1.82%  [k] ktime_get
      1.73%  [k] process_backlog
      1.27%  [k] nf_conntrack_tcp_packet
      1.21%  [k] enqueue_to_backlog
      1.17%  [k] __tcp_transmit_skb
      1.12%  [k] ip_finish_output2
      1.11%  [k] tcp_sendmsg_locked
      1.06%  [k] __free_pages_ok
      1.05%  [k] tcp_ack
      0.99%  [k] __netif_receive_skb_core
      0.88%  [k] __nf_conntrack_find_get
      0.71%  [k] nf_conntrack_in
      0.61%  [k] kmem_cache_free
      0.59%  [k] kfree
      0.57%  [k] __alloc_pages_nodemask

Thanks Juilen and Wei,
Tested-by: Shijith Thotton <sthotton@marvell.com>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

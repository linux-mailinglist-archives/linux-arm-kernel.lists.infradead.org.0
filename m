Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C29F169A43
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 19:55:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4EHlXe7KcjWEIkxvppVFOdZZW4bvxj1c9cJv5VL3S6Y=; b=lz6ENhDNN7dnhD
	fZk2C4HHvumF3rjzYRsuZKI7x88k3FnfCF0F+av+TXvpdpcOLsW9F0FEpmpeh6A2qLFDH76C9jMlC
	nKUgA924VjF+WPJuesHz0A5XoIz2ieQBAAcef1h/Kc36UsIpg6tigDO4HJahIFEKJyGVnQPE83kNB
	Vkl/XfosEoCUQ8seGH0t9EmZccLRcOHXTcoBqg4XqX3Cne99TkYnY6vNaZDEkU2rKmmksxi8dD5SP
	aWX02p3SlLzA+g7Z3d4DGQvSl17+ITLIw/dzaTyIt2awgJ8h7Lww8JCMcvLaoM7YEojiWrimihdpt
	ehQqcG1nweD3omQoqSiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5C8-0006XW-JC; Mon, 15 Jul 2019 17:55:24 +0000
Received: from mail-eopbgr760134.outbound.protection.outlook.com
 ([40.107.76.134] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5Bw-0006Wi-Hd
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 17:55:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T3zceZ8s9fJ+r5jvP2Dyt5FNez0197J+VjrK3RcwXMo=;
 b=AhH1mmY+tBWjNuur0Lye+EZo/5ivMxDu4HlI/deciM6SIppBm4Ox4G4oKCdKW46an/SqoXqIOs8RxzyDCIED+bvwHjHOeZVHVCyUspAukmNXRMDpCLIlfaNzD+nizOntoGHOJDb/wkDDCQ3B8JtuiRvxlfc010E2931GaIld54s=
Received: from DM6PR01MB4090.prod.exchangelabs.com (20.176.105.203) by
 DM6PR01MB3674.prod.exchangelabs.com (20.176.64.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.19; Mon, 15 Jul 2019 17:55:07 +0000
Received: from DM6PR01MB4090.prod.exchangelabs.com
 ([fe80::88b7:bfbe:79e9:b251]) by DM6PR01MB4090.prod.exchangelabs.com
 ([fe80::88b7:bfbe:79e9:b251%7]) with mapi id 15.20.2073.012; Mon, 15 Jul 2019
 17:55:07 +0000
From: Hoan Tran OS <hoan@os.amperecomputing.com>
To: Michal Hocko <mhocko@kernel.org>, Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 0/5] mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by
 default for NUMA
Thread-Topic: [PATCH v2 0/5] mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by
 default for NUMA
Thread-Index: AQHVOD/24o0J5njgPEqkosNO5sbs8abGjx+AgABBUoCAABUugIAAKIsAgAAGUoCABOfTgA==
Date: Mon, 15 Jul 2019 17:55:07 +0000
Message-ID: <730368c5-1711-89ae-e3ef-65418b17ddc9@os.amperecomputing.com>
References: <1562887528-5896-1-git-send-email-Hoan@os.amperecomputing.com>
 <20190712070247.GM29483@dhcp22.suse.cz>
 <586ae736-a429-cf94-1520-1a94ffadad88@os.amperecomputing.com>
 <20190712121223.GR29483@dhcp22.suse.cz>
 <20190712143730.au3662g4ua2tjudu@willie-the-truck>
 <20190712150007.GU29483@dhcp22.suse.cz>
In-Reply-To: <20190712150007.GU29483@dhcp22.suse.cz>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: CY4PR22CA0094.namprd22.prod.outlook.com
 (2603:10b6:903:ad::32) To DM6PR01MB4090.prod.exchangelabs.com
 (2603:10b6:5:27::11)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hoan@os.amperecomputing.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [27.68.67.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4704a9c4-8b92-4f81-164d-08d7094d9237
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM6PR01MB3674; 
x-ms-traffictypediagnostic: DM6PR01MB3674:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DM6PR01MB36744935B19F92FFC249CEBEF1CF0@DM6PR01MB3674.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 00997889E7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39840400004)(366004)(346002)(376002)(396003)(136003)(189003)(199004)(54534003)(53754006)(8936002)(446003)(11346002)(2616005)(52116002)(478600001)(4326008)(26005)(31686004)(66066001)(6306002)(486006)(5660300002)(54906003)(7416002)(186003)(6512007)(316002)(6246003)(966005)(6506007)(386003)(53546011)(68736007)(110136005)(81156014)(2906002)(81166006)(8676002)(102836004)(53936002)(76176011)(476003)(6486002)(6436002)(66476007)(3846002)(66556008)(7736002)(66946007)(229853002)(14454004)(66446008)(64756008)(6116002)(71190400001)(71200400001)(305945005)(99286004)(25786009)(86362001)(256004)(31696002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR01MB3674;
 H:DM6PR01MB4090.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: os.amperecomputing.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 1poJLgy+gWrA2JZ8jvvSrr9id+coISlkua49IowNQJdYwMzPsTSWqzrmv2GTlG16sbpALs+nru8nLWGn6vaVFe2C8HbyqToZicyABq8RUtNtjwq7usE4yboJTDBlKymVrlD8hrUG2u4vHEoXjREB3zHyFT9F6YDZyELQlctle6xsSqd76WNQ9+2nq0WV81M4GRvRCDEbUrtqO3Nw8bfc6D/Y/Z92RM8vkJp1KQNGj1dmgzK6WIj2DNCEEoRAE5t8BulWiJFcu7QUkIXLyBuMNMBlPyzBBIpHmHXKqWSK6J1tkNQJmUfMOqD7qmxmcywQNur5l3d5X8/8eE2lJlVKK1MU9wXw98G0WCzQ/7Iue7gms5Tvk/fOuVB1pfRupuuzg0DphPXpYFjxt/2+Ulvm8OJunBD8crV7N6ETjA2rU84=
Content-ID: <BFFF5D632E6E314BACC1D6CCF19F1523@prod.exchangelabs.com>
MIME-Version: 1.0
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4704a9c4-8b92-4f81-164d-08d7094d9237
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2019 17:55:07.2856 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Hoan@os.amperecomputing.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR01MB3674
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_105512_675822_77C71BA9 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.134 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, "H . Peter Anvin" <hpa@zytor.com>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, "x86@kernel.org" <x86@kernel.org>,
 "willy@infradead.org" <willy@infradead.org>,
 Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Open Source Submission <patches@amperecomputing.com>,
 Pavel Tatashin <pavel.tatashin@microsoft.com>,
 Vasily Gorbik <gor@linux.ibm.com>, Will Deacon <will.deacon@arm.com>,
 Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 Vlastimil Babka <vbabka@suse.cz>, Oscar Salvador <osalvador@suse.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 7/12/19 10:00 PM, Michal Hocko wrote:
> On Fri 12-07-19 15:37:30, Will Deacon wrote:
>> Hi all,
>>
>> On Fri, Jul 12, 2019 at 02:12:23PM +0200, Michal Hocko wrote:
>>> On Fri 12-07-19 10:56:47, Hoan Tran OS wrote:
>>> [...]
>>>> It would be good if we can enable it by-default. Otherwise, let arch
>>>> enables it by them-self. Do you have any suggestions?
>>>
>>> I can hardly make any suggestions when it is not really clear _why_ you
>>> want to remove this config option in the first place. Please explain
>>> what motivated you to make this change.
>>
>> Sorry, I think this confusion might actually be my fault and Hoan has just
>> been implementing my vague suggestion here:
>>
>> https://lore.kernel.org/linux-arm-kernel/20190625101245.s4vxfosoop52gl4e@willie-the-truck/
>>
>> If the preference of the mm folks is to leave CONFIG_NODES_SPAN_OTHER_NODES
>> as it is, then we can define it for arm64. I just find it a bit weird that
>> the majority of NUMA-capable architectures have to add a symbol in the arch
>> Kconfig file, for what appears to be a performance optimisation applicable
>> only to ia64, mips and sh.
>>
>> At the very least we could make the thing selectable.
> 
> Hmm, I thought this was selectable. But I am obviously wrong here.
> Looking more closely, it seems that this is indeed only about
> __early_pfn_to_nid and as such not something that should add a config
> symbol. This should have been called out in the changelog though.

Yes, do you have any other comments about my patch?

> 
> Also while at it, does HAVE_MEMBLOCK_NODE_MAP fall into a similar
> bucket? Do we have any NUMA architecture that doesn't enable it?
> 

As I checked with arch Kconfig files, there are 2 architectures, riscv 
and microblaze, do not support NUMA but enable this config.

And 1 architecture, alpha, supports NUMA but does not enable this config.

Thanks and Regards
Hoan

> Thanks!
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

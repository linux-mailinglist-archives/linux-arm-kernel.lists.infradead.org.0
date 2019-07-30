Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2027B003
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 19:31:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R3G0B+HG6QIMab6uyES9bo5qycqaFtpz4fubY/fFdew=; b=td4fpE6be0e89+
	KxnFbGqWpkoFoiUyL21l4VwNGOfCum/Oxnq33iktFrizAh9qMoqBaXfERIYhp8sXFDu7ESNcmp919
	JbFo9MZPFv7mUGU8BCFzR7JRc1Kfp/niTBL5t6NvQXiSs6HjWZm6U8JtVd4lV1/CWSUYIGkfVwhdZ
	ypqlQ5k7fAJC6ZXnDXmMYo9PQq5rQbtOk1WCkH0C/UNqqIhHHDrnaqvxhLRz6T6LQUWvCbY3pSsiT
	ykU1yI0XIGxibe9Kzk3D4zGKM/CBK9NBnfpbS7z4YxzO84wRzSHBUsySI5RAHI+3KTqKBRtDOyua3
	ubONQ5W3kJPUVfrlr13w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsVyS-0006WG-On; Tue, 30 Jul 2019 17:31:45 +0000
Received: from mail-eopbgr680123.outbound.protection.outlook.com
 ([40.107.68.123] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsVyG-0006Vm-Ue
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 17:31:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jiyNpSz64BfSw0warQY4fsHK0/j/YGdJpBR71SAqatxVOLsuDA7R/T9RnDCWV6PdwOkpzbpKhJG0FZJhUSn15r0OH5tS6yTiSwNZgzguZOGzCLOgzOHAOgJjgCAWyjS88F3B+IeRNuWS5YFY2bRrII0tIzTIr3VL/F6g3uZyv1R7plIfBpmRJ3ko7I4TEFaIuSBF9koj/dbXqXJDJ2JLiV5COy8gn75cAx04HT+END63Nl8qW9lXvSXVzEBLGr/L/h4kozGZWr+9+0n0J540jAC/i4NQeXsvmvjdaeqCK4hg5IpxMXqTELLlRL4mM4De+sfm1DJM2swh7FQd+507qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Dpvwj1Vtrl40s/CzWekqNXiV7V74mCDmjAcgNvX+1w=;
 b=Ro/9uQiobS+LlZ9N2nwDHiJQLS74pEQTK/jzsXdL/oVdohE5oFSMabbRRLczWTHAgGMNmB18YFhJ/qtRZZ5UsqvljHjJEiqKQOcvY4xSiF/K/YMS+SKulxoYY6yNKT6G1mgfHu+YR9eG8mXjzP9ZmRBicLesBAmIcayGYVXShGNnbFI2XAblpMaCyMsqP0gR2o9mecM71mqXJlJEpmZud1E+pxaQDA5PXbCRsQmkso59gm5Kmx4IFqr/fbEogjFDezpI2ZdJjWPH29nMtLMdGIJ+YUSRPc3jjAYQ9dEJBxFUP/Wnzd9RYKxSj8zlZ9iF/bdVYJmMhlqlUUIEM9ojnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=os.amperecomputing.com;dmarc=pass action=none
 header.from=os.amperecomputing.com;dkim=pass
 header.d=os.amperecomputing.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Dpvwj1Vtrl40s/CzWekqNXiV7V74mCDmjAcgNvX+1w=;
 b=avBQUkdJHvGi9jjVzaXBrY6tSW94+DIMAflTgen1OPiyTrbfG+9yaMyhuHVqlpU/ji5NgTE7jFBoJLgjWvOjRkncOMvJWdIcQYV1Np5oOB5fgpP3FNh6Shs7Cb7A2MyXZmrFqrhY3HrOYM0xYFLiJSj8XyAjDZbNYQbiC8HXm14=
Received: from DM6PR01MB4090.prod.exchangelabs.com (20.176.105.203) by
 DM6PR01MB5164.prod.exchangelabs.com (20.176.121.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.17; Tue, 30 Jul 2019 17:31:27 +0000
Received: from DM6PR01MB4090.prod.exchangelabs.com
 ([fe80::88b7:bfbe:79e9:b251]) by DM6PR01MB4090.prod.exchangelabs.com
 ([fe80::88b7:bfbe:79e9:b251%7]) with mapi id 15.20.2115.005; Tue, 30 Jul 2019
 17:31:27 +0000
From: Hoan Tran OS <hoan@os.amperecomputing.com>
To: Michal Hocko <mhocko@kernel.org>
Subject: Re: [PATCH v2 0/5] mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by
 default for NUMA
Thread-Topic: [PATCH v2 0/5] mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by
 default for NUMA
Thread-Index: AQHVOD/24o0J5njgPEqkosNO5sbs8abGjx+AgABBUoCAABUugIAAKIsAgAAGUoCABOfTgIAW8L6AgACbnwA=
Date: Tue, 30 Jul 2019 17:31:27 +0000
Message-ID: <d100011c-d5b4-a8c3-d3c0-d8f6dabd1363@os.amperecomputing.com>
References: <1562887528-5896-1-git-send-email-Hoan@os.amperecomputing.com>
 <20190712070247.GM29483@dhcp22.suse.cz>
 <586ae736-a429-cf94-1520-1a94ffadad88@os.amperecomputing.com>
 <20190712121223.GR29483@dhcp22.suse.cz>
 <20190712143730.au3662g4ua2tjudu@willie-the-truck>
 <20190712150007.GU29483@dhcp22.suse.cz>
 <730368c5-1711-89ae-e3ef-65418b17ddc9@os.amperecomputing.com>
 <20190730081415.GN9330@dhcp22.suse.cz>
In-Reply-To: <20190730081415.GN9330@dhcp22.suse.cz>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: CY4PR14CA0034.namprd14.prod.outlook.com
 (2603:10b6:903:101::20) To DM6PR01MB4090.prod.exchangelabs.com
 (2603:10b6:5:27::11)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hoan@os.amperecomputing.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [4.28.12.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 064f48f0-c434-4356-49d7-08d71513c001
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM6PR01MB5164; 
x-ms-traffictypediagnostic: DM6PR01MB5164:
x-microsoft-antispam-prvs: <DM6PR01MB51647A820E23BA8DC5ED60C0F1DC0@DM6PR01MB5164.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0114FF88F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(376002)(346002)(396003)(39850400004)(189003)(199004)(54534003)(8676002)(3846002)(6116002)(7416002)(7736002)(25786009)(2906002)(76176011)(71200400001)(71190400001)(6246003)(305945005)(52116002)(26005)(478600001)(5660300002)(102836004)(186003)(53936002)(11346002)(6512007)(446003)(2616005)(6486002)(476003)(6436002)(31686004)(6916009)(486006)(54906003)(229853002)(68736007)(99286004)(86362001)(4326008)(66446008)(64756008)(8936002)(81156014)(66946007)(53546011)(6506007)(386003)(66476007)(31696002)(81166006)(256004)(316002)(14454004)(66556008)(66066001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR01MB5164;
 H:DM6PR01MB4090.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: os.amperecomputing.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: i0S9/fCjfev4t4mP+iL9KF/iGB7s2EgAtQdYLocxCP/PXh3RTe6KRbOGLDsPANckZIOFxe7lGY6xgba0YiumuwnIPaPkI/Vh3P/kG1Bm3T3ZOFwGa5qMZIIiepSyJRk9JRyO7Ru7B3Mosg3QTm62kTezrmVDH3zcBHQvo6M0yYUHgdAO9UPn6hmBUq+gME/+DCkagk8bfO8K/A3x2I7NGCfYqUvSet+4TRTQYuWQvYmw7JbZAiWO+LNFz4fg9Yjf7xKOH8c8uIY5EM2o1K36ExGbgd2rKxxPFzKQOkc5FPM0uyV/1nCoai5Nz6NPPoINZyIjAZ4MTtf7otqUEQ2dWC0F86NzSKhmOAT4+kZa6qUde1roOO3QHVs1maRYqEZFLuBdNywvZnC+SmAQR6sbA3xsmVguH1U1eCw+4sGbd6A=
Content-ID: <F25D28E1CB44404EB408F8B8C25EAF53@prod.exchangelabs.com>
MIME-Version: 1.0
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 064f48f0-c434-4356-49d7-08d71513c001
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2019 17:31:27.1673 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Hoan@os.amperecomputing.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR01MB5164
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_103133_054640_1367A8F6 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Will Deacon <will@kernel.org>,
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

On 7/30/19 1:14 AM, Michal Hocko wrote:
> [Sorry for a late reply]
> 
> On Mon 15-07-19 17:55:07, Hoan Tran OS wrote:
>> Hi,
>>
>> On 7/12/19 10:00 PM, Michal Hocko wrote:
> [...]
>>> Hmm, I thought this was selectable. But I am obviously wrong here.
>>> Looking more closely, it seems that this is indeed only about
>>> __early_pfn_to_nid and as such not something that should add a config
>>> symbol. This should have been called out in the changelog though.
>>
>> Yes, do you have any other comments about my patch?
> 
> Not really. Just make sure to explicitly state that
> CONFIG_NODES_SPAN_OTHER_NODES is only about __early_pfn_to_nid and that
> doesn't really deserve it's own config and can be pulled under NUMA.

Yes, I will add this info into the patch description.

> 
>>> Also while at it, does HAVE_MEMBLOCK_NODE_MAP fall into a similar
>>> bucket? Do we have any NUMA architecture that doesn't enable it?
>>>
>>
>> As I checked with arch Kconfig files, there are 2 architectures, riscv
>> and microblaze, do not support NUMA but enable this config.
>>
>> And 1 architecture, alpha, supports NUMA but does not enable this config.
> 
> Care to have a look and clean this up please?

Sure, I'll take a look.

Thanks
Hoan
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

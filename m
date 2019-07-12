Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A21D666B2A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 12:57:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rsBqAjW9rfpNWPrTCfavelRkMXFwC4KkBQGhxbXRXeM=; b=plUhcmGgRBSlkz
	HYaBxRX5avO/gbQ1YdE6drIqZyh1EyUlmrzOYasEmmxg5VUX6PAUoY81Qfo3fhYaqINnb1uUijw/A
	GfKp9sqyESvohmpA2tD58XarJdisK8anwL1Vh1j5C2n/3htruByQuhFmWuUrLKNCjSxVJh9/c1Xmv
	T86EYMT4Og7GUbMLjyM1BrDNw3b7wZ+fLsvRRMAwcBXWXBx9tDgoYv+jHUGv3aYXGSITpbhyboE+Y
	tUgCGD/nb3VPjHa9BPZZnJhGfEyd+5T3ph4Iv9IR3KUV+JWWrotNorLmjIzjZTWuRoe5DVBTps59Y
	oWY30CxMDdOsqSZ4Gsyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hltEc-0005xo-42; Fri, 12 Jul 2019 10:57:02 +0000
Received: from mail-eopbgr800134.outbound.protection.outlook.com
 ([40.107.80.134] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hltES-0005xO-7N
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 10:56:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WAcDhTCCszW+EvtBveUDZM7yH6cPZubOi2R9jyvB+p8=;
 b=RLzxHkxsAekTYM3YvJ169/tJGHBAUyq2BDSjAskAP8r/+tWetDCFu5V+kRlclXCdFEyMm3YwY5Q4SYor9m9ABtXmyTsaN1asQV8WILPOfomLFfdIsGw3M7OFVBvTSNU7TVI0+quFRrZ+ssyj0Yus9rC869dhYQWcxRxjYqw/ZR0=
Received: from BYAPR01MB4085.prod.exchangelabs.com (52.135.237.22) by
 BYAPR01MB4024.prod.exchangelabs.com (52.135.236.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Fri, 12 Jul 2019 10:56:47 +0000
Received: from BYAPR01MB4085.prod.exchangelabs.com
 ([fe80::9dbb:1b4c:bace:ef80]) by BYAPR01MB4085.prod.exchangelabs.com
 ([fe80::9dbb:1b4c:bace:ef80%7]) with mapi id 15.20.2052.020; Fri, 12 Jul 2019
 10:56:47 +0000
From: Hoan Tran OS <hoan@os.amperecomputing.com>
To: Michal Hocko <mhocko@kernel.org>
Subject: Re: [PATCH v2 0/5] mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by
 default for NUMA
Thread-Topic: [PATCH v2 0/5] mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by
 default for NUMA
Thread-Index: AQHVOD/24o0J5njgPEqkosNO5sbs8abGjx+AgABBUoA=
Date: Fri, 12 Jul 2019 10:56:47 +0000
Message-ID: <586ae736-a429-cf94-1520-1a94ffadad88@os.amperecomputing.com>
References: <1562887528-5896-1-git-send-email-Hoan@os.amperecomputing.com>
 <20190712070247.GM29483@dhcp22.suse.cz>
In-Reply-To: <20190712070247.GM29483@dhcp22.suse.cz>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0P153CA0027.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:17::15) To BYAPR01MB4085.prod.exchangelabs.com
 (2603:10b6:a03:56::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hoan@os.amperecomputing.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [14.161.176.39]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 807a3fd4-bfd6-442a-a336-08d706b7a280
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR01MB4024; 
x-ms-traffictypediagnostic: BYAPR01MB4024:
x-microsoft-antispam-prvs: <BYAPR01MB40241C259D44AE3593493E10F1F20@BYAPR01MB4024.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 00963989E5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(346002)(396003)(136003)(39850400004)(366004)(199004)(189003)(86362001)(102836004)(54906003)(7736002)(52116002)(68736007)(53936002)(66066001)(76176011)(3846002)(6246003)(8936002)(99286004)(386003)(107886003)(81156014)(81166006)(8676002)(6116002)(305945005)(6506007)(53546011)(31696002)(186003)(26005)(14454004)(71200400001)(71190400001)(5660300002)(31686004)(6512007)(66946007)(2906002)(4326008)(446003)(316002)(14444005)(476003)(229853002)(6486002)(6916009)(25786009)(6436002)(256004)(11346002)(66556008)(64756008)(7416002)(66476007)(486006)(66446008)(2616005)(478600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR01MB4024;
 H:BYAPR01MB4085.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: os.amperecomputing.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: clhGm3T4TfgYriMEPdp+Yc+KHXC4dtGOA1DU0V7WJc5Mna/izBjYCUx9ZdOUovfNYZKJ2iOqefoJbRlfGAgRulkZjR1B2eeMA1M2ERswnTyWQLcnuMV0nU03EPFFjLMuvUXDkZao3WZA5CPxjpsCvlX9hLVSKzHiiVLbwmVLmjv4vz0o7SQNDOZBPQAQNEuMyNM4K1UskC/5cbrC9Q90eMcmP7BXfJKW4YY4asD/ucxsllVoDzKVNI0KIMbCSdDOLeFEZQHzHvH0yaW1jVn4c/PNOK7vHHFURpMEFHNsw7UXciQ2G7EObLLLAY4pRTaigJsWiU936lcHSOoDxgR9RsWiabBh1Eg9nF6LjFofTIKeWenTKlpWUcfNN9fJ1/dzekRUE71jberJ6szigN0RYRtGt3C3V+K3CJOTzYk/jpM=
Content-ID: <25482F5148BFF740873F45BB6828D5BF@prod.exchangelabs.com>
MIME-Version: 1.0
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 807a3fd4-bfd6-442a-a336-08d706b7a280
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2019 10:56:47.5823 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Hoan@os.amperecomputing.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR01MB4024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_035652_353693_C09F76F4 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.80.134 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, "H . Peter Anvin" <hpa@zytor.com>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, "x86@kernel.org" <x86@kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Vlastimil Babka <vbabka@suse.cz>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Open Source Submission <patches@amperecomputing.com>,
 Pavel Tatashin <pavel.tatashin@microsoft.com>,
 Vasily Gorbik <gor@linux.ibm.com>, Will Deacon <will.deacon@arm.com>,
 Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Oscar Salvador <osalvador@suse.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 7/12/19 2:02 PM, Michal Hocko wrote:
> On Thu 11-07-19 23:25:44, Hoan Tran OS wrote:
>> In NUMA layout which nodes have memory ranges that span across other nodes,
>> the mm driver can detect the memory node id incorrectly.
>>
>> For example, with layout below
>> Node 0 address: 0000 xxxx 0000 xxxx
>> Node 1 address: xxxx 1111 xxxx 1111
>>
>> Note:
>>   - Memory from low to high
>>   - 0/1: Node id
>>   - x: Invalid memory of a node
>>
>> When mm probes the memory map, without CONFIG_NODES_SPAN_OTHER_NODES
>> config, mm only checks the memory validity but not the node id.
>> Because of that, Node 1 also detects the memory from node 0 as below
>> when it scans from the start address to the end address of node 1.
>>
>> Node 0 address: 0000 xxxx xxxx xxxx
>> Node 1 address: xxxx 1111 1111 1111
>>
>> This layout could occur on any architecture. This patch enables
>> CONFIG_NODES_SPAN_OTHER_NODES by default for NUMA to fix this issue.
> 
> Yes it can occur on any arch but most sane platforms simply do not
> overlap physical ranges. So I do not really see any reason to
> unconditionally enable the config for everybody. What is an advantage?
> 

As I observed from arch folder, there are 9 arch support NUMA config.

./arch/ia64/Kconfig:387:config NUMA
./arch/powerpc/Kconfig:582:config NUMA
./arch/sparc/Kconfig:281:config NUMA
./arch/alpha/Kconfig:557:config NUMA
./arch/sh/mm/Kconfig:112:config NUMA
./arch/arm64/Kconfig:841:config NUMA
./arch/x86/Kconfig:1531:config NUMA
./arch/mips/Kconfig:2646:config NUMA
./arch/s390/Kconfig:441:config NUMA

And there are 5 arch enables CONFIG_NODES_SPAN_OTHER_NODES with NUMA

arch/powerpc/Kconfig:637:config NODES_SPAN_OTHER_NODES
arch/sparc/Kconfig:299:config NODES_SPAN_OTHER_NODES
arch/x86/Kconfig:1575:config NODES_SPAN_OTHER_NODES
arch/s390/Kconfig:446:config NODES_SPAN_OTHER_NODES
arch/arm64 (which I intended to enable in the original patch)

It would be good if we can enable it by-default. Otherwise, let arch 
enables it by them-self. Do you have any suggestions?

Thanks
Hoan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

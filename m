Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DFFB55B32
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 00:31:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GcqY4wHtx6W0exzRdehk6b+EyHk01XnfHA3vuXQ5s6s=; b=goSeZEsz8ZTYLI
	NVRVRmnqbXN69u3pvqU+LZqxpeD1le/R70Weovo/t6RTNoIV4kYtAR3Ux3svW9Ez1f2CrPsyOfLPU
	fRFHVujxKdc7B/deAKTJWenSxbIa0AnQfT2/FJD7jp7lC9AcMgxfm8QxTH8TUjwgWE6QBDek4kTpK
	KbnoZgKGxX3phPE7FklICDG/YtzO1naLEYPiaIn+r6dGm28oFDRzgzd7Iiy+j5EmT9O4NlJx7yO2R
	SAD/NfjgWBHMebWEJAW3kdBkYdRSC9SzLOmCHXO9xreM2VHd1wFJFKfxPsuMjwf7zyyDE0tnjAzqO
	CsDqi5y6cYieagizgGCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hftyj-0000Ny-W2; Tue, 25 Jun 2019 22:31:53 +0000
Received: from mail-eopbgr720138.outbound.protection.outlook.com
 ([40.107.72.138] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hftxN-0008V7-E8
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 22:30:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amperemail.onmicrosoft.com; s=selector2-amperemail-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=euhzYvd1r7uvcEPyDcPjPn2ACbogTaQr3g8dE0atYmY=;
 b=hWuH37JS6kJL6fDrNgkLUCqW2NN7+VxEL8btwNK6VAonyk13RrN+Kd/w66VaVxd50OT33F2oRKfXGVEDU1VphkC5196a8KzRP1JH3/Y2Z58hVisVKF667W0ho3bvXg0VwxD1RBbLg6Hg4OwymaBvG+Q7wkGyW6z8/VpODif2Si4=
Received: from DM6PR01MB4090.prod.exchangelabs.com (20.176.104.151) by
 DM6PR01MB5308.prod.exchangelabs.com (20.177.220.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Tue, 25 Jun 2019 22:30:25 +0000
Received: from DM6PR01MB4090.prod.exchangelabs.com
 ([fe80::f0f2:16e1:1db7:ccb3]) by DM6PR01MB4090.prod.exchangelabs.com
 ([fe80::f0f2:16e1:1db7:ccb3%7]) with mapi id 15.20.2008.017; Tue, 25 Jun 2019
 22:30:25 +0000
From: Hoan Tran OS <hoan@os.amperecomputing.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon
 <will.deacon@arm.com>, Andrew Morton <akpm@linux-foundation.org>, Michal
 Hocko <mhocko@suse.com>, Vlastimil Babka <vbabka@suse.cz>, Oscar Salvador
 <osalvador@suse.de>, Pavel Tatashin <pavel.tatashin@microsoft.com>, Mike
 Rapoport <rppt@linux.ibm.com>, Alexander Duyck
 <alexander.h.duyck@linux.intel.com>, Benjamin Herrenschmidt
 <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, Michael
 Ellerman <mpe@ellerman.id.au>, Thomas Gleixner <tglx@linutronix.de>, Ingo
 Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, "H . Peter Anvin"
 <hpa@zytor.com>, "David S . Miller" <davem@davemloft.net>, Heiko Carstens
 <heiko.carstens@de.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, Christian
 Borntraeger <borntraeger@de.ibm.com>
Subject: [PATCH 1/5] mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by default for
 NUMA
Thread-Topic: [PATCH 1/5] mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by default
 for NUMA
Thread-Index: AQHVK6WVXavbpwRBlkOB7/lZ/263cg==
Date: Tue, 25 Jun 2019 22:30:24 +0000
Message-ID: <1561501810-25163-2-git-send-email-Hoan@os.amperecomputing.com>
References: <1561501810-25163-1-git-send-email-Hoan@os.amperecomputing.com>
In-Reply-To: <1561501810-25163-1-git-send-email-Hoan@os.amperecomputing.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: CY4PR22CA0052.namprd22.prod.outlook.com
 (2603:10b6:903:ae::14) To DM6PR01MB4090.prod.exchangelabs.com
 (2603:10b6:5:2a::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hoan@os.amperecomputing.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [4.28.12.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 54d110de-2645-4945-6b5f-08d6f9bcb750
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM6PR01MB5308; 
x-ms-traffictypediagnostic: DM6PR01MB5308:
x-microsoft-antispam-prvs: <DM6PR01MB5308134E4F92AC83B9F41E0CF1E30@DM6PR01MB5308.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 0079056367
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(366004)(136003)(39840400004)(346002)(396003)(199004)(189003)(256004)(14444005)(4326008)(53936002)(14454004)(4744005)(7736002)(52116002)(107886003)(50226002)(6486002)(81156014)(81166006)(64756008)(8936002)(66446008)(8676002)(6436002)(110136005)(26005)(5660300002)(99286004)(66946007)(73956011)(6506007)(76176011)(186003)(386003)(102836004)(66066001)(2906002)(446003)(305945005)(54906003)(2616005)(66556008)(66476007)(11346002)(316002)(476003)(6512007)(1511001)(478600001)(71190400001)(3846002)(71200400001)(7416002)(6116002)(86362001)(25786009)(68736007)(486006)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR01MB5308;
 H:DM6PR01MB4090.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: os.amperecomputing.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: CEXZuBe95/lYRW5/9KlScxk8rGpPV293bD8Vi6Rh5tQlobN+G3BVpTMBkzIwLqZA3JnpW75P5jbhDcseEyaV4yQumftk8B4hwv9UnLNekXhEWoFpQuM69sMoA0BfDB16tqtN8FEcJ4PcaHSwBkwlYnSEnYUjIKeM031kkz9h1LtFXL0CL7cRcSpZ516oR3E862gIXjE5L2W6BAO3B9nvcTeqO2CqyOYm2JcOMmPIqcgWKlJcJ9Bhejmz3FyGkXfE9a5Z/hlRY3yCPNL6RrGvRY9INmmYGDJG9Mccl+HGbjtHkEhI/dBpJpOE39eflNG3de85pFPmdlgwoRPaMEYM586dCirgDs3L5jJ8uo9SX51LNFWysDoQ8HH+30UoMM1JQo3+JgEQEsjqQxM1O2ic9ZErXeDzueFsyIuXvfRrXR4=
MIME-Version: 1.0
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54d110de-2645-4945-6b5f-08d6f9bcb750
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2019 22:30:24.9479 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Hoan@os.amperecomputing.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR01MB5308
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_153029_492201_5A30C90D 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.72.138 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>,
 Hoan Tran OS <hoan@os.amperecomputing.com>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>,
 Open Source Submission <patches@amperecomputing.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch enables CONFIG_NODES_SPAN_OTHER_NODES by default
for NUMA. As some NUMA nodes have memory ranges that span other
nodes. Even though a pfn is valid and between a node's start and
end pfns, it may not reside on that node.

Signed-off-by: Hoan Tran <Hoan@os.amperecomputing.com>
---
 mm/page_alloc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index d66bc8a..6335505 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -1413,7 +1413,7 @@ int __meminit early_pfn_to_nid(unsigned long pfn)
 }
 #endif
 
-#ifdef CONFIG_NODES_SPAN_OTHER_NODES
+#ifdef CONFIG_NUMA
 /* Only safe to use early in boot when initialisation is single-threaded */
 static inline bool __meminit early_pfn_in_nid(unsigned long pfn, int node)
 {
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

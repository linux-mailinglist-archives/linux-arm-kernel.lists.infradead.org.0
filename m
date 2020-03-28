Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB13D196889
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 19:32:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jCvapy+wlXBhYUdgUGO0rVe8QefbNNNQqUapGXFVUBk=; b=WiK4w6JvQOya+v
	RhlNlwW2Go1PZe3li6XxkFVMKuQYsKjwo05auU+xojSdZ4vZmbAnr9g7FhIZ+qBgOEfcUsxaOA3NH
	lPadvmI99wmprJb5rUJVe1WjbP6OKhOdxhr1iWOJOOHR14ZE27xJ+7cB6THQW/HjPVIJzLFcLTNV+
	CtwmpFVmLulrgz/IGU7WrTpn9hMP9CasT/YDfDfdDc73Ggbd0VNXv2yz7E1Dv49UPBAgQPnOWISgc
	da6p/r3aaMp5stz/jfs8fKasaBj3jcVjEHAo0GbT7Kp/06c8lv0wGL+PTpivkYXRvPFltRUcCxxNW
	XwvHC8XVr4H5FGTLUiPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIGFn-0004aX-9Q; Sat, 28 Mar 2020 18:32:19 +0000
Received: from mail-co1nam11on2092.outbound.protection.outlook.com
 ([40.107.220.92] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIGF6-0004JY-4e
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 18:31:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZkEYh+s4SCfsLmWn1tPKKFudWA0bBbaiJvcTbhZ99pWxHi5tnWJKYTxOZImTVFpwzduNQkuGKEEukowOCVuwxhEvStxEIAbI0pVIN6gtdW7/QcOR+n5hH1o/IYQqvuIrZrqvKbo2D++Ad8njJpfSLxVOhLy5WsykhO+mDuGJgn0zZWXMfUKZBLOoiOaJybNzNK8z48G1lS8Pdm/NY/gzgq2OLLpD8dc9EoGgt3v49xzMOeCGQ4k8PsMqJEAxqBoYhDAjPEhLHIENfdBA6UX+mLhCJRp1OXV465WtwqTJR5/EnKyem+Ra74ZaWxgVYm21Ri3PL0pDWrIGnhXz7Ye91g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vx+eXyC9ee2Ymme/PKbGATnrP2JjFczEiZTI0Ieig4M=;
 b=MGnCAoM5r3OVujmRxlJzU7XEO1Lfhw37Y3o3KW2yelOprDUCQVsHJUZjxu15Inhxg90uBIq1s3mQ5DUWKYKEpRf09T2tzvGYZxQOpou7lPO2bTvkhzwb2G72olhYzlOUJ902F41BaAYfft1F1o4i6aR9KPpgmqbIw1E+wjt7EBDsVt4msXNUpY1gE+7mzaN7MIQLLYVLHI9LM/9GXu5XGazL9YtRLcCjaOvk+/2BusL/xXiDXhJIa1dCyjh8DhINTipUUAKJutH6FMRSh5LzsFKcP0308KDyj6XmBWnXLk58JZnJlZoHYfHidohLXn7wM9Rf0+2dm1eAtmtLiErP+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vx+eXyC9ee2Ymme/PKbGATnrP2JjFczEiZTI0Ieig4M=;
 b=t9ACsaaZX+JwKvPTU13N0fclScHshsgbbb3ekylafPD8MCAzrNfDA+svVELykV0WU8S4xuwIo76x03WjWQQommzs3KtS9kjBbrn/ldxchZkd1ckUpnsGONrNXJIQ7N+GmcwlyliZzKFigL38m7RHYvz358m5TdtQr+VTLPVmmxo=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=hoan@os.amperecomputing.com; 
Received: from BYAPR01MB5494.prod.exchangelabs.com (2603:10b6:a03:127::30) by
 BYAPR01MB5205.prod.exchangelabs.com (2603:10b6:a03:7f::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.19; Sat, 28 Mar 2020 18:31:34 +0000
Received: from BYAPR01MB5494.prod.exchangelabs.com
 ([fe80::a979:b2e2:fdaf:1ccb]) by BYAPR01MB5494.prod.exchangelabs.com
 ([fe80::a979:b2e2:fdaf:1ccb%6]) with mapi id 15.20.2835.026; Sat, 28 Mar 2020
 18:31:34 +0000
From: Hoan Tran <Hoan@os.amperecomputing.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Michal Hocko <mhocko@suse.com>,
 Vlastimil Babka <vbabka@suse.cz>, Oscar Salvador <osalvador@suse.de>,
 Pavel Tatashin <pavel.tatashin@microsoft.com>,
 Mike Rapoport <rppt@linux.ibm.com>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
 "David S. Miller" <davem@davemloft.net>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Vasily Gorbik <gor@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>
Subject: [PATCH v3 1/5] mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by default
 for NUMA
Date: Sat, 28 Mar 2020 11:31:18 -0700
Message-Id: <1585420282-25630-2-git-send-email-Hoan@os.amperecomputing.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1585420282-25630-1-git-send-email-Hoan@os.amperecomputing.com>
References: <1585420282-25630-1-git-send-email-Hoan@os.amperecomputing.com>
X-ClientProxiedBy: CY4PR13CA0013.namprd13.prod.outlook.com
 (2603:10b6:903:32::23) To BYAPR01MB5494.prod.exchangelabs.com
 (2603:10b6:a03:127::30)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from engdev037.mustanglab.us.amcc (4.28.12.214) by
 CY4PR13CA0013.namprd13.prod.outlook.com (2603:10b6:903:32::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.9 via Frontend Transport; Sat, 28 Mar 2020 18:31:31 +0000
X-Mailer: git-send-email 1.8.3.1
X-Originating-IP: [4.28.12.214]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a1fa1d8f-4e70-4faf-6437-08d7d3463e18
X-MS-TrafficTypeDiagnostic: BYAPR01MB5205:|BYAPR01MB5205:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR01MB5205E93C25B0D790D5FBC565F1CD0@BYAPR01MB5205.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 03569407CC
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR01MB5494.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(376002)(396003)(136003)(39840400004)(366004)(346002)(6512007)(7416002)(107886003)(16526019)(6486002)(26005)(81166006)(4326008)(8936002)(2616005)(6666004)(186003)(956004)(8676002)(81156014)(316002)(66476007)(52116002)(6506007)(66946007)(66556008)(86362001)(478600001)(5660300002)(110136005)(2906002)(921003)(1121003);
 DIR:OUT; SFP:1102; 
Received-SPF: None (protection.outlook.com: os.amperecomputing.com does not
 designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CUnEFjr44z6XPTcxSalqY6v1EmZ0F/CDtMe9xgFRWTm/PZCRZUdR1WBns1bilGYqCZjlcUCsW6KfNdExkmgmntH6LCvhe3YvzWsnkWudmkz3GGUj15n2evKXD5XFLW7B6scfk4mU55OcITauHfZqxgcmyAvPeouCvdJdf/TcesYm+x3ZeO4EfjsBOaxufvVDODhzb6+vzvLOl+luaN/kRNcz6uJJC0LfJtAt4eYjeH7dEwIeHG61X1oTHsc0m1kHrIPcsOSX9TeKngJ9crL2vH0kFMVeU9M4nLx4I/mPdJtXUicEarTGVJsJOzn2p1X90xt+nGPTmsH2+cqSO12i5lEi5EDloQoE4qdku4axsChO/epLeI6UW0VAjdMVYHRSuUmu4ez7sBYz3XE121OQbvoh8VzJXxbhg67fr9RVqKUlW+2c/vXe4avkiRZ5kTIf7yjB/zAGu7yHfohOt92TbYkLQBsKWK57xnLazi3JslCxmefEMEyx20d5hx5qQlnu
X-MS-Exchange-AntiSpam-MessageData: yrIotTuyUYYZ/r0a4sfHMlFQqCJmYRQWjoXCFuJqo//0/WwgVaew1xOtQk5IKPfpACSz/2D/4Y3JBtBhU/0oPHfBHn8oPTp6AiAkdTebqiLNN1K91Ywf/3GlhvjZ3LeJxj1WVsILqtbpV7/TmvIClQ==
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1fa1d8f-4e70-4faf-6437-08d7d3463e18
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2020 18:31:34.2709 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iZ6bAJpM0X2aXGzuhvWBEYd5LgAwLApkzWyKX+HN8SOxSqfoVQsmAykC+eYg0VsMkLQ/2er7LI2yn+2GoYPgc0PtfXAk5OWxWES7f70/UZc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR01MB5205
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_113136_181787_D399E7E0 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.92 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: linux-s390@vger.kernel.org, lho@amperecomputing.com,
 mmorana@amperecomputing.com, x86@kernel.org, linux-kernel@vger.kernel.org,
 "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>,
 Hoan Tran <Hoan@os.amperecomputing.com>, sparclinux@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In NUMA layout which nodes have memory ranges that span across other nodes,
the mm driver can detect the memory node id incorrectly.

For example, with layout below
Node 0 address: 0000 xxxx 0000 xxxx
Node 1 address: xxxx 1111 xxxx 1111

Note:
 - Memory from low to high
 - 0/1: Node id
 - x: Invalid memory of a node

When mm probes the memory map, without CONFIG_NODES_SPAN_OTHER_NODES
config, mm only checks the memory validity but not the node id.
Because of that, Node 1 also detects the memory from node 0 as below
when it scans from the start address to the end address of node 1.

Node 0 address: 0000 xxxx xxxx xxxx
Node 1 address: xxxx 1111 1111 1111

This layout could occur on any architecture. Most of them enables
this config by default with CONFIG_NUMA. This patch, by default, enables
CONFIG_NODES_SPAN_OTHER_NODES or uses early_pfn_in_nid() for NUMA.

Signed-off-by: Hoan Tran <Hoan@os.amperecomputing.com>
---
 mm/page_alloc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index d047bf7..948c1c9 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -1467,7 +1467,7 @@ int __meminit early_pfn_to_nid(unsigned long pfn)
 }
 #endif
 
-#ifdef CONFIG_NODES_SPAN_OTHER_NODES
+#ifdef CONFIG_NUMA
 /* Only safe to use early in boot when initialisation is single-threaded */
 static inline bool __meminit early_pfn_in_nid(unsigned long pfn, int node)
 {
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

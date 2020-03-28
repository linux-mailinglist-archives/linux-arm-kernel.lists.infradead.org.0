Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 689C819688D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 19:33:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a19Y6rWtJwDjDYT3WUB26LrJcx1elMCh3/rDl71ICtw=; b=aUDleLuXZYeM+l
	04qBGr9e4SxlTVyoxcyO3N7cSb7Me0qA+CVNF72a7l0K3QC5T/BeFJzFsSkaNs72twlKy2Z0hABwr
	vbvxbwA5onlMKDOW7kumsAPhipuVd+13VDZnAXfrs3T+sNwq4DalbKUwIN9Ti57Qn/wFy4kAGk3Oo
	QG3tQyWmMsrK7ZYxfY5F/wJ2B6CIHPM1CVx2+i9/jMR9VwbutHoU0gdT/S7rAFLzCf65qwd+Nsiu2
	FqjFHav9RwhafwHRyJu/0k3tlmNiclR7QNGaUQQPiO+OcdynHtZqhUB3nj5nDsRfwcQ+LxwTK+oJC
	V+7roHoKpU1vAoglmoTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIGH4-0005fb-Lp; Sat, 28 Mar 2020 18:33:38 +0000
Received: from mail-co1nam11on2118.outbound.protection.outlook.com
 ([40.107.220.118] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIGFG-0004QZ-Ko
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 18:31:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EAg652fvBY5yTrmiLakSK6rEmM7hFoVAgsiDWSJUCGh/GRUW+HafTaSiXszOhUyt87cBRKHLomTq5u41ehwp+pnsqqgK2akJDUFIVu9MXdHgOMciQSPqdsHAMp5Llt9WsnpxLxAMsOE8aM06QsXKOfyHD6v8M6fyVicmXvSGp7x9zV5kFS4968BaIJm20ERfm2lLm2oWgNmcQm8RtRRKLBoJ76EtqAMuAFTDZV6BfLNYumb8T4E8jCc/j6VeB6SPcFlf/IEFTVGYH/1qLZoM3hhvQ+qgWWTG30fveBQ6bWp3xwYMYIOSi09SyAMA0eRo2SfOgw8TXmr94V5MRLr6Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rw4PdMjytCrLMPx6L+MyF+rdYwFogh2a5R4YJEVQxGI=;
 b=TsEFQBCsfOGCassESFnbyiDJ6TGrnjPdB0RrS8HfWCt/v/uKlGGvmVxYgrBEgfT4N4JhBr/yKSTy0IOaAbdqJio3uDUUTITEl27EVjc7WsrvMAzT9HB1t+b9e75mTDb1NTrXMgq+JExdl/TC7wl4cj8Gtocg5X5YvlzN9l+0q+kL31/t5pieGvC6S2C4y2MiYJLq2wwYZPSGJmLNi7FJ9bY36laI7/brSElPet2ABU/H96mIwCMHvjxmcfHmyGmL59t7q3Pw0xCktGxZ23NhiFAFq8l6egT+hR5mi/RrJbf2u5wLg46oayxmCMIzMN52oD5rvAjvIFdl/GZRDFWcJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rw4PdMjytCrLMPx6L+MyF+rdYwFogh2a5R4YJEVQxGI=;
 b=jLQBBboc1wwuH5rarwMbfGx4mhFX4JCsBTae9QlBtvYq/hjbrLSKjlqMst+JRuehViw7j30ZJdToamQNyg2B9PAXlCdLvPZ6GdhGW7RWEQ497u6WTJOOvNCS554FUgoB4Zr9gZWZksNhdOzQsqoKO7e8QP+V4VoZGMQ1L0tR648=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=hoan@os.amperecomputing.com; 
Received: from BYAPR01MB5494.prod.exchangelabs.com (2603:10b6:a03:127::30) by
 BYAPR01MB5205.prod.exchangelabs.com (2603:10b6:a03:7f::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.19; Sat, 28 Mar 2020 18:31:44 +0000
Received: from BYAPR01MB5494.prod.exchangelabs.com
 ([fe80::a979:b2e2:fdaf:1ccb]) by BYAPR01MB5494.prod.exchangelabs.com
 ([fe80::a979:b2e2:fdaf:1ccb%6]) with mapi id 15.20.2835.026; Sat, 28 Mar 2020
 18:31:44 +0000
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
Subject: [PATCH v3 5/5] s390: Kconfig: Remove CONFIG_NODES_SPAN_OTHER_NODES
Date: Sat, 28 Mar 2020 11:31:22 -0700
Message-Id: <1585420282-25630-6-git-send-email-Hoan@os.amperecomputing.com>
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
 15.20.2878.9 via Frontend Transport; Sat, 28 Mar 2020 18:31:41 +0000
X-Mailer: git-send-email 1.8.3.1
X-Originating-IP: [4.28.12.214]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3c9e8d1d-59a0-4b8e-3a97-08d7d3464408
X-MS-TrafficTypeDiagnostic: BYAPR01MB5205:|BYAPR01MB5205:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR01MB5205A4F1AE7768E1F076C9E0F1CD0@BYAPR01MB5205.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3383;
X-Forefront-PRVS: 03569407CC
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR01MB5494.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(376002)(396003)(136003)(39840400004)(366004)(346002)(6512007)(7416002)(107886003)(16526019)(6486002)(26005)(81166006)(4326008)(8936002)(2616005)(6666004)(186003)(956004)(8676002)(81156014)(316002)(66476007)(52116002)(6506007)(66946007)(66556008)(86362001)(478600001)(5660300002)(110136005)(2906002)(4744005)(921003)(1121003);
 DIR:OUT; SFP:1102; 
Received-SPF: None (protection.outlook.com: os.amperecomputing.com does not
 designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Y0pnK7bOi2A/yi5y4JDu0uo39Ykl2mmu0fdDBI/2CpYs+CVr9Zks8ycj5+xT8Y/QTA3v4To5IckqsOFqA6ghjeISb9LvyOlrSOm8Abs6+zS+6zUVXtKiFVbnk1h7gDAifvmv276FcKX7bC8PnV+c8mB22B4u3681HOKhbfWJAWo97KkKEaMXByY8+Yt22evOov5ufa9+lI6b7SzpBHSYVf6txendF+38QAUV52HsmBtySEg/YmdIT9kekhDgS7ABdYCJ8HhIN3t82lU9lRk95mL0Qp8Wph39+Y6iZqdQbBmrhSpmFyWCRjsGMRz5T3SCKeG8BuAJTT4R0hWRCgu1KZRTgDawAnn43IXBTNuB1TqEyGlmqLoSqrPyl+uKf5DVnskiDBuBp/HrWYuslhHlfBRASEHg34BHN1deBDYeSfU5zNGZ0d9NgMGiSZHUfpueTmuLhqHuflpd5C/ALvVS4HKvGA8jJ4B20yav5lN1mBuj26j5l6W4hnLV2O6fE7qM
X-MS-Exchange-AntiSpam-MessageData: BjKW5oWhsYfe4/eopOrPs70cboGJdB86AknGtW4tay7PU6VXQx+ND0gc5KOu5no4javZfLPtxlWSB33qLaLpWzKSMhpyMKXp5OYS9vNyLAkYWZ3zEOiOIy3AtxGQhenHvIYFlEgqZU8NC5X7VIe6wg==
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c9e8d1d-59a0-4b8e-3a97-08d7d3464408
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2020 18:31:44.2423 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v3n/c1kpKQoufrBc0GHP0ayssXnFamp5xikKsb0FgRJsAWOda77CtCdtQfXVmAs5gT2aPYBldvK4KSbmEYPQM5kLLQCKb+V1WIRT+JZ+x5E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR01MB5205
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_113146_723552_8F9E683C 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.118 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.118 listed in wl.mailspike.net]
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

Remove CONFIG_NODES_SPAN_OTHER_NODES as it's enabled
by default with NUMA.

Signed-off-by: Hoan Tran <Hoan@os.amperecomputing.com>
---
 arch/s390/Kconfig | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/s390/Kconfig b/arch/s390/Kconfig
index bc88841..d86066e 100644
--- a/arch/s390/Kconfig
+++ b/arch/s390/Kconfig
@@ -449,14 +449,6 @@ config NR_CPUS
 config HOTPLUG_CPU
 	def_bool y
 
-# Some NUMA nodes have memory ranges that span
-# other nodes.	Even though a pfn is valid and
-# between a node's start and end pfns, it may not
-# reside on that node.	See memmap_init_zone()
-# for details. <- They meant memory holes!
-config NODES_SPAN_OTHER_NODES
-	def_bool NUMA
-
 config NUMA
 	bool "NUMA support"
 	depends on SCHED_TOPOLOGY
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

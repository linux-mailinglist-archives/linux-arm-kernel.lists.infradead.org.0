Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C28BD19688A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 19:32:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+eMpYigXj7Mx3VNSruhA6ie0LTHdqiUTJhwF9DSlWuY=; b=lNKW7FxaalSgew
	dzFxKs7TjSU3ghZIR5w4kscIKlEr+DVTtWfQVgM6rd/lLkR1BY57yTZTn+8woamgM3OeyqFD3D8dL
	sBhF4kqpkMU5X3RKOgxNdXnyXrTJK5tTtqKJd8biWsSJrdAO+6GSqJp0XHwIdZdsR3Uh0GmHq5Cc+
	y9eHGAJ2NY76myNELQDviBBFGtjxY9NKSn4nXBVBJJCaRxHy9e55eVp3zZUHzVmkDOk6luAZYaqSz
	EeYIhWV+3UEJcYU3vD53RiX4GmshZyo5+0DJ+3PjS46irKEz2RB9hRMGCjU9rV+t2UYi+oGVL1rQj
	4EiPGXZP61p0+Mw7HFvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIGFz-0004tv-1a; Sat, 28 Mar 2020 18:32:31 +0000
Received: from mail-co1nam11on2096.outbound.protection.outlook.com
 ([40.107.220.96] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIGF8-0004Kb-7Q
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 18:31:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EDWcLUiYdVbmmk9244F99Yej5dzQ3VqUFptkMkx3JPAGxSlZKc6ICpImnvzf4YGiY3gNGFzFOvNwj9cGgWSJUIZgnbLTzHMLQ4nHoGsjb8xa4NOC0/oGuBKTXTg/tlquNbYMBkP2g/1Ep89kGyOOJRJLx+nrTbye2l1Syilpze/79Y6oQCtpRJ0QGacWMQKE1mfGI2kiioA+3jTqS4ZRHypuj8QT+2bIG1aRhUKbNgx8zVvQHEavRu5ji8rqQe+lyPYulBjBABhuKTXRhySmqpXeboS55+sSnEzwaApHKXQd/e3c90J1cnC6sxy4kHpzdVxZzdq5eUx5ACp40zD6qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FjVQ/uaBIJ19PqNoBkM7nhlQleLo1yXyrpNO385VDjc=;
 b=bMz0fgWecoJKyoSJFrdhnbFbY8Y1z8ye58eiVylI3S7ty3yuss5OryPXyneJ4chClcKTHh65dL8u3lHeTQzQoqjpk9MPbQ7/4J8fB1x1MruImw66fz/fi8iTIFpWvaB/z7LuIYV+gS4N1LoCM9sRjvA2SwmbYPMdAD5xJHL8jK3l43iK1pgCFDxuiHNE+Wb0CrrNu8ngRs2hGD2cvXKPoYkCSwC+MT7ubY3w5kT8tU5CGF6sZHy150d/2431gP58RFAgClgMGcxVKWQwGYDM127cWkqMbB0c5tfaPndYvv39V4UXlVoNaA1Ddme6pkXdhdwiJA784GCNXs5OK1TPcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FjVQ/uaBIJ19PqNoBkM7nhlQleLo1yXyrpNO385VDjc=;
 b=bJhpgXxRmmrmqdaLdauM2xUEHeid5rb45EeWULqNWCGET4gH1VABsgrzO9yvVyJPI+fgVdj0Fp0O9MI97+T7C3I0TNpbtRvQtZRVhOE4VTYjBYcDdLmMEJTqndPxuRHRwPZm33WN88DnlnG8I35eM8TruvFLWS8KWGC3muCteI4=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=hoan@os.amperecomputing.com; 
Received: from BYAPR01MB5494.prod.exchangelabs.com (2603:10b6:a03:127::30) by
 BYAPR01MB5205.prod.exchangelabs.com (2603:10b6:a03:7f::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.19; Sat, 28 Mar 2020 18:31:37 +0000
Received: from BYAPR01MB5494.prod.exchangelabs.com
 ([fe80::a979:b2e2:fdaf:1ccb]) by BYAPR01MB5494.prod.exchangelabs.com
 ([fe80::a979:b2e2:fdaf:1ccb%6]) with mapi id 15.20.2835.026; Sat, 28 Mar 2020
 18:31:37 +0000
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
Subject: [PATCH v3 2/5] powerpc: Kconfig: Remove CONFIG_NODES_SPAN_OTHER_NODES
Date: Sat, 28 Mar 2020 11:31:19 -0700
Message-Id: <1585420282-25630-3-git-send-email-Hoan@os.amperecomputing.com>
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
 15.20.2878.9 via Frontend Transport; Sat, 28 Mar 2020 18:31:34 +0000
X-Mailer: git-send-email 1.8.3.1
X-Originating-IP: [4.28.12.214]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ea46e873-041f-48b0-164f-08d7d3463f98
X-MS-TrafficTypeDiagnostic: BYAPR01MB5205:|BYAPR01MB5205:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR01MB52050A0B9C2CDAF1C5B773AAF1CD0@BYAPR01MB5205.prod.exchangelabs.com>
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
X-Microsoft-Antispam-Message-Info: nnQ9O4/9RaN+55U7qI3FtQuurwZ2oheTnrJySffzSG1DGVMxszQGp+E7QLRJwb6clHUSa70oal4ziiStljmuLaosuKlQry5EZ3Ky1Ny9frgEmbNpABtRzhTWFIRuqVcrM15F7PF5mN49Jzty0EDA4nYFwim8JhoZicd+R5/xhpq/8/gp66V6uceErbN1GbQHtJgHFvbNU2hFcgo/AOWPE41RCSGhK+f2vogVqV4ZOp08KNr9XqUhTsAwSGxKTwaMoPw8kZz3KgNFPpmmMGBKe5Re938vDdu0KfULXERfhgi55wBV9NqbFw05WfUzCmdihWk4rbjkqPfj1GbXwjacIo+9RpkU77Fv8dTSg/jJ2mShasaM8JYePiaksIdRkmKq3JHMkXjudZd0RlAAkJEmSacKAXzY1NWm1jJ4/6H65xFGZGSP6dYB5ejzygrXnV9VCj3nKT1sUr6Hd+tcG1wYNhoY6bghWxaeepcfatG5uBYM9GHVnNpXjdhDEL68KHZg
X-MS-Exchange-AntiSpam-MessageData: 9mIHvr08bz9lai7JZ8QsGYMRdIa10iPgkLj96ciZMDJqBliKcSHqIWAG4MwXiHDUqZUiFVgell4ZfI+L+R4h7asghi1xtFVMfEDGibgpUnsjcJiKwSuUdOl6a38YrC1wow49o/7AkXJRvtHKkm6yDg==
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea46e873-041f-48b0-164f-08d7d3463f98
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2020 18:31:36.7805 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kSxY5CrOZ2+MVvfPQwfaaD0CgWIOuLYUbiRJ3iHoCsk5/knbW4wHO9sinbRW3irFsmTk8HIRZUYbSUuhtRWV2LFpPleZlXdvfS3jju8X+QI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR01MB5205
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_113138_282566_7EA9E9AB 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.96 listed in list.dnswl.org]
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

Remove CONFIG_NODES_SPAN_OTHER_NODES as it's enabled by
default with NUMA.

Signed-off-by: Hoan Tran <Hoan@os.amperecomputing.com>
---
 arch/powerpc/Kconfig | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/arch/powerpc/Kconfig b/arch/powerpc/Kconfig
index e2a4121..4af2699 100644
--- a/arch/powerpc/Kconfig
+++ b/arch/powerpc/Kconfig
@@ -686,15 +686,6 @@ config ARCH_MEMORY_PROBE
 	def_bool y
 	depends on MEMORY_HOTPLUG
 
-# Some NUMA nodes have memory ranges that span
-# other nodes.  Even though a pfn is valid and
-# between a node's start and end pfns, it may not
-# reside on that node.  See memmap_init_zone()
-# for details.
-config NODES_SPAN_OTHER_NODES
-	def_bool y
-	depends on NEED_MULTIPLE_NODES
-
 config STDBINUTILS
 	bool "Using standard binutils settings"
 	depends on 44x
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

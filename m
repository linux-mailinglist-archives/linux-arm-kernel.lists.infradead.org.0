Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F574196887
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 19:32:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KY4Yl/Nel0z7leyjy2Hu2vGn4HGjI0btLNC1dUBgdYQ=; b=DuaWT+AELdAA6Y
	mMqnVz387hQUF64KPSRSciiRAsJLi0x9FgvwOhfO25S/p4315ZcxwPy3OhMtXi1EjUiyaDsrwXQeI
	iWM7rM+RQOZuYvM4C5SgfIhxPYRfE5nLwhSSHGXNv4g5xC8hri5k0rmwG2GcslXAs0idOo8hOz56d
	tct9TkobAWDMT5nobQZsSgu5PHJ5Tll/jqm7NI+UgXp9oCiyXX2VB6Jwfrc846O79zXgCLr1Dfkhl
	9cb+Tk7XkZSFThH5fQx2X5LKUnXhjuah9YN3KmOmwwx7mfsOeEh6+Crom7PfKXLSOPrXqiD/lbg+G
	29/HeSQUKYagWwwVqBtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIGFN-0004Kc-I9; Sat, 28 Mar 2020 18:31:53 +0000
Received: from mail-co1nam11on2092.outbound.protection.outlook.com
 ([40.107.220.92] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIGF4-0004JY-NK
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 18:31:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AAzrEvTa/5E8UhCOuQ+KY43OdxvjKepzSCS0RP1aEPWwqkVESOqoRy69xmIhvN39qVvH/t90151cgvocrbDXI1hpwAmTnbWpScPNW+pfJtylG2gUfXWvnzYa33JiNWd0+6ZvAmROLlSuwYQls7A1RwQ49vvrm+ldd8fA5GhMRRYoZMwhPvxvUzVrWiuVINIG5gEZks+5adaSGU1iVCfBRpdkKNGiD6Hr4zYtceY5EYRYhksbtHDRxD4Qw6paY4r5Ei48yd0OKlGM7mKtkb7ayJ9PeB7TmJ3LOgoA0aXuhj/IRn5Y3hipl7JJxJtb+MycCwvrL4ly6jfSpFSF0bl46w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yyIVrsAsbqfzn9pK/jT96ImQUzYBi59QrTmo7hbAPB0=;
 b=eI2Qu0ND5txDUmqMZ+4TuIWQMOmx5x3QV4SUV8ixPu6tQtdNIinMw+e+oxCi0K+DbrGt7Mao/RGGGmuklOJuXtyJRZCM2wSGrxpsrqRqNDy6ghWKhQL1kRoThsJBtCFGlG8e965DX2Xqcv9eylSizH/KQok/6zXkiYkMJ+MIHpQGNy86nSLseDa2dporNP401frskPoiSUJPLemZE1XQAFbdup3dmsy6XRJ5bvIRVbBRiVWD9LYz/vpFbwWb0OdMlB66lJCOBkA3yA3xf7oLz30GG9IGeY9Yxv2kHYb2BvmTfQ9tPIsxT5IenhisixraAxlAF+52kyV4Pj4Svynbtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yyIVrsAsbqfzn9pK/jT96ImQUzYBi59QrTmo7hbAPB0=;
 b=pvhr/4Mp1CKgrh2J6GPaWFrlg36qCW2DFrxZpI2wyuZ/7O9kRQ0ILGmRUG4brljG17clDTTShraFmTqWM1TcKo8Bohuc6wTmSeatRLc1p4qYThKAg9oGmo6V9EhypeTZx+JpJyrJ5cEzjg0u0qCIlcltwiFL4XX3PWPrvmyCdWE=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=hoan@os.amperecomputing.com; 
Received: from BYAPR01MB5494.prod.exchangelabs.com (2603:10b6:a03:127::30) by
 BYAPR01MB5205.prod.exchangelabs.com (2603:10b6:a03:7f::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.19; Sat, 28 Mar 2020 18:31:32 +0000
Received: from BYAPR01MB5494.prod.exchangelabs.com
 ([fe80::a979:b2e2:fdaf:1ccb]) by BYAPR01MB5494.prod.exchangelabs.com
 ([fe80::a979:b2e2:fdaf:1ccb%6]) with mapi id 15.20.2835.026; Sat, 28 Mar 2020
 18:31:31 +0000
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
Subject: [PATCH v3 0/5] mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by default
 for NUMA
Date: Sat, 28 Mar 2020 11:31:17 -0700
Message-Id: <1585420282-25630-1-git-send-email-Hoan@os.amperecomputing.com>
X-Mailer: git-send-email 1.8.3.1
X-ClientProxiedBy: CY4PR13CA0013.namprd13.prod.outlook.com
 (2603:10b6:903:32::23) To BYAPR01MB5494.prod.exchangelabs.com
 (2603:10b6:a03:127::30)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from engdev037.mustanglab.us.amcc (4.28.12.214) by
 CY4PR13CA0013.namprd13.prod.outlook.com (2603:10b6:903:32::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.9 via Frontend Transport; Sat, 28 Mar 2020 18:31:29 +0000
X-Mailer: git-send-email 1.8.3.1
X-Originating-IP: [4.28.12.214]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6bc8ebec-62c0-4b6c-45f6-08d7d3463c94
X-MS-TrafficTypeDiagnostic: BYAPR01MB5205:|BYAPR01MB5205:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR01MB5205FCA5854F023804705FD7F1CD0@BYAPR01MB5205.prod.exchangelabs.com>
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
X-Microsoft-Antispam-Message-Info: WYVPVK5y7NP34qUje8I23KdDawNs+tb8HJyMIjz52VTZbp9SEP0bwe9nSeSBLDK7eGGVuozVKnFcoWXdF/IfUmIep1zd5h3IayfnquqBfSmGlflemYraEg95vigKG9BFl3WkAye6VMb7greQ/TChm2ZfLEcC8liXlQUALr/aaxlXRexhC1wg3N5hWqpoVmhwW4773EJAPZlYZr5bxk4gQILCg2H8hs44rBwoW9WIpWXm8xqaz7xgl6B8o4DsOgnuBoL55OPB2WbDqktjVv+A/8/kkKFZrtTxqfF/WP4OQ1aRgtvSDSo5f2CGAGBficgZkHsaX867Z3n1+Dwe4FdSpOKabvpDXcZntLAiZ/4lx5OcnVp1gnO/RIwOSlrwDvQl9VFxEaQ6j6ABTqxnZDDp2VCJMnxJ2ZYSa6/7x5gvLSF1HJAArkIzS6js3ZIuiS5QKBSB8h15Wy5pjzf9VTQbOvjfDBiWq+23bzPcxn5+kgbv5xsS4Uoj00IgUo5Zl++G
X-MS-Exchange-AntiSpam-MessageData: u2C/PpOEwNVO/uMxt6n0UGhoNYCVYu8qcrV1J3PsGlfBFHjZOPX6oZ4Dic7NmKpThfj03b7f9i2B/FqzqhWOrqr16SA+NKKhslZSYOsgX9lg6Uq26ZAvFuEro159xpdy/ZVlDNc3RU2LN++2Ty/Qvw==
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bc8ebec-62c0-4b6c-45f6-08d7d3463c94
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2020 18:31:31.7234 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y439rLwrGhveJWJRVvssoUuoAqjBspUJ/DjxPK64/GziAO6YaXpXpo1ueiHaa5BLzAibQMAQPpEYiF+eBkMig7o4poQbp26PfZ3JebNi+k4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR01MB5205
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_113134_808921_FF03BECD 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
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

v3:
 * Revise the patch description

V2:
 * Revise the patch description

Hoan Tran (5):
  mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by default for NUMA
  powerpc: Kconfig: Remove CONFIG_NODES_SPAN_OTHER_NODES
  x86: Kconfig: Remove CONFIG_NODES_SPAN_OTHER_NODES
  sparc: Kconfig: Remove CONFIG_NODES_SPAN_OTHER_NODES
  s390: Kconfig: Remove CONFIG_NODES_SPAN_OTHER_NODES

 arch/powerpc/Kconfig | 9 ---------
 arch/s390/Kconfig    | 8 --------
 arch/sparc/Kconfig   | 9 ---------
 arch/x86/Kconfig     | 9 ---------
 mm/page_alloc.c      | 2 +-
 5 files changed, 1 insertion(+), 36 deletions(-)

-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

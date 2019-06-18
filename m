Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F00E749AA5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 09:32:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=sLMxJ1I2XDHqJ0kKAExhZIJLdC3PBWFIV3ZU/wGUvvM=; b=obP
	pGwpMiZ8GIXGbFCD/DpUpqzwhKdrLb3IEqVogol9uhdvJx90tizqG9AwFVSyd0PyGN7vXbP9bs8xV
	AkDedRrzMlRJgnqfuwlx2D1l7WhtHEc70Hr4RcQnlG+mohzr62Cf1WQHIK5oRubQCappaNKNvO2Kz
	eo6jRx7ctYfN04mu3eqrXk6JnXTFOfn8/Cbuk4SNlGZonZNa8cf/NUhntFrVzdfQDSnmCXjNaWsZa
	qusAm6r7noq/lOa6cljdJkFNOo/CDmgrT+C9jqkW5s204RjMF2Lj2GQcq0UnS992x6WHWnrwSs/WI
	QyCpkEiZum6skvrnsvRgebv7bTB9XdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd8br-0006Z6-Av; Tue, 18 Jun 2019 07:32:51 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd8bg-0006Yd-Rg
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 07:32:42 +0000
Received: from pps.filterd (m0098396.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5I7SVX8052828
 for <linux-arm-kernel@lists.infradead.org>; Tue, 18 Jun 2019 03:32:39 -0400
Received: from e06smtp04.uk.ibm.com (e06smtp04.uk.ibm.com [195.75.94.100])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2t6rmte9gm-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Tue, 18 Jun 2019 03:32:39 -0400
Received: from localhost
 by e06smtp04.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Tue, 18 Jun 2019 08:32:37 +0100
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
 by e06smtp04.uk.ibm.com (192.168.101.134) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Tue, 18 Jun 2019 08:32:33 +0100
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com
 [9.149.105.58])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x5I7WWdI32702618
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 18 Jun 2019 07:32:32 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 94A9C4C046;
 Tue, 18 Jun 2019 07:32:32 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id DFB6B4C063;
 Tue, 18 Jun 2019 07:32:30 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.8.53])
 by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Tue, 18 Jun 2019 07:32:30 +0000 (GMT)
Received: by rapoport-lnx (sSMTP sendmail emulation);
 Tue, 18 Jun 2019 10:32:30 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Will Deacon <will.deacon@arm.com>
Subject: [PATCH] arm64/mm: don't initialize pgd_cache twice
Date: Tue, 18 Jun 2019 10:32:29 +0300
X-Mailer: git-send-email 2.7.4
X-TM-AS-GCONF: 00
x-cbid: 19061807-0016-0000-0000-0000028A04C9
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19061807-0017-0000-0000-000032E7538F
Message-Id: <1560843149-13845-1-git-send-email-rppt@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-18_04:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=853 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906180062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_003241_008771_14005B48 
X-CRM114-Status: GOOD (  19.68  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>, linux-mm@kvack.org, Qian Cai <cai@lca.pw>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When PGD_SIZE != PAGE_SIZE, arm64 uses kmem_cache for allocation of PGD
memory. That cache was initialized twice: first through
pgtable_cache_init() alias and then as an override for weak
pgd_cache_init().

Remove the alias from pgtable_cache_init() and keep the only pgd_cache
initialization in pgd_cache_init().

Fixes: caa841360134 ("x86/mm: Initialize PGD cache during mm initialization")
Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/arm64/include/asm/pgtable.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index 2c41b04..851c68d 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -812,8 +812,7 @@ extern int kern_addr_valid(unsigned long addr);
 
 #include <asm-generic/pgtable.h>
 
-void pgd_cache_init(void);
-#define pgtable_cache_init	pgd_cache_init
+static inline void pgtable_cache_init(void) { }
 
 /*
  * On AArch64, the cache coherency is handled via the set_pte_at() function.
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

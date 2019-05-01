Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8862210D9A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 21:57:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ph63BMcnfO/saDkIi5BpRNDz9NCHMkmHxv9vmw7sDxQ=; b=pE4foK3/FvvEDOtNUYkN/Bebgd
	60Fqt1oHAJjs7zdn1fI/oNQ14IGm7QardYTNHDevewnHGQ7qa7QyBfIUH6EjrSCtxujZSPcDOhViT
	bUdIaqG6NFmnANng612gSeToODdh+HfoEXu5na2SLtM+EyDkiCDc4VRUtERlnUHNzMlmSay4NnIQR
	LUcS3clPqmS1JJhNL8iKO7GpC1RBhiLBArJor8aIrSoO9/JaJ6LzPGRPGBSIEMsZsmSjka/oEWF1/
	9UIDPE0TKxGrF0pwqDEDqNMZF2whH0yM3jhyzSo31NcizghLkoxz/yy/2iVn7HnAa7I6TO7okgYqD
	mbngiPDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLvLn-0007UD-0K; Wed, 01 May 2019 19:57:07 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLvLS-0007AA-3t
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 19:56:50 +0000
Received: from pps.filterd (m0098410.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x41Jqn4G120138
 for <linux-arm-kernel@lists.infradead.org>; Wed, 1 May 2019 15:56:44 -0400
Received: from e06smtp07.uk.ibm.com (e06smtp07.uk.ibm.com [195.75.94.103])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2s7eeh1fm4-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Wed, 01 May 2019 15:56:44 -0400
Received: from localhost
 by e06smtp07.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Wed, 1 May 2019 20:56:41 +0100
Received: from b06cxnps4075.portsmouth.uk.ibm.com (9.149.109.197)
 by e06smtp07.uk.ibm.com (192.168.101.137) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 1 May 2019 20:56:38 +0100
Received: from d06av24.portsmouth.uk.ibm.com (d06av24.portsmouth.uk.ibm.com
 [9.149.105.60])
 by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x41Jubuk48365568
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 1 May 2019 19:56:37 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 9BE3842049;
 Wed,  1 May 2019 19:56:37 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 7CAD542047;
 Wed,  1 May 2019 19:56:34 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.205.12])
 by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Wed,  1 May 2019 19:56:34 +0000 (GMT)
Received: by rapoport-lnx (sSMTP sendmail emulation);
 Wed, 01 May 2019 22:56:33 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 3/3] sparc: remove ARCH_SELECT_MEMORY_MODEL
Date: Wed,  1 May 2019 22:56:17 +0300
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1556740577-4140-1-git-send-email-rppt@linux.ibm.com>
References: <1556740577-4140-1-git-send-email-rppt@linux.ibm.com>
X-TM-AS-GCONF: 00
x-cbid: 19050119-0028-0000-0000-00000369516B
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19050119-0029-0000-0000-00002428BA52
Message-Id: <1556740577-4140-4-git-send-email-rppt@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-01_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905010124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_125646_631315_22606BBB 
X-CRM114-Status: GOOD (  19.80  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.7 KHOP_DYNAMIC           Relay looks like a dynamic address
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-mm@kvack.org,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>, sparclinux@vger.kernel.org,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Mike Rapoport <rppt@linux.ibm.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ARCH_SELECT_MEMORY_MODEL option is enabled only for 64-bit. However,
64-bit configuration also enables ARCH_SPARSEMEM_DEFAULT and there is no
ARCH_FLATMEM_ENABLE in arch/sparc/Kconfig.

With such settings, the dependencies in mm/Kconfig are always evaluated to
SPARSEMEM=y for 64-bit and to FLATMEM=y for 32-bit.

The ARCH_SELECT_MEMORY_MODEL option in arch/sparc/Kconfig does not affect
anything and can be removed.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/sparc/Kconfig | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/sparc/Kconfig b/arch/sparc/Kconfig
index 40f8f4f..9137dbe 100644
--- a/arch/sparc/Kconfig
+++ b/arch/sparc/Kconfig
@@ -305,9 +305,6 @@ config NODES_SPAN_OTHER_NODES
 	def_bool y
 	depends on NEED_MULTIPLE_NODES
 
-config ARCH_SELECT_MEMORY_MODEL
-	def_bool y if SPARC64
-
 config ARCH_SPARSEMEM_ENABLE
 	def_bool y if SPARC64
 	select SPARSEMEM_VMEMMAP_ENABLE
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

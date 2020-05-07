Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 960B51C9BCF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 22:09:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1wIm4YB3ULJD6hU4SMIDdayzcrYiZCJELsZGtbBoqLc=; b=gSYM426W3bFbTb
	r7ffhzjnkDRPG976zVBqo559Y6CH2gQpxqhzNNUNOcfS18Hc16EyZVrAKexhHjZ+HsPE/Y5UbblsF
	g7SuK8F9cilOmX9iiHH4gesvrMvARPJylubFX8jXdY8dIDAZB+/SPzPBIFHdqoviPumL9YhXqqEba
	VfWMXR7QJHOy1NTfleOroQgH42zI4mx/dAtLA1QqNuSQY8OVuGp1O/dSIJn7wcRkkDhLmevDMXlE5
	T1ZL7bD5Ei0EUzLz0qLYhelNOhFBq1pIv7+0CcZypgcTAfaI8C+3qSRq429aQtvSwBwIF1Z9eHZ/K
	VWJalCjnx6C/0FpQCkeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWmq1-0000VN-L9; Thu, 07 May 2020 20:09:45 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWmpY-0000HA-Fk
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 20:09:20 +0000
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 047K2oAe183408; Thu, 7 May 2020 16:09:07 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0b-001b2d01.pphosted.com with ESMTP id 30vmqarft0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 07 May 2020 16:09:07 -0400
Received: from m0098414.ppops.net (m0098414.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 047K4B9E187014;
 Thu, 7 May 2020 16:09:06 -0400
Received: from ppma04fra.de.ibm.com (6a.4a.5195.ip4.static.sl-reverse.com
 [149.81.74.106])
 by mx0b-001b2d01.pphosted.com with ESMTP id 30vmqarfsc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 07 May 2020 16:09:06 -0400
Received: from pps.filterd (ppma04fra.de.ibm.com [127.0.0.1])
 by ppma04fra.de.ibm.com (8.16.0.27/8.16.0.27) with SMTP id 047JoZio003986;
 Thu, 7 May 2020 20:09:05 GMT
Received: from b06cxnps4074.portsmouth.uk.ibm.com
 (d06relay11.portsmouth.uk.ibm.com [9.149.109.196])
 by ppma04fra.de.ibm.com with ESMTP id 30s0g64ux5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 07 May 2020 20:09:04 +0000
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 047K92mo63176956
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 7 May 2020 20:09:02 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id A1576A4055;
 Thu,  7 May 2020 20:09:02 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D4F41A404D;
 Thu,  7 May 2020 20:09:01 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.201.211])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Thu,  7 May 2020 20:09:01 +0000 (GMT)
Date: Thu, 7 May 2020 23:08:59 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: [PATCH] arm: use SPARSMEM_STATIC when SPARSEMEM is enabled (Was:
 [PATCH 1/2] ARM: Remove redundant ARCH_SPARSEMEM_DEFAULT setting)
Message-ID: <20200507200859.GF683243@linux.ibm.com>
References: <20200506235009.25023-1-f.fainelli@gmail.com>
 <20200506235009.25023-2-f.fainelli@gmail.com>
 <20200507103039.GR1551@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507103039.GR1551@shell.armlinux.org.uk>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-07_13:2020-05-07,
 2020-05-07 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015
 priorityscore=1501 lowpriorityscore=0 phishscore=0 bulkscore=0
 adultscore=0 malwarescore=0 spamscore=0 suspectscore=1 impostorscore=0
 mlxscore=0 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005070159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_130916_657771_3082BB0C 
X-CRM114-Status: GOOD (  24.87  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.158.5 listed in wl.mailspike.net]
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
Cc: Doug Berger <opendmb@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 sboyd@kernel.org, Kevin Cernekee <cernekee@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Gregory Fong <gregory.0xf0@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 11:30:39AM +0100, Russell King - ARM Linux admin wrote:
> On Wed, May 06, 2020 at 04:50:08PM -0700, Florian Fainelli wrote:
> > From: Kevin Cernekee <cernekee@gmail.com>
> > 
> > If ARCH_SPARSEMEM_ENABLE=y and ARCH_{FLATMEM,DISCONTIGMEM}_ENABLE=n,
> > then the logic in mm/Kconfig already makes CONFIG_SPARSEMEM the only
> > choice.  This is true for all of the existing ARM users of
> > ARCH_SPARSEMEM_ENABLE.
> > 
> > Forcing ARCH_SPARSEMEM_DEFAULT=y if ARCH_SPARSEMEM_ENABLE=y prevents
> > us from ever defaulting to FLATMEM, so we should remove this setting.
> 
> No explanation why that is desirable.
> 
> > -config ARCH_SPARSEMEM_DEFAULT
> > -	def_bool ARCH_SPARSEMEM_ENABLE
> > -
> 
> What this basically says is ARCH_SPARSEMEM_ENABLE=ARCH_SPARSEMEM_DEFAULT,
> which is exactly what we want for the non-multiplatform boards that
> select ARCH_SPARSEMEM_ENABLE - we _want_ them to default to sparsemem
> because that is what the platform requires.
>
> For example, with RiscPC, which selects ARCH_SPARSEMEM_ENABLE, we have
> four banks of memory at 0x10000000, 0x14000000, 0x18000000 and
> 0x1c000000.  These correspond with the two memory slots - the first two
> for the first slot, and the second two for the second slot.  Each slot
> has two banks.  The size of each memory bank depends on the size of the
> module.

Out of curiosity I've run 

	make ARCH=arm rpc_defconfig
	grep SPARSEMEM .config

and I was surprised to find out that it has

	CONFIG_SPARSEMEM_EXTREME=y

Which would waste several kilibytes of memory for nothing.
Here is the fix:

From 7097c114226b5b1b2fc6bb605bf0d7eae601cc7f Mon Sep 17 00:00:00 2001
From: Mike Rapoport <rppt@linux.ibm.com>
Date: Thu, 7 May 2020 22:39:12 +0300
Subject: [PATCH] arm: use SPARSMEM_STATIC when SPARSEMEM is enabled

The commit 3e347261a80b5 ("[PATCH] sparsemem extreme implementation")
made SPARSMEM_EXTREME the default option for configurations that enable
SPARSEMEM.

For ARM systems with handful of memory banks SPARSEMEM_EXTREME is an
overkill.

Ensure that SPARSMEM_STATIC is enabled in the configurations that use
SPARSEMEM.

Fixes: 3e347261a80b5 ("[PATCH] sparsemem extreme implementation")
Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/arm/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 66a04f6f4775..c88a48d622fc 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -1517,6 +1517,7 @@ config ARCH_HAS_HOLES_MEMORYMODEL
 
 config ARCH_SPARSEMEM_ENABLE
 	bool
+	select SPARSEMEM_STATIC
 
 config ARCH_SPARSEMEM_DEFAULT
 	def_bool ARCH_SPARSEMEM_ENABLE
-- 
2.25.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

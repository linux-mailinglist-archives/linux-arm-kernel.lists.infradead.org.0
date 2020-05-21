Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CAFD1DC864
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 10:19:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FHrILRXW9cOVjHryEojygt9+yNkGBMhyu2KOVllCd1A=; b=aKKy2HX4MlHn0F
	bgLFWE++Rr5kHBjkDcAk6FHJAh/o9kUFRpbn+3PhPGtfr8tAShQI4lw6K4mfygsGdLUh1OoDABg2D
	PO54/+72FtSanDmnn9vQZO2b1W5EY+jr4tuPn1Yjl6LyoBVF9iHxZCMdU3ElFwnWmwnCifpAXmJmi
	whWKVki7QmiChgvuco+fWx55Ncq4ux4LNbiZPRzoR54qVYEHgXmlOGiO8xdtdt1mZqrmLwSXqIyPI
	sxY98mtxXDXtwHPRn/Scg5uhM9Qi9XKcBA7nTAGwvwPHJjUdnv4+224JoN4b9ZaeeT8BC9b7kwaqr
	BabVXH0hW0ZCY0J9yAbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbgQ3-0004lJ-C2; Thu, 21 May 2020 08:19:11 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbgPf-0004ai-9a
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 08:18:49 +0000
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04L81exb182876; Thu, 21 May 2020 04:18:38 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 312c66jb11-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 21 May 2020 04:18:38 -0400
Received: from m0098421.ppops.net (m0098421.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 04L81kSi183388;
 Thu, 21 May 2020 04:18:38 -0400
Received: from ppma04ams.nl.ibm.com (63.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.99])
 by mx0a-001b2d01.pphosted.com with ESMTP id 312c66jayt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 21 May 2020 04:18:38 -0400
Received: from pps.filterd (ppma04ams.nl.ibm.com [127.0.0.1])
 by ppma04ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 04L8Gq2D005050;
 Thu, 21 May 2020 08:18:36 GMT
Received: from b06avi18878370.portsmouth.uk.ibm.com
 (b06avi18878370.portsmouth.uk.ibm.com [9.149.26.194])
 by ppma04ams.nl.ibm.com with ESMTP id 313xehn7n4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 21 May 2020 08:18:36 +0000
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com
 [9.149.105.58])
 by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id 04L8IX6q51970338
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 21 May 2020 08:18:34 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id DD7A34C04E;
 Thu, 21 May 2020 08:18:33 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 049DE4C046;
 Thu, 21 May 2020 08:18:32 +0000 (GMT)
Received: from hump (unknown [9.148.206.2])
 by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Thu, 21 May 2020 08:18:31 +0000 (GMT)
Received: by hump (sSMTP sendmail emulation); Thu, 21 May 2020 11:18:31 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: [PATCH 2/2] ARM: Allow either FLATMEM or SPARSEMEM on the
 multiplatform build
Date: Thu, 21 May 2020 11:18:25 +0300
Message-Id: <20200521081825.1348844-3-rppt@linux.ibm.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200521081825.1348844-1-rppt@linux.ibm.com>
References: <20200521081825.1348844-1-rppt@linux.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-21_04:2020-05-20,
 2020-05-21 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0
 malwarescore=0 suspectscore=0 mlxlogscore=999 cotscore=-2147483648
 spamscore=0 priorityscore=1501 bulkscore=0 adultscore=0 phishscore=0
 mlxscore=0 lowpriorityscore=0 clxscore=1015 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005210052
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_011847_451622_820FA630 
X-CRM114-Status: GOOD (  20.26  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.158.5 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Stephen Boyd <sboyd@kernel.org>, Kevin Cernekee <cernekee@gmail.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Doug Berger <opendmb@gmail.com>,
 Gregory Fong <gregory.0xf0@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Gregory Fong <gregory.0xf0@gmail.com>

ARMv7 chips with LPAE can often benefit from SPARSEMEM, as portions of
system memory can be located deep in the 36-bit address space.  Allow
FLATMEM or SPARSEMEM to be selectable at compile time; FLATMEM remains
the default.

This is based on Kevin's "[PATCH 3/3] ARM: Allow either FLATMEM or
SPARSEMEM on the multi-v7 build" from [1] and shamelessly rips off his
commit message text above.  As Arnd pointed out at [2] there doesn't
seem to be any reason to tie this specifically to ARMv7, so this has
been changed to apply to all multiplatform kernels.

The addition of this option does not change the defaults and a build with
any defconfig will behave the same way as previously.

The only effect this change has is to enable user to change "Memory model"
selection in interactive kernel configuration (menuconfig, xconfig etc).

[1] http://lists.infradead.org/pipermail/linux-arm-kernel/2014-September/286837.html
[2] http://lists.infradead.org/pipermail/linux-arm-kernel/2014-October/298950.html

[ rppt: added ARCH_SELECT_MEMORY_MODEL and update the changelog ]

Cc: Kevin Cernekee <cernekee@gmail.com>
Tested-by: Stephen Boyd <sboyd@codeaurora.org>
Signed-off-by: Gregory Fong <gregory.0xf0@gmail.com>
Signed-off-by: Doug Berger <opendmb@gmail.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/arm/Kconfig | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 604caf652e2a..34b93e0903df 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -312,6 +312,9 @@ choice
 config ARCH_MULTIPLATFORM
 	bool "Allow multiple platforms to be selected"
 	depends on MMU
+	select ARCH_FLATMEM_ENABLE
+	select ARCH_SPARSEMEM_ENABLE
+	select ARCH_SELECT_MEMORY_MODEL
 	select ARM_HAS_SG_CHAIN
 	select ARM_PATCH_PHYS_VIRT
 	select AUTO_ZRELADDR
@@ -1515,9 +1518,15 @@ config OABI_COMPAT
 config ARCH_HAS_HOLES_MEMORYMODEL
 	bool
 
+config ARCH_SELECT_MEMORY_MODEL
+	bool
+
+config ARCH_FLATMEM_ENABLE
+	bool
+
 config ARCH_SPARSEMEM_ENABLE
 	bool
-	select SPARSEMEM_STATIC
+	select SPARSEMEM_STATIC if SPARSEMEM
 
 config HAVE_ARCH_PFN_VALID
 	def_bool ARCH_HAS_HOLES_MEMORYMODEL || !SPARSEMEM
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

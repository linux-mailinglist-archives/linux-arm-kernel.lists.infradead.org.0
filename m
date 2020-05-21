Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 395101DC86A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 10:21:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ahh1og3/v459LE+YlGnGPRwKvtLhA1KkgTPFl4mrZYA=; b=SRIA2gKYDkiO6w
	6/GHTQ4DEU5l9fXDSM/f/YlXxDo86XXNYA8cqgRfpR0E54LLWBpm7SyWGbqusEXOvQBemaDivxztb
	e3wdIlK/V0tKvYTv/OSOeBVkxKCZw4pk/WfX+NDQRAZa8kobyt7rclsIC5wU1oOT9/HJXjZ+Ad+H3
	Z1fMIfi/KZmqbMxUGtanSsruyRBpkocJEVy7J2HWgRrClQ7TjrHuseLrXTHSLXapd90VsWVHMxqsO
	lm8OtjuNlMr/zZuQSwnycRLfgutDnkPtt+Xfvwt4QPtr39sHwhprFQjXztyoKBY4iaO0sfH/Eq4Xc
	M8RTgu42ETtV7Comxx2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbgRm-0007Vw-2G; Thu, 21 May 2020 08:20:58 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbgRc-0004ah-2v
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 08:20:50 +0000
Received: from pps.filterd (m0098409.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04L843Lb074793; Thu, 21 May 2020 04:18:36 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 315gwbrj2e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 21 May 2020 04:18:36 -0400
Received: from m0098409.ppops.net (m0098409.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 04L85WVo084826;
 Thu, 21 May 2020 04:18:35 -0400
Received: from ppma05fra.de.ibm.com (6c.4a.5195.ip4.static.sl-reverse.com
 [149.81.74.108])
 by mx0a-001b2d01.pphosted.com with ESMTP id 315gwbrj1b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 21 May 2020 04:18:35 -0400
Received: from pps.filterd (ppma05fra.de.ibm.com [127.0.0.1])
 by ppma05fra.de.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 04L8Hfba001227;
 Thu, 21 May 2020 08:18:33 GMT
Received: from b06cxnps3074.portsmouth.uk.ibm.com
 (d06relay09.portsmouth.uk.ibm.com [9.149.109.194])
 by ppma05fra.de.ibm.com with ESMTP id 313x4xj54p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 21 May 2020 08:18:33 +0000
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com
 [9.149.105.232])
 by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 04L8IV8237027878
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 21 May 2020 08:18:31 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 1D4F05204E;
 Thu, 21 May 2020 08:18:31 +0000 (GMT)
Received: from hump (unknown [9.148.206.2])
 by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTPS id 3B7E552052;
 Thu, 21 May 2020 08:18:29 +0000 (GMT)
Received: by hump (sSMTP sendmail emulation); Thu, 21 May 2020 11:18:28 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: [PATCH 1/2] ARM: Remove redundant ARCH_SPARSEMEM_DEFAULT setting
Date: Thu, 21 May 2020 11:18:24 +0300
Message-Id: <20200521081825.1348844-2-rppt@linux.ibm.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200521081825.1348844-1-rppt@linux.ibm.com>
References: <20200521081825.1348844-1-rppt@linux.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-21_04:2020-05-20,
 2020-05-21 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 adultscore=0
 clxscore=1015 malwarescore=0 impostorscore=0 lowpriorityscore=0
 cotscore=-2147483648 suspectscore=0 spamscore=0 priorityscore=1501
 phishscore=0 mlxlogscore=908 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005210057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_012049_358231_4AC5BDAD 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
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

From: Kevin Cernekee <cernekee@gmail.com>

If ARCH_SPARSEMEM_ENABLE=y and ARCH_{FLATMEM,DISCONTIGMEM}_ENABLE=n,
then the logic in mm/Kconfig already makes CONFIG_SPARSEMEM the only
choice.  This is true for all of the existing ARM users of
ARCH_SPARSEMEM_ENABLE.

Forcing ARCH_SPARSEMEM_DEFAULT=y if ARCH_SPARSEMEM_ENABLE=y prevents
us from ever defaulting to FLATMEM, so we should remove this setting.

Link: https://lkml.org/lkml/2015/6/4/757
Signed-off-by: Kevin Cernekee <cernekee@gmail.com>
Tested-by: Stephen Boyd <sboyd@codeaurora.org>
Acked-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Gregory Fong <gregory.0xf0@gmail.com>
Signed-off-by: Doug Berger <opendmb@gmail.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/Kconfig | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index c88a48d622fc..604caf652e2a 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -1519,9 +1519,6 @@ config ARCH_SPARSEMEM_ENABLE
 	bool
 	select SPARSEMEM_STATIC
 
-config ARCH_SPARSEMEM_DEFAULT
-	def_bool ARCH_SPARSEMEM_ENABLE
-
 config HAVE_ARCH_PFN_VALID
 	def_bool ARCH_HAS_HOLES_MEMORYMODEL || !SPARSEMEM
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

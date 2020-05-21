Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3061DC863
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 10:19:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ouU6A6LRpDYVCx4qmUZTKIMAG9ijE40siA2Ra+as4Jk=; b=BLei2slDzr7jy9
	w2ezgzjBeCP+SRfn9F+4Q31Im/k7uk0JFCEKrtKixesswkuwVKKvTJ06ITWQ8hu5XXmVVUioQZrNS
	R+HWn3o35PTeBgsa525mzy/jOcJLXOfDMMQyydkH+1iZPGSjbu0KtdNkf36opV7q1mGbo1LTU5Plh
	yg9AlbD4112L2zTlZwn00AbfgPKZyXPxRLK2jpBBQohNqCccWVObmEI/29tpOutMM748NGUtZ06z1
	U2QuA4qduRt+4D2r+7ezZoHYYf2OmO6mGl/pQKKKmkBJATbuGkXk/ixU5Fll6H/X0z/nMTpDV20cL
	OT2Sq7D3NsjMoKexYFdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbgPt-0004bu-0l; Thu, 21 May 2020 08:19:01 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbgPf-0004aj-9d
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 08:18:49 +0000
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04L83K0d021397; Thu, 21 May 2020 04:18:33 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0b-001b2d01.pphosted.com with ESMTP id 312cakpsj6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 21 May 2020 04:18:33 -0400
Received: from m0098414.ppops.net (m0098414.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 04L83HnB021120;
 Thu, 21 May 2020 04:18:32 -0400
Received: from ppma02fra.de.ibm.com (47.49.7a9f.ip4.static.sl-reverse.com
 [159.122.73.71])
 by mx0b-001b2d01.pphosted.com with ESMTP id 312cakpsha-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 21 May 2020 04:18:32 -0400
Received: from pps.filterd (ppma02fra.de.ibm.com [127.0.0.1])
 by ppma02fra.de.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 04L8HCpw027290;
 Thu, 21 May 2020 08:18:30 GMT
Received: from b06cxnps4076.portsmouth.uk.ibm.com
 (d06relay13.portsmouth.uk.ibm.com [9.149.109.198])
 by ppma02fra.de.ibm.com with ESMTP id 313x2j26pg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 21 May 2020 08:18:30 +0000
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com
 [9.149.105.62])
 by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 04L8ISeX48693444
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 21 May 2020 08:18:28 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 600BEAE045;
 Thu, 21 May 2020 08:18:28 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 71890AE053;
 Thu, 21 May 2020 08:18:26 +0000 (GMT)
Received: from hump (unknown [9.148.206.2])
 by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Thu, 21 May 2020 08:18:26 +0000 (GMT)
Received: by hump (sSMTP sendmail emulation); Thu, 21 May 2020 11:18:25 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: [PATCH 0/2] ARM: Allow either FLATMEM or SPARSEMEM on the
 multiplatform build
Date: Thu, 21 May 2020 11:18:23 +0300
Message-Id: <20200521081825.1348844-1-rppt@linux.ibm.com>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-21_04:2020-05-20,
 2020-05-21 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 suspectscore=0
 bulkscore=0 mlxlogscore=916 adultscore=0 clxscore=1015 impostorscore=0
 lowpriorityscore=0 cotscore=-2147483648 phishscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005210057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_011847_451635_51DF3668 
X-CRM114-Status: GOOD (  15.55  )
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

(resendig for the correct address and with mailing list cc'ed, sorry for
the noise)

Hi,

Following the discussion at [1], I'm resending the patches that enable
memory model selection in menuconfig and such.

These patches do not change the way the configuration is generated from the
defconfigs and they do not change explicit selection of SPARSEMEM for
platforms that have "select ARCH_ENABLE_SPARSEMEM".

The mere change is that when a user runs an interactive configuration they
will be allowed to select between FLATMEM and SPARSMEM, which is not the
case today.

There is indeed some awkwardness in, e.g. removal of
ARCH_SPARSEMEM_DEFAULT, but this is what memory model selection logic in
mm/Kconfig imposes.

For example, below is the diffs of the configurations generated with
'make rpc_defconfig' and 'make defconfig':

$ diff -s old/rpc_defconfig new/rpc_defconfig
Files old/rpc_defconfig and new/rpc_defconfig are identical

$ diff -u old/defconfig new/defconfig
--- old/defconfig	2020-05-20 17:51:01.832649705 +0300
+++ new/defconfig	2020-05-20 18:15:21.084385880 +0300
@@ -674,6 +674,9 @@
 CONFIG_AEABI=y
 # CONFIG_OABI_COMPAT is not set
 CONFIG_ARCH_HAS_HOLES_MEMORYMODEL=y
+CONFIG_ARCH_SELECT_MEMORY_MODEL=y
+CONFIG_ARCH_FLATMEM_ENABLE=y
+CONFIG_ARCH_SPARSEMEM_ENABLE=y
 CONFIG_HAVE_ARCH_PFN_VALID=y
 CONFIG_HIGHMEM=y
 CONFIG_HIGHPTE=y
@@ -1061,6 +1064,9 @@
 #
 # Memory Management options
 #
+CONFIG_SELECT_MEMORY_MODEL=y
+CONFIG_FLATMEM_MANUAL=y
+# CONFIG_SPARSEMEM_MANUAL is not set
 CONFIG_FLATMEM=y
 CONFIG_FLAT_NODE_MEM_MAP=y
 CONFIG_ARCH_KEEP_MEMBLOCK=y

[1] https://lore.kernel.org/linux-arm-kernel/20200506235009.25023-1-f.fainelli@gmail.com

Gregory Fong (1):
  ARM: Allow either FLATMEM or SPARSEMEM on the multiplatform build

Kevin Cernekee (1):
  ARM: Remove redundant ARCH_SPARSEMEM_DEFAULT setting

 arch/arm/Kconfig | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

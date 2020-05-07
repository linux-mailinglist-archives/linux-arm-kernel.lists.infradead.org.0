Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A031C9C60
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 22:30:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d4S0DJ2YO3TlLxhj/tKec2tSRnBu25memO48xrkx508=; b=E1laqgnJOolHKz
	eSIgj1k9U79YvmD6DA4WWJmIXtoq24dobGafXu+L0M/nxV4PoQDX7HV2uWmxILMBnLe6ujBNeyQDq
	YqZD1DwDU/jOalNM6JST8Ah867mLAejcI8JIOBaveRSpH5k1jz7lUEDnHitW2PBfDnEQtWd2ofonQ
	nSmvAzlLPRBTUcSA7ytnBcX3iJkRjpiUpOrCFv1kemKZ10xDIhrTELhtA51qBR6Aex2EHE5qX1Nmj
	/lPTCzA7oHFFPUu3rd48GtBDrelZLb0Fs7MCkpzE847xLiJFQDSbxzuC1L+J2Hpvr6nilYqZvU40z
	9jkAG+zv0lb5CsI65HcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWnA0-0000el-GJ; Thu, 07 May 2020 20:30:24 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWn9n-0008OT-CK
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 20:30:13 +0000
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 047K2fR5136401; Thu, 7 May 2020 16:30:04 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 30s4vatexn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 07 May 2020 16:30:04 -0400
Received: from m0098421.ppops.net (m0098421.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 047KNI4F196396;
 Thu, 7 May 2020 16:30:03 -0400
Received: from ppma01fra.de.ibm.com (46.49.7a9f.ip4.static.sl-reverse.com
 [159.122.73.70])
 by mx0a-001b2d01.pphosted.com with ESMTP id 30s4vatewt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 07 May 2020 16:30:03 -0400
Received: from pps.filterd (ppma01fra.de.ibm.com [127.0.0.1])
 by ppma01fra.de.ibm.com (8.16.0.27/8.16.0.27) with SMTP id 047KL3jM017705;
 Thu, 7 May 2020 20:30:01 GMT
Received: from b06avi18626390.portsmouth.uk.ibm.com
 (b06avi18626390.portsmouth.uk.ibm.com [9.149.26.192])
 by ppma01fra.de.ibm.com with ESMTP id 30s0g5cwus-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 07 May 2020 20:30:01 +0000
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id 047KSnwm63046106
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 7 May 2020 20:28:49 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 46ABEA4051;
 Thu,  7 May 2020 20:29:59 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 71135A404D;
 Thu,  7 May 2020 20:29:58 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.201.211])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Thu,  7 May 2020 20:29:58 +0000 (GMT)
Date: Thu, 7 May 2020 23:29:56 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH 1/2] ARM: Remove redundant ARCH_SPARSEMEM_DEFAULT setting
Message-ID: <20200507202956.GG683243@linux.ibm.com>
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
 malwarescore=0 spamscore=0
 suspectscore=0 adultscore=0 clxscore=1015 impostorscore=0
 lowpriorityscore=0 bulkscore=0 phishscore=0 mlxscore=0 mlxlogscore=596
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005070158
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_133011_541241_BAC7EE61 
X-CRM114-Status: GOOD (  27.18  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.158.5 listed in wl.mailspike.net]
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

The ARCH_SPARSEMEM_DEFAULT knob has no effect unless manual selection
of the memory model is enabled, i.e. arch Kconfig sets
ARCH_SELECT_MEMORY_MODEL to 'y'.

Otherwise, ARCH_SPARSEMEM_ENABLE is sufficient to select SPARSEMEM over
FLATMEM:

config SPARSEMEM
	def_bool y
	depends on (!SELECT_MEMORY_MODEL && ARCH_SPARSEMEM_ENABLE) || SPARSEMEM_MANUAL

config FLATMEM
	def_bool y
	depends on (!DISCONTIGMEM && !SPARSEMEM) || FLATMEM_MANUAL

> For example, with RiscPC, which selects ARCH_SPARSEMEM_ENABLE, we have
> four banks of memory at 0x10000000, 0x14000000, 0x18000000 and
> 0x1c000000.  These correspond with the two memory slots - the first two
> for the first slot, and the second two for the second slot.  Each slot
> has two banks.  The size of each memory bank depends on the size of the
> module.
>
> Flatmem is completely unable to work with this setup if all banks are
> populated, and the first bank does not contain enough memory to allocate
> the struct page array.  So, sparsemem is the only option there.
> 
> Hence, for these platforms, we want sparsemem and only sparsemem, not
> flatmem.
> 
> So, this patch which makes it possible to select flatmem is completely
> out of the question for these platforms.

This patch alone won't make it possible to select flatmem for these
platforms, actually, as of now it changes nothing.

The removal of ARCH_SPARSEMEM_DEFAULT will have an effect only with
addtion of ARCH_SELECT_MEMORY_MODEL.

If I understood Florian's intention correctly, the goal was to allow
manual selection of the memory model for multiplatform builds that today
implicitly use flatmem.

I think that the patch below would achieve that without changing the
current defaults and without forcing flatmem on the platforms that
already explicitly select sparsemem.

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 66a04f6f4775..b6eb1a28ca27 100644
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
@@ -1515,11 +1518,14 @@ config OABI_COMPAT
 config ARCH_HAS_HOLES_MEMORYMODEL
 	bool
 
+config ARCH_FLATMEM_ENABLE
+	bool
+
 config ARCH_SPARSEMEM_ENABLE
 	bool
 
-config ARCH_SPARSEMEM_DEFAULT
-	def_bool ARCH_SPARSEMEM_ENABLE
+config ARCH_SELECT_MEMORY_MODEL
+	bool
 
 config HAVE_ARCH_PFN_VALID
 	def_bool ARCH_HAS_HOLES_MEMORYMODEL || !SPARSEMEM

> -- 
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

-- 
Sincerely yours,
Mike.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

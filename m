Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4601C836B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 09:27:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2E37vAtyhRpNx7XzChiAoQuHQLb7NjDb91ynCZvzV5w=; b=FUbL8mlRQBr9RG
	7i4Tfxr0g1CPcBP91ubY5P9Mvz8oKr5aoHQJBIXapIZY9uBM1x2NrnUupYty1wDcomFKkNFrM5v4w
	V8YJC8eKHT+hJLoBqxoeJBHPkhkeH+1+4LizYTSRz2vG4RIjfmyDVuAPXP8KaXAtD8qSAnTmcIWsb
	XDjaZOWC0DESv9VNc/wYuwuoIynoY7RXK3GpEVYfZK3as7566Mi57sqwm3QuhFpBkElzejCSGvL/b
	Sta+0vcCaJcZPHwwJULpmskhPsxiUkyF+wkGFSQnHGPaahIITOMcDVbSq+uIf58n+6q2mFZz6N5HW
	UNqv2pdnaJBO88/Ke9RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWawS-0002kI-PY; Thu, 07 May 2020 07:27:36 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWawM-0002js-A2
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 07:27:31 +0000
Received: from pps.filterd (m0098393.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 047722hI077189; Thu, 7 May 2020 03:27:19 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 30u8t10g2y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 07 May 2020 03:27:18 -0400
Received: from m0098393.ppops.net (m0098393.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 04772G4j078293;
 Thu, 7 May 2020 03:27:18 -0400
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.98])
 by mx0a-001b2d01.pphosted.com with ESMTP id 30u8t10g22-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 07 May 2020 03:27:18 -0400
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
 by ppma03ams.nl.ibm.com (8.16.0.27/8.16.0.27) with SMTP id 0477OlOJ004251;
 Thu, 7 May 2020 07:27:16 GMT
Received: from b06cxnps4075.portsmouth.uk.ibm.com
 (d06relay12.portsmouth.uk.ibm.com [9.149.109.197])
 by ppma03ams.nl.ibm.com with ESMTP id 30s0g5tu12-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 07 May 2020 07:27:16 +0000
Received: from b06wcsmtp001.portsmouth.uk.ibm.com
 (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
 by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 0477RDYu24445048
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 7 May 2020 07:27:13 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id A7D33A405F;
 Thu,  7 May 2020 07:27:13 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D226AA4062;
 Thu,  7 May 2020 07:27:12 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.201.211])
 by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Thu,  7 May 2020 07:27:12 +0000 (GMT)
Date: Thu, 7 May 2020 10:27:11 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 2/2] ARM: Allow either FLATMEM or SPARSEMEM on the
 multiplatform build
Message-ID: <20200507072711.GB683243@linux.ibm.com>
References: <20200506235009.25023-1-f.fainelli@gmail.com>
 <20200506235009.25023-3-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506235009.25023-3-f.fainelli@gmail.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-07_02:2020-05-05,
 2020-05-07 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 phishscore=0
 suspectscore=2 clxscore=1011 impostorscore=0 priorityscore=1501 mlxscore=0
 adultscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005070050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_002730_353812_CE7A7C07 
X-CRM114-Status: GOOD (  22.25  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
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
 rmk+kernel@armlinux.org.uk, Gregory Fong <gregory.0xf0@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 04:50:09PM -0700, Florian Fainelli wrote:
> From: Gregory Fong <gregory.0xf0@gmail.com>
> 
> ARMv7 chips with LPAE can often benefit from SPARSEMEM, as portions of
> system memory can be located deep in the 36-bit address space.  Allow
> FLATMEM or SPARSEMEM to be selectable at compile time; FLATMEM remains
> the default.
> 
> This is based on Kevin's "[PATCH 3/3] ARM: Allow either FLATMEM or
> SPARSEMEM on the multi-v7 build" from [1] and shamelessly rips off his
> commit message text above.  As Arnd pointed out at [2] there doesn't
> seem to be any reason to tie this specifically to ARMv7, so this has
> been changed to apply to all multiplatform kernels.
> 
> [1] http://lists.infradead.org/pipermail/linux-arm-kernel/2014-September/286837.html
> [2] http://lists.infradead.org/pipermail/linux-arm-kernel/2014-October/298950.html
> 
> Cc: Kevin Cernekee <cernekee@gmail.com>
> Tested-by: Stephen Boyd <sboyd@codeaurora.org>
> Signed-off-by: Gregory Fong <gregory.0xf0@gmail.com>
> Signed-off-by: Doug Berger <opendmb@gmail.com>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  arch/arm/Kconfig | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 5986277296c3..7bb5264a9c3a 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -312,6 +312,8 @@ choice
>  config ARCH_MULTIPLATFORM
>  	bool "Allow multiple platforms to be selected"
>  	depends on MMU
> +	select ARCH_FLATMEM_ENABLE
> +	select ARCH_SPARSEMEM_ENABLE

The logic in mm/Kconfig is quite convoluted, so selecting
ARCH_SPARSEMEM_ENABLE will automatically make SPARSEMEM the only option.

On top of this you would need to enable ARCH_SELECT_MEMORY_MODEL, e.g.
something like:

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 7bb5264a9c3a..b6eb1a28ca27 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -314,6 +314,7 @@ config ARCH_MULTIPLATFORM
 	depends on MMU
 	select ARCH_FLATMEM_ENABLE
 	select ARCH_SPARSEMEM_ENABLE
+	select ARCH_SELECT_MEMORY_MODEL
 	select ARM_HAS_SG_CHAIN
 	select ARM_PATCH_PHYS_VIRT
 	select AUTO_ZRELADDR
@@ -1523,6 +1524,9 @@ config ARCH_FLATMEM_ENABLE
 config ARCH_SPARSEMEM_ENABLE
 	bool
 
+config ARCH_SELECT_MEMORY_MODEL
+	bool
+
 config HAVE_ARCH_PFN_VALID
 	def_bool ARCH_HAS_HOLES_MEMORYMODEL || !SPARSEMEM
 
>  	select ARM_HAS_SG_CHAIN
>  	select ARM_PATCH_PHYS_VIRT
>  	select AUTO_ZRELADDR
> @@ -1515,6 +1517,9 @@ config OABI_COMPAT
>  config ARCH_HAS_HOLES_MEMORYMODEL
>  	bool
>  
> +config ARCH_FLATMEM_ENABLE
> +	bool
> +
>  config ARCH_SPARSEMEM_ENABLE
>  	bool
>  
> -- 
> 2.17.1
> 

-- 
Sincerely yours,
Mike.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

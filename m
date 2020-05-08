Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C191CB9FB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 23:42:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zadEwihaWu0/mxhPFx6Ucl3PCqWCkTOeuy5a4X6DIak=; b=UANdOiEHqNm6yz
	8aRom/glPKukCiR4Jx4jKxIi/vrmiLkLfodmMuFnV90LbFix0t2d8yuUqLqnsma7snVTk7I0Rt6bA
	dsLpXxhnhu5YbMdKD4ljGfUdzvBrgfVpCJx/PLKbBdJDz2pZqiwFDHgVwcwWYZ/GbzR9IhfZx3CG+
	Tpb6VRFskSptu/znWOG1EAW0WXZ3dy+8NVfCtUVr9ardQGA/aJhXjlofTMqS8sxbnQOHuKcgWCw5w
	brMSMEIV7Xgcstyv8bBvLObwYptuYMt23vENOGiVx4CugfDuFfJfG8QS5PbZRi41JVS1/0hx29taB
	b6gtta+3HHRTxcJbIbuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXAl3-00012i-Ob; Fri, 08 May 2020 21:42:13 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXAkw-00011z-0V
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 21:42:07 +0000
Received: from pps.filterd (m0098419.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 048LWL3Z180415; Fri, 8 May 2020 17:41:57 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0b-001b2d01.pphosted.com with ESMTP id 30vtvf18jw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 08 May 2020 17:41:56 -0400
Received: from m0098419.ppops.net (m0098419.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 048LWluH181740;
 Fri, 8 May 2020 17:41:56 -0400
Received: from ppma04ams.nl.ibm.com (63.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.99])
 by mx0b-001b2d01.pphosted.com with ESMTP id 30vtvf18jd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 08 May 2020 17:41:56 -0400
Received: from pps.filterd (ppma04ams.nl.ibm.com [127.0.0.1])
 by ppma04ams.nl.ibm.com (8.16.0.27/8.16.0.27) with SMTP id 048Lex5u027128;
 Fri, 8 May 2020 21:41:54 GMT
Received: from b06cxnps3075.portsmouth.uk.ibm.com
 (d06relay10.portsmouth.uk.ibm.com [9.149.109.195])
 by ppma04ams.nl.ibm.com with ESMTP id 30s0g5x4ve-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 08 May 2020 21:41:54 +0000
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 048Lfqo463701054
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 8 May 2020 21:41:52 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 14ECCA4040;
 Fri,  8 May 2020 21:41:52 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 3F6A4A404D;
 Fri,  8 May 2020 21:41:51 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.202.219])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Fri,  8 May 2020 21:41:51 +0000 (GMT)
Date: Sat, 9 May 2020 00:41:49 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 1/2] ARM: Remove redundant ARCH_SPARSEMEM_DEFAULT setting
Message-ID: <20200508214149.GB759899@linux.ibm.com>
References: <20200506235009.25023-1-f.fainelli@gmail.com>
 <20200506235009.25023-2-f.fainelli@gmail.com>
 <20200507103039.GR1551@shell.armlinux.org.uk>
 <20200507202956.GG683243@linux.ibm.com>
 <b8df0db2-89f3-cb2c-181b-d7526518b92b@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b8df0db2-89f3-cb2c-181b-d7526518b92b@gmail.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-08_18:2020-05-08,
 2020-05-08 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=953 mlxscore=0
 suspectscore=0 spamscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 malwarescore=0 clxscore=1015
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005080178
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_144206_173105_1D92C384 
X-CRM114-Status: GOOD (  24.21  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.158.5 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Doug Berger <opendmb@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 sboyd@kernel.org, Kevin Cernekee <cernekee@gmail.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Gregory Fong <gregory.0xf0@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 01:47:57PM -0700, Florian Fainelli wrote:
> 
> On 5/7/2020 1:29 PM, Mike Rapoport wrote:

...

> > If I understood Florian's intention correctly, the goal was to allow
> > manual selection of the memory model for multiplatform builds that today
> > implicitly use flatmem.
> 
> That is correct.
> 
> > 
> > I think that the patch below would achieve that without changing the
> > current defaults and without forcing flatmem on the platforms that
> > already explicitly select sparsemem.
> 
> Agree, with your patch, we have the following:
> 
> mutli_v7_defonfig -> FLATMEM
> ep93xx_defconfig -> SPARSEMEM
> rpc_defconfig -> SPARSEMEM
> assabet_defconfig -> SPARSEMEM
> 
> with the bonus that when you run menuconfig you can now select sparsemem
> for a multi-platform build, which was the intention.

If there is a need to use sparsemem for the multiplatform build, then
maybe we should consider moving to sparsemem?

The increase in size for the defconfig build is about 7k and some of if
is accounted for the .init code and data:

   text    data     bss     dec     hex filename
14539957        7461462  413288 22414707        1560573 vmlinux-flatmem
14545233        7461762  415400 22422395        156237b vmlinux-sparse-static

I don't have ARM hardware, so I cannot measure the run-time effect though. 


> Tested-by: Florian Fainelli <f.fainelli@gmail.com>
 
Thanks!

> > 
> > diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> > index 66a04f6f4775..b6eb1a28ca27 100644
> > --- a/arch/arm/Kconfig
> > +++ b/arch/arm/Kconfig
> > @@ -312,6 +312,9 @@ choice
> >  config ARCH_MULTIPLATFORM
> >  	bool "Allow multiple platforms to be selected"
> >  	depends on MMU
> > +	select ARCH_FLATMEM_ENABLE
> > +	select ARCH_SPARSEMEM_ENABLE
> > +	select ARCH_SELECT_MEMORY_MODEL
> >  	select ARM_HAS_SG_CHAIN
> >  	select ARM_PATCH_PHYS_VIRT
> >  	select AUTO_ZRELADDR
> > @@ -1515,11 +1518,14 @@ config OABI_COMPAT
> >  config ARCH_HAS_HOLES_MEMORYMODEL
> >  	bool
> >  
> > +config ARCH_FLATMEM_ENABLE
> > +	bool
> > +
> >  config ARCH_SPARSEMEM_ENABLE
> >  	bool
> >  
> > -config ARCH_SPARSEMEM_DEFAULT
> > -	def_bool ARCH_SPARSEMEM_ENABLE
> > +config ARCH_SELECT_MEMORY_MODEL
> > +	bool
> >  
> >  config HAVE_ARCH_PFN_VALID
> >  	def_bool ARCH_HAS_HOLES_MEMORYMODEL || !SPARSEMEM
> > 
> >> -- 
> >> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> >> FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up
> > 
> 
> -- 
> Florian

-- 
Sincerely yours,
Mike.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

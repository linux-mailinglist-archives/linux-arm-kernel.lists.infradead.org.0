Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C8A1DCEFF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 16:08:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hVCOBWhq3O3JcWorlO+oWSAkaMOYxt/RBF0QSBaJdsc=; b=pL2yG/qiXqYrkf
	3WUbRmMwa0ZdkKV2JwjWQhDnJmtdPF2/FcylPVFC88nflf767S2q9ds2gWLf9T5gfQ7u9MuxmjuEH
	+gkX4ns4J0F9IBYAIkhypknVIORbOkol5MWoVnZzlZj1DiujjEkuNNZ0yeEtcbLwQWofYZtip4pJT
	crqX8LARgOnZ4/jKgH5ELCaEG4RvdE2O3VLcaPmcSWClHwnvEmKZygEFcrIeoMn96hdGQ/poZp6Sk
	PYanHzeR0lezCiwrYOUA/OmrB408uO8zEBJWN8+sXcLjTinn9TnXiVx9hm41u2RmTojud38vH4Fna
	hVQ7urWBZM+R/IMbXWfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jblrq-00037t-Iv; Thu, 21 May 2020 14:08:14 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jblrh-00037Y-R7
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 14:08:07 +0000
Received: from pps.filterd (m0098404.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04LDnIcU191405; Thu, 21 May 2020 10:07:57 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 315spm2qj3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 21 May 2020 10:07:53 -0400
Received: from m0098404.ppops.net (m0098404.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 04LDnJS6191559;
 Thu, 21 May 2020 10:07:53 -0400
Received: from ppma04ams.nl.ibm.com (63.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.99])
 by mx0a-001b2d01.pphosted.com with ESMTP id 315spm2qh7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 21 May 2020 10:07:53 -0400
Received: from pps.filterd (ppma04ams.nl.ibm.com [127.0.0.1])
 by ppma04ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 04LE2wLE022804;
 Thu, 21 May 2020 14:07:50 GMT
Received: from b06avi18626390.portsmouth.uk.ibm.com
 (b06avi18626390.portsmouth.uk.ibm.com [9.149.26.192])
 by ppma04ams.nl.ibm.com with ESMTP id 313xehnr7m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 21 May 2020 14:07:50 +0000
Received: from d06av24.portsmouth.uk.ibm.com (mk.ibm.com [9.149.105.60])
 by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id 04LE6a8266584838
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 21 May 2020 14:06:36 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 8D76B42042;
 Thu, 21 May 2020 14:07:48 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id A6A3B42045;
 Thu, 21 May 2020 14:07:47 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.204.51])
 by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Thu, 21 May 2020 14:07:47 +0000 (GMT)
Date: Thu, 21 May 2020 17:07:45 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH 0/2] ARM: Allow either FLATMEM or SPARSEMEM on the
 multiplatform build
Message-ID: <20200521140745.GS1059226@linux.ibm.com>
References: <20200521081825.1348844-1-rppt@linux.ibm.com>
 <20200521120308.GR1551@shell.armlinux.org.uk>
 <20200521123327.GQ1059226@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521123327.GQ1059226@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-21_07:2020-05-21,
 2020-05-21 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015
 cotscore=-2147483648 lowpriorityscore=0 suspectscore=0 priorityscore=1501
 mlxscore=0 adultscore=0 phishscore=0 malwarescore=0 mlxlogscore=999
 bulkscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005210101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_070805_883833_4163A407 
X-CRM114-Status: GOOD (  28.28  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
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
 Doug Berger <opendmb@gmail.com>, Gregory Fong <gregory.0xf0@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 03:33:29PM +0300, Mike Rapoport wrote:
> On Thu, May 21, 2020 at 01:03:08PM +0100, Russell King - ARM Linux admin wrote:
> > On Thu, May 21, 2020 at 11:18:23AM +0300, Mike Rapoport wrote:
> > > (resendig for the correct address and with mailing list cc'ed, sorry for
> > > the noise)
> > > 
> > > Hi,
> > > 
> > > Following the discussion at [1], I'm resending the patches that enable
> > > memory model selection in menuconfig and such.
> > > 
> > > These patches do not change the way the configuration is generated from the
> > > defconfigs and they do not change explicit selection of SPARSEMEM for
> > > platforms that have "select ARCH_ENABLE_SPARSEMEM".
> > > 
> > > The mere change is that when a user runs an interactive configuration they
> > > will be allowed to select between FLATMEM and SPARSMEM, which is not the
> > > case today.
> > > 
> > > There is indeed some awkwardness in, e.g. removal of
> > > ARCH_SPARSEMEM_DEFAULT, but this is what memory model selection logic in
> > > mm/Kconfig imposes.
> > > 
> > > For example, below is the diffs of the configurations generated with
> > > 'make rpc_defconfig' and 'make defconfig':
> > > 
> > > $ diff -s old/rpc_defconfig new/rpc_defconfig
> > > Files old/rpc_defconfig and new/rpc_defconfig are identical
> > > 
> > > $ diff -u old/defconfig new/defconfig
> > > --- old/defconfig	2020-05-20 17:51:01.832649705 +0300
> > > +++ new/defconfig	2020-05-20 18:15:21.084385880 +0300
> > > @@ -674,6 +674,9 @@
> > >  CONFIG_AEABI=y
> > >  # CONFIG_OABI_COMPAT is not set
> > >  CONFIG_ARCH_HAS_HOLES_MEMORYMODEL=y
> > > +CONFIG_ARCH_SELECT_MEMORY_MODEL=y
> > > +CONFIG_ARCH_FLATMEM_ENABLE=y
> > > +CONFIG_ARCH_SPARSEMEM_ENABLE=y
> > >  CONFIG_HAVE_ARCH_PFN_VALID=y
> > >  CONFIG_HIGHMEM=y
> > >  CONFIG_HIGHPTE=y
> > > @@ -1061,6 +1064,9 @@
> > >  #
> > >  # Memory Management options
> > >  #
> > > +CONFIG_SELECT_MEMORY_MODEL=y
> > > +CONFIG_FLATMEM_MANUAL=y
> > > +# CONFIG_SPARSEMEM_MANUAL is not set
> > >  CONFIG_FLATMEM=y
> > >  CONFIG_FLAT_NODE_MEM_MAP=y
> > >  CONFIG_ARCH_KEEP_MEMBLOCK=y
> > 
> > Right, but the question is whether we want to offer flatmem for rpc.
> > It isn't allowed today, and so far no one has said why it's a
> > desirable change to make.
> 
> With ARCH_RPC=y (or ARCH_SA1100 or ARCH_EP93XX for that matter)
> ARCH_MULTIPLATFORM=n which prevents ARCH_SELECT_MEMORY_MODEL from being
> enabled and since any of these machines explicitly selects
> ARCH_SPARSEMEM_ENABLE, the only available memory model would be
> SPARSEMEM.
> 
> I played a bit with menuconfig and if any of the platforms requiring
> sparsemem is selected, the menu allowing the user to choose the memory
> model disappears.

Ah, when either of these patforms will become a part of the
multiplatform build, the only option for multiplatform build will be
sparsemem.
So it would be nice if somebody could check the cost of using sparsemem
vs flatmem, espessially on low end machines.

> > -- 
> > RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> > FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

-- 
Sincerely yours,
Mike.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

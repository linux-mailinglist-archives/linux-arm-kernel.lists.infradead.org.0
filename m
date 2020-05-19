Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9271D9E5D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:00:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ISavSWWO5nx13TU2icbnkKqNEbbrMxQo9sNdjyaeHUY=; b=aBKQIlRHhYz2Y4
	dmHCk19ffoKI96ZlhbFDfxrJ/N3VLz6EzLXjvsbSQF1lWnoj5frWaoU6tmdTWItBWbLgwEinnqQHO
	7rP+C+82w0tPFpR8vuMWeD8xixiB+6gF/RR2kpnEoIb9iLsVHMMoTYB+vmVuFWLuXodth48eGO2hp
	QpYdO1W+15jH+39glPq26CX78qpSyNpyIq6dAD8vZL+xuQeezjVDGiMsrOREcMSNVtVf4E2XkCcR+
	MhO5gl169nyDoAKJMjfEAODRUyUHw+9pMMGxub6EtPjRcvQprcbbciLaKdbpSMxefV8JRJf/U0+O2
	7A1kdDt/E1CZ5YF0MoNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb6XP-0004u7-9a; Tue, 19 May 2020 18:00:23 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb6X7-0003x3-Nb
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 18:00:07 +0000
Received: from pps.filterd (m0098396.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04JHaToO053952; Tue, 19 May 2020 13:59:53 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 312agdxnc3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 19 May 2020 13:59:53 -0400
Received: from m0098396.ppops.net (m0098396.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 04JHxqRk145862;
 Tue, 19 May 2020 13:59:52 -0400
Received: from ppma04ams.nl.ibm.com (63.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.99])
 by mx0a-001b2d01.pphosted.com with ESMTP id 312agdxnb9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 19 May 2020 13:59:52 -0400
Received: from pps.filterd (ppma04ams.nl.ibm.com [127.0.0.1])
 by ppma04ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 04JHurjj005781;
 Tue, 19 May 2020 17:59:49 GMT
Received: from b06cxnps4075.portsmouth.uk.ibm.com
 (d06relay12.portsmouth.uk.ibm.com [9.149.109.197])
 by ppma04ams.nl.ibm.com with ESMTP id 313xehj3pk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 19 May 2020 17:59:49 +0000
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com
 [9.149.105.232])
 by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 04JHxlgL983540
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 19 May 2020 17:59:47 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 873B35204F;
 Tue, 19 May 2020 17:59:47 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.202.182])
 by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTPS id A53865204E;
 Tue, 19 May 2020 17:59:46 +0000 (GMT)
Date: Tue, 19 May 2020 20:59:44 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH 2/2] ARM: Allow either FLATMEM or SPARSEMEM on the
 multiplatform build
Message-ID: <20200519175944.GH1059226@linux.ibm.com>
References: <20200507072711.GB683243@linux.ibm.com>
 <bc44ed27-7dd7-67b6-93cf-f6f575b59441@gmail.com>
 <a7c86780-d65c-ab7b-ec3c-4029257cee7a@gmail.com>
 <20200518194533.GD1059226@linux.ibm.com>
 <CAK8P3a1hd2uKsncgd=eyY1VHBbB8fPBDCWsyHpHT7q9eJp-URw@mail.gmail.com>
 <20200519144306.GE1059226@linux.ibm.com>
 <20200519150452.GH1551@shell.armlinux.org.uk>
 <20200519152714.GF1059226@linux.ibm.com>
 <CAK8P3a2iZNm310x8g2Zv0TjGJ=Px7hu14i3Ka7GQBZwyKPUesA@mail.gmail.com>
 <20200519165445.GI1551@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519165445.GI1551@shell.armlinux.org.uk>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-19_06:2020-05-19,
 2020-05-19 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0
 malwarescore=0 impostorscore=0 mlxlogscore=999 clxscore=1015 bulkscore=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 cotscore=-2147483648
 spamscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005190146
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_110005_788751_43539CBC 
X-CRM114-Status: GOOD (  32.07  )
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
 Stephen Boyd <sboyd@kernel.org>, Kevin Cernekee <cernekee@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Gregory Fong <gregory.0xf0@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Tue, May 19, 2020 at 05:54:45PM +0100, Russell King - ARM Linux admin wrote:
> On Tue, May 19, 2020 at 05:32:52PM +0200, Arnd Bergmann wrote:
> > On Tue, May 19, 2020 at 5:27 PM Mike Rapoport <rppt@linux.ibm.com> wrote:
> > > On Tue, May 19, 2020 at 04:04:52PM +0100, Russell King - ARM Linux admin wrote:
> > > > There are cases where the reason to use sparsemem is not an optional
> > > > one but is out of necessity - they require the page array to be split
> > > > up in order to boot successfully.
> > > >
> > > > With that in mind, flatmem becomes an "optimisation" over sparsemem.
> > >
> > > At the moment, there are three platforms that enable SPARSEMEM: ARCH_EP93XX,
> > > ARCH_RPC and ARCH_SA1100. All the rest have FLATMEM implcitly selected.
> > >
> > > I do not intend to change that, I am only going add an ability to select
> > > the memory model for ARCH_MULTIPLATFORM.
> > >
> > > I'll respin the series on the list before adding the patches to the
> > > patch system.
> > 
> > I think we'll make EP93xx part of multiplatform at some point, IIRC
> > only the missing clock driver is stopping us at the moment, and I already
> > discussed with Linus Walleij how that can be done.
> > 
> > My guess is that ep93xx is one platform on which sparsemem is
> > just an optimization to reduce the initial memory consumption, but
> > we should verify that when we get there.
> 
> When you have a platform where the memory is segmented into separate
> blocks widely spaced, sparsemem is not an optimisation.  For example,
> If you have four blocks spaced across 1GB, that requires about
> 256Ki struct page's.  Assuming 32 byte struct page, that requires 8MiB
> of contiguous memory.
> 
> If we also consider the other constraint - that the kernel has to fit
> in the first bank of memory, then, considering the size of the kernel
> (the first two are non-multiplatform kernels):
> 
> text     data   bss      dec      hex      filename
> 4045505  903700   92984  5042189  4cf00d   n2100/boot/vmlinux-5.6.12+
> 4045361  957276 1159052  6161689  5e0519   assabet/boot/vmlinux-5.2.0+
> 6933363 1451420  203984  8588767  830ddf   virt/boot/vmlinux-5.6.0+
> 9980260 3568070 7403296 20951626 13fb24a   multi/boot/vmlinux-5.3.0+
> 
> So, realistically, we're looking at imposing a requirement that the
> first bank of memory is no smaller than 16MB on these machines if a
> "default" flatmem multiplatform kernel is going to be able to boot,
> and if all banks are populated, that there is another bank that has
> at least 8MB to hold the memmap array.
> 
> BTW, the "optimisation" argument for sparsemem doesn't actually
> hold.  For flatmem, we free the unused parts of the memmap array,
> freeing those pages for other uses.  Sparsemem on ARM is about
> allowing these platforms to boot with their memory spread across
> the physical address space savannah.

There is no argument that sparsemem is more robust and flexible in its
ability to hande separated memory banks. And, AFAIU, nobody suggests to
start using flatmem instead of sparsemem on any machine.

Currently, when you build the kernel with "make defconfig && make" or
"make multi_X_defconfig && make" kconfig implicitly selects flatmem and
there is no possiblity to enable sparsemem in the menuconfig.

Florian sent the pathces with the purpose to allow overriding the
explict choise of flatmem with sparsemem in menuconfig.

At some point I've asked whether we would like to use sparsemem instead
of flatmem as the default for the multiplafrom build. The upside of such
change is the robustness you described above. The downside is a bit
larger kernel image and slight slow down in page_to_pfn and pfn_to_page.

That said we have two options:
* Massage the patches Florian sent and add ability to select memory
model in menuconfig for the multiplatform builds without changing
anything in configurations that were not manually atered.
* Simply add 'select ARCH_SPAPSEMEM_ENABLE' under 'ARCH_MULTIPLAFROM'
and force all multiplatform builds to use sparsemem.

So the question is what is the preferred way to move forward.

> -- 
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

-- 
Sincerely yours,
Mike.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

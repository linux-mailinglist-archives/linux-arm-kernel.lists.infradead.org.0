Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 718401C961C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 18:13:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sKdrDnqYGQa7Ol09bCxFu2g1VQ7PqsiLnvgc5g1ynS0=; b=mQgQcCQ5yfgf0Y
	N6qjqwP8MjxUSjGeb6IZAgOOuc8oucHiC463fWH+F+ctlHZfOALKGFMRM6lY3P1CsHFj0McunUkkw
	N0BCIXYUJ5f5hUUj5xnCmDybXSuNugh4l66AVIOHYYJyGsHMyUPiDiL3PlXQYsNYufV90PPOYS+1e
	qlUQCTMehlJDt+ZENSN0dG8Uu8Sh4+0rLa7fMNd/mh/udRR/h+OB8i7eCAqwOw8nus+IUIJ/JrzXb
	/ylGBfdCi/NN4tfQ6MS63Hkwx19XCaCU1X+BrfPxEFAg8JPbiQKkHgO2pSBB6dWCntr0lGvyZGleO
	d2CPTmmaBqWgskZnVEHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWj9A-0006bn-C5; Thu, 07 May 2020 16:13:16 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWj91-0006an-Qf
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 16:13:09 +0000
Received: from pps.filterd (m0098419.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 047G4OvV160549; Thu, 7 May 2020 12:12:41 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0b-001b2d01.pphosted.com with ESMTP id 30vmp6jc3d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 07 May 2020 12:12:41 -0400
Received: from m0098419.ppops.net (m0098419.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 047G5fk6165277;
 Thu, 7 May 2020 12:12:40 -0400
Received: from ppma04ams.nl.ibm.com (63.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.99])
 by mx0b-001b2d01.pphosted.com with ESMTP id 30vmp6jc2g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 07 May 2020 12:12:40 -0400
Received: from pps.filterd (ppma04ams.nl.ibm.com [127.0.0.1])
 by ppma04ams.nl.ibm.com (8.16.0.27/8.16.0.27) with SMTP id 047G9kSs025490;
 Thu, 7 May 2020 16:12:38 GMT
Received: from b06cxnps4075.portsmouth.uk.ibm.com
 (d06relay12.portsmouth.uk.ibm.com [9.149.109.197])
 by ppma04ams.nl.ibm.com with ESMTP id 30s0g5unrs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 07 May 2020 16:12:37 +0000
Received: from d06av24.portsmouth.uk.ibm.com (mk.ibm.com [9.149.105.60])
 by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 047GCZYR1048834
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 7 May 2020 16:12:35 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id BA52442041;
 Thu,  7 May 2020 16:12:35 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 2DFA142047;
 Thu,  7 May 2020 16:12:21 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.201.211])
 by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Thu,  7 May 2020 16:12:20 +0000 (GMT)
Date: Thu, 7 May 2020 19:11:55 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH v4 02/14] arm: add support for folded p4d page tables
Message-ID: <20200507161155.GE683243@linux.ibm.com>
References: <20200414153455.21744-1-rppt@kernel.org>
 <20200414153455.21744-3-rppt@kernel.org>
 <CGME20200507121658eucas1p240cf4a3e0fe5c22dda5ec4f72734149f@eucas1p2.samsung.com>
 <39ba8a04-d6b5-649d-c289-0c8b27cb66c5@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <39ba8a04-d6b5-649d-c289-0c8b27cb66c5@samsung.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-07_10:2020-05-07,
 2020-05-07 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0
 priorityscore=1501 suspectscore=1 malwarescore=0 impostorscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 adultscore=0 mlxlogscore=999
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005070125
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_091307_982574_9B687371 
X-CRM114-Status: GOOD (  21.23  )
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Fenghua Yu <fenghua.yu@intel.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Jonas Bonn <jonas@southpole.se>, Brian Cain <bcain@codeaurora.org>,
 linux-hexagon@vger.kernel.org, linux-sh@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 uclinux-h8-devel@lists.sourceforge.jp, linux-arch@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 =?utf-8?Q?=C5=81ukasz?= Stelmach <l.stelmach@samsung.com>,
 kvm-ppc@vger.kernel.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 openrisc@lists.librecores.org, Stafford Horne <shorne@gmail.com>,
 Guan Xuetao <gxt@pku.edu.cn>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, Tony Luck <tony.luck@intel.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-kernel@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, nios2-dev@lists.rocketboards.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, May 07, 2020 at 02:16:56PM +0200, Marek Szyprowski wrote:
> Hi
> =

> On 14.04.2020 17:34, Mike Rapoport wrote:
> > From: Mike Rapoport <rppt@linux.ibm.com>
> >
> > Implement primitives necessary for the 4th level folding, add walks of =
p4d
> > level where appropriate, and remove __ARCH_USE_5LEVEL_HACK.
> >
> > Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> =

> Today I've noticed that kexec is broken on ARM 32bit. Bisecting between =

> current linux-next and v5.7-rc1 pointed to this commit. I've tested this =

> on Odroid XU4 and Raspberry Pi4 boards. Here is the relevant log:
> =

> # kexec --kexec-syscall -l zImage --append "$(cat /proc/cmdline)"
> memory_range[0]:0x40000000..0xbe9fffff
> memory_range[0]:0x40000000..0xbe9fffff
> # kexec -e
> kexec_core: Starting new kernel
> 8<--- cut here ---
> Unable to handle kernel paging request at virtual address c010f1f4
> pgd =3D c6817793
> [c010f1f4] *pgd=3D4000041e(bad)
> Internal error: Oops: 80d [#1] PREEMPT ARM
> Modules linked in:
> CPU: 0 PID: 1329 Comm: kexec Tainted: G=A0=A0=A0=A0=A0=A0=A0 W =

> 5.7.0-rc3-00127-g6cba81ed0f62 #611
> Hardware name: Samsung Exynos (Flattened Device Tree)
> PC is at machine_kexec+0x40/0xfc

Any chance you have the debug info in this kernel?
scripts/faddr2line would come handy here.

> LR is at 0xffffffff
> pc : [<c010f0b4>]=A0=A0=A0 lr : [<ffffffff>]=A0=A0=A0 psr: 60000013
> sp : ebc13e60=A0 ip : 40008000=A0 fp : 00000001
> r10: 00000058=A0 r9 : fee1dead=A0 r8 : 00000001
> r7 : c121387c=A0 r6 : 6c224000=A0 r5 : ece40c00=A0 r4 : ec222000
> r3 : c010f1f4=A0 r2 : c1100000=A0 r1 : c1100000=A0 r0 : 418d0000
> Flags: nZCv=A0 IRQs on=A0 FIQs on=A0 Mode SVC_32=A0 ISA ARM=A0 Segment no=
ne
> Control: 10c5387d=A0 Table: 6bc14059=A0 DAC: 00000051
> Process kexec (pid: 1329, stack limit =3D 0x366bb4dc)
> Stack: (0xebc13e60 to 0xebc14000)
> ...
> [<c010f0b4>] (machine_kexec) from [<c01c0d84>] (kernel_kexec+0x74/0x7c)
> [<c01c0d84>] (kernel_kexec) from [<c014b1bc>] (__do_sys_reboot+0x1f8/0x21=
0)
> [<c014b1bc>] (__do_sys_reboot) from [<c0100060>] (ret_fast_syscall+0x0/0x=
28)
> Exception stack(0xebc13fa8 to 0xebc13ff0)
> ...
> ---[ end trace 3e8d6c81723c778d ]---
> 1329 Segmentation fault=A0=A0=A0=A0=A0 ./kexec -e
> =

> > ---
> >   arch/arm/include/asm/pgtable.h     |  1 -
> >   arch/arm/lib/uaccess_with_memcpy.c |  7 +++++-
> >   arch/arm/mach-sa1100/assabet.c     |  2 +-
> >   arch/arm/mm/dump.c                 | 29 +++++++++++++++++-----
> >   arch/arm/mm/fault-armv.c           |  7 +++++-
> >   arch/arm/mm/fault.c                | 22 ++++++++++------
> >   arch/arm/mm/idmap.c                |  3 ++-
> >   arch/arm/mm/init.c                 |  2 +-
> >   arch/arm/mm/ioremap.c              | 12 ++++++---
> >   arch/arm/mm/mm.h                   |  2 +-
> >   arch/arm/mm/mmu.c                  | 35 +++++++++++++++++++++-----
> >   arch/arm/mm/pgd.c                  | 40 ++++++++++++++++++++++++------
> >   12 files changed, 125 insertions(+), 37 deletions(-)
> >
> > ...
> =

> Best regards
> -- =

> Marek Szyprowski, PhD
> Samsung R&D Institute Poland
> =


-- =

Sincerely yours,
Mike.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

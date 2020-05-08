Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB6B1CB630
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 19:43:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rnpIY1GhTbdjbjbTTX/TZz5V2W7B8UOnPMUOcMtv4ys=; b=G7D3NZiDsJfpBk
	XwkG/S3HTHGLuLVThGYZZmmSWL67qJHsQh8YdD+XbzIhmuGQspTwgVZPwVKmLE/VryhfDr6h9f84y
	ci4zn9eM9y3DGicEM0ZO50jIuSkgoZWq7atImYjIW7+qxcCmeYtUbgzz6hg70J2O4O21OF7v+iAWR
	UjazmXFrsei184OWNsdcPPYQO/xrWyh15Egp5wwFmIpmGViazdaK3W32KKcfTmnNm1fyqckY4WBcd
	2bHPmulX87EZ0eJvkxvGwwH5y2n8VYuNjRD6ojgGGNy6iFFmu7e3/g4vg8+DrOkTy51TVqHa93ptR
	O4LMYJDxpvXQ3O0LMKiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX71r-0003L4-8w; Fri, 08 May 2020 17:43:19 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX71j-0003KK-2C
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 17:43:12 +0000
Received: from pps.filterd (m0098419.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 048HZWAC120545; Fri, 8 May 2020 13:42:43 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0b-001b2d01.pphosted.com with ESMTP id 30vtveutta-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 08 May 2020 13:42:43 -0400
Received: from m0098419.ppops.net (m0098419.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 048HaDP7122403;
 Fri, 8 May 2020 13:42:42 -0400
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.98])
 by mx0b-001b2d01.pphosted.com with ESMTP id 30vtveutsc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 08 May 2020 13:42:42 -0400
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
 by ppma03ams.nl.ibm.com (8.16.0.27/8.16.0.27) with SMTP id 048HeoYq020104;
 Fri, 8 May 2020 17:42:40 GMT
Received: from b06cxnps4076.portsmouth.uk.ibm.com
 (d06relay13.portsmouth.uk.ibm.com [9.149.109.198])
 by ppma03ams.nl.ibm.com with ESMTP id 30s0g5wvbw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 08 May 2020 17:42:40 +0000
Received: from d06av24.portsmouth.uk.ibm.com (mk.ibm.com [9.149.105.60])
 by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 048HgbZm43712600
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 8 May 2020 17:42:37 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id BBCB542041;
 Fri,  8 May 2020 17:42:37 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 6EED54203F;
 Fri,  8 May 2020 17:42:34 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.202.219])
 by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Fri,  8 May 2020 17:42:34 +0000 (GMT)
Date: Fri, 8 May 2020 20:42:32 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH v4 02/14] arm: add support for folded p4d page tables
Message-ID: <20200508174232.GA759899@linux.ibm.com>
References: <20200414153455.21744-1-rppt@kernel.org>
 <20200414153455.21744-3-rppt@kernel.org>
 <CGME20200507121658eucas1p240cf4a3e0fe5c22dda5ec4f72734149f@eucas1p2.samsung.com>
 <39ba8a04-d6b5-649d-c289-0c8b27cb66c5@samsung.com>
 <20200507161155.GE683243@linux.ibm.com>
 <98229ab1-fbf8-0a89-c5d6-270c828799e7@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <98229ab1-fbf8-0a89-c5d6-270c828799e7@samsung.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-08_15:2020-05-08,
 2020-05-08 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 mlxscore=0
 suspectscore=1 spamscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 malwarescore=0 clxscore=1015
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005080144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_104311_231982_00A56B82 
X-CRM114-Status: GOOD (  21.80  )
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

On Fri, May 08, 2020 at 08:53:27AM +0200, Marek Szyprowski wrote:
> Hi Mike,
> =

> On 07.05.2020 18:11, Mike Rapoport wrote:
> > On Thu, May 07, 2020 at 02:16:56PM +0200, Marek Szyprowski wrote:
> >> On 14.04.2020 17:34, Mike Rapoport wrote:
> >>> From: Mike Rapoport <rppt@linux.ibm.com>
> >>>
> >>> Implement primitives necessary for the 4th level folding, add walks o=
f p4d
> >>> level where appropriate, and remove __ARCH_USE_5LEVEL_HACK.
> >>>
> >>> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> >> Today I've noticed that kexec is broken on ARM 32bit. Bisecting between
> >> current linux-next and v5.7-rc1 pointed to this commit. I've tested th=
is
> >> on Odroid XU4 and Raspberry Pi4 boards. Here is the relevant log:
> >>
> >> # kexec --kexec-syscall -l zImage --append "$(cat /proc/cmdline)"
> >> memory_range[0]:0x40000000..0xbe9fffff
> >> memory_range[0]:0x40000000..0xbe9fffff
> >> # kexec -e
> >> kexec_core: Starting new kernel
> >> 8<--- cut here ---
> >> Unable to handle kernel paging request at virtual address c010f1f4
> >> pgd =3D c6817793
> >> [c010f1f4] *pgd=3D4000041e(bad)
> >> Internal error: Oops: 80d [#1] PREEMPT ARM
> >> Modules linked in:
> >> CPU: 0 PID: 1329 Comm: kexec Tainted: G=A0=A0=A0=A0=A0=A0=A0 W
> >> 5.7.0-rc3-00127-g6cba81ed0f62 #611
> >> Hardware name: Samsung Exynos (Flattened Device Tree)
> >> PC is at machine_kexec+0x40/0xfc
> > Any chance you have the debug info in this kernel?
> > scripts/faddr2line would come handy here.
> =

> # ./scripts/faddr2line --list vmlinux machine_kexec+0x40
> machine_kexec+0x40/0xf8:
> =

> machine_kexec at arch/arm/kernel/machine_kexec.c:182
>  =A0177=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 reboot_code_buffer =3D =

> page_address(image->control_code_page);
>  =A0178
>  =A0179=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* Prepare parameters for reboot=
_code_buffer*/
>  =A0180=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 set_kernel_text_rw();
>  =A0181=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 kexec_start_address =3D image->s=
tart;
>  >182<=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 kexec_indirection_page =3D page_list;
>  =A0183=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 kexec_mach_type =3D machine_arch=
_type;
>  =A0184=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 kexec_boot_atags =3D image->arch=
.kernel_r2;
>  =A0185
>  =A0186=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* copy our kernel relocation co=
de to the control code =

> page */
>  =A0187=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 reboot_entry =3D fncpy(reboot_co=
de_buffer,

Can you please try the patch below:

diff --git a/arch/arm/mm/init.c b/arch/arm/mm/init.c
index 963b5284d284..f86b3d17928e 100644
--- a/arch/arm/mm/init.c
+++ b/arch/arm/mm/init.c
@@ -571,7 +571,7 @@ static inline void section_update(unsigned long addr, p=
mdval_t mask,
 {
 	pmd_t *pmd;
 =

-	pmd =3D pmd_off_k(addr);
+	pmd =3D pmd_offset(pud_offset(p4d_offset(pgd_offset(mm, addr), addr), add=
r), addr);
 =

 #ifdef CONFIG_ARM_LPAE
 	pmd[0] =3D __pmd((pmd_val(pmd[0]) & mask) | prot);

>  > ...
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

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38FC95F51C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 11:06:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tekzrGmT/RgMqI+C9Zm3vsoH6J2ppZLire/lqtCICc8=; b=d8j7M6soovjcLJ
	gP4fdfzA+CtD9hPG18LDOr8Z+xBoR9ftlMPjjB2Wcy5r9Yx3GWo+hDbXZafnfjp/KQHJE5RRZwSGS
	ePNvBjUtfAglYaz6RpO62inUpf3IPZG8SUzA+9PQfP/+iGD922HdA7LCQj54vLbhxoTS00YvY/NYn
	cLhvPxTxBv4Wx29S+4mU0ZYoko7G0AcuVd9BTldOwME9JH8HO+CSlvIsjfNoJEeOEU99wAhhhS9bO
	MXOvdfeyddGtv6VnBIr8je3Usy/0nsXDBSX0ZgLKSnTwrOsPoKINR5dMNbL/srrerTa56l9OciOeq
	7XlAbLnWXmVM/JmDBamw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hixgl-00088S-NU; Thu, 04 Jul 2019 09:05:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hixgC-00084i-RB
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 09:05:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AACC1344;
 Thu,  4 Jul 2019 02:05:23 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0460C3F703;
 Thu,  4 Jul 2019 02:05:23 -0700 (PDT)
Date: Thu, 4 Jul 2019 10:05:21 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Tyler Baicar OS <baicar@os.amperecomputing.com>
Subject: Re: [PATCH RFC 1/4] ACPI/AEST: Initial AEST driver
Message-ID: <20190704090520.GB7227@e119886-lin.cambridge.arm.com>
References: <1562086280-5351-1-git-send-email-baicar@os.amperecomputing.com>
 <1562086280-5351-2-git-send-email-baicar@os.amperecomputing.com>
 <20190703092549.GA51483@e119886-lin.cambridge.arm.com>
 <DM5PR0102MB33834E69835C641D7B167A82E3FB0@DM5PR0102MB3383.prod.exchangelabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM5PR0102MB33834E69835C641D7B167A82E3FB0@DM5PR0102MB3383.prod.exchangelabs.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_020525_628212_57997EAB 
X-CRM114-Status: GOOD (  37.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Matteo.Carlini@arm.com" <Matteo.Carlini@arm.com>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "tony.luck@intel.com" <tony.luck@intel.com>,
 "james.morse@arm.com" <james.morse@arm.com>,
 "guohanjun@huawei.com" <guohanjun@huawei.com>, "bp@alien8.de" <bp@alien8.de>,
 Open Source Submission <patches@amperecomputing.com>,
 "lenb@kernel.org" <lenb@kernel.org>, "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 03, 2019 at 05:30:53PM +0000, Tyler Baicar OS wrote:
> Hello Andrew,
> =

> Thank you for the=A0feedback!
> =

> On Wed, Jul 3, 2019 at 5:26 AM Andrew Murray <andrew.murray@arm.com> wrot=
e:
> >
> > On Tue, Jul 02, 2019 at 04:51:38PM +0000, Tyler Baicar OS wrote:
> > > Add support for parsing the ARM Error Source Table and basic handling=
 of
> > > errors reported through both memory mapped and system register interf=
aces.
> > >
> > > Signed-off-by: Tyler Baicar <baicar@os.amperecomputing.com>
> > > ---
> > >  arch/arm64/include/asm/ras.h |  41 +++++
> > >  arch/arm64/kernel/Makefile   |   2 +-
> > >  arch/arm64/kernel/ras.c      |  67 ++++++++
> > >  drivers/acpi/arm64/Kconfig   |   3 +
> > >  drivers/acpi/arm64/Makefile  |   1 +
> > >  drivers/acpi/arm64/aest.c    | 362 +++++++++++++++++++++++++++++++++=
++++++++++
> > >  include/linux/acpi_aest.h    |  94 +++++++++++
> > >  7 files changed, 569 insertions(+), 1 deletion(-)
> > >  create mode 100644 arch/arm64/include/asm/ras.h
> > >  create mode 100644 arch/arm64/kernel/ras.c
> > >  create mode 100644 drivers/acpi/arm64/aest.c
> > >  create mode 100644 include/linux/acpi_aest.h
> > >
> > > diff --git a/arch/arm64/include/asm/ras.h b/arch/arm64/include/asm/ra=
s.h
> > > new file mode 100644
> > > index 0000000..36bfff4
> > > --- /dev/null
> > > +++ b/arch/arm64/include/asm/ras.h
> > > @@ -0,0 +1,41 @@
> > > +/* SPDX-License-Identifier: GPL-2.0 */
> > > +#ifndef __ASM_RAS_H
> > > +#define __ASM_RAS_H
> > > +
> > > +#define ERR_STATUS_AV                BIT(31)
> > > +#define ERR_STATUS_V         BIT(30)
> > > +#define ERR_STATUS_UE                BIT(29)
> > > +#define ERR_STATUS_ER                BIT(28)
> > > +#define ERR_STATUS_OF                BIT(27)
> > > +#define ERR_STATUS_MV                BIT(26)
> > > +#define ERR_STATUS_CE_SHIFT  24
> > > +#define ERR_STATUS_CE_MASK   0x3
> > > +#define ERR_STATUS_DE                BIT(23)
> > > +#define ERR_STATUS_PN                BIT(22)
> > > +#define ERR_STATUS_UET_SHIFT 20
> > > +#define ERR_STATUS_UET_MASK  0x3
> > > +#define ERR_STATUS_IERR_SHIFT        8
> > > +#define ERR_STATUS_IERR_MASK 0xff
> > > +#define ERR_STATUS_SERR_SHIFT        0
> > > +#define ERR_STATUS_SERR_MASK 0xff
> >
> > Some of these (_ER, _OF, _CE*, _PN, _UET*) are not used anywhere in the=
 series,
> > I'd suggest you drop the unused ones.
> =

> Yes, I'll remove them in the next version.
> =

> > There may be some merit in renaming these to match the register names i=
n the
> > spec, e.g. ERXSTATUS_EL1 instead of ERR_STATUS.
> =

> ERX* are the register names for the system registers, but these macros ar=
e used
> for both system registers and memory mapped registers. The memory mapped
> registers have prefix ERR<n>*. Also, the spec definition of the ERX* syst=
em
> registers is "accesses ERR<n>* for the error record selected by
> ERRSELR_EL1.SEL." So really, the registers being accessed in all cases are
> ERR<n>*. Either way, if folks think these names should be changed I can c=
hange
> them.

Sorry I hadn't considered the memory mapped registers. Your rationale seems
sound so no need to change them.

> =

> > > +
> > > +#define ERR_FR_CEC_SHIFT     12
> > > +#define ERR_FR_CEC_MASK              0x7
> > > +
> > > +#define ERR_FR_8B_CEC                BIT(1)
> > > +#define ERR_FR_16B_CEC               BIT(2)
> >
> > All of these ERR_FR_ defines aren't used anywhere either.
> =

> Will remove.
> =

> > > +
> > > +struct ras_ext_regs {
> > > +     u64 err_fr;
> > > +     u64 err_ctlr;
> > > +     u64 err_status;
> > > +     u64 err_addr;
> > > +     u64 err_misc0;
> > > +     u64 err_misc1;
> > > +     u64 err_misc2;
> > > +     u64 err_misc3;
> > > +};
> > > +
> > > +void arch_arm_ras_report_error(void);
> > > +
> > > +#endif       /* __ASM_RAS_H */
> > > diff --git a/arch/arm64/kernel/Makefile b/arch/arm64/kernel/Makefile
> > > index 9e7dcb2..294f602 100644
> > > --- a/arch/arm64/kernel/Makefile
> > > +++ b/arch/arm64/kernel/Makefile
> > > @@ -19,7 +19,7 @@ obj-y                       :=3D debug-monitors.o e=
ntry.o irq.o fpsimd.o              \
> > >                          return_address.o cpuinfo.o cpu_errata.o     =
         \
> > >                          cpufeature.o alternative.o cacheinfo.o      =
         \
> > >                          smp.o smp_spin_table.o topology.o smccc-call=
.o       \
> > > -                        syscall.o
> > > +                        syscall.o ras.o
> >
> > Given that arch_arm_ras_report_error depends on the ARM64_HAS_RAS_EXTN
> > capability, which in turn depends on CONFIG_ARM64_RAS_EXTN - you should
> > probably conditionally build ras.o only if CONFIG_ARM64_RAS_EXTN is def=
ined
> > (and provide a stub in the header for when it isn't defined).
> =

> Yes, I can do that.
> =

> > > =

> > >  extra-$(CONFIG_EFI)                  :=3D efi-entry.o
> > > =

> > > diff --git a/arch/arm64/kernel/ras.c b/arch/arm64/kernel/ras.c
> > > new file mode 100644
> > > index 0000000..ca47efa
> > > --- /dev/null
> > > +++ b/arch/arm64/kernel/ras.c
> > > @@ -0,0 +1,67 @@
> > > +// SPDX-License-Identifier: GPL-2.0
> > > +
> > > +#include <linux/kernel.h>
> > > +#include <linux/cpu.h>
> > > +#include <linux/smp.h>
> > > +
> > > +#include <asm/ras.h>
> > > +
> > > +void arch_arm_ras_report_error(void)
> > > +{
> > > +     u64 num_records;
> > > +     unsigned int i, cpu_num;
> > > +     bool fatal =3D false;
> > > +     struct ras_ext_regs regs;
> > > +
> > > +     if (!this_cpu_has_cap(ARM64_HAS_RAS_EXTN))
> > > +             return;
> > > +
> > > +     cpu_num =3D get_cpu();
> > > +     num_records =3D read_sysreg_s(SYS_ERRIDR_EL1);
> >
> > This value should be masked to exclude the reserved bits. This will
> > also prevent you writing to reserved bits in ERRSELR.
> =

> True, I'll add that in the next version.
> =

> > > +
> > > +     for (i =3D 0; i < num_records; i++) {
> > > +             write_sysreg_s(i, SYS_ERRSELR_EL1);
> >
> > There should be an isb here, this will ensure the record selection has
> > happened before reading the record.
> =

> I'll add that in the next version.
> =

> > > +             regs.err_status =3D read_sysreg_s(SYS_ERXSTATUS_EL1);
> > > +
> > > +             if (!(regs.err_status & ERR_STATUS_V))
> > > +                     continue;
> > > +
> > > +             pr_err("CPU%u: ERR%uSTATUS: 0x%llx\n", cpu_num, i,
> > > +                    regs.err_status);
> > > +
> > > +             if (regs.err_status & ERR_STATUS_AV) {
> > > +                     regs.err_addr =3D read_sysreg_s(SYS_ERXSTATUS_E=
L1);
> >
> > This should be SYS_ERXADDR_EL1 not SYS_ERXSTATUS_EL1!
> =

> Oops, good catch! I missed this in testing because none=A0of the errors i=
njected
> resulted in valid address info in the system registers.
> =

> > > +                     pr_err("CPU%u: ERR%uADDR: 0x%llx\n", cpu_num, i,
> > > +                            regs.err_addr);
> > > +             } else
> > > +                     regs.err_addr =3D 0;
> >
> > Or perhaps set "regs =3D { }" at the start of the function instead?
> =

> Yes, I could do that.
> =

> > > +
> > > +             regs.err_fr =3D read_sysreg_s(SYS_ERXFR_EL1);
> > > +             pr_err("CPU%u: ERR%uFR: 0x%llx\n", cpu_num, i, regs.err=
_fr);
> > > +             regs.err_ctlr =3D read_sysreg_s(SYS_ERXCTLR_EL1);
> > > +             pr_err("CPU%u: ERR%uCTLR: 0x%llx\n", cpu_num, i, regs.e=
rr_ctlr);
> > > +
> > > +             if (regs.err_status & ERR_STATUS_MV) {
> > > +                     regs.err_misc0 =3D read_sysreg_s(SYS_ERXMISC0_E=
L1);
> > > +                     pr_err("CPU%u: ERR%uMISC0: 0x%llx\n", cpu_num, =
i,
> > > +                            regs.err_misc0);
> > > +                     regs.err_misc1 =3D read_sysreg_s(SYS_ERXMISC1_E=
L1);
> > > +                     pr_err("CPU%u: ERR%uMISC1: 0x%llx\n", cpu_num, =
i,
> > > +                            regs.err_misc1);
> > > +             }
> > > +
> > > +             /*
> > > +              * In the future, we will treat UER conditions as poten=
tially
> > > +              * recoverable.
> > > +              */
> > > +             if (regs.err_status & ERR_STATUS_UE)
> > > +                     fatal =3D true;
> > > +
> > > +             write_sysreg_s(regs.err_status, SYS_ERXSTATUS_EL1);
> > > +     }
> > > +
> > > +     if (fatal)
> > > +             panic("uncorrectable error encountered");
> >
> > On the do_serror path, we will already panic if arm64_is_fatal_ras_serr=
or
> > indicates uncorrectable errors. Is this here for the other paths?
> =

> This same function is called for the SEA path and also from AEST for erro=
rs
> that are reported through the system register interface.
> =

> > > +
> > > +     put_cpu();
> > > +}
> >
> > Finally, should we clear the errors when we see them?
> =

> Each error is being cleared at the end of the loop above by writing the v=
alue
> read from the status register back to the status register. The status reg=
ister
> bits are write 1 to clear and writing back the same value that was read
> guarantees that a higher priority error that occurs between the read and =
write
> isn't cleared.

Ah, I missed that.

When you write back the status to clear the bits, I think you ought to mask
off the bottom 16 bits (SERR, IERR) and arguably the top 32 bits to prevent
writing to res0 or fields that are not error write-1-to-clear bits.

Also the manual states "Software must also write ones to the { ER, PN, UET,
CI } fields when clearing these [valid bits] fields" - we achieve this
implicitly by writing back the value of status... however UET and CE take up
2 bits each and include this comment "Writing a value other than all-zeros =
or
all-ones sets this field to an UNKNOWN value". Thus we probably should do
the following (or similar) to be inline with the spec:

/* Write-one-to-clear the bits we've seen */
regs.err_status &=3D ~ERR_STATUS_ERR_MASK;

/* Correctly clear double bit fields */
if (regs.err_status & ERR_STATUS_CE_MASK)
    regs.err_status |=3D ERR_STATUS_CE_MASK;
if (regs.err_status & ERR_STATUS_UET_MASK)
    regs.err_status |=3D ERR_STATUS_UET_MASK

write_sysreg_s(regs.err_status, SYS_ERXSTATUS_EL1);
isb();

The isb may not be necessary but ensures we've cleared the errors before
leaving the function.

> =

> > > diff --git a/drivers/acpi/arm64/Kconfig b/drivers/acpi/arm64/Kconfig
> > > index 6dba187..8d5cf99 100644
> > > --- a/drivers/acpi/arm64/Kconfig
> > > +++ b/drivers/acpi/arm64/Kconfig
> > > @@ -8,3 +8,6 @@ config ACPI_IORT
> > > =

> > >  config ACPI_GTDT
> > >       bool
> > > +
> > > +config ACPI_AEST
> > > +     bool "ARM Error Source Table Support"
> > > diff --git a/drivers/acpi/arm64/Makefile b/drivers/acpi/arm64/Makefile
> > > index 6ff50f4..ea1ba28 100644
> > > --- a/drivers/acpi/arm64/Makefile
> > > +++ b/drivers/acpi/arm64/Makefile
> > > @@ -1,3 +1,4 @@
> > >  # SPDX-License-Identifier: GPL-2.0-only
> > >  obj-$(CONFIG_ACPI_IORT)      +=3D iort.o
> > >  obj-$(CONFIG_ACPI_GTDT)      +=3D gtdt.o
> > > +obj-$(CONFIG_ACPI_AEST)      +=3D aest.o
> > > diff --git a/drivers/acpi/arm64/aest.c b/drivers/acpi/arm64/aest.c
> > > new file mode 100644
> > > index 0000000..fd4f3b5
> > > --- /dev/null
> > > +++ b/drivers/acpi/arm64/aest.c
> > > @@ -0,0 +1,362 @@
> > > +// SPDX-License-Identifier: GPL-2.0
> > > +
> > > +/* ARM Error Source Table Support */
> > > +
> > > +#include <linux/acpi.h>
> > > +#include <linux/acpi_aest.h>
> > > +#include <linux/init.h>
> > > +#include <linux/interrupt.h>
> > > +#include <linux/io.h>
> > > +#include <linux/irq.h>
> > > +#include <linux/kernel.h>
> > > +#include <linux/percpu.h>
> > > +#include <linux/ratelimit.h>
> > > +
> > > +#include <asm/ras.h>
> > > +
> > > +#undef pr_fmt
> > > +#define pr_fmt(fmt) "ACPI AEST: " fmt
> > > +
> > > +static struct acpi_table_header *aest_table;
> > > +
> > > +static struct aest_node_data __percpu **ppi_data;
> > > +static u8 num_ppi;
> > > +static u8 ppi_idx;
> > > +
> > > +static void aest_print(struct aest_node_data *data, struct ras_ext_r=
egs regs,
> > > +                    int index)
> > > +{
> > > +     /* No more than 2 corrected messages every 5 seconds */
> > > +     static DEFINE_RATELIMIT_STATE(ratelimit_corrected, 5*HZ, 2);
> > > +
> > > +     if (regs.err_status & ERR_STATUS_UE ||
> > > +         regs.err_status & ERR_STATUS_DE ||
> > > +         __ratelimit(&ratelimit_corrected)) {
> > > +             switch (data->node_type) {
> > > +             case AEST_NODE_TYPE_PROC:
> > > +                     pr_err("error from processor 0x%x\n",
> > > +                            data->data.proc.id);
> > > +                     break;
> > > +             case AEST_NODE_TYPE_MEM:
> > > +                     pr_err("error from memory domain 0x%x\n",
> > > +                            data->data.mem.domain);
> > > +                     break;
> > > +             case AEST_NODE_TYPE_VENDOR:
> > > +                     pr_err("error from vendor specific source 0x%x\=
n",
> > > +                            data->data.vendor.id);
> > > +             }
> > > +
> > > +             pr_err("ERR%dSTATUS =3D 0x%llx\n", index, regs.err_stat=
us);
> > > +             if (regs.err_status & ERR_STATUS_AV)
> > > +                     pr_err("ERR%dADDR =3D 0x%llx\n", index, regs.er=
r_addr);
> > > +
> > > +             pr_err("ERR%dFR =3D 0x%llx\n", index, regs.err_fr);
> > > +             pr_err("ERR%dCTLR =3D 0x%llx\n", index, regs.err_ctlr);
> > > +
> > > +             if (regs.err_status & ERR_STATUS_MV) {
> > > +                     pr_err("ERR%dMISC0 =3D 0x%llx\n", index, regs.e=
rr_misc0);
> > > +                     pr_err("ERR%dMISC1 =3D 0x%llx\n", index, regs.e=
rr_misc1);
> > > +             }
> >
> > Given that we have a ras_ext_regs struct, can't we use a single functio=
n to
> > print the error - rather than have duplicate pr_err's here and in
> > arch_arm_ras_report_error?
> =

> That was an option I had thought about, but I left it as is to get other
> opinions. Right now the system register reporting prefixes everything wit=
h the
> CPU number that the error occurred on...but now that I think about it mor=
e=A0I
> could just have the print function take a prefix as a parameter. I'll uni=
fy the
> printing into a single function in the next version.

This is also helpful for times when you want to clear the error without
printing it. (E.g. to catch guest non-fatal errors and prevent a bad guest =
from
spaming the log buffer).

Thanks,

Andrew Murray

> =

> Thanks,
> Tyler

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

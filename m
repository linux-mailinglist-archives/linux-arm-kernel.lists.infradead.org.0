Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE714E99F7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 11:25:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L3dNuEIKxXtQ5yqGhRYskVnZ2uKYqxpiEI4jETwCYDA=; b=UHX3KQh+Ul5BTz
	mMgxVSim/yamdeKaEgz9y6ACHpcWRlVazCobhry22f2/y30Q2WRgAGtdPs2p16kqsGDebbwneSLP2
	qAneBggcq1L2zV2dzHWQ8oxqL5083GLGe/r9/9aW+Mf+qpcjLIQCa6CGkSc1M3zdC6j882ThJLuMS
	whF9GXnY9nJmIH/05ifMEoOnKqYR6JnfxKvKyYG1AiQIgN+bJkbjhMuUuIBqfNBPzUcslaZBgtdQT
	SlqaXfXAWsn5hDzeyvAvRTkGscP28ab3a1SlWxqtAm2H/riG4+r0OT+uLU9Pf1KiOHVQ8XbOYmI8m
	6uRFdz3sBDvYRmQp+M/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPlAi-0008AD-IX; Wed, 30 Oct 2019 10:25:48 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPlAS-000898-QJ
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 10:25:36 +0000
Received: by mail-lf1-x143.google.com with SMTP id f5so1133499lfp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 03:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=CEApipJqRvFJ/nRf9PghYvMR292Of8KqdQ5VNZFyob0=;
 b=nJU57yIQu/JnNhZ1gHwqGhq/lfxmRELE8WJ1Fn4caxtnH34iknqd6EP/gTbql6eVdG
 m0cp3yuLCwz1YCqNP8NPTDc7ut7OERqhEUBDoJEz9kQlfVQq43fXHBjyZtb6qct7QQRh
 VEWzktrBBN0wxrVzDUEOUSr9lCivb3Gr9cMo99FI32j5RIBLNkS/E67eQtQo9BAAyuTc
 CTx/JDcgaOBbhBIvB4sSN3sgX+8qTyRvRt0Fpwj9lBFxpxYhLVczc0kw+6KoyM8/56s4
 lVo8oUNMiixUtdq1gOs/+/HvpBuCrOe4lkS8emdDitf0UzjUOYer/0KNg8IIo1I0kcGd
 PtZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=CEApipJqRvFJ/nRf9PghYvMR292Of8KqdQ5VNZFyob0=;
 b=nDJhS2OJh1ZVObF+f+nq389qzJvjZAO1QcAzFq2mkp4x8/e1fJOg3fn9CLaVyvDRcB
 6/BPAOT4ZGA+TSFm90r/2MNDDRDIa1yD3MFYxn/XOVukrgJK1aLbHsu8u0+ra5T4p6F8
 bnxgPdF4VPGRfcvdoxI49xRK7efbBz2V6rretwUJK0XyBE9afQbwju3qoastTLezvxHF
 2C8m7jFSo3XXxWqLHa5Rr0Hn/p0aZuxtFQOntaziqI3EmrksIwMeAB/ZUVwhRDncTOj/
 MX3Bv6XyqWzxP6kcRADya+fni+zFrOe8Qq2FsjThK9zUIzMgxabaoc6MVnFR/R8tEWLE
 ZOZQ==
X-Gm-Message-State: APjAAAU2+I5blQ1MuS1X4stkC+3tbGBZbmXNRE9Voj7bZ+oDmBkJRijf
 8FSVTz51PZipF6j9Nbi/hSLwG/d+ZdJoXaMOb0NV9w==
X-Google-Smtp-Source: APXvYqwY6l3lmIK/LNUC3ch0TngsBxo0M3HatrhaSzSeEidYyl4wVIZe8WZeOmVQFDvMacplDdSreOijuFpebvzLnNQ=
X-Received: by 2002:a19:be92:: with SMTP id o140mr5755139lff.40.1572431130060; 
 Wed, 30 Oct 2019 03:25:30 -0700 (PDT)
MIME-Version: 1.0
References: <20191029180731.2153b90c@canb.auug.org.au>
In-Reply-To: <20191029180731.2153b90c@canb.auug.org.au>
From: Anders Roxell <anders.roxell@linaro.org>
Date: Wed, 30 Oct 2019 11:25:19 +0100
Message-ID: <CADYN=9+aqqHVP8tKFFCTKi_zzSt=PW5JVyU2sdaThgrHpYSjzQ@mail.gmail.com>
Subject: Re: linux-next: Tree for Oct 29
To: Stephen Rothwell <sfr@canb.auug.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_032532_899176_ED4521B3 
X-CRM114-Status: GOOD (  21.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linux Next Mailing List <linux-next@vger.kernel.org>,
 linux-trace-devel@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 29 Oct 2019 at 08:07, Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>
> Hi all,
>
> Changes since 20191028:
>
> The xfs tree gained a build failure so I used the version from
> next-20191028.
>
> The block tree lost its build failure.
>
> The scsi tree lost its build failure and gained a conflict against the
> rcu tree.
>
> The vhost tree gained a conflict against the pm tree.
>
> Non-merge commits (relative to Linus' tree): 6724
>  6169 files changed, 244454 insertions(+), 113092 deletions(-)
>
> ----------------------------------------------------------------------------
>
> I have created today's linux-next tree at
> git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> (patches at http://www.kernel.org/pub/linux/kernel/next/ ).  If you
> are tracking the linux-next tree using git, you should not use "git pull"
> to do so as that will try to merge the new linux-next release with the
> old one.  You should use "git fetch" and checkout or reset to the new
> master.
>
> You can see which trees have been included by looking in the Next/Trees
> file in the source.  There are also quilt-import.log and merge.log
> files in the Next directory.  Between each merge, the tree was built
> with a ppc64_defconfig for powerpc, an allmodconfig for x86_64, a
> multi_v7_defconfig for arm and a native build of tools/perf. After
> the final fixups (if any), I do an x86_64 modules_install followed by
> builds for x86_64 allnoconfig, powerpc allnoconfig (32 and 64 bit),
> ppc44x_defconfig, allyesconfig and pseries_le_defconfig and i386, sparc
> and sparc64 defconfig. And finally, a simple boot test of the powerpc
> pseries_le_defconfig kernel in qemu (with and without kvm enabled).
>
> Below is a summary of the state of the merge.
>
> I am currently merging 310 trees (counting Linus' and 78 trees of bug
> fix patches pending for the current merge release).
>
> Stats about the size of the tree over time can be seen at
> http://neuling.org/linux-next-size.html .
>
> Status of my local build tests will be at
> http://kisskb.ellerman.id.au/linux-next .  If maintainers want to give
> advice about cross compilers/configs that work, we are always open to add
> more builds.
>
> Thanks to Randy Dunlap for doing many randconfig builds.  And to Paul
> Gortmaker for triage and bug fixes.
>
> --
> Cheers,
> Stephen Rothwell
>
> $ git checkout master
> $ git reset --hard stable
> Merging origin/master (8005803a2ca0 Merge tag 'arc-5.4-rc6' of git://git.kernel.org/pub/scm/linux/kernel/git/vgupta/arc)
> Merging fixes/master (54ecb8f7028c Linux 5.4-rc1)
> Merging kbuild-current/fixes (7d194c2100ad Linux 5.4-rc4)
> Merging arc-current/for-curr (5effc09c4907 ARC: perf: Accommodate big-endian CPU)
> Merging arm-current/fixes (39f4d4410484 Merge branch 'misc' into fixes)
> Merging arm-soc-fixes/arm/fixes (b25e29721de9 Merge tag 'reset-fixes-for-v5.5' of git://git.pengutronix.de/git/pza/linux into arm/fixes)
> Merging arm64-fixes/for-next/fixes (777d062e5bee Merge branch 'errata/tx2-219' into for-next/fixes)
> Merging m68k-current/for-linus (0f1979b402df m68k: Remove ioremap_fullcache())
> Merging powerpc-fixes/fixes (a8a30219ba78 powerpc/powernv/eeh: Fix oops when probing cxl devices)
> Merging s390-fixes/fixes (ac49303d9ef0 s390/kaslr: add support for R_390_GLOB_DAT relocation type)
> Merging sparc/master (038029c03e21 sparc: remove unneeded uapi/asm/statfs.h)
> Merging fscrypt-current/for-stable (ae64f9bd1d36 Linux 4.15-rc2)
> Merging net/master (fc11078dd351 Merge git://git.kernel.org/pub/scm/linux/kernel/git/pablo/nf)
> Merging bpf/master (fc11078dd351 Merge git://git.kernel.org/pub/scm/linux/kernel/git/pablo/nf)
> Merging ipsec/master (68ce6688a5ba net: sched: taprio: Fix potential integer overflow in taprio_set_picos_per_byte)
> Merging netfilter/master (fc11078dd351 Merge git://git.kernel.org/pub/scm/linux/kernel/git/pablo/nf)
> Merging ipvs/master (c24b75e0f923 ipvs: move old_secure_tcp into struct netns_ipvs)
> Merging wireless-drivers/master (b43f4a169f22 rtlwifi: rtl_pci: Fix problem of too small skb->len)
> Merging mac80211/master (fc11078dd351 Merge git://git.kernel.org/pub/scm/linux/kernel/git/pablo/nf)
> Merging rdma-fixes/for-rc (a9018adfde80 RDMA/uverbs: Prevent potential underflow)
> Merging sound-current/for-linus (1a7f60b9df61 Revert "ALSA: hda: Flush interrupts on disabling")
> Merging sound-asoc-fixes/for-linus (791bfe29e5be Merge branch 'asoc-5.4' into asoc-linus)
> Merging regmap-fixes/for-linus (da0c9ea146cb Linux 5.4-rc2)
> Merging regulator-fixes/for-linus (064447433b69 Merge branch 'regulator-5.4' into regulator-linus)
> Merging spi-fixes/for-linus (67400a0f443b Merge branch 'spi-5.4' into spi-linus)
> Merging pci-current/for-linus (54ecb8f7028c Linux 5.4-rc1)
> Merging driver-core.current/driver-core-linus (d6d5df1db6e9 Linux 5.4-rc5)
> Merging tty.current/tty-linus (d6d5df1db6e9 Linux 5.4-rc5)
> Merging usb.current/usb-linus (1186f86a7113 UAS: Revert commit 3ae62a42090f ("UAS: fix alignment of scatter/gather segments"))
> Merging usb-gadget-fixes/fixes (f3fb802efaef usb: cdns3: gadget: Don't manage pullups)
> Merging usb-serial-fixes/usb-linus (bc25770f00d3 USB: serial: ti_usb_3410_5052: clean up serial data access)
> Merging usb-chipidea-fixes/ci-for-usb-stable (16009db47c51 usb: chipidea: udc: workaround for endpoint conflict issue)
> Merging phy/fixes (68eeb39a53d5 phy: qcom-usb-hs: Fix extcon double register after power cycle)
> Merging staging.current/staging-linus (d6d5df1db6e9 Linux 5.4-rc5)
> Merging char-misc.current/char-misc-linus (d6d5df1db6e9 Linux 5.4-rc5)
> Merging soundwire-fixes/fixes (7b47ad3322d1 soundwire: slave: fix scanf format)
> Merging thunderbolt-fixes/fixes (747125db6dcd thunderbolt: Drop unnecessary read when writing LC command in Ice Lake)
> Merging input-current/for-linus (b1a402e75a5f Input: st1232 - fix reporting multitouch coordinates)
> Merging crypto-current/master (f703964fc668 crypto: arm/aes-ce - add dependency on AES library)
> Merging ide/master (baf6722aa0cb ide: Use dev_get_drvdata where possible)
> Merging vfio-fixes/for-linus (95f89e090618 vfio/type1: Initialize resv_msi_base)
> Merging kselftest-fixes/fixes (303e6218ecec selftests: Fix O= and KBUILD_OUTPUT handling for relative paths)
> Merging modules-fixes/modules-linus (09684950050b scripts/nsdeps: use alternative sed delimiter)
> Merging slave-dma-fixes/fixes (766781938545 dmaengine: qcom: bam_dma: Fix resource leak)
> Merging backlight-fixes/for-backlight-fixes (e93c9c99a629 Linux 5.1)
> Merging mtd-fixes/mtd/fixes (df8fed831cbc mtd: rawnand: au1550nd: Fix au_read_buf16() prototype)
> Merging mfd-fixes/for-mfd-fixes (603d9299da32 mfd: mt6397: Fix probe after changing mt6397-core)
> Merging v4l-dvb-fixes/fixes (3e84a18a259e media: meson/ao-cec: move cec_notifier_cec_adap_register after hw setup)
> Merging reset-fixes/reset/fixes (f430c7ed8bc2 reset: fix reset_control_ops kerneldoc comment)
> Merging mips-fixes/mips-fixes (b42aa3fd5957 MIPS: tlbex: Fix build_restore_pagemask KScratch restore)
> Merging at91-fixes/at91-fixes (54ecb8f7028c Linux 5.4-rc1)
> Merging omap-fixes/fixes (6aed5a0e0f56 Merge branch 'watchdog-fix' into fixes)
> Merging kvm-fixes/master (671ddc700fd0 KVM: nVMX: Don't leak L1 MMIO regions to L2)
> Merging kvms390-fixes/master (53936b5bf35e KVM: s390: Do not leak kernel stack data in the KVM_S390_INTERRUPT ioctl)
> Merging hwmon-fixes/hwmon (6fc28b7e0aac hwmon: (nct7904) Fix the incorrect value of vsen_mask & tcpu_mask & temp_mode in nct7904_data struct.)
> Merging nvdimm-fixes/libnvdimm-fixes (6370740e5f8e fs/dax: Fix pmd vs pte conflict detection)
> Merging btrfs-fixes/next-fixes (32a2a2154754 Merge branch 'misc-5.4' into next-fixes)
> Merging vfs-fixes/fixes (03ad0d703df7 autofs: fix a leak in autofs_expire_indirect())
> Merging dma-mapping-fixes/for-linus (9c24eaf81cc4 iommu/vt-d: Return the correct dma mask when we are bypassing the IOMMU)
> Merging i3c-fixes/master (6fbc7275c7a9 Linux 5.2-rc7)
> Merging drivers-x86-fixes/fixes (7d194c2100ad Linux 5.4-rc4)
> Merging samsung-krzk-fixes/fixes (54ecb8f7028c Linux 5.4-rc1)
> Merging pinctrl-samsung-fixes/pinctrl-fixes (5f9e832c1370 Linus 5.3-rc1)
> Merging devicetree-fixes/dt/linus (5dba51754b04 of: reserved_mem: add missing of_node_put() for proper ref-counting)
> Merging scsi-fixes/fixes (0cf9f4e547ce scsi: sd: define variable dif as unsigned int instead of bool)
> Merging drm-fixes/drm-fixes (2a3608409f46 Merge tag 'drm-fixes-5.4-2019-10-23' of git://people.freedesktop.org/~agd5f/linux into drm-fixes)
> Merging amdgpu-fixes/drm-fixes (c0e70e10b11b drm/amd/display: fix dcn21 Makefile for clang)
> Merging drm-intel-fixes/for-linux-next-fixes (7d194c2100ad Linux 5.4-rc4)
> Merging mmc-fixes/fixes (2bb9f7566ba7 mmc: mxs: fix flags passed to dmaengine_prep_slave_sg)
> Merging rtc-fixes/rtc-fixes (5f9e832c1370 Linus 5.3-rc1)
> Merging gnss-fixes/gnss-linus (54ecb8f7028c Linux 5.4-rc1)
> Merging hyperv-fixes/hyperv-fixes (590c28b9199c Drivers: hv: vmbus: Fix harmless building warnings without CONFIG_PM_SLEEP)
> Merging soc-fsl-fixes/fix (5674a92ca4b7 soc/fsl/qe: Fix an error code in qe_pin_request())
> Merging risc-v-fixes/fixes (f307307992bf riscv: for C functions called only from assembly, mark with __visible)
> Merging pidfd-fixes/fixes (28f9baed3d50 pidfd: avoid linux/wait.h and sys/wait.h name clashes)
> Merging fpga-fixes/fixes (dec43da46f63 fpga: altera-ps-spi: Fix getting of optional confd gpio)
> Merging spdx/spdx-linus (02dc96ef6c25 Merge git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net)
> Merging gpio-intel-fixes/fixes (7d194c2100ad Linux 5.4-rc4)
> Merging pinctrl-intel-fixes/fixes (67d33aecd030 pinctrl: cherryview: Allocate IRQ chip dynamic)
> Merging erofs-fixes/fixes (da0c9ea146cb Linux 5.4-rc2)
> Merging drm-misc-fixes/for-linux-next-fixes (29cd13cfd762 drm/v3d: Fix memory leak in v3d_submit_cl_ioctl)
> Merging kspp-gustavo/for-next/kspp (da0c9ea146cb Linux 5.4-rc2)
> Merging kbuild/for-next (504db64bc03b scripts: setlocalversion: replace backquote to dollar parenthesis)
> Merging compiler-attributes/compiler-attributes (54ecb8f7028c Linux 5.4-rc1)
> Merging leaks/leaks-next (9e98c678c2d6 Linux 5.1-rc1)
> Merging dma-mapping/for-next (c7d9eccb3c1e mmc: renesas_sdhi_internal_dmac: Add MMC_CAP2_MERGE_CAPABLE)
> Merging asm-generic/master (9b87647c665d asm-generic: add unlikely to default BUG_ON(x))
> Merging arc/for-next (2f4ecf68a048 ARC: mm: tlb flush optim: elide redundant uTLB invalidates for MMUv3)
> Merging arm/for-next (dced4c0e705c ARM: 8928/1: ARM_ERRATA_775420: Spelling s/date/data/)
> Merging arm64/for-next/core (a9011682da8d Merge branches 'for-next/elf-hwcap-docs', 'for-next/smccc-conduit-cleanup', 'for-next/zone-dma', 'for-next/relax-icc_pmr_el1-sync', 'for-next/cortex-strings', 'for-next/double-page-fault' and 'for-next/misc' into for-next/core)
> Merging arm-perf/for-next/perf (c8b0de762e0b perf/smmuv3: use devm_platform_ioremap_resource() to simplify code)
> Merging arm-soc/for-next (a07532ccc0d8 ARM: Document merges)
> Merging amlogic/for-next (a9a67a17edf6 Merge branch 'v5.5/dt64' into tmp/aml-rebuild)
> Merging aspeed/for-next (d547dba956ed dts: ARM: aspeed: Migrate away from aspeed, g[45].* compatibles)
> Merging at91/at91-next (ba9b1009f561 Merge branches 'at91-drivers', 'at91-soc', 'at91-dt' and 'at91-defconfig' into at91-next)
> Merging bcm2835/for-next (f14234184671 Merge branch 'bcm2835-maintainers-next' into for-next)
> Merging imx-mxs/for-next (a233d04cd8ef Merge branch 'imx/defconfig' into for-next)
> Merging keystone/next (35096b5f4619 Merge branch 'for_5.5/driver-soc' into next)
> Merging mediatek/for-next (4ae1ce88e9a0 Merge branch 'v5.3-next/soc' into for-next)
> Merging mvebu/for-next (3aa22be2d6b1 Merge branch 'mvebu/dt64' into mvebu/for-next)
> Merging omap/for-next (4ccc40e783e5 Merge branch 'omap-for-v5.5/dt' into for-next)
> Merging qcom/for-next (ebc327dcaf9b Merge branch 'arm64-for-5.5' into all-for-5.5)
> Merging realtek/for-next (d40ba2e6f211 Merge branch 'v5.5/dt64' into next)
> Merging renesas/next (b55fac938a17 Merge branches 'renesas-arm-soc-for-v5.5', 'renesas-arm64-dt-for-v5.5' and 'renesas-dt-bindings-for-v5.5' into renesas-next)
> Merging reset/reset/next (c2ffa00ad615 reset: document (devm_)reset_control_get_optional variants)
> Merging rockchip/for-next (50b979d111ea Merge branch 'v5.5-armsoc/dts64' into for-next)
> Merging samsung-krzk/for-next (5def578a8bdc Merge branch 'next/soc' into for-next)
> Merging scmi/for-linux-next (db2f481805a9 Merge tag 'juno-update-5.5' of git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux into for-linux-next)
> Merging sunxi/sunxi/for-next (cbff93b859d0 Merge branch 'sunxi/dt-for-5.5' into sunxi/for-next)
> Merging tegra/for-next (564c032098ad Merge branch for-5.5/clk into for-next)
> Merging clk/clk-next (c5fd5bc400d4 Merge branch 'clk-fixes' into clk-next)
> CONFLICT (content): Merge conflict in drivers/clk/imx/clk-imx8mn.c
> Merging clk-samsung/for-next (e9323b664ce2 clk: samsung: exynos5420: Preserve PLL configuration during suspend/resume)
> Merging c6x/for-linux-next (8adcc59974b8 Merge branch 'work.misc' of git://git.kernel.org/pub/scm/linux/kernel/git/viro/vfs)
> Merging csky/linux-next (044cf5e15357 csky: Initial stack protector support)
> Merging h8300/h8300-next (a5de8865cb3e h8300: move definition of __kernel_size_t etc. to posix_types.h)
> Merging ia64/next (0d3d343560ba genirq: remove the is_affinity_mask_valid hook)
> Merging m68k/for-next (7cf78b6b12fd m68k: q40: Fix info-leak in rtc_ioctl)
> Merging m68knommu/for-next (45e9e8abc2ba m68k/coldfire: Use CONFIG_PREEMPTION)
> Merging microblaze/next (22648c989cb8 microblaze: Increase max dtb size to 64K from 32K)
> Merging mips/mips-next (2409839ab6bf MIPS: include: remove unsued header file asm/sgi/sgi.h)
> Merging nds32/next (932296120543 nds32: add new emulations for floating point instruction)
> Merging nios2/for-next (91d99a724e9c nios2: force the string buffer NULL-terminated)
> Merging openrisc/for-next (f3b17320db25 openrisc: map as uncached in ioremap)
> Merging parisc-hd/for-next (52b2d91752a8 parisc: Do not hardcode registers in checksum functions)
> Merging powerpc/next (612ee81b9461 powerpc/papr_scm: Fix an off-by-one check in papr_scm_meta_{get, set})
> Merging fsl/next (8a35879a60be powerpc/fsl_booke/32: Document KASLR implementation)
> Merging soc-fsl/next (eadf0b17b43d bus: fsl-mc: remove explicit device_link_del)
> Merging risc-v/for-next (a4531f3dba5f Merge branch 'next/tlb-opt' into dev/riscv/for-v5.5-rc1)
> Merging sifive/for-next (467e050e9760 Merge branch 'i2c/for-current' of git://git.kernel.org/pub/scm/linux/kernel/git/wsa/linux)
> Merging s390/features (89d0180a60fc s390/Kconfig: add z13s and z14 ZR1 to TUNE descriptions)
> Merging sh/sh-next (baf58858e8b6 sh: prefer __section from compiler_attributes.h)
> CONFLICT (modify/delete): arch/sh/include/uapi/asm/types.h deleted in sh/sh-next and modified in HEAD. Version HEAD of arch/sh/include/uapi/asm/types.h left in tree.
> CONFLICT (modify/delete): arch/sh/include/uapi/asm/setup.h deleted in sh/sh-next and modified in HEAD. Version HEAD of arch/sh/include/uapi/asm/setup.h left in tree.
> $ git rm -f arch/sh/include/uapi/asm/setup.h arch/sh/include/uapi/asm/types.h
> Merging sparc-next/master (b71acb0e3721 Merge branch 'linus' of git://git.kernel.org/pub/scm/linux/kernel/git/herbert/crypto-2.6)
> Merging uml/linux-next (73625ed66389 um: irq: Fix LAST_IRQ usage in init_IRQ())
> Merging xtensa/xtensa-for-next (c61b02fb6c43 Merge branch 'xtensa-5.5-asm-memopt' into xtensa-for-next)
> Merging fscrypt/master (065ab4c4701f docs: ioctl-number: document fscrypt ioctl numbers)
> Merging afs/afs-next (a0753c29004f afs: Support RCU pathwalk)
> Merging btrfs/for-next (03ebed9f9133 Merge branch 'for-next-next-v5.4-20191024' into for-next-20191024)
> Merging ceph/master (25e6be21230d rbd: cancel lock_dwork if the wait is interrupted)
> Merging cifs/for-next (eac95a44f454 cifs: update internal module version number)
> Merging configfs/for-next (e9c03af21cc7 configfs: calculate the symlink target only once)
> Merging ecryptfs/next (b4a81b87a4cf ecryptfs: fix a memory leak bug in ecryptfs_init_messaging())
> Merging erofs/dev (6b42c3370e83 erofs: set iowait for sync decompression)
> Merging ext3/for_next (53cc1bfdf9c6 Pull ext2 fixes from Chengguang.)
> Merging ext4/dev (040823b5372b Merge tag 'unicode-next-v5.4' of https://git.kernel.org/pub/scm/linux/kernel/git/krisman/unicode into dev)
> Merging f2fs/dev (b145b0eb2031 Merge tag 'for-linus' of git://git.kernel.org/pub/scm/virt/kvm/kvm)
> Merging fsverity/fsverity (95ae251fe828 f2fs: add fs-verity support)
> Merging fuse/for-next (091d1a726772 fuse: redundant get_fuse_inode() calls in fuse_writepages_fill())
> Merging jfs/jfs-next (a5fdd713d256 jfs: fix bogus variable self-initialization)
> Merging nfs/linux-next (d6d5df1db6e9 Linux 5.4-rc5)
> Merging nfs-anna/linux-next (e6687f43745b SUNRPC: Destroy the back channel when we destroy the host transport)
> Merging nfsd/nfsd-next (5fcaf6982d11 sunrpc: fix crash when cache_head become valid before update)
> Merging orangefs/for-next (e6b998ab62be orangefs: remove redundant assignment to err)
> Merging overlayfs/overlayfs-next (5c2e9f346b81 ovl: filter of trusted xattr results in audit)
> Merging ubifs/linux-next (6a379f67454a jffs2: Fix memory leak in jffs2_scan_eraseblock() error path)
> Merging v9fs/9p-next (aafee43b7286 9p/vfs_super.c: Remove unused parameter data in v9fs_fill_super)
> Merging xfs/for-next (da1faf13deb0 xfs: consolidate preallocation in xfs_file_fallocate)
> $ git reset --hard HEAD^
> Merging next-20191028 version of xfs
> Merging iomap/iomap-for-next (c039b9979272 iomap: use a srcmap for a read-modify-write I/O)
> Merging djw-vfs/vfs-for-next (7118dd2d41af splice: only read in as much information as there is pipe buffer space)
> Merging file-locks/locks-next (b41dae061bbd Merge tag 'xfs-5.4-merge-7' of git://git.kernel.org/pub/scm/fs/xfs/xfs-linux)
> Merging vfs/for-next (3e501af8dd7b Merge branches 'work.misc', 'work.mount3', 'work.namei', 'work.dcache' and 'work.autofs' into for-next)
> Merging printk/for-next (4a6442ff627f Merge branch 'for-5.5-pr-warn' into for-next)
> Merging pci/next (59a426f044a4 Merge branch 'pci/trivial')
> CONFLICT (content): Merge conflict in arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
> CONFLICT (content): Merge conflict in arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> Merging pstore/for-next/pstore (609488bc979f Linux 5.3-rc2)
> Merging hid/for-next (1b8e121a4d7e Merge branch 'for-5.4/upstream-fixes' into for-next)
> Merging i2c/i2c/for-next (70d0b04517cd Merge branch 'i2c/for-current-fixed' into i2c/for-next)
> Merging i3c/i3c/next (f12b524ea386 i3c: master: use i3c_dev_get_master())
> Merging dmi/master (9a85ac3936ad firmware: dmi: Add dmi_memdev_handle)
> Merging hwmon-staging/hwmon-next (ce94d84d98fb hwmon: (ina3221) Add summation feature support)
> Merging jc_docs/docs-next (b275fb6013df docs: ioctl: fix typo)
> CONFLICT (content): Merge conflict in Documentation/admin-guide/cgroup-v2.rst
> Merging v4l-dvb/master (a4260ea49547 media: sun4i: Add H3 deinterlace driver)
> Merging v4l-dvb-next/master (d45331b00ddb Linux 5.3-rc4)
> Merging fbdev/fbdev-for-next (732146a3f1dc video: fbdev: imxfb: fix a typo in imxfb_probe())
> Merging pm/linux-next (e2fb0928295b Merge branch 'acpi-soc' into linux-next)
> CONFLICT (content): Merge conflict in lib/test_printf.c
> Merging cpufreq-arm/cpufreq/arm/linux-next (e32beb064105 cpufreq: vexpress-spc: find and skip duplicates when merging frequencies)
> Merging cpupower/cpupower (7e5705c635ec tools/power/cpupower: Fix initializer override in hsw_ext_cstates)
> Merging opp/opp/linux-next (c86487ec42bd Merge branch 'opp/fixes' into opp/linux-next)
> Merging thermal/thermal/linux-next (d36c6ff7c829 thermal: no need to set .owner when using module_platform_driver)
> Merging thermal-rzhang/next (54ecb8f7028c Linux 5.4-rc1)
> Merging thermal-soc/next (6c375eccded4 thermal: db8500: Rewrite to be a pure OF sensor)
> Merging ieee1394/for-next (812cd88749e0 firewire: mark expected switch fall-throughs)
> Merging dlm/next (a48f9721e6db dlm: no need to check return value of debugfs_create functions)
> Merging swiotlb/linux-next (4cdfb27ba80d xen/swiotlb: remember having called xen_create_contiguous_region())
> Merging rdma/for-next (c4c8aff5a9dd IB/core: Do not notify GID change event of an unregistered device)
> CONFLICT (content): Merge conflict in drivers/infiniband/hw/mlx5/odp.c
> Merging net-next/master (d5a721c96a44 atm: remove unneeded semicolon)
> CONFLICT (content): Merge conflict in include/linux/netdevice.h
> Merging bpf-next/master (e93d99180abd selftests/bpf: Restore $(OUTPUT)/test_stub.o rule)
> Merging ipsec-next/master (fd1ac07f3f17 xfrm: ifdef setsockopt(UDP_ENCAP_ESPINUDP/UDP_ENCAP_ESPINUDP_NON_IKE))
> Merging mlx5-next/mlx5-next (7d47433cf74f net/mlx5: Expose optimal performance scatter entries capability)
> Merging netfilter-next/master (5b7fe93db008 Merge git://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next)
> Merging nfc-next/master (1f008cfec5d5 NFC: fdp: Fix unused variable warnings)
> CONFLICT (content): Merge conflict in drivers/nfc/st21nfca/se.c
> Merging ipvs-next/master (d54725cd11a5 netfilter: nf_tables: support for multiple devices per netdev hook)
> Merging wireless-drivers-next/master (03029ed42f01 Merge tag 'iwlwifi-next-for-kalle-2019-10-18-2' of git://git.kernel.org/pub/scm/linux/kernel/git/iwlwifi/iwlwifi-next)
> Merging bluetooth/master (492ad783a150 Bluetooth: Fix not using LE_ADV_NONCONN_IND for instance 0)
> Merging mac80211-next/master (3f2aef10ffad mac80211: fix a typo of "function")
> Merging gfs2/for-next (c093004c1047 gfs2: make gfs2_fs_parameters static)
> Merging mtd/mtd/next (b34c095ca609 mtd: st_spi_fsm: remove unused field from struct stfsm)
> Merging nand/nand/next (5121b4219972 dt-bindings: mtd: Add Cadence NAND controller driver)
> Merging spi-nor/spi-nor/next (a5c6603038ca mtd: spi-nor: cadence-quadspi: Fix cqspi_command_read() definition)
> Merging crypto/master (691505a803a7 crypto: ccp - fix uninitialized list head)
> Merging drm/drm-next (3275a71e76fa Merge tag 'drm-next-5.5-2019-10-09' of git://people.freedesktop.org/~agd5f/linux into drm-next)
> Applying: cec: fix up for "cec: add cec_adapter to cec_notifier_cec_adap_unregister()"
> Applying: drm/v3d: Fix double free in v3d_submit_cl_ioctl()
> Merging amdgpu/drm-next (4cdc4f01e50f drm/amdgpu: work around llvm bug #42576)
> CONFLICT (content): Merge conflict in include/uapi/linux/kfd_ioctl.h
> CONFLICT (content): Merge conflict in drivers/gpu/drm/radeon/radeon_drv.c
> CONFLICT (content): Merge conflict in drivers/gpu/drm/amd/powerplay/inc/amdgpu_smu.h
> CONFLICT (content): Merge conflict in drivers/gpu/drm/amd/display/dc/dcn21/Makefile
> CONFLICT (content): Merge conflict in drivers/gpu/drm/amd/display/dc/dcn20/Makefile
> CONFLICT (content): Merge conflict in drivers/gpu/drm/amd/amdkfd/kfd_chardev.c
> CONFLICT (content): Merge conflict in drivers/gpu/drm/amd/amdgpu/amdgpu_vce.h
> CONFLICT (content): Merge conflict in drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c
> Merging drm-intel/for-linux-next (458863e08e13 drm/i915: Mark contents as dirty on a write fault)
> CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/selftests/i915_gem.c
> CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/i915_request.c
> CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/i915_drv.c
> CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gem/i915_gem_pm.c
> CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gem/i915_gem_mman.c
> Merging drm-tegra/drm/tegra/for-next (048bd70876ea drm/tegra: Optionally attach clients to the IOMMU)
> Merging drm-misc/for-linux-next (a39414716ca0 drm/amdgpu: add independent DMA-buf import v9)
> CONFLICT (content): Merge conflict in drivers/gpu/drm/ttm/ttm_bo_util.c
> Merging drm-msm/msm-next (49c4868ab01c drm/msm/dsi: Implement qcom, dsi-phy-regulator-ldo-mode for 28nm PHY)
> Merging mali-dp/for-upstream/mali-dp (f634c6a80287 dt/bindings: display: Add optional property node define for Mali DP500)
> Merging imx-drm/imx-drm/next (4d24376370fb gpu: ipu-v3: image-convert: only sample into the next tile if necessary)
> Merging etnaviv/etnaviv/next (22567d017c2c dt-bindings: etnaviv: Add #cooling-cells)
> Merging regmap/for-next (da0c9ea146cb Linux 5.4-rc2)
> Merging sound/for-next (91636a82044a ALSA: hda: Allow non-Intel device probe gracefully)
> Merging sound-asoc/for-next (50484b6a523a Merge branch 'asoc-5.5' into asoc-next)
> CONFLICT (content): Merge conflict in sound/soc/samsung/Kconfig
> CONFLICT (content): Merge conflict in sound/soc/intel/boards/Kconfig
> Merging modules/modules-next (c3a6cf19e695 export: avoid code duplication in include/linux/export.h)
> Merging input/next (78e45917bf7a Input: wacom_i2c - remove unneeded gpio.h header file)
> Merging block/for-next (8e3b4a8c82ed Merge branch 'for-5.5/io_uring-test' into for-next)
> Merging device-mapper/for-next (13bd677a472d dm cache: fix bugs when a GFP_NOWAIT allocation fails)
> Merging mmc/next (bc33efde76e9 Merge branch 'fixes' into next)
> Merging md/for-next (e820d55cb99d md: fix raid10 hang issue caused by barrier)
> Merging mfd/for-mfd-next (72303a6a9c80 mfd: twl: Endian fixups in i2c write and read wrappers)
> Merging backlight/for-backlight-next (53e492915061 backlight: Kconfig: jornada720: Use CONFIG_PREEMPTION)
> Merging battery/for-next (9480029fe5c2 power: supply: bd70528: Add MODULE_ALIAS to allow module auto loading)
> Merging regulator/for-next (996163b40330 Merge branch 'regulator-5.5' into regulator-next)
> Merging security/next-testing (45893a0abee6 kexec: Fix file verification on S390)
> Merging apparmor/apparmor-next (136db994852a apparmor: increase left match history buffer size)
> Merging integrity/next-integrity (2a7f0e53daf2 ima: ima_api: Use struct_size() in kzalloc())
> Merging keys/keys-next (48274e1e5d24 Merge branch 'notifications-core' into keys-next)
> Merging selinux/next (42345b68c2e3 selinux: default_range glblub implementation)
> Merging smack/for-next (92604e825304 smack: use GFP_NOFS while holding inode_smack::smk_lock)
> Merging tomoyo/master (79c8ca578dbf Revert "printk: Monitor change of console loglevel.")
> Merging tpmdd/next (3dc93ee6fa58 tpm: Switch to platform_get_irq_optional())
> Merging watchdog/master (ca2fc5efffde watchdog: f71808e_wdt: Add F81803 support)
> Merging iommu/next (313df38144c8 Merge branches 'iommu/fixes', 'arm/qcom', 'arm/renesas', 'arm/rockchip', 'arm/mediatek', 'arm/tegra', 'x86/amd', 'x86/vt-d' and 'core' into next)
> Merging vfio/next (026948f01eac vfio/type1: remove hugepage checks in is_invalid_reserved_pfn())
> Merging audit/next (c34c78dfc1fc audit: remove redundant condition check in kauditd_thread())
> Merging devicetree/for-next (589531a027a3 MAINTAINERS: update the list of maintained files for max77650)
> CONFLICT (content): Merge conflict in Documentation/devicetree/bindings/usb/generic-ehci.yaml
> Merging mailbox/mailbox-for-next (556a0964e28c mailbox: qcom-apcs: fix max_register value)
> Merging spi/for-next (847680d0151a Merge remote-tracking branch 'spi/topic/ptp' into spi-next)
> Merging tip/auto-latest (cc24262e1811 Merge branch 'irq/urgent')
> CONFLICT (content): Merge conflict in samples/bpf/Makefile
> CONFLICT (content): Merge conflict in include/linux/security.h
> CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
> Applying: drm/i915: update for mutex_release API change
> Merging clockevents/timers/drivers/next (97c18a4b4c87 clocksource/drivers/renesas-ostm: Use unique device name instead of ostm)
> Merging edac/edac-for-next (466503d6b1b3 EDAC/amd64: Set grain per DIMM)
> Merging irqchip/irq/irqchip-next (41860cc44704 irqchip/sifive-plic: Skip contexts except supervisor in plic_init())
> Merging ftrace/for-next (8ed4889eb831 selftests/ftrace: Fix same probe error test)
> Merging rcu/rcu/next (a48e49e63a72 Merge branches 'replace.2019.10.28a', 'doc.2019.10.05a', 'fixes.2019.10.05a', 'nohz.2019.10.28a', 'torture.2019.10.05a' and 'lkmm.2019.10.05a' into HEAD)
> Merging kvm/linux-next (20baa8e515a5 Merge tag 'kvm-ppc-fixes-5.4-1' of git://git.kernel.org/pub/scm/linux/kernel/git/paulus/powerpc into HEAD)
> Merging kvm-arm/next (ab71d9531316 Merge remote-tracking branch 'kvmarm/misc-5.5' into kvmarm/next)
> Merging kvm-ppc/kvm-ppc-next (55d7004299eb KVM: PPC: Book3S HV: Reject mflags=2 (LPCR[AIL]=2) ADDR_TRANS_MODE mode)
> CONFLICT (content): Merge conflict in include/uapi/linux/kvm.h
> Merging kvms390/next (c7b7de631246 KVM: s390: Do not yield when target is already running)
> Merging xen-tip/linux-next (6ccae60d014d xen: issue deprecation warning for 32-bit pv guest)
> Merging percpu/for-next (825dbc6ff7a3 percpu: add __percpu to SHIFT_PERCPU_PTR)
> Merging workqueues/for-next (30ae2fc0a75e workqueue: Minor follow-ups to the rescuer destruction change)
> Merging drivers-x86/for-next (fa2a590d0d02 platform/x86: intel_punit_ipc: Drop useless label)
> Merging chrome-platform/for-next (c402f645d36c platform/chrome: Put docs with the code)
> Merging hsi/for-next (c1030cd45619 HSI: Remove dev_err() usage after platform_get_irq())
> Merging leds/for-next (448d6fcb7a52 leds: pca953x: Use of_device_get_match_data())
> Merging ipmi/for-next (4aa7afb0ee20 ipmi: Fix memory leak in __ipmi_bmc_register)
> Merging driver-core/driver-core-next (8f677bc819e7 Merge 5.4-rc5 into driver-core-next)
> Merging usb/usb-next (d19f1d44e743 Merge 5.4-rc5 into usb-next)
> Merging usb-gadget/next (18a93cd38be3 usb: gadget: net2280: Add workaround for AB chip Errata 11)
> Merging usb-serial/usb-next (ebd09f1cd417 USB: serial: pl2303: add support for PL2303HXN)
> Merging usb-chipidea-next/ci-for-usb-next (973ce009b308 usb: chipidea: imx: check data->usbmisc_data against NULL before access)
> Merging phy-next/next (a88c85ee2ea3 phy: qcom-qmp: Add SM8150 QMP UFS PHY support)
> Merging tty/tty-next (c2a552197106 Merge 5.4-rc5 into tty-next)
> Merging char-misc/char-misc-next (da80d2e516eb Merge 5.4-rc5 into char-misc-next)
> CONFLICT (content): Merge conflict in samples/Makefile
> CONFLICT (content): Merge conflict in samples/Kconfig
> Merging extcon/extcon-next (6942635032cf extcon: sm5502: Reset registers during initialization)
> Merging soundwire/next (3ccb8551f52e soundwire: cadence_master: make clock stop exit configurable on init)
> Merging thunderbolt/next (b406357c572b thunderbolt: Add 'generation' attribute for devices)
> Merging staging/staging-next (cce430450e19 Merge 5.4-rc5 into staging-next)
> Merging mux/for-next (05fb8284a417 Merge branch 'i2c-mux/for-next' into for-next)
> Merging icc/icc-next (0a6d4cf36538 interconnect: qcom: add msm8974 driver)
> Merging slave-dma/next (53596dfa5980 dmaengine: fsl-dpaa2-qdma: export the symbols)
> Merging cgroup/for-next (8c26b3a71bdf Merge branch 'for-5.5' into for-next)
> Merging scsi/for-next (4b9029e0a68d Merge branch 'misc' into for-next)
> CONFLICT (content): Merge conflict in drivers/scsi/scsi_sysfs.c
> Merging scsi-mkp/for-next (c2a18e314332 Merge branch '5.4/scsi-fixes' into 5.5/scsi-next)
> Merging vhost/linux-next (309ec777f3d2 vhost: last descriptor must have NEXT clear)
> CONFLICT (content): Merge conflict in drivers/acpi/processor_idle.c
> Merging rpmsg/for-next (6018d5342dbe Merge branches 'hwspinlock-next', 'rpmsg-next' and 'rproc-next' into for-next)
> Merging gpio/for-next (acba5fc211ee Merge branch 'devel' into for-next)
> Merging gpio-brgl/gpio/for-next (2b9f48e93407 gpio: rcar: Use proper irq_chip name)
> Merging gpio-intel/for-next (7d194c2100ad Linux 5.4-rc4)
> Merging pinctrl/for-next (551d5106b732 Revert "pinctrl: iproc: use unique name for irq chip")
> Merging pinctrl-intel/for-next (e72cbc1e8d51 pinctrl: baytrail: Group GPIO IRQ chip initialization)
> Merging pinctrl-samsung/for-next (a322b3377f4b pinctrl: samsung: Fix device node refcount leaks in init code)
> Merging pwm/for-next (9e1b4999a169 pwm: stm32: Pass breakinput instead of its values)
> Merging userns/for-next (318759b4737c signal/x86: Move tsk inside of CONFIG_MEMORY_FAILURE in do_sigbus)
> Merging ktest/for-next (aecea57f84b0 ktest: Fix some typos in config-bisect.pl)
> Merging random/dev (58be0106c530 random: fix soft lockup when trying to read from an uninitialized blocking pool)
> Merging kselftest/next (54ecb8f7028c Linux 5.4-rc1)
> Merging y2038/y2038 (0682b746099a Merge tag 'compat-ioctl-5.5' of git://git.kernel.org/pub/scm/linux/kernel/git/arnd/playground into y2038)
> Merging livepatching/for-next (010e85f9e47c Merge branch 'for-5.5/selftests' into for-next)
> Merging coresight/next (b3730676c986 coresight: Add explicit architecture dependency)
> Merging rtc/rtc-next (71b81448abf5 rtc: cros-ec: let the core handle rtc range)
> Merging nvdimm/libnvdimm-for-next (4c806b897d60 libnvdimm/region: Enable MAP_SYNC for volatile regions)
> Merging at24/at24/for-next (285be87c79e1 eeprom: at24: Improve confusing log message)
> Merging ntb/ntb-next (54ecb8f7028c Linux 5.4-rc1)
> Merging kspp/for-next/kspp (6f88ed285e67 Merge branch 'fixes/usercopy/highmem-fromlist' into for-next/kspp)
> Merging cisco/for-next (9e98c678c2d6 Linux 5.1-rc1)
> Merging gnss/gnss-next (54ecb8f7028c Linux 5.4-rc1)
> Merging fsi/next (799e064cc79e fsi: scom: Don't abort operations for minor errors)
> Merging slimbus/for-next (54ecb8f7028c Linux 5.4-rc1)
> Merging nvmem/for-next (6bd17868c992 nvmem: add Rockchip OTP driver)
> Merging xarray/xarray (91abab83839a XArray: Fix xas_next() with a single entry at 0)
> Merging hyperv/hyperv-next (bcd7a5a2169a Drivers: hv: vmbus: Add module parameter to cap the VMBus version)
> Merging auxdisplay/auxdisplay (54ecb8f7028c Linux 5.4-rc1)
> Merging kgdb/kgdb/for-next (c58ff643763c kdb: Tweak escape handling for vi users)
> Merging pidfd/for-next (1282387e9dca Merge branch 'pidfd' into for-next)
> Merging devfreq/for-next (d2f5fccd1ac9 PM / devfreq: Make log message more explicit when devfreq device already exists)
> Merging hmm/hmm (54ecb8f7028c Linux 5.4-rc1)
> Merging fpga/for-next (fddc9fcbe69a fpga: dfl: fme: add power management support)
> Merging kunit/test (1cbeab1b242d ext4: add kunit test for decoding extended timestamps)
> Merging cel/cel-next (fd86460a2c94 xprtrdma: Replace dprintk in xprt_rdma_set_port)
> Merging akpm-current/current (080dba92bc46 ipc/msg.c: consolidate all xxxctl_down() functions)
> $ git checkout -b akpm remotes/origin/akpm/master
> Applying: drivers/block/null_blk_main.c: fix layout
> Applying: drivers/block/null_blk_main.c: fix uninitialized var warnings
> Applying: pinctrl: fix pxa2xx.c build warnings
> Applying: lib/list-test.c: add a test for the 'list' doubly linked list
> Applying: lib/list-test: add a test for the 'list' doubly linked list
> Applying: lib/genalloc.c: export symbol addr_in_gen_pool
> Applying: lib/genalloc.c: rename addr_in_gen_pool to gen_pool_has_addr
> Applying: Documentation: rename addr_in_gen_pool to gen_pool_has_addr
> Applying: kernel-hacking: group sysrq/kgdb/ubsan into 'Generic Kernel Debugging Instruments'
> Applying: kernel-hacking: create submenu for arch special debugging options
> CONFLICT (content): Merge conflict in lib/Kconfig.debug
> Applying: kernel-hacking: group kernel data structures debugging together
> Applying: kernel-hacking: move kernel testing and coverage options to same submenu
> Applying: kernel-hacking: move Oops into 'Lockups and Hangs'
> Applying: kernel-hacking: move SCHED_STACK_END_CHECK after DEBUG_STACK_USAGE
> Applying: kernel-hacking: create a submenu for scheduler debugging options
> Applying: kernel-hacking: move DEBUG_BUGVERBOSE to 'printk and dmesg options'
> Applying: kernel-hacking: move DEBUG_FS to 'Generic Kernel Debugging Instruments'
> Applying: bitops: introduce the for_each_set_clump8 macro
> Applying: linux/bitmap.h: fix potential sign-extension overflow
> Applying: bitops-introduce-the-for_each_set_clump8-macro-fix-fix
> Applying: linux/bitopts.h: Add for_each_set_clump8 documentation
> Applying: lib/test_bitmap.c: add for_each_set_clump8 test cases
> Applying: gpio: 104-dio-48e: utilize for_each_set_clump8 macro
> Applying: gpio: 104-idi-48: utilize for_each_set_clump8 macro
> Applying: gpio: gpio-mm: utilize for_each_set_clump8 macro
> Applying: gpio: ws16c48: utilize for_each_set_clump8 macro
> Applying: gpio: pci-idio-16: utilize for_each_set_clump8 macro
> Applying: gpio: pcie-idio-24: utilize for_each_set_clump8 macro
> Applying: gpio: uniphier: utilize for_each_set_clump8 macro
> Applying: gpio: 74x164: utilize the for_each_set_clump8 macro
> Applying: thermal: intel: intel_soc_dts_iosf: Utilize for_each_set_clump8 macro
> Applying: gpio: pisosr: utilize the for_each_set_clump8 macro
> Applying: gpio: max3191x: utilize the for_each_set_clump8 macro
> Applying: gpio: pca953x: utilize the for_each_set_clump8 macro
> Applying: lib/test_bitmap: force argument of bitmap_parselist_user() to proper address space
> Applying: lib/test_bitmap: undefine macros after use
> Applying: lib/test_bitmap: name EXP_BYTES properly
> Applying: lib/test_bitmap: rename exp to exp1 to avoid ambiguous name
> Applying: lib/test_bitmap: move exp1 and exp2 upper for others to use
> Applying: lib/test_bitmap: fix comment about this file
> Applying: lib/bitmap: introduce bitmap_replace() helper
> Applying: gpio: pca953x: remove redundant variable and check in IRQ handler
> Applying: gpio: pca953x: use input from regs structure in pca953x_irq_pending()
> Applying: gpio: pca953x: convert to use bitmap API
> Applying: gpio: pca953x: tighten up indentation
> Applying: drivers/tty/serial/sh-sci.c: suppress warning
> Applying: drivers/media/platform/sti/delta/delta-ipc.c: fix read buffer overflow
> Merging akpm/master (b24f99062c29 drivers/media/platform/sti/delta/delta-ipc.c: fix read buffer overflow)

When I'm building an arm kernel with this .config [1], I can see this
build error on next tag next-20191029 and next-20191030. Tag
next-20191028 built fine.


$ make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- -skj$(getconf
_NPROCESSORS_ONLN) O=obj-arm-20191029 zImage
arm-linux-gnueabi-ld: kernel/trace/trace_preemptirq.o: in function
`trace_hardirqs_on':
trace_preemptirq.c:(.text+0x2a0): undefined reference to `return_address'
arm-linux-gnueabi-ld: trace_preemptirq.c:(.text+0x2dc): undefined
reference to `return_address'
arm-linux-gnueabi-ld: kernel/trace/trace_preemptirq.o: in function
`trace_hardirqs_off':
trace_preemptirq.c:(.text+0x468): undefined reference to `return_address'
arm-linux-gnueabi-ld: trace_preemptirq.c:(.text+0x494): undefined
reference to `return_address'
arm-linux-gnueabi-ld: kernel/trace/trace_irqsoff.o: in function
`start_critical_timings':
trace_irqsoff.c:(.text+0x798): undefined reference to `return_address'
arm-linux-gnueabi-ld:
kernel/trace/trace_irqsoff.o:trace_irqsoff.c:(.text+0xed4): more
undefined references to `return_address' follow
make[1]: *** [/srv/src/kernel/next-testing/Makefile:1074: vmlinux] Error 1
make[1]: Target 'zImage' not remade because of errors.
make: *** [Makefile:179: sub-make] Error 2
make: Target 'zImage' not remade because of errors.


Has anyone else seen this ?

Cheers,
Anders
[1] http://snapshots.linaro.org/openembedded/lkft/lkft/sumo/am57xx-evm/lkft/linux-next/635/config

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

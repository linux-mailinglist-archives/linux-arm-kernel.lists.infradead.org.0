Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 921DE57C7E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:52:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=G42+OzcxAmRURT9pqGS7dSXcnB8aIpir1gJ+OUMl7jc=; b=ooTQ/IU/oJ2recTS55sW+sPSss
	3+g/YAXsLF4+In3QYRyOsmXxPn2m/gXOnGbcfHj9XezislUEjfAKaZMTBt0nFxdA6SioCaTlPKZyI
	dLcbKERwgRpfBEVc2J7g7ZxZaqvxmRZIZEOozjpUii3CTe+vnK7YtaiR2cRDOiPp+1LfRFpBZaoag
	JtCJurl5ZRMteLrRCSen3rR8FgLrJf9tIkg2GfCuUTJcnDxMdH6BhzHabPWmct60f6wI+6eIQZZiX
	rgBzDdc4YGGzQoOHeipjZAeGIf/7cO1zGKp5TnbS5ezV8p9yAeXBAi6in1Lk8R5w+3YBn4YHyPIDL
	9Wb3LO9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOGQ-00078Q-9X; Thu, 27 Jun 2019 06:52:10 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO8e-0006KM-V4; Thu, 27 Jun 2019 06:44:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aIKiOjAhhvfCXjYhVAuU1vh2p2gJoWXv3sKENYhldGk=; b=fqWWin6b9+JXRFYS7VaS7gH+p
 rgkybCM6xY3akiAiLTW4ZU2aozndDAZUWtxS0U2ZMsYyHuwweSjquHpoybMDJRKtLvAF/9Bn0VVrt
 ZpoPPI2RnDxS9/k9gHNwXrQ+sx/yZIfPt875UXyipHJ18rxVb4BWrhiHTYMR+M5Ec0MTqAwxZ3THY
 dV+eYx39+ACOiOb3e9Ss8zPfnJ00LXGN0p2zL1XouXiLh46nESpebQ27AXNKU0Y8iAC3EhiGe1EBp
 69+B+alMFSv+r5i9wMP2B1CZBcmL9xZzxJfF+3tXP+tWlBQJuZt+8+eHjh5uSVx+VE633SwvJZ9WZ
 WzR6wUiXA==;
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgJVk-0005Vc-GV; Thu, 27 Jun 2019 01:47:42 +0000
Received: from grover.flets-west.jp (softbank126125154139.bbtec.net
 [126.125.154.139]) (authenticated)
 by conuserg-08.nifty.com with ESMTP id x5R1kN11032702;
 Thu, 27 Jun 2019 10:46:27 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com x5R1kN11032702
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1561599988;
 bh=aIKiOjAhhvfCXjYhVAuU1vh2p2gJoWXv3sKENYhldGk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NHY7Z2Syp8o2Am3IVahCLQwav/i9QadtRResANhSU3v3mT9zQbKzuSYuLCyD5pmrQ
 6HtmpAlgsVqfjPF1EW0rdpL1QD4wiAjl36d0bwUUbmh8Tkl98wdi9FtR+RsOtXLuMF
 p75HHzp9O/uQz+4MUAdPFkB2mqE1LZoBJP7/WpLgvOf6yGBzk8XiiuRW27VVVdG9mf
 utJXnjUqnWYWEaHAD4yHAjOwY+7YTLbYvI2aKHUfEqtZjt0VIm9/0aAev4a+IGmQBw
 /hNrPwfkoCT3WPhF+HTdnhsMt4RqHXUKbwjvl7efGBRSH2dnuNfwoA68LxsMW0tBCy
 OT0Pw0zvZ8KBQ==
X-Nifty-SrcIP: [126.125.154.139]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-kbuild@vger.kernel.org
Subject: [PATCH v2 4/4] kbuild: compile-test kernel headers to ensure they are
 self-contained
Date: Thu, 27 Jun 2019 10:46:17 +0900
Message-Id: <20190627014617.600-5-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190627014617.600-1-yamada.masahiro@socionext.com>
References: <20190627014617.600-1-yamada.masahiro@socionext.com>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Song Liu <songliubraving@fb.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Sam Ravnborg <sam@ravnborg.org>, Kees Cook <keescook@chromium.org>,
 xdp-newbies@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 Anton Vorontsov <anton@enomsg.org>, John Fastabend <john.fastabend@gmail.com>,
 Yonghong Song <yhs@fb.com>, Jesper Dangaard Brouer <hawk@kernel.org>,
 Michal Marek <michal.lkml@markovi.net>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Tony Luck <tony.luck@intel.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Martin KaFai Lau <kafai@fb.com>, Colin Cross <ccross@android.com>,
 bpf@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The headers in include/ are globally used in the kernel source tree
to provide common APIs. They are included from external modules, too.

It will be useful to make as many headers self-contained as possible
so that we do not have to rely on a specific include order.

There are more than 4000 headers in include/. In my rough analysis,
70% of them are already self-contained. With efforts, most of them
can be self-contained.

For now, we must exclude more than 1000 headers just because they
cannot be compiled as standalone units. I added them to header-test-.
The list was mostly generated by a script, so should be checked later.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

Changes in v2:
  - Add everything to test coverage, and exclude broken ones
  - Rename 'Makefile' to 'Kbuild'
  - Add CONFIG_KERNEL_HEADER_TEST option

 Makefile       |    1 +
 include/Kbuild | 1134 ++++++++++++++++++++++++++++++++++++++++++++++++
 init/Kconfig   |   11 +
 3 files changed, 1146 insertions(+)
 create mode 100644 include/Kbuild

diff --git a/Makefile b/Makefile
index 7f293b0431fe..1028f270167d 100644
--- a/Makefile
+++ b/Makefile
@@ -611,6 +611,7 @@ drivers-y	:= drivers/ sound/
 drivers-$(CONFIG_SAMPLES) += samples/
 net-y		:= net/
 libs-y		:= lib/
+libs-$(CONFIG_KERNEL_HEADER_TEST) += include/
 core-y		:= usr/
 virt-y		:= virt/
 endif # KBUILD_EXTMOD
diff --git a/include/Kbuild b/include/Kbuild
new file mode 100644
index 000000000000..76c81b989030
--- /dev/null
+++ b/include/Kbuild
@@ -0,0 +1,1134 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+# The following are excluded for now just because they fail to build.
+#
+# Do not add a new header to the list without legitimate reason.
+# Please consider to fix the header first.
+#
+# Sorted alphabetically.
+header-test-			+= acpi/acbuffer.h
+header-test-			+= acpi/acpi_bus.h
+header-test-			+= acpi/acpi_drivers.h
+header-test-			+= acpi/acpi.h
+header-test-			+= acpi/acpi_io.h
+header-test-			+= acpi/acpi_lpat.h
+header-test-			+= acpi/acpiosxf.h
+header-test-			+= acpi/acpixf.h
+header-test-			+= acpi/acrestyp.h
+header-test-			+= acpi/actbl1.h
+header-test-			+= acpi/actbl2.h
+header-test-			+= acpi/actbl3.h
+header-test-			+= acpi/actbl.h
+header-test-			+= acpi/actypes.h
+header-test-			+= acpi/battery.h
+header-test-			+= acpi/cppc_acpi.h
+header-test-			+= acpi/nfit.h
+header-test-			+= acpi/platform/acenvex.h
+header-test-			+= acpi/platform/acenv.h
+header-test-			+= acpi/platform/acintel.h
+header-test-			+= acpi/platform/aclinuxex.h
+header-test-			+= acpi/platform/aclinux.h
+header-test-			+= acpi/processor.h
+header-test-			+= clocksource/timer-sp804.h
+header-test-			+= crypto/cast_common.h
+header-test-			+= crypto/internal/cryptouser.h
+header-test-			+= crypto/pkcs7.h
+header-test-			+= crypto/poly1305.h
+header-test-			+= crypto/sha3.h
+header-test-			+= drm/ati_pcigart.h
+header-test-			+= drm/bridge/dw_hdmi.h
+header-test-			+= drm/bridge/dw_mipi_dsi.h
+header-test-			+= drm/drm_audio_component.h
+header-test-			+= drm/drm_auth.h
+header-test-			+= drm/drm_debugfs_crc.h
+header-test-			+= drm/drm_debugfs.h
+header-test-			+= drm/drm_displayid.h
+header-test-			+= drm/drm_fb_cma_helper.h
+header-test-			+= drm/drm_fixed.h
+header-test-			+= drm/drm_format_helper.h
+header-test-			+= drm/drm_lease.h
+header-test-			+= drm/drm_legacy.h
+header-test-			+= drm/drm_plane_helper.h
+header-test-			+= drm/drm_rect.h
+header-test-			+= drm/i915_component.h
+header-test-			+= drm/intel-gtt.h
+header-test-			+= drm/tinydrm/tinydrm-helpers.h
+header-test-			+= drm/ttm/ttm_debug.h
+header-test-			+= keys/asymmetric-parser.h
+header-test-			+= keys/trusted.h
+header-test-			+= kvm/arm_arch_timer.h
+header-test-			+= kvm/arm_pmu.h
+header-test-$(CONFIG_ARM)	+= kvm/arm_psci.h
+header-test-$(CONFIG_ARM64)	+= kvm/arm_psci.h
+header-test-			+= kvm/arm_vgic.h
+header-test-			+= linux/8250_pci.h
+header-test-			+= linux/adxl.h
+header-test-			+= linux/agpgart.h
+header-test-			+= linux/alcor_pci.h
+header-test-			+= linux/amba/clcd.h
+header-test-			+= linux/amba/pl080.h
+header-test-			+= linux/amd-iommu.h
+header-test-			+= linux/a.out.h
+header-test-$(CONFIG_ARM)	+= linux/arm-cci.h
+header-test-$(CONFIG_ARM64)	+= linux/arm-cci.h
+header-test-			+= linux/arm_sdei.h
+header-test-			+= linux/asn1_decoder.h
+header-test-			+= linux/ata_platform.h
+header-test-			+= linux/ath9k_platform.h
+header-test-			+= linux/atm_tcp.h
+header-test-			+= linux/atomic-fallback.h
+header-test-			+= linux/avf/virtchnl.h
+header-test-			+= linux/bcm47xx_sprom.h
+header-test-			+= linux/bcma/bcma_driver_gmac_cmn.h
+header-test-			+= linux/bcma/bcma_driver_mips.h
+header-test-			+= linux/bcma/bcma_driver_pcie2.h
+header-test-			+= linux/bcma/bcma_driver_pci.h
+header-test-			+= linux/bit_spinlock.h
+header-test-			+= linux/blk-mq-rdma.h
+header-test-			+= linux/blockgroup_lock.h
+header-test-			+= linux/bma150.h
+header-test-			+= linux/bpf_lirc.h
+header-test-			+= linux/bpf_types.h
+header-test-			+= linux/btf.h
+header-test-			+= linux/btree-128.h
+header-test-			+= linux/btree-type.h
+header-test-$(CONFIG_CPU_BIG_ENDIAN) += linux/byteorder/big_endian.h
+header-test-			+= linux/byteorder/generic.h
+header-test-$(CONFIG_CPU_LITTLE_ENDIAN) += linux/byteorder/little_endian.h
+header-test-			+= linux/c2port.h
+header-test-			+= linux/can/dev/peak_canfd.h
+header-test-			+= linux/can/platform/cc770.h
+header-test-			+= linux/can/platform/sja1000.h
+header-test-			+= linux/ceph/ceph_features.h
+header-test-			+= linux/ceph/ceph_frag.h
+header-test-			+= linux/ceph/ceph_fs.h
+header-test-			+= linux/ceph/debugfs.h
+header-test-			+= linux/ceph/msgr.h
+header-test-			+= linux/ceph/rados.h
+header-test-			+= linux/cgroup_subsys.h
+header-test-			+= linux/clk/sunxi-ng.h
+header-test-			+= linux/clk/ti.h
+header-test-			+= linux/cn_proc.h
+header-test-			+= linux/coda_psdev.h
+header-test-			+= linux/compaction.h
+header-test-			+= linux/console_struct.h
+header-test-			+= linux/count_zeros.h
+header-test-			+= linux/cs5535.h
+header-test-			+= linux/cuda.h
+header-test-			+= linux/cyclades.h
+header-test-			+= linux/delayacct.h
+header-test-			+= linux/delayed_call.h
+header-test-			+= linux/devpts_fs.h
+header-test-			+= linux/dio.h
+header-test-			+= linux/dirent.h
+header-test-			+= linux/dlm_plock.h
+header-test-			+= linux/dma-debug.h
+header-test-			+= linux/dma/mmp-pdma.h
+header-test-			+= linux/dma/sprd-dma.h
+header-test-			+= linux/dns_resolver.h
+header-test-			+= linux/drbd_genl_api.h
+header-test-			+= linux/drbd_genl.h
+header-test-			+= linux/dw_apb_timer.h
+header-test-			+= linux/dynamic_queue_limits.h
+header-test-			+= linux/ecryptfs.h
+header-test-			+= linux/edma.h
+header-test-			+= linux/eeprom_93cx6.h
+header-test-			+= linux/efs_vh.h
+header-test-			+= linux/elevator.h
+header-test-			+= linux/elfcore-compat.h
+header-test-			+= linux/error-injection.h
+header-test-			+= linux/errseq.h
+header-test-			+= linux/eventpoll.h
+header-test-			+= linux/ext2_fs.h
+header-test-			+= linux/f75375s.h
+header-test-			+= linux/falloc.h
+header-test-			+= linux/fbcon.h
+header-test-			+= linux/firmware/intel/stratix10-svc-client.h
+header-test-			+= linux/firmware/meson/meson_sm.h
+header-test-			+= linux/firmware/trusted_foundations.h
+header-test-			+= linux/firmware/xlnx-zynqmp.h
+header-test-			+= linux/fixp-arith.h
+header-test-			+= linux/flat.h
+header-test-			+= linux/fsi-occ.h
+header-test-			+= linux/fsi-sbefifo.h
+header-test-			+= linux/fsl/bestcomm/ata.h
+header-test-			+= linux/fsl/bestcomm/bestcomm.h
+header-test-			+= linux/fsl/bestcomm/bestcomm_priv.h
+header-test-			+= linux/fsl/bestcomm/fec.h
+header-test-			+= linux/fsl/bestcomm/gen_bd.h
+header-test-			+= linux/fsl/bestcomm/sram.h
+header-test-			+= linux/fsldma.h
+header-test-			+= linux/fsl_hypervisor.h
+header-test-			+= linux/fs_types.h
+header-test-			+= linux/fs_uart_pd.h
+header-test-			+= linux/ftrace_irq.h
+header-test-			+= linux/genl_magic_func.h
+header-test-			+= linux/genl_magic_struct.h
+header-test-			+= linux/gpio/aspeed.h
+header-test-			+= linux/gpio/gpio-reg.h
+header-test-			+= linux/hid-debug.h
+header-test-			+= linux/hiddev.h
+header-test-			+= linux/hippidevice.h
+header-test-			+= linux/hmm.h
+header-test-			+= linux/hp_sdc.h
+header-test-			+= linux/huge_mm.h
+header-test-			+= linux/hugetlb_cgroup.h
+header-test-			+= linux/hugetlb_inline.h
+header-test-			+= linux/hwmon-vid.h
+header-test-			+= linux/i2c-algo-pca.h
+header-test-			+= linux/i2c-algo-pcf.h
+header-test-			+= linux/i8042.h
+header-test-			+= linux/idle_inject.h
+header-test-			+= linux/if_frad.h
+header-test-			+= linux/if_rmnet.h
+header-test-			+= linux/if_tap.h
+header-test-			+= linux/iio/accel/kxcjk_1013.h
+header-test-			+= linux/iio/adc/ad_sigma_delta.h
+header-test-			+= linux/iio/buffer-dma.h
+header-test-			+= linux/iio/dac/ad5421.h
+header-test-			+= linux/iio/dac/ad5504.h
+header-test-			+= linux/iio/dac/ad5791.h
+header-test-			+= linux/iio/dac/max517.h
+header-test-			+= linux/iio/dac/mcp4725.h
+header-test-			+= linux/iio/frequency/ad9523.h
+header-test-			+= linux/iio/frequency/adf4350.h
+header-test-			+= linux/iio/hw-consumer.h
+header-test-			+= linux/iio/imu/adis.h
+header-test-			+= linux/iio/sysfs.h
+header-test-			+= linux/iio/timer/stm32-timer-trigger.h
+header-test-			+= linux/iio/triggered_event.h
+header-test-			+= linux/iio/trigger.h
+header-test-			+= linux/imx-media.h
+header-test-			+= linux/inet_diag.h
+header-test-			+= linux/init_ohci1394_dma.h
+header-test-			+= linux/initrd.h
+header-test-			+= linux/input/adp5589.h
+header-test-			+= linux/input/bu21013.h
+header-test-			+= linux/input/cma3000.h
+header-test-			+= linux/input/kxtj9.h
+header-test-			+= linux/input/lm8333.h
+header-test-			+= linux/input/sparse-keymap.h
+header-test-			+= linux/input/touchscreen.h
+header-test-			+= linux/input/tps6507x-ts.h
+header-test-$(CONFIG_X86)	+= linux/intel-iommu.h
+header-test-			+= linux/intel-ish-client-if.h
+header-test-			+= linux/intel-pti.h
+header-test-			+= linux/intel-svm.h
+header-test-			+= linux/ioc3.h
+header-test-			+= linux/ipack.h
+header-test-$(CONFIG_ARM)	+= linux/irqchip/arm-gic-v3.h
+header-test-$(CONFIG_ARM64)	+= linux/irqchip/arm-gic-v3.h
+header-test-			+= linux/irqchip/arm-gic-v4.h
+header-test-			+= linux/irqchip/irq-sa11x0.h
+header-test-			+= linux/irqchip/mxs.h
+header-test-			+= linux/irqchip/versatile-fpga.h
+header-test-			+= linux/irq_cpustat.h
+header-test-			+= linux/irqdesc.h
+header-test-			+= linux/irqflags.h
+header-test-			+= linux/irq_poll.h
+header-test-			+= linux/iscsi_boot_sysfs.h
+header-test-			+= linux/isdn/capiutil.h
+header-test-			+= linux/isdn/hdlc.h
+header-test-			+= linux/isdn_ppp.h
+header-test-			+= linux/jz4740-adc.h
+header-test-			+= linux/kasan.h
+header-test-			+= linux/kcore.h
+header-test-			+= linux/kdev_t.h
+header-test-			+= linux/kernelcapi.h
+header-test-			+= linux/khugepaged.h
+header-test-			+= linux/kobject_ns.h
+header-test-			+= linux/kobj_map.h
+header-test-			+= linux/kvm_host.h
+header-test-			+= linux/kvm_irqfd.h
+header-test-			+= linux/kvm_para.h
+header-test-			+= linux/lantiq.h
+header-test-			+= linux/lapb.h
+header-test-			+= linux/latencytop.h
+header-test-			+= linux/led-lm3530.h
+header-test-			+= linux/leds-bd2802.h
+header-test-			+= linux/leds-lp3944.h
+header-test-			+= linux/leds-lp3952.h
+header-test-			+= linux/leds_pwm.h
+header-test-			+= linux/license.h
+header-test-			+= linux/lis3lv02d.h
+header-test-			+= linux/list_bl.h
+header-test-			+= linux/list_lru.h
+header-test-			+= linux/list_nulls.h
+header-test-			+= linux/lockd/share.h
+header-test-			+= linux/lzo.h
+header-test-			+= linux/mailbox/zynqmp-ipi-message.h
+header-test-			+= linux/maple.h
+header-test-			+= linux/mbcache.h
+header-test-			+= linux/mbus.h
+header-test-			+= linux/mc146818rtc.h
+header-test-			+= linux/mc6821.h
+header-test-			+= linux/mdev.h
+header-test-			+= linux/mem_encrypt.h
+header-test-			+= linux/memfd.h
+header-test-			+= linux/mfd/88pm860x.h
+header-test-			+= linux/mfd/abx500/ab8500-bm.h
+header-test-			+= linux/mfd/abx500/ab8500-gpadc.h
+header-test-			+= linux/mfd/adp5520.h
+header-test-			+= linux/mfd/arizona/pdata.h
+header-test-			+= linux/mfd/as3711.h
+header-test-			+= linux/mfd/cros_ec_commands.h
+header-test-			+= linux/mfd/da903x.h
+header-test-			+= linux/mfd/da9055/pdata.h
+header-test-			+= linux/mfd/da9063/pdata.h
+header-test-			+= linux/mfd/db8500-prcmu.h
+header-test-			+= linux/mfd/dbx500-prcmu.h
+header-test-			+= linux/mfd/dln2.h
+header-test-			+= linux/mfd/dm355evm_msp.h
+header-test-			+= linux/mfd/ds1wm.h
+header-test-			+= linux/mfd/ezx-pcap.h
+header-test-			+= linux/mfd/intel_msic.h
+header-test-			+= linux/mfd/janz.h
+header-test-			+= linux/mfd/kempld.h
+header-test-			+= linux/mfd/lm3533.h
+header-test-			+= linux/mfd/lp8788-isink.h
+header-test-			+= linux/mfd/lpc_ich.h
+header-test-			+= linux/mfd/max77693.h
+header-test-			+= linux/mfd/max8998-private.h
+header-test-			+= linux/mfd/menelaus.h
+header-test-			+= linux/mfd/mt6397/core.h
+header-test-			+= linux/mfd/pcf50633/backlight.h
+header-test-			+= linux/mfd/rc5t583.h
+header-test-			+= linux/mfd/retu.h
+header-test-			+= linux/mfd/samsung/core.h
+header-test-			+= linux/mfd/si476x-platform.h
+header-test-			+= linux/mfd/si476x-reports.h
+header-test-			+= linux/mfd/sky81452.h
+header-test-			+= linux/mfd/smsc.h
+header-test-			+= linux/mfd/sta2x11-mfd.h
+header-test-			+= linux/mfd/stmfx.h
+header-test-			+= linux/mfd/tc3589x.h
+header-test-			+= linux/mfd/tc6387xb.h
+header-test-			+= linux/mfd/tc6393xb.h
+header-test-			+= linux/mfd/tps65090.h
+header-test-			+= linux/mfd/tps6586x.h
+header-test-			+= linux/mfd/viperboard.h
+header-test-			+= linux/mfd/wm831x/otp.h
+header-test-			+= linux/mfd/wm831x/pdata.h
+header-test-			+= linux/mfd/wm8994/pdata.h
+header-test-			+= linux/mlx4/srq.h
+header-test-			+= linux/mlx5/doorbell.h
+header-test-			+= linux/mlx5/eq.h
+header-test-			+= linux/mlx5/fs_helpers.h
+header-test-			+= linux/mlx5/mlx5_ifc_fpga.h
+header-test-			+= linux/mlx5/mlx5_ifc.h
+header-test-			+= linux/mm-arch-hooks.h
+header-test-			+= linux/mm_inline.h
+header-test-			+= linux/mmu_context.h
+header-test-			+= linux/mpage.h
+header-test-			+= linux/mtd/bbm.h
+header-test-			+= linux/mtd/cfi.h
+header-test-			+= linux/mtd/doc2000.h
+header-test-			+= linux/mtd/flashchip.h
+header-test-			+= linux/mtd/ftl.h
+header-test-			+= linux/mtd/gen_probe.h
+header-test-			+= linux/mtd/jedec.h
+header-test-			+= linux/mtd/nand_bch.h
+header-test-			+= linux/mtd/nand_ecc.h
+header-test-			+= linux/mtd/ndfc.h
+header-test-			+= linux/mtd/onenand.h
+header-test-			+= linux/mtd/pismo.h
+header-test-			+= linux/mtd/plat-ram.h
+header-test-			+= linux/mtd/spi-nor.h
+header-test-			+= linux/mv643xx_eth.h
+header-test-			+= linux/mv643xx.h
+header-test-			+= linux/mvebu-pmsu.h
+header-test-			+= linux/mxm-wmi.h
+header-test-			+= linux/ndctl.h
+header-test-			+= linux/netfilter/ipset/ip_set_comment.h
+header-test-			+= linux/netfilter/ipset/ip_set_counter.h
+header-test-			+= linux/netfilter/ipset/ip_set_getport.h
+header-test-			+= linux/netfilter/ipset/ip_set_skbinfo.h
+header-test-			+= linux/netfilter/ipset/ip_set_timeout.h
+header-test-			+= linux/netfilter/nf_conntrack_amanda.h
+header-test-			+= linux/netfilter/nf_conntrack_ftp.h
+header-test-			+= linux/netfilter/nf_conntrack_h323_asn1.h
+header-test-			+= linux/netfilter/nf_conntrack_h323.h
+header-test-			+= linux/netfilter/nf_conntrack_irc.h
+header-test-			+= linux/netfilter/nf_conntrack_pptp.h
+header-test-			+= linux/netfilter/nf_conntrack_snmp.h
+header-test-			+= linux/netfilter/nf_conntrack_tftp.h
+header-test-			+= linux/nfsacl.h
+header-test-			+= linux/nfs_fs_i.h
+header-test-			+= linux/nfs_fs_sb.h
+header-test-			+= linux/nfs.h
+header-test-			+= linux/nfs_page.h
+header-test-			+= linux/nfs_xdr.h
+header-test-			+= linux/nl802154.h
+header-test-			+= linux/n_r3964.h
+header-test-			+= linux/nsc_gpio.h
+header-test-			+= linux/ns_common.h
+header-test-			+= linux/ntb_transport.h
+header-test-			+= linux/nubus.h
+header-test-			+= linux/nvme-fc-driver.h
+header-test-			+= linux/nvme-fc.h
+header-test-			+= linux/nvme-rdma.h
+header-test-			+= linux/nvram.h
+header-test-			+= linux/objagg.h
+header-test-			+= linux/of_clk.h
+header-test-			+= linux/of_pdt.h
+header-test-			+= linux/olpc-ec.h
+header-test-			+= linux/omap-dmaengine.h
+header-test-			+= linux/omap-dma.h
+header-test-			+= linux/omap-gpmc.h
+header-test-			+= linux/omap-iommu.h
+header-test-			+= linux/omap-mailbox.h
+header-test-			+= linux/osq_lock.h
+header-test-			+= linux/overflow.h
+header-test-			+= linux/page_ext.h
+header-test-			+= linux/page-flags-layout.h
+header-test-			+= linux/page-isolation.h
+header-test-			+= linux/page_owner.h
+header-test-			+= linux/parport_pc.h
+header-test-			+= linux/parser.h
+header-test-			+= linux/pci-acpi.h
+header-test-			+= linux/pci-dma-compat.h
+header-test-			+= linux/pci_hotplug.h
+header-test-			+= linux/pda_power.h
+header-test-			+= linux/perf/arm_pmu.h
+header-test-			+= linux/perf_regs.h
+header-test-			+= linux/phy_fixed.h
+header-test-			+= linux/phy/omap_control_phy.h
+header-test-			+= linux/phy/tegra/xusb.h
+header-test-			+= linux/phy/ulpi_phy.h
+header-test-			+= linux/pinctrl/pinconf-generic.h
+header-test-			+= linux/pinctrl/pinconf.h
+header-test-			+= linux/pipe_fs_i.h
+header-test-			+= linux/pl320-ipc.h
+header-test-			+= linux/pl353-smc.h
+header-test-			+= linux/platform_data/ad5449.h
+header-test-			+= linux/platform_data/ad5755.h
+header-test-			+= linux/platform_data/ad7266.h
+header-test-			+= linux/platform_data/ad7291.h
+header-test-			+= linux/platform_data/ad7298.h
+header-test-			+= linux/platform_data/ad7303.h
+header-test-			+= linux/platform_data/ad7791.h
+header-test-			+= linux/platform_data/ad7793.h
+header-test-			+= linux/platform_data/ad7887.h
+header-test-			+= linux/platform_data/adau17x1.h
+header-test-			+= linux/platform_data/adp8870.h
+header-test-			+= linux/platform_data/ads1015.h
+header-test-			+= linux/platform_data/ads7828.h
+header-test-			+= linux/platform_data/apds990x.h
+header-test-			+= linux/platform_data/arm-ux500-pm.h
+header-test-			+= linux/platform_data/asoc-s3c.h
+header-test-			+= linux/platform_data/at91_adc.h
+header-test-			+= linux/platform_data/ata-pxa.h
+header-test-			+= linux/platform_data/atmel.h
+header-test-			+= linux/platform_data/bh1770glc.h
+header-test-			+= linux/platform_data/brcmfmac.h
+header-test-			+= linux/platform_data/clk-u300.h
+header-test-			+= linux/platform_data/cyttsp4.h
+header-test-			+= linux/platform_data/dma-coh901318.h
+header-test-			+= linux/platform_data/dma-imx-sdma.h
+header-test-			+= linux/platform_data/dma-mcf-edma.h
+header-test-			+= linux/platform_data/dma-s3c24xx.h
+header-test-			+= linux/platform_data/dmtimer-omap.h
+header-test-			+= linux/platform_data/dsa.h
+header-test-			+= linux/platform_data/edma.h
+header-test-			+= linux/platform_data/elm.h
+header-test-			+= linux/platform_data/emif_plat.h
+header-test-			+= linux/platform_data/fsa9480.h
+header-test-			+= linux/platform_data/g762.h
+header-test-			+= linux/platform_data/gpio-ath79.h
+header-test-			+= linux/platform_data/gpio-davinci.h
+header-test-			+= linux/platform_data/gpio-dwapb.h
+header-test-			+= linux/platform_data/gpio-htc-egpio.h
+header-test-			+= linux/platform_data/gpmc-omap.h
+header-test-			+= linux/platform_data/hsmmc-omap.h
+header-test-			+= linux/platform_data/hwmon-s3c.h
+header-test-			+= linux/platform_data/i2c-davinci.h
+header-test-			+= linux/platform_data/i2c-imx.h
+header-test-			+= linux/platform_data/i2c-mux-reg.h
+header-test-			+= linux/platform_data/i2c-ocores.h
+header-test-			+= linux/platform_data/i2c-xiic.h
+header-test-			+= linux/platform_data/intel-spi.h
+header-test-			+= linux/platform_data/invensense_mpu6050.h
+header-test-			+= linux/platform_data/irda-pxaficp.h
+header-test-			+= linux/platform_data/irda-sa11x0.h
+header-test-			+= linux/platform_data/itco_wdt.h
+header-test-			+= linux/platform_data/jz4740/jz4740_nand.h
+header-test-			+= linux/platform_data/keyboard-pxa930_rotary.h
+header-test-			+= linux/platform_data/keypad-omap.h
+header-test-			+= linux/platform_data/leds-lp55xx.h
+header-test-			+= linux/platform_data/leds-omap.h
+header-test-			+= linux/platform_data/lp855x.h
+header-test-			+= linux/platform_data/lp8727.h
+header-test-			+= linux/platform_data/max197.h
+header-test-			+= linux/platform_data/max3421-hcd.h
+header-test-			+= linux/platform_data/max732x.h
+header-test-			+= linux/platform_data/mcs.h
+header-test-			+= linux/platform_data/mdio-bcm-unimac.h
+header-test-			+= linux/platform_data/mdio-gpio.h
+header-test-			+= linux/platform_data/media/si4713.h
+header-test-			+= linux/platform_data/mlxreg.h
+header-test-			+= linux/platform_data/mmc-omap.h
+header-test-			+= linux/platform_data/mmc-sdhci-s3c.h
+header-test-			+= linux/platform_data/mmp_audio.h
+header-test-			+= linux/platform_data/mtd-orion_nand.h
+header-test-			+= linux/platform_data/mv88e6xxx.h
+header-test-			+= linux/platform_data/net-cw1200.h
+header-test-			+= linux/platform_data/omapdss.h
+header-test-			+= linux/platform_data/omap-twl4030.h
+header-test-			+= linux/platform_data/pcf857x.h
+header-test-			+= linux/platform_data/pixcir_i2c_ts.h
+header-test-			+= linux/platform_data/pwm_omap_dmtimer.h
+header-test-			+= linux/platform_data/pxa2xx_udc.h
+header-test-			+= linux/platform_data/pxa_sdhci.h
+header-test-			+= linux/platform_data/remoteproc-omap.h
+header-test-			+= linux/platform_data/sa11x0-serial.h
+header-test-			+= linux/platform_data/sc18is602.h
+header-test-			+= linux/platform_data/sdhci-pic32.h
+header-test-			+= linux/platform_data/serial-sccnxp.h
+header-test-			+= linux/platform_data/sht3x.h
+header-test-			+= linux/platform_data/shtc1.h
+header-test-			+= linux/platform_data/si5351.h
+header-test-			+= linux/platform_data/sky81452-backlight.h
+header-test-			+= linux/platform_data/spi-davinci.h
+header-test-			+= linux/platform_data/spi-ep93xx.h
+header-test-			+= linux/platform_data/spi-mt65xx.h
+header-test-			+= linux/platform_data/spi-nuc900.h
+header-test-			+= linux/platform_data/st_sensors_pdata.h
+header-test-			+= linux/platform_data/timer-ixp4xx.h
+header-test-			+= linux/platform_data/ti-sysc.h
+header-test-			+= linux/platform_data/touchscreen-s3c2410.h
+header-test-			+= linux/platform_data/tsc2007.h
+header-test-			+= linux/platform_data/tsl2772.h
+header-test-			+= linux/platform_data/uio_pruss.h
+header-test-			+= linux/platform_data/usb3503.h
+header-test-			+= linux/platform_data/usb-davinci.h
+header-test-			+= linux/platform_data/usb-ehci-mxc.h
+header-test-			+= linux/platform_data/usb-ehci-orion.h
+header-test-			+= linux/platform_data/usb-mx2.h
+header-test-			+= linux/platform_data/usb-ohci-s3c2410.h
+header-test-			+= linux/platform_data/usb-omap.h
+header-test-			+= linux/platform_data/usb-s3c2410_udc.h
+header-test-			+= linux/platform_data/ux500_wdt.h
+header-test-			+= linux/platform_data/video-clcd-versatile.h
+header-test-			+= linux/platform_data/video-imxfb.h
+header-test-			+= linux/platform_data/video-nuc900fb.h
+header-test-			+= linux/platform_data/video-pxafb.h
+header-test-			+= linux/platform_data/video_s3c.h
+header-test-			+= linux/platform_data/voltage-omap.h
+header-test-			+= linux/platform_data/x86/apple.h
+header-test-			+= linux/platform_data/x86/clk-pmc-atom.h
+header-test-			+= linux/platform_data/x86/pmc_atom.h
+header-test-			+= linux/platform_data/xtalk-bridge.h
+header-test-			+= linux/pm2301_charger.h
+header-test-			+= linux/pmbus.h
+header-test-			+= linux/pmu.h
+header-test-			+= linux/pm_wakeirq.h
+header-test-			+= linux/pm_wakeup.h
+header-test-			+= linux/posix_acl.h
+header-test-			+= linux/posix_acl_xattr.h
+header-test-			+= linux/power/ab8500.h
+header-test-			+= linux/power/bq27xxx_battery.h
+header-test-			+= linux/power/generic-adc-battery.h
+header-test-			+= linux/power/jz4740-battery.h
+header-test-			+= linux/power/max17042_battery.h
+header-test-			+= linux/power/max8903_charger.h
+header-test-			+= linux/ppp-comp.h
+header-test-			+= linux/pps-gpio.h
+header-test-			+= linux/pr.h
+header-test-			+= linux/processor.h
+header-test-			+= linux/proc_ns.h
+header-test-			+= linux/psi.h
+header-test-			+= linux/psp-sev.h
+header-test-			+= linux/pstore.h
+header-test-			+= linux/ptr_ring.h
+header-test-			+= linux/qcom-geni-se.h
+header-test-			+= linux/qed/eth_common.h
+header-test-			+= linux/qed/fcoe_common.h
+header-test-			+= linux/qed/iscsi_common.h
+header-test-			+= linux/qed/iwarp_common.h
+header-test-			+= linux/qed/qed_eth_if.h
+header-test-			+= linux/qed/qed_fcoe_if.h
+header-test-			+= linux/qed/rdma_common.h
+header-test-			+= linux/qed/storage_common.h
+header-test-			+= linux/qed/tcp_common.h
+header-test-			+= linux/qnx6_fs.h
+header-test-			+= linux/quicklist.h
+header-test-			+= linux/ramfs.h
+header-test-			+= linux/range.h
+header-test-			+= linux/rculist_bl.h
+header-test-			+= linux/rculist_nulls.h
+header-test-			+= linux/rcu_node_tree.h
+header-test-			+= linux/rcutiny.h
+header-test-			+= linux/rcutree.h
+header-test-			+= linux/reboot-mode.h
+header-test-			+= linux/regulator/gpio-regulator.h
+header-test-			+= linux/regulator/max8973-regulator.h
+header-test-			+= linux/regulator/of_regulator.h
+header-test-			+= linux/regulator/tps51632-regulator.h
+header-test-			+= linux/regulator/tps62360.h
+header-test-			+= linux/regulator/tps6507x.h
+header-test-			+= linux/regulator/userspace-consumer.h
+header-test-			+= linux/remoteproc/st_slim_rproc.h
+header-test-			+= linux/reset/socfpga.h
+header-test-			+= linux/reset/sunxi.h
+header-test-			+= linux/rtc/m48t59.h
+header-test-			+= linux/rtc/rtc-omap.h
+header-test-			+= linux/rtc/sirfsoc_rtciobrg.h
+header-test-			+= linux/rwlock.h
+header-test-			+= linux/rwlock_types.h
+header-test-			+= linux/scc.h
+header-test-			+= linux/sched_clock.h
+header-test-			+= linux/sched/deadline.h
+header-test-			+= linux/sched/sysctl.h
+header-test-			+= linux/scpi_protocol.h
+header-test-			+= linux/scx200_gpio.h
+header-test-			+= linux/seccomp.h
+header-test-			+= linux/sed-opal.h
+header-test-			+= linux/seg6_iptunnel.h
+header-test-			+= linux/selection.h
+header-test-			+= linux/set_memory.h
+header-test-			+= linux/shrinker.h
+header-test-			+= linux/sirfsoc_dma.h
+header-test-			+= linux/skb_array.h
+header-test-			+= linux/slab_def.h
+header-test-			+= linux/slub_def.h
+header-test-			+= linux/sm501.h
+header-test-			+= linux/smc91x.h
+header-test-			+= linux/soc/actions/owl-sps.h
+header-test-			+= linux/soc/brcmstb/brcmstb.h
+header-test-			+= linux/soc/mediatek/infracfg.h
+header-test-			+= linux/soc/qcom/smd-rpm.h
+header-test-			+= linux/soc/qcom/smem.h
+header-test-			+= linux/soc/qcom/smem_state.h
+header-test-			+= linux/soc/renesas/rcar-rst.h
+header-test-			+= linux/soc/samsung/exynos-pmu.h
+header-test-			+= linux/soc/sunxi/sunxi_sram.h
+header-test-			+= linux/soc/ti/ti-msgmgr.h
+header-test-			+= linux/soc/ti/ti_sci_inta_msi.h
+header-test-			+= linux/soc/ti/ti_sci_protocol.h
+header-test-			+= linux/soundwire/sdw.h
+header-test-			+= linux/soundwire/sdw_intel.h
+header-test-			+= linux/soundwire/sdw_type.h
+header-test-			+= linux/spi/ad7877.h
+header-test-			+= linux/spi/ads7846.h
+header-test-			+= linux/spi/at86rf230.h
+header-test-			+= linux/spi/ds1305.h
+header-test-			+= linux/spi/libertas_spi.h
+header-test-			+= linux/spi/lms283gf05.h
+header-test-			+= linux/spi/mcp23s08.h
+header-test-			+= linux/spinlock_api_smp.h
+header-test-			+= linux/spinlock_api_up.h
+header-test-			+= linux/spinlock_types.h
+header-test-			+= linux/spi/rspi.h
+header-test-			+= linux/spi/s3c24xx.h
+header-test-			+= linux/spi/sh_msiof.h
+header-test-			+= linux/spi/spi_bitbang.h
+header-test-			+= linux/spi/spi-fsl-dspi.h
+header-test-			+= linux/spi/spi_gpio.h
+header-test-			+= linux/spi/xilinx_spi.h
+header-test-			+= linux/splice.h
+header-test-			+= linux/sram.h
+header-test-			+= linux/srcutiny.h
+header-test-			+= linux/srcutree.h
+header-test-			+= linux/ssbi.h
+header-test-			+= linux/ssb/ssb_driver_chipcommon.h
+header-test-			+= linux/ssb/ssb_driver_extif.h
+header-test-			+= linux/ssb/ssb_driver_mips.h
+header-test-			+= linux/ssb/ssb_driver_pci.h
+header-test-			+= linux/stackdepot.h
+header-test-			+= linux/stmp3xxx_rtc_wdt.h
+header-test-			+= linux/string_helpers.h
+header-test-			+= linux/sungem_phy.h
+header-test-			+= linux/sunrpc/msg_prot.h
+header-test-			+= linux/sunrpc/rpc_pipe_fs.h
+header-test-			+= linux/sunrpc/xprtmultipath.h
+header-test-			+= linux/sunrpc/xprtsock.h
+header-test-			+= linux/svga.h
+header-test-			+= linux/sw842.h
+header-test-			+= linux/swapfile.h
+header-test-			+= linux/swapops.h
+header-test-			+= linux/swiotlb.h
+header-test-			+= linux/sysv_fs.h
+header-test-			+= linux/task_io_accounting.h
+header-test-			+= linux/tick.h
+header-test-			+= linux/timb_dma.h
+header-test-			+= linux/timekeeping32.h
+header-test-			+= linux/timekeeping.h
+header-test-			+= linux/tsacct_kern.h
+header-test-			+= linux/ts-nbus.h
+header-test-			+= linux/tty_flip.h
+header-test-			+= linux/tty_ldisc.h
+header-test-			+= linux/usb/association.h
+header-test-			+= linux/usb/cdc_ncm.h
+header-test-			+= linux/usb/cdc-wdm.h
+header-test-			+= linux/usb/ezusb.h
+header-test-			+= linux/usb/gadget_configfs.h
+header-test-			+= linux/usb/gpio_vbus.h
+header-test-			+= linux/usb/hcd.h
+header-test-			+= linux/usb/iowarrior.h
+header-test-			+= linux/usb/irda.h
+header-test-			+= linux/usb/isp116x.h
+header-test-			+= linux/usb/isp1362.h
+header-test-			+= linux/usb/musb.h
+header-test-			+= linux/usb/net2280.h
+header-test-			+= linux/usb/ohci_pdriver.h
+header-test-			+= linux/usb/otg-fsm.h
+header-test-			+= linux/usb/pd_ado.h
+header-test-			+= linux/usb/r8a66597.h
+header-test-			+= linux/usb/rndis_host.h
+header-test-			+= linux/usb/serial.h
+header-test-			+= linux/usb/sl811.h
+header-test-			+= linux/usb/storage.h
+header-test-			+= linux/usb/usb338x.h
+header-test-			+= linux/usb/usbnet.h
+header-test-			+= linux/usb_usual.h
+header-test-			+= linux/usb/wusb-wa.h
+header-test-			+= linux/usb/xhci-dbgp.h
+header-test-			+= linux/userfaultfd_k.h
+header-test-			+= linux/user-return-notifier.h
+header-test-			+= linux/verification.h
+header-test-			+= linux/via_core.h
+header-test-			+= linux/via_i2c.h
+header-test-			+= linux/virtio_byteorder.h
+header-test-			+= linux/virtio_ring.h
+header-test-			+= linux/visorbus.h
+header-test-			+= linux/vme.h
+header-test-			+= linux/vmstat.h
+header-test-			+= linux/vringh.h
+header-test-			+= linux/vt_buffer.h
+header-test-			+= linux/zorro.h
+header-test-			+= linux/zpool.h
+header-test-			+= math-emu/double.h
+header-test-			+= math-emu/op-common.h
+header-test-			+= math-emu/quad.h
+header-test-			+= math-emu/single.h
+header-test-			+= math-emu/soft-fp.h
+header-test-			+= media/davinci/dm355_ccdc.h
+header-test-			+= media/davinci/dm644x_ccdc.h
+header-test-			+= media/davinci/isif.h
+header-test-			+= media/davinci/vpbe_osd.h
+header-test-			+= media/davinci/vpbe_types.h
+header-test-			+= media/davinci/vpif_types.h
+header-test-			+= media/demux.h
+header-test-			+= media/drv-intf/soc_mediabus.h
+header-test-			+= media/fwht-ctrls.h
+header-test-			+= media/i2c/ad9389b.h
+header-test-			+= media/i2c/adv7343.h
+header-test-			+= media/i2c/adv7511.h
+header-test-			+= media/i2c/adv7842.h
+header-test-			+= media/i2c/m5mols.h
+header-test-			+= media/i2c/mt9m032.h
+header-test-			+= media/i2c/mt9t112.h
+header-test-			+= media/i2c/mt9v032.h
+header-test-			+= media/i2c/ov2659.h
+header-test-			+= media/i2c/ov7670.h
+header-test-			+= media/i2c/rj54n1cb0c.h
+header-test-			+= media/i2c/saa6588.h
+header-test-			+= media/i2c/saa7115.h
+header-test-			+= media/i2c/sr030pc30.h
+header-test-			+= media/i2c/tc358743.h
+header-test-			+= media/i2c/tda1997x.h
+header-test-			+= media/i2c/ths7303.h
+header-test-			+= media/i2c/tvaudio.h
+header-test-			+= media/i2c/tvp514x.h
+header-test-			+= media/i2c/tvp7002.h
+header-test-			+= media/i2c/wm8775.h
+header-test-			+= media/imx.h
+header-test-			+= media/media-dev-allocator.h
+header-test-			+= media/mpeg2-ctrls.h
+header-test-			+= media/tuner-types.h
+header-test-			+= media/tveeprom.h
+header-test-			+= media/v4l2-flash-led-class.h
+header-test-			+= misc/altera.h
+header-test-			+= misc/cxl-base.h
+header-test-			+= misc/cxllib.h
+header-test-			+= net/9p/9p.h
+header-test-			+= net/9p/client.h
+header-test-			+= net/9p/transport.h
+header-test-			+= net/af_vsock.h
+header-test-			+= net/ax88796.h
+header-test-			+= net/bluetooth/hci_core.h
+header-test-			+= net/bluetooth/hci.h
+header-test-			+= net/bluetooth/hci_mon.h
+header-test-			+= net/bluetooth/hci_sock.h
+header-test-			+= net/bluetooth/l2cap.h
+header-test-			+= net/bluetooth/mgmt.h
+header-test-			+= net/bluetooth/rfcomm.h
+header-test-			+= net/bluetooth/sco.h
+header-test-			+= net/bond_options.h
+header-test-			+= net/caif/cfsrvl.h
+header-test-			+= net/codel_impl.h
+header-test-			+= net/codel_qdisc.h
+header-test-			+= net/compat.h
+header-test-			+= net/datalink.h
+header-test-			+= net/dcbevent.h
+header-test-			+= net/dcbnl.h
+header-test-			+= net/dn_dev.h
+header-test-			+= net/dn_fib.h
+header-test-			+= net/dn_neigh.h
+header-test-			+= net/dn_nsp.h
+header-test-			+= net/dn_route.h
+header-test-			+= net/erspan.h
+header-test-			+= net/esp.h
+header-test-			+= net/ethoc.h
+header-test-			+= net/firewire.h
+header-test-			+= net/flow_offload.h
+header-test-			+= net/fq.h
+header-test-			+= net/fq_impl.h
+header-test-			+= net/garp.h
+header-test-			+= net/gtp.h
+header-test-			+= net/gue.h
+header-test-			+= net/hwbm.h
+header-test-			+= net/ila.h
+header-test-			+= net/inet6_connection_sock.h
+header-test-			+= net/inet_common.h
+header-test-			+= net/inet_frag.h
+header-test-			+= net/ip6_route.h
+header-test-			+= net/ipcomp.h
+header-test-			+= net/ipconfig.h
+header-test-			+= net/iucv/af_iucv.h
+header-test-			+= net/iucv/iucv.h
+header-test-			+= net/lapb.h
+header-test-			+= net/llc_c_ac.h
+header-test-			+= net/llc_c_st.h
+header-test-			+= net/llc_s_ac.h
+header-test-			+= net/llc_s_ev.h
+header-test-			+= net/llc_s_st.h
+header-test-			+= net/mpls_iptunnel.h
+header-test-			+= net/mrp.h
+header-test-			+= net/ncsi.h
+header-test-			+= net/netevent.h
+header-test-			+= net/netfilter/br_netfilter.h
+header-test-			+= net/netfilter/ipv4/nf_dup_ipv4.h
+header-test-			+= net/netfilter/ipv6/nf_defrag_ipv6.h
+header-test-			+= net/netfilter/ipv6/nf_dup_ipv6.h
+header-test-			+= net/netfilter/nf_conntrack_bridge.h
+header-test-			+= net/netfilter/nf_conntrack_count.h
+header-test-			+= net/netfilter/nf_conntrack_synproxy.h
+header-test-			+= net/netfilter/nf_dup_netdev.h
+header-test-			+= net/netfilter/nf_flow_table.h
+header-test-			+= net/netfilter/nf_nat_helper.h
+header-test-			+= net/netfilter/nf_nat_redirect.h
+header-test-			+= net/netfilter/nf_queue.h
+header-test-			+= net/netfilter/nf_reject.h
+header-test-			+= net/netfilter/nf_tables_ipv6.h
+header-test-			+= net/netfilter/nft_fib.h
+header-test-			+= net/netfilter/nft_reject.h
+header-test-			+= net/netns/can.h
+header-test-			+= net/netns/generic.h
+header-test-			+= net/netns/ieee802154_6lowpan.h
+header-test-			+= net/netns/ipv4.h
+header-test-			+= net/netns/ipv6.h
+header-test-			+= net/netns/mpls.h
+header-test-			+= net/netns/nftables.h
+header-test-			+= net/netns/sctp.h
+header-test-			+= net/netrom.h
+header-test-			+= net/p8022.h
+header-test-			+= net/phonet/pep.h
+header-test-			+= net/phonet/phonet.h
+header-test-			+= net/phonet/pn_dev.h
+header-test-			+= net/pptp.h
+header-test-			+= net/psample.h
+header-test-			+= net/psnap.h
+header-test-			+= net/regulatory.h
+header-test-			+= net/rose.h
+header-test-			+= net/sctp/auth.h
+header-test-			+= net/sctp/stream_interleave.h
+header-test-			+= net/sctp/stream_sched.h
+header-test-			+= net/sctp/tsnmap.h
+header-test-			+= net/sctp/ulpevent.h
+header-test-			+= net/sctp/ulpqueue.h
+header-test-			+= net/secure_seq.h
+header-test-			+= net/smc.h
+header-test-			+= net/stp.h
+header-test-			+= net/transp_v6.h
+header-test-			+= net/tun_proto.h
+header-test-			+= net/udplite.h
+header-test-			+= net/xdp.h
+header-test-			+= net/xdp_priv.h
+header-test-			+= pcmcia/cistpl.h
+header-test-			+= pcmcia/ds.h
+header-test-			+= rdma/ib.h
+header-test-			+= rdma/iw_portmap.h
+header-test-			+= rdma/opa_port_info.h
+header-test-			+= rdma/rdmavt_cq.h
+header-test-			+= rdma/restrack.h
+header-test-			+= rdma/signature.h
+header-test-			+= rdma/tid_rdma_defs.h
+header-test-			+= scsi/fc_encode.h
+header-test-			+= scsi/fc/fc_encaps.h
+header-test-			+= scsi/fc/fc_fc2.h
+header-test-			+= scsi/fc/fc_fcoe.h
+header-test-			+= scsi/fc/fc_fip.h
+header-test-			+= scsi/iser.h
+header-test-			+= scsi/scsicam.h
+header-test-			+= scsi/scsi_dbg.h
+header-test-			+= scsi/scsi_ioctl.h
+header-test-			+= scsi/scsi_transport_sas.h
+header-test-			+= scsi/scsi_transport_spi.h
+header-test-			+= scsi/scsi_transport_srp.h
+header-test-			+= scsi/sg.h
+header-test-			+= soc/arc/aux.h
+header-test-			+= soc/arc/mcip.h
+header-test-			+= soc/arc/timers.h
+header-test-			+= soc/brcmstb/common.h
+header-test-			+= soc/fsl/bman.h
+header-test-			+= soc/fsl/qe/qe.h
+header-test-			+= soc/fsl/qe/qe_ic.h
+header-test-			+= soc/fsl/qe/qe_tdm.h
+header-test-			+= soc/fsl/qe/ucc_fast.h
+header-test-			+= soc/fsl/qe/ucc.h
+header-test-			+= soc/fsl/qe/ucc_slow.h
+header-test-			+= soc/fsl/qman.h
+header-test-			+= soc/nps/common.h
+header-test-$(CONFIG_ARC)	+= soc/nps/mtm.h
+header-test-			+= soc/qcom/cmd-db.h
+header-test-			+= soc/qcom/rpmh.h
+header-test-			+= soc/qcom/tcs.h
+header-test-			+= soc/tegra/ahb.h
+header-test-			+= soc/tegra/bpmp-abi.h
+header-test-			+= soc/tegra/common.h
+header-test-			+= soc/tegra/flowctrl.h
+header-test-			+= soc/tegra/fuse.h
+header-test-			+= soc/tegra/mc.h
+header-test-			+= sound/ac97/compat.h
+header-test-			+= sound/aci.h
+header-test-			+= sound/ad1843.h
+header-test-			+= sound/adau1373.h
+header-test-			+= sound/ak4113.h
+header-test-			+= sound/ak4114.h
+header-test-			+= sound/ak4117.h
+header-test-			+= sound/cs35l33.h
+header-test-			+= sound/cs35l34.h
+header-test-			+= sound/cs35l35.h
+header-test-			+= sound/cs35l36.h
+header-test-			+= sound/cs4271.h
+header-test-			+= sound/cs42l52.h
+header-test-			+= sound/cs8427.h
+header-test-			+= sound/da7218.h
+header-test-			+= sound/da7219-aad.h
+header-test-			+= sound/da7219.h
+header-test-			+= sound/da9055.h
+header-test-			+= sound/emu8000.h
+header-test-			+= sound/emux_synth.h
+header-test-			+= sound/hda_component.h
+header-test-			+= sound/hda_hwdep.h
+header-test-			+= sound/hda_i915.h
+header-test-			+= sound/hwdep.h
+header-test-			+= sound/i2c.h
+header-test-			+= sound/l3.h
+header-test-			+= sound/max98088.h
+header-test-			+= sound/max98095.h
+header-test-			+= sound/mixer_oss.h
+header-test-			+= sound/omap-hdmi-audio.h
+header-test-			+= sound/pcm_drm_eld.h
+header-test-			+= sound/pcm_iec958.h
+header-test-			+= sound/pcm_oss.h
+header-test-			+= sound/pxa2xx-lib.h
+header-test-			+= sound/rt286.h
+header-test-			+= sound/rt298.h
+header-test-			+= sound/rt5645.h
+header-test-			+= sound/rt5659.h
+header-test-			+= sound/rt5660.h
+header-test-			+= sound/rt5665.h
+header-test-			+= sound/rt5670.h
+header-test-			+= sound/s3c24xx_uda134x.h
+header-test-			+= sound/seq_device.h
+header-test-			+= sound/seq_kernel.h
+header-test-			+= sound/seq_midi_emul.h
+header-test-			+= sound/seq_oss.h
+header-test-			+= sound/soc-acpi-intel-match.h
+header-test-			+= sound/soc-dai.h
+header-test-			+= sound/soc-dapm.h
+header-test-			+= sound/soc-dpcm.h
+header-test-			+= sound/sof/control.h
+header-test-			+= sound/sof/dai.h
+header-test-			+= sound/sof/dai-intel.h
+header-test-			+= sound/sof/header.h
+header-test-			+= sound/sof/info.h
+header-test-			+= sound/sof/pm.h
+header-test-			+= sound/sof/stream.h
+header-test-			+= sound/sof/topology.h
+header-test-			+= sound/sof/trace.h
+header-test-			+= sound/sof/xtensa.h
+header-test-			+= sound/spear_spdif.h
+header-test-			+= sound/sta32x.h
+header-test-			+= sound/sta350.h
+header-test-			+= sound/tea6330t.h
+header-test-			+= sound/tlv320aic32x4.h
+header-test-			+= sound/tlv320dac33-plat.h
+header-test-			+= sound/uda134x.h
+header-test-			+= sound/wavefront.h
+header-test-			+= sound/wm8903.h
+header-test-			+= sound/wm8904.h
+header-test-			+= sound/wm8960.h
+header-test-			+= sound/wm8962.h
+header-test-			+= sound/wm8993.h
+header-test-			+= sound/wm8996.h
+header-test-			+= sound/wm9081.h
+header-test-			+= sound/wm9090.h
+header-test-			+= target/iscsi/iscsi_target_stat.h
+header-test-			+= trace/bpf_probe.h
+header-test-			+= trace/events/9p.h
+header-test-			+= trace/events/afs.h
+header-test-			+= trace/events/asoc.h
+header-test-			+= trace/events/bcache.h
+header-test-			+= trace/events/cachefiles.h
+header-test-			+= trace/events/clk.h
+header-test-			+= trace/events/cma.h
+header-test-			+= trace/events/ext4.h
+header-test-			+= trace/events/f2fs.h
+header-test-			+= trace/events/fscache.h
+header-test-			+= trace/events/fs_dax.h
+header-test-			+= trace/events/fsi.h
+header-test-			+= trace/events/fsi_master_ast_cf.h
+header-test-			+= trace/events/fsi_master_gpio.h
+header-test-			+= trace/events/huge_memory.h
+header-test-			+= trace/events/ib_mad.h
+header-test-			+= trace/events/ib_umad.h
+header-test-			+= trace/events/kvm.h
+header-test-			+= trace/events/mce.h
+header-test-			+= trace/events/mdio.h
+header-test-			+= trace/events/migrate.h
+header-test-			+= trace/events/mmflags.h
+header-test-			+= trace/events/nbd.h
+header-test-			+= trace/events/nilfs2.h
+header-test-			+= trace/events/pwc.h
+header-test-			+= trace/events/rdma.h
+header-test-			+= trace/events/rpcgss.h
+header-test-			+= trace/events/rpcrdma.h
+header-test-			+= trace/events/rxrpc.h
+header-test-			+= trace/events/siox.h
+header-test-			+= trace/events/spi.h
+header-test-			+= trace/events/swiotlb.h
+header-test-			+= trace/events/syscalls.h
+header-test-			+= trace/events/thermal_power_allocator.h
+header-test-			+= trace/events/timer.h
+header-test-			+= trace/events/xen.h
+header-test-			+= trace/perf.h
+header-test-			+= trace/trace_events.h
+header-test-			+= uapi/drm/vmwgfx_drm.h
+header-test-			+= uapi/linux/a.out.h
+header-test-			+= uapi/linux/coda.h
+header-test-			+= uapi/linux/coda_psdev.h
+header-test-			+= uapi/linux/errqueue.h
+header-test-			+= uapi/linux/eventpoll.h
+header-test-			+= uapi/linux/hdlc/ioctl.h
+header-test-			+= uapi/linux/input.h
+header-test-			+= uapi/linux/kvm.h
+header-test-			+= uapi/linux/kvm_para.h
+header-test-			+= uapi/linux/lightnvm.h
+header-test-			+= uapi/linux/mic_common.h
+header-test-			+= uapi/linux/netfilter_ipv4/ipt_LOG.h
+header-test-			+= uapi/linux/netfilter_ipv6/ip6t_LOG.h
+header-test-			+= uapi/linux/netfilter/xt_policy.h
+header-test-			+= uapi/linux/nilfs2_ondisk.h
+header-test-			+= uapi/linux/patchkey.h
+header-test-			+= uapi/linux/scc.h
+header-test-			+= uapi/linux/seg6_iptunnel.h
+header-test-			+= uapi/linux/smc_diag.h
+header-test-			+= uapi/linux/timex.h
+header-test-			+= uapi/linux/videodev2.h
+header-test-			+= uapi/scsi/scsi_bsg_fc.h
+header-test-			+= uapi/sound/asound.h
+header-test-			+= uapi/sound/sof/eq.h
+header-test-			+= uapi/sound/sof/fw.h
+header-test-			+= uapi/sound/sof/header.h
+header-test-			+= uapi/sound/sof/manifest.h
+header-test-			+= uapi/sound/sof/trace.h
+header-test-			+= uapi/xen/evtchn.h
+header-test-			+= uapi/xen/gntdev.h
+header-test-			+= uapi/xen/privcmd.h
+header-test-			+= vdso/vsyscall.h
+header-test-			+= video/broadsheetfb.h
+header-test-			+= video/cvisionppc.h
+header-test-			+= video/gbe.h
+header-test-			+= video/kyro.h
+header-test-			+= video/maxinefb.h
+header-test-			+= video/metronomefb.h
+header-test-			+= video/neomagic.h
+header-test-			+= video/omapvrfb.h
+header-test-			+= video/s1d13xxxfb.h
+header-test-			+= video/sstfb.h
+header-test-			+= video/tgafb.h
+header-test-			+= video/udlfb.h
+header-test-			+= video/uvesafb.h
+header-test-			+= video/w100fb.h
+header-test-			+= xen/acpi.h
+header-test-			+= xen/arm/hypercall.h
+header-test-			+= xen/arm/page-coherent.h
+header-test-			+= xen/arm/page.h
+header-test-			+= xen/balloon.h
+header-test-			+= xen/events.h
+header-test-			+= xen/features.h
+header-test-			+= xen/grant_table.h
+header-test-			+= xen/hvm.h
+header-test-			+= xen/interface/callback.h
+header-test-			+= xen/interface/event_channel.h
+header-test-			+= xen/interface/grant_table.h
+header-test-			+= xen/interface/hvm/dm_op.h
+header-test-			+= xen/interface/hvm/hvm_op.h
+header-test-			+= xen/interface/hvm/hvm_vcpu.h
+header-test-			+= xen/interface/hvm/params.h
+header-test-			+= xen/interface/hvm/start_info.h
+header-test-			+= xen/interface/io/9pfs.h
+header-test-			+= xen/interface/io/blkif.h
+header-test-			+= xen/interface/io/console.h
+header-test-			+= xen/interface/io/displif.h
+header-test-			+= xen/interface/io/fbif.h
+header-test-			+= xen/interface/io/kbdif.h
+header-test-			+= xen/interface/io/netif.h
+header-test-			+= xen/interface/io/pciif.h
+header-test-			+= xen/interface/io/protocols.h
+header-test-			+= xen/interface/io/pvcalls.h
+header-test-			+= xen/interface/io/ring.h
+header-test-			+= xen/interface/io/sndif.h
+header-test-			+= xen/interface/io/tpmif.h
+header-test-			+= xen/interface/io/vscsiif.h
+header-test-			+= xen/interface/io/xs_wire.h
+header-test-			+= xen/interface/memory.h
+header-test-			+= xen/interface/nmi.h
+header-test-			+= xen/interface/physdev.h
+header-test-			+= xen/interface/platform.h
+header-test-			+= xen/interface/sched.h
+header-test-			+= xen/interface/vcpu.h
+header-test-			+= xen/interface/version.h
+header-test-			+= xen/interface/xen.h
+header-test-			+= xen/interface/xen-mca.h
+header-test-			+= xen/interface/xenpmu.h
+header-test-			+= xen/mem-reservation.h
+header-test-			+= xen/page.h
+header-test-			+= xen/platform_pci.h
+header-test-			+= xen/swiotlb-xen.h
+header-test-			+= xen/xenbus.h
+header-test-			+= xen/xen-front-pgdir-shbuf.h
+header-test-			+= xen/xen.h
+header-test-			+= xen/xen-ops.h
+
+# Do not include directly
+header-test- += linux/compiler-clang.h
+header-test- += linux/compiler-gcc.h
+header-test- += linux/patchkey.h
+header-test- += linux/rwlock_api_smp.h
+header-test- += linux/spinlock_types_up.h
+header-test- += linux/spinlock_up.h
+header-test- += linux/wimax/debug.h
+header-test- += rdma/uverbs_named_ioctl.h
+
+# asm-generic/*.h is used by asm/*.h, and should not be included directly
+header-test- += asm-generic/% uapi/asm-generic/%
+
+# Timestamp files touched by Kconfig
+header-test- += config/%
+
+# Timestamp files touched by scripts/adjust_autoksyms.sh
+header-test- += ksym/%
+
+# You could compile-test these, but maybe not so useful...
+header-test- += dt-bindings/%
+
+# Do not test generated headers. Stale headers are often left over when you
+# traverse the git history without cleaning.
+header-test- += generated/%
+
+# The rest are compile-tested
+header-test-pattern-y += */*.h */*/*.h */*/*/*.h */*/*/*/*.h
diff --git a/init/Kconfig b/init/Kconfig
index 667d68e1cdf4..2d04b6de1af6 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -105,6 +105,17 @@ config HEADER_TEST
 	  If you are a developer or tester and want to ensure the requested
 	  headers are self-contained, say Y here. Otherwise, choose N.
 
+config KERNEL_HEADER_TEST
+	bool "Compile test kernel headers"
+	depends on HEADER_TEST
+	help
+	  Headers in include/ are used to build external moduls.
+	  Compile test them to ensure they are self-contained, i.e.
+	  compilable as standalone units.
+
+	  If you are a developer or tester and want to ensure the headers
+	  in include/ are self-contained, say Y here. Otherwise, choose N.
+
 config UAPI_HEADER_TEST
 	bool "Compile test UAPI headers"
 	depends on HEADER_TEST && HEADERS_INSTALL
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

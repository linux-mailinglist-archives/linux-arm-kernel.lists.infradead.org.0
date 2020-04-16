Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 041421AD0DE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 22:11:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V/a9q8Zbvu04IuhMgdBts6Gs4zEOY9GD3USzkwkhy4g=; b=JckWR5f9y2iqqF
	qwnsP6coIF1yANFCG0n7YE0KcLxf45xRbC+Zv0pTLjC973h4r2VBhYZa8lSO9+IeqOtPlPLSSXX2a
	7+pzuKudCS6aZVKkcBbZv42kebl7RNPYkvhAgkN+yh5NBR4EcgMdXBd1kV9b1SNn7UQjjITt9+t2p
	qCoKfJlCYNSH2cXgSrjsBINFVNjchjPdwKK9efpbXQDmsokNxwM5dSqCDZPQ6QH1AuDo0Mk0hvKdu
	RUYiIf4xq3OBlr1ygH/Q3SaYgbyX4K5X19dmlTunVrbeCcO2XX9GOaQAY7kTkZKWsPT8kamPVAhSU
	Blnez4MTdsQqMywq7z8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPAr6-0002KL-PZ; Thu, 16 Apr 2020 20:11:24 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPAqx-0002Jn-51
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 20:11:19 +0000
Received: by mail-io1-xd43.google.com with SMTP id i3so22414501ioo.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 13:11:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vfoCjbUHDniUdSkw23jpHQNhMFzbcT1hK/Ig+siv57o=;
 b=bY6efPs4ISh5TNC9l/YgNz89VgpNF0i6oHi8Z3U1ge9kNSda3E+61+bfnw+FHHzvJt
 nc0p4wn7+QqX48/Y29aF7o6pwycDXemWkttpZcGlG/x66OuIash7kEseM1roc5H2Edr/
 a6slBFlPB7ijnOYYuF0gx0QwZy+QSqdONGoJ3cqmQ1rGZlDJxt2NZzwhRlPW9hrIxCOe
 dzH4b36FiGjV/QCNH/YCEvxFCOJbDG0arEVNt5ZXhVPI+yz2Dm/gRLyzJT2PVgQfkc/k
 e4aQSt2gEGUG+uFMTPhUvmB43WZXKtuxH9BaP30TFq/bduId8ksqX1zM3kk4U2tVczAL
 cvSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vfoCjbUHDniUdSkw23jpHQNhMFzbcT1hK/Ig+siv57o=;
 b=ncvseITmU1FAbpxVem8QQBNvZdac1PRIrjnto3BXj5lpSKrh070nGH1Vz3UpicOZXh
 TZ+6vyc7ppzBWni9M1w9SXaV835oEd3SYoOy1syHbTTTPkhosDtY0KuBQhiK1FoxThpl
 nH7L4aab+u3u/UxIIJuNsaOGy/ltyUqY2UzlEu1+6auPC1t3h+sq18TA7r5l+jXHTEXG
 8B0A/C9enPCkPPJbEqALeVL9jjSarVxd3uRSZ+XC7oQrEKnp6cN/oQ2VM9x1CSLZmZJp
 kfQSZP19AE/rTvZthmQZsRCmHn7RVpoNmLi2gKeBnQFS5qtcaV8craraTFip/5FNukPs
 vIAQ==
X-Gm-Message-State: AGi0PuYWBPIeJRQicYgWx4IATX4k0EM7cHbfJQ29C0ChLAO2Ux0wfzfI
 KubNwmNUtwJfFGAoO6XYiWR573PXs/rB88Hrt5iLKw==
X-Google-Smtp-Source: APiQypKVKkL9GeHDUvh0qKOko0CPfgS0XR8SnWuYiG2uHIBxsayNWSK72vOvTCLsLYYL3LArTiOAW6QKZSqYJRJrLMo=
X-Received: by 2002:a02:6a1e:: with SMTP id l30mr51706jac.98.1587067872749;
 Thu, 16 Apr 2020 13:11:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200324201819.23095-1-s-anna@ti.com>
 <20200324201819.23095-6-s-anna@ti.com>
 <20200409212501.GA32029@xps15> <2d83c22a-9302-1ab9-e241-87fbd7a30dbf@ti.com>
In-Reply-To: <2d83c22a-9302-1ab9-e241-87fbd7a30dbf@ti.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 16 Apr 2020 14:11:00 -0600
Message-ID: <CANLsYkx=A1Ji_V7e7QVngbdMkjPx7guj4+wxYa9eGR9rPjJBHA@mail.gmail.com>
Subject: Re: [PATCH 5/7] remoteproc/k3-r5: Add a remoteproc driver for R5F
 subsystem
To: Suman Anna <s-anna@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_131115_222583_4D8EF0A7 
X-CRM114-Status: GOOD (  31.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Lokesh Vutla <lokeshvutla@ti.com>,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 15 Apr 2020 at 16:44, Suman Anna <s-anna@ti.com> wrote:
>
> On 4/9/20 4:25 PM, Mathieu Poirier wrote:
> > On Tue, Mar 24, 2020 at 03:18:17PM -0500, Suman Anna wrote:
> >> The TI K3 family of SoCs typically have one or more dual-core Arm Cortex
> >> R5F processor clusters/subsystems (R5FSS). This R5F subsystem/cluster
> >> can be configured at boot time to be either run in a LockStep mode or in
> >> an Asymmetric Multi Processing (AMP) fashion in Split-mode. This subsystem
> >> has 64 KB each Tightly-Coupled Memory (TCM) internal memories for each
> >> core split between two banks - TCMA and TCMB (further interleaved into
> >> two banks). The subsystem does not have an MMU, but has a Region Address
> >> Translater (RAT) module that is accessible only from the R5Fs for providing
> >> translations between 32-bit CPU addresses into larger system bus addresses.
> >>
> >> Add a remoteproc driver to support this subsystem to be able to load and
> >> boot the R5F cores primarily in LockStep mode. The code also includes the
> >> base support for Split mode. Error Recovery and Power Management features
> >> are not currently supported. Loading support includes the internal TCMs
> >> and DDR. RAT support is left for a future patch, and as such the reserved
> >> memory carveout regions are all expected to be using memory regions within
> >> the first 2 GB.
> >>
> >> The R5F remote processors do not have an MMU, and so require fixed memory
> >> carveout regions matching the firmware image addresses. Support for this
> >> is provided by mandating multiple memory regions to be attached to the
> >> remoteproc device. The first memory region will be used to serve as the
> >> DMA pool for all dynamic allocations like the vrings and vring buffers.
> >> The remaining memory regions are mapped into the kernel at device probe
> >> time, and are used to provide address translations for firmware image
> >> segments without the need for any RSC_CARVEOUT entries. Any firmware
> >> image using memory outside of the supplied reserved memory carveout
> >> regions will be errored out.
> >>
> >> The R5F processors on TI K3 SoCs require a specific sequence for booting
> >> and shutting down the processors. This sequence is also dependent on the
> >> mode (LockStep or Split) the R5F cluster is configured for. The R5F cores
> >> have a Memory Protection Unit (MPU) that has a default configuration that
> >> does not allow the cores to run out of DDR out of reset. This is resolved
> >> by using the TCMs for boot-strapping code that applies the appropriate
> >> executable permissions on desired DDR memory. The loading into the TCMs
> >> requires that the resets be released first with the cores in halted state.
> >> The Power Sleep Controller (PSC) module on K3 SoCs requires that the cores
> >> be in WFI/WFE states with no active bus transactions before the cores can
> >> be put back into reset. Support for this is provided by using the newly
> >> introduced .prepare() and .unprepare() ops in the remoteproc core. The
> >> .prepare() ops is invoked before any loading, and the .unprepare() ops
> >> is invoked after the remoteproc resource cleanup. The R5F core resets
> >> are deasserted in .prepare() and asserted in .unprepare(), and the cores
> >> themselves are started and halted in .start() and .stop() ops. This
> >> ensures symmetric usage and allows the R5F cores state machine to be
> >> maintained properly between using the sysfs 'state' variable, bind/unbind
> >> and regular module load/unload flows.
> >>
> >> The subsystem is represented as a single remoteproc in LockStep mode, and
> >> as two remoteprocs in Split mode. The driver uses various TI-SCI interfaces
> >> to talk to the System Controller (DMSC) for managing configuration, power
> >> and reset management of these cores. IPC between the A53 cores and the R5
> >> cores is supported through the virtio rpmsg stack using shared memory and
> >> OMAP Mailboxes.
> >>
> >> The AM65x SoCs typically have a single R5FSS in the MCU voltage domain. The
> >> J721E SoCs uses a slightly revised IP and typically have three R5FSSs, with
> >> one cluster present within the MCU voltage domain (MCU_R5FSS0), and the
> >> remaining two clusters present in the MAIN voltage domain (MAIN_R5FSS0 and
> >> MAIN_R5FSS1). The integration of these clusters on J721E SoC is also
> >> slightly different in that these IPs do support an actual local reset line,
> >> while they are a no-op on AM65x SoCs.
> >>
> >> Signed-off-by: Suman Anna <s-anna@ti.com>
> >> ---
> >>   drivers/remoteproc/Kconfig               |   16 +
> >>   drivers/remoteproc/Makefile              |    1 +
> >>   drivers/remoteproc/ti_k3_r5_remoteproc.c | 1346 ++++++++++++++++++++++
> >>   3 files changed, 1363 insertions(+)
> >>   create mode 100644 drivers/remoteproc/ti_k3_r5_remoteproc.c
> >>
> >> diff --git a/drivers/remoteproc/Kconfig b/drivers/remoteproc/Kconfig
> >> index de3862c15fcc..073048b4c0fb 100644
> >> --- a/drivers/remoteproc/Kconfig
> >> +++ b/drivers/remoteproc/Kconfig
> >> @@ -224,6 +224,22 @@ config STM32_RPROC
> >>
> >>        This can be either built-in or a loadable module.
> >>
> >> +config TI_K3_R5_REMOTEPROC
> >> +    tristate "TI K3 R5 remoteproc support"
> >> +    depends on ARCH_K3
> >> +    select MAILBOX
> >> +    select OMAP2PLUS_MBOX
> >> +    help
> >> +      Say y here to support TI's R5F remote processor subsystems
> >> +      on various TI K3 family of SoCs through the remote processor
> >> +      framework.
> >> +
> >> +      You want to say y here in order to offload some processing
> >> +      tasks to these processors
> >> +
> >> +      It's safe to say N here if you're not interested in utilizing
> >> +      a slave processor
> >> +
> >>   endif # REMOTEPROC
> >>
> >>   endmenu
> >> diff --git a/drivers/remoteproc/Makefile b/drivers/remoteproc/Makefile
> >> index e30a1b15fbac..00ba826818af 100644
> >> --- a/drivers/remoteproc/Makefile
> >> +++ b/drivers/remoteproc/Makefile
> >> @@ -28,3 +28,4 @@ qcom_wcnss_pil-y                   += qcom_wcnss_iris.o
> >>   obj-$(CONFIG_ST_REMOTEPROC)                += st_remoteproc.o
> >>   obj-$(CONFIG_ST_SLIM_REMOTEPROC)   += st_slim_rproc.o
> >>   obj-$(CONFIG_STM32_RPROC)          += stm32_rproc.o
> >> +obj-$(CONFIG_TI_K3_R5_REMOTEPROC)   += ti_k3_r5_remoteproc.o
> >> diff --git a/drivers/remoteproc/ti_k3_r5_remoteproc.c b/drivers/remoteproc/ti_k3_r5_remoteproc.c
> >> new file mode 100644
> >> index 000000000000..655f8f14c37d
> >> --- /dev/null
> >> +++ b/drivers/remoteproc/ti_k3_r5_remoteproc.c
> >> @@ -0,0 +1,1346 @@
> >> +// SPDX-License-Identifier: GPL-2.0-only
> >> +/*
> >> + * TI K3 R5F (MCU) Remote Processor driver
> >> + *
> >> + * Copyright (C) 2017-2020 Texas Instruments Incorporated - http://www.ti.com/
> >> + *  Suman Anna <s-anna@ti.com>
> >> + */
> >> +
> >> +#include <linux/dma-mapping.h>
> >> +#include <linux/err.h>
> >> +#include <linux/interrupt.h>
> >> +#include <linux/kernel.h>
> >> +#include <linux/mailbox_client.h>
> >> +#include <linux/module.h>
> >> +#include <linux/of_device.h>
> >> +#include <linux/of_address.h>
> >> +#include <linux/of_reserved_mem.h>
> >> +#include <linux/platform_device.h>
> >> +#include <linux/pm_runtime.h>
> >> +#include <linux/remoteproc.h>
> >> +#include <linux/omap-mailbox.h>
> >> +#include <linux/reset.h>
> >> +#include <linux/soc/ti/ti_sci_protocol.h>
> >> +
> >> +#include "omap_remoteproc.h"
> >> +#include "remoteproc_internal.h"
> >> +#include "ti_sci_proc.h"
> >> +
> >> +/* This address can either be for ATCM or BTCM with the other at address 0x0 */
> >> +#define K3_R5_TCM_DEV_ADDR  0x41010000
> >> +
> >> +/* R5 TI-SCI Processor Configuration Flags */
> >> +#define PROC_BOOT_CFG_FLAG_R5_DBG_EN                        0x00000001
> >> +#define PROC_BOOT_CFG_FLAG_R5_DBG_NIDEN                     0x00000002
> >> +#define PROC_BOOT_CFG_FLAG_R5_LOCKSTEP                      0x00000100
> >> +#define PROC_BOOT_CFG_FLAG_R5_TEINIT                        0x00000200
> >> +#define PROC_BOOT_CFG_FLAG_R5_NMFI_EN                       0x00000400
> >> +#define PROC_BOOT_CFG_FLAG_R5_TCM_RSTBASE           0x00000800
> >> +#define PROC_BOOT_CFG_FLAG_R5_BTCM_EN                       0x00001000
> >> +#define PROC_BOOT_CFG_FLAG_R5_ATCM_EN                       0x00002000
> >> +
> >> +/* R5 TI-SCI Processor Control Flags */
> >> +#define PROC_BOOT_CTRL_FLAG_R5_CORE_HALT            0x00000001
> >> +
> >> +/* R5 TI-SCI Processor Status Flags */
> >> +#define PROC_BOOT_STATUS_FLAG_R5_WFE                        0x00000001
> >> +#define PROC_BOOT_STATUS_FLAG_R5_WFI                        0x00000002
> >> +#define PROC_BOOT_STATUS_FLAG_R5_CLK_GATED          0x00000004
> >> +#define PROC_BOOT_STATUS_FLAG_R5_LOCKSTEP_PERMITTED 0x00000100
> >> +
> >> +/**
> >> + * struct k3_r5_mem - internal memory structure
> >> + * @cpu_addr: MPU virtual address of the memory region
> >> + * @bus_addr: Bus address used to access the memory region
> >> + * @dev_addr: Device address from remoteproc view
> >> + * @size: Size of the memory region
> >> + */
> >> +struct k3_r5_mem {
> >> +    void __iomem *cpu_addr;
> >> +    phys_addr_t bus_addr;
> >> +    u32 dev_addr;
> >> +    size_t size;
> >> +};
> >> +
> >> +enum cluster_mode {
> >> +    CLUSTER_MODE_SPLIT = 0,
> >> +    CLUSTER_MODE_LOCKSTEP,
> >> +};
> >> +
> >> +/**
> >> + * struct k3_r5_cluster - K3 R5F Cluster structure
> >> + * @dev: cached device pointer
> >> + * @mode: Mode to configure the Cluster - Split or LockStep
> >> + * @cores: list of R5 cores within the cluster
> >> + */
> >> +struct k3_r5_cluster {
> >> +    struct device *dev;
> >> +    enum cluster_mode mode;
> >> +    struct list_head cores;
> >> +};
> >> +
> >> +/**
> >> + * struct k3_r5_core - K3 R5 core structure
> >> + * @elem: linked list item
> >> + * @dev: cached device pointer
> >> + * @rproc: rproc handle representing this core
> >> + * @mem: internal memory regions data
> >> + * @num_mems: number of internal memory regions
> >> + * @reset: reset control handle
> >> + * @tsp: TI-SCI processor control handle
> >> + * @ti_sci: TI-SCI handle
> >> + * @ti_sci_id: TI-SCI device identifier
> >> + * @atcm_enable: flag to control ATCM enablement
> >> + * @btcm_enable: flag to control BTCM enablement
> >> + * @loczrama: flag to dictate which TCM is at device address 0x0
> >> + */
> >> +struct k3_r5_core {
> >> +    struct list_head elem;
> >> +    struct device *dev;
> >> +    struct rproc *rproc;
> >> +    struct k3_r5_mem *mem;
> >> +    int num_mems;
> >> +    struct reset_control *reset;
> >> +    struct ti_sci_proc *tsp;
> >> +    const struct ti_sci_handle *ti_sci;
> >> +    u32 ti_sci_id;
> >> +    u32 atcm_enable;
> >> +    u32 btcm_enable;
> >> +    u32 loczrama;
> >> +};
> >> +
> >> +/**
> >> + * struct k3_r5_rproc - K3 remote processor state
> >> + * @dev: cached device pointer
> >> + * @cluster: cached pointer to parent cluster structure
> >> + * @mbox: mailbox channel handle
> >> + * @client: mailbox client to request the mailbox channel
> >> + * @rproc: rproc handle
> >> + * @core: cached pointer to r5 core structure being used
> >> + * @rmem: reserved memory regions data
> >> + * @num_rmems: number of reserved memory regions
> >> + */
> >> +struct k3_r5_rproc {
> >> +    struct device *dev;
> >> +    struct k3_r5_cluster *cluster;
> >> +    struct mbox_chan *mbox;
> >> +    struct mbox_client client;
> >> +    struct rproc *rproc;
> >> +    struct k3_r5_core *core;
> >> +    struct k3_r5_mem *rmem;
> >> +    int num_rmems;
> >> +};
> >> +
> >> +/**
> >> + * k3_r5_rproc_mbox_callback() - inbound mailbox message handler
> >> + * @client: mailbox client pointer used for requesting the mailbox channel
> >> + * @data: mailbox payload
> >> + *
> >> + * This handler is invoked by the OMAP mailbox driver whenever a mailbox
> >> + * message is received. Usually, the mailbox payload simply contains
> >> + * the index of the virtqueue that is kicked by the remote processor,
> >> + * and we let remoteproc core handle it.
> >> + *
> >> + * In addition to virtqueue indices, we also have some out-of-band values
> >> + * that indicate different events. Those values are deliberately very
> >> + * large so they don't coincide with virtqueue indices.
> >> + */
> >> +static void k3_r5_rproc_mbox_callback(struct mbox_client *client, void *data)
> >> +{
> >> +    struct k3_r5_rproc *kproc = container_of(client, struct k3_r5_rproc,
> >> +                                            client);
> >> +    struct device *dev = kproc->rproc->dev.parent;
> >> +    const char *name = kproc->rproc->name;
> >> +    u32 msg = omap_mbox_message(data);
> >> +
> >> +    dev_dbg(dev, "mbox msg: 0x%x\n", msg);
> >> +
> >> +    switch (msg) {
> >> +    case RP_MBOX_CRASH:
> >> +            /*
> >> +             * remoteproc detected an exception, but error recovery is not
> >> +             * supported. So, just log this for now
> >> +             */
> >> +            dev_err(dev, "K3 R5F rproc %s crashed\n", name);
> >> +            break;
> >> +    case RP_MBOX_ECHO_REPLY:
> >> +            dev_info(dev, "received echo reply from %s\n", name);
> >> +            break;
> >> +    default:
> >> +            /* silently handle all other valid messages */
> >> +            if (msg >= RP_MBOX_READY && msg < RP_MBOX_END_MSG)
> >> +                    return;
> >> +            if (msg > kproc->rproc->max_notifyid) {
> >> +                    dev_dbg(dev, "dropping unknown message 0x%x", msg);
> >> +                    return;
> >> +            }
> >> +            /* msg contains the index of the triggered vring */
> >> +            if (rproc_vq_interrupt(kproc->rproc, msg) == IRQ_NONE)
> >> +                    dev_dbg(dev, "no message was found in vqid %d\n", msg);
> >> +    }
> >> +}
> >> +
> >> +/* kick a virtqueue */
> >> +static void k3_r5_rproc_kick(struct rproc *rproc, int vqid)
> >> +{
> >> +    struct k3_r5_rproc *kproc = rproc->priv;
> >> +    struct device *dev = rproc->dev.parent;
> >> +    mbox_msg_t msg = (mbox_msg_t)vqid;
> >> +    int ret;
> >> +
> >> +    /* send the index of the triggered virtqueue in the mailbox payload */
> >> +    ret = mbox_send_message(kproc->mbox, (void *)msg);
> >> +    if (ret < 0)
> >> +            dev_err(dev, "failed to send mailbox message, status = %d\n",
> >> +                    ret);
> >> +}
> >> +
> >> +static int k3_r5_split_reset(struct k3_r5_core *core)
> >> +{
> >> +    int ret;
> >> +
> >> +    ret = reset_control_assert(core->reset);
> >> +    if (ret) {
> >> +            dev_err(core->dev, "local-reset assert failed, ret = %d\n",
> >> +                    ret);
> >> +            return ret;
> >> +    }
> >> +
> >> +    ret = core->ti_sci->ops.dev_ops.put_device(core->ti_sci,
> >> +                                               core->ti_sci_id);
> >> +    if (ret) {
> >> +            dev_err(core->dev, "module-reset assert failed, ret = %d\n",
> >> +                    ret);
> >> +            if (reset_control_deassert(core->reset))
> >> +                    dev_warn(core->dev, "local-reset deassert back failed\n");
> >> +    }
> >> +
> >> +    return ret;
> >> +}
> >> +
> >> +static int k3_r5_split_release(struct k3_r5_core *core)
> >> +{
> >> +    int ret;
> >> +
> >> +    ret = core->ti_sci->ops.dev_ops.get_device(core->ti_sci,
> >> +                                               core->ti_sci_id);
> >> +    if (ret) {
> >> +            dev_err(core->dev, "module-reset deassert failed, ret = %d\n",
> >> +                    ret);
> >> +            return ret;
> >> +    }
> >> +
> >> +    ret = reset_control_deassert(core->reset);
> >> +    if (ret) {
> >> +            dev_err(core->dev, "local-reset deassert failed, ret = %d\n",
> >> +                    ret);
> >> +            if (core->ti_sci->ops.dev_ops.put_device(core->ti_sci,
> >> +                                                     core->ti_sci_id))
> >> +                    dev_warn(core->dev, "module-reset assert back failed\n");
> >> +    }
> >> +
> >> +    return ret;
> >> +}
> >> +
> >> +static int k3_r5_lockstep_reset(struct k3_r5_cluster *cluster)
> >> +{
> >> +    struct k3_r5_core *core;
> >> +    int ret;
> >> +
> >> +    /* assert local reset on all applicable cores */
> >> +    list_for_each_entry(core, &cluster->cores, elem) {
> >> +            ret = reset_control_assert(core->reset);
> >> +            if (ret) {
> >> +                    dev_err(core->dev, "local-reset assert failed, ret = %d\n",
> >> +                            ret);
> >> +                    core = list_prev_entry(core, elem);
> >> +                    goto unroll_local_reset;
> >> +            }
> >> +    }
> >> +
> >> +    /* disable PSC modules on all applicable cores */
> >> +    list_for_each_entry(core, &cluster->cores, elem) {
> >> +            ret = core->ti_sci->ops.dev_ops.put_device(core->ti_sci,
> >> +                                                       core->ti_sci_id);
> >> +            if (ret) {
> >> +                    dev_err(core->dev, "module-reset assert failed, ret = %d\n",
> >> +                            ret);
> >> +                    goto unroll_module_reset;
> >> +            }
> >> +    }
> >> +
> >> +    return 0;
> >> +
> >> +unroll_module_reset:
> >> +    list_for_each_entry_continue_reverse(core, &cluster->cores, elem) {
> >> +            if (core->ti_sci->ops.dev_ops.put_device(core->ti_sci,
> >> +                                                     core->ti_sci_id))
> >> +                    dev_warn(core->dev, "module-reset assert back failed\n");
> >> +    }
> >> +    core = list_last_entry(&cluster->cores, struct k3_r5_core, elem);
> >> +unroll_local_reset:
> >> +    list_for_each_entry_from_reverse(core, &cluster->cores, elem) {
> >> +            if (reset_control_deassert(core->reset))
> >> +                    dev_warn(core->dev, "local-reset deassert back failed\n");
> >> +    }
> >> +
> >> +    return ret;
> >> +}
> >> +
> >> +static int k3_r5_lockstep_release(struct k3_r5_cluster *cluster)
> >> +{
> >> +    struct k3_r5_core *core;
> >> +    int ret;
> >> +
> >> +    /* enable PSC modules on all applicable cores */
> >> +    list_for_each_entry_reverse(core, &cluster->cores, elem) {
> >
> > Out of curiosity, any HW specific reason to start with the last core?
>
> Yeah, that is the order required by HW. We have different sequencing
> between LockStep and Split-modes. Please see the comments added in the
> descriptions for k3_r5_rproc_start() and k3_r5_rproc_stop() functions below.
>

Thanks for the explanation.

> >
> >> +            ret = core->ti_sci->ops.dev_ops.get_device(core->ti_sci,
> >> +                                                       core->ti_sci_id);
> >> +            if (ret) {
> >> +                    dev_err(core->dev, "module-reset deassert failed, ret = %d\n",
> >> +                            ret);
> >> +                    core = list_next_entry(core, elem);
> >> +                    goto unroll_module_reset;
> >> +            }
> >> +    }
> >> +
> >> +    /* deassert local reset on all applicable cores */
> >> +    list_for_each_entry_reverse(core, &cluster->cores, elem) {
> >> +            ret = reset_control_deassert(core->reset);
> >> +            if (ret) {
> >> +                    dev_err(core->dev, "module-reset deassert failed, ret = %d\n",
> >> +                            ret);
> >> +                    goto unroll_local_reset;
> >> +            }
> >> +    }
> >> +
> >> +    return 0;
> >> +
> >> +unroll_local_reset:
> >> +    list_for_each_entry_continue(core, &cluster->cores, elem) {
> >> +            if (reset_control_assert(core->reset))
> >> +                    dev_warn(core->dev, "local-reset assert back failed\n");
> >> +    }
> >> +    core = list_first_entry(&cluster->cores, struct k3_r5_core, elem);
> >> +unroll_module_reset:
> >> +    list_for_each_entry_from(core, &cluster->cores, elem) {
> >> +            if (core->ti_sci->ops.dev_ops.put_device(core->ti_sci,
> >> +                                                     core->ti_sci_id))
> >> +                    dev_warn(core->dev, "module-reset assert back failed\n");
> >> +    }
> >> +
> >> +    return ret;
> >> +}
> >> +
> >> +static inline int k3_r5_core_halt(struct k3_r5_core *core)
> >> +{
> >> +    return ti_sci_proc_set_control(core->tsp,
> >> +                                   PROC_BOOT_CTRL_FLAG_R5_CORE_HALT, 0);
> >> +}
> >> +
> >> +static inline int k3_r5_core_run(struct k3_r5_core *core)
> >> +{
> >> +    return ti_sci_proc_set_control(core->tsp,
> >> +                                   0, PROC_BOOT_CTRL_FLAG_R5_CORE_HALT);
> >> +}
> >> +
> >> +/*
> >> + * The R5F cores have controls for both a reset and a halt/run. The code
> >> + * execution from DDR requires the initial boot-strapping code to be run
> >> + * from the internal TCMs. This function is used to release the resets on
> >> + * applicable cores to allow loading into the TCMs. The .prepare() ops is
> >> + * invoked by remoteproc core before any firmware loading, and is followed
> >> + * by the .start() ops after loading to actually let the R5 cores run.
> >> + */
> >> +static int k3_r5_rproc_prepare(struct rproc *rproc)
> >> +{
> >> +    struct k3_r5_rproc *kproc = rproc->priv;
> >> +    struct k3_r5_cluster *cluster = kproc->cluster;
> >> +    struct k3_r5_core *core = kproc->core;
> >> +    struct device *dev = kproc->dev;
> >> +    int ret;
> >> +
> >> +    ret = cluster->mode ? k3_r5_lockstep_release(cluster) :
> >> +                          k3_r5_split_release(core);
> >> +    if (ret)
> >> +            dev_err(dev, "unable to enable cores for TCM loading, ret = %d\n",
> >> +                    ret);
> >> +
> >> +    return ret;
> >> +}
> >> +
> >> +/*
> >> + * This function implements the .unprepare() ops and performs the complimentary
> >> + * operations to that of the .prepare() ops. The function is used to assert the
> >> + * resets on all applicable cores for the rproc device (depending on LockStep
> >> + * or Split mode). This completes the second portion of powering down the R5F
> >> + * cores. The cores themselves are only halted in the .stop() ops, and the
> >> + * .unprepare() ops is invoked by the remoteproc core after the remoteproc is
> >> + * stopped.
> >> + */
> >> +static int k3_r5_rproc_unprepare(struct rproc *rproc)
> >> +{
> >> +    struct k3_r5_rproc *kproc = rproc->priv;
> >> +    struct k3_r5_cluster *cluster = kproc->cluster;
> >> +    struct k3_r5_core *core = kproc->core;
> >> +    struct device *dev = kproc->dev;
> >> +    int ret;
> >> +
> >> +    ret = cluster->mode ? k3_r5_lockstep_reset(cluster) :
> >> +                          k3_r5_split_reset(core);
> >> +    if (ret)
> >> +            dev_err(dev, "unable to disable cores, ret = %d\n", ret);
> >> +
> >> +    return ret;
> >> +}
> >> +
> >> +/*
> >> + * The R5F start sequence includes two different operations
> >> + * 1. Configure the boot vector for R5F core(s)
> >> + * 2. Unhalt/Run the R5F core(s)
> >> + *
> >> + * The sequence is different between LockStep and Split modes. The LockStep
> >> + * mode requires the boot vector to be configured only for Core0, and then
> >> + * unhalt both the cores to start the execution - Core1 needs to be unhalted
> >> + * first followed by Core0. The Split-mode requires that Core0 to be maintained
> >> + * always in a higher power state that Core1 (implying Core1 needs to be started
> >> + * always only after Core0 is started).
> >> + */
> >> +static int k3_r5_rproc_start(struct rproc *rproc)
> >> +{
> >> +    struct k3_r5_rproc *kproc = rproc->priv;
> >> +    struct k3_r5_cluster *cluster = kproc->cluster;
> >> +    struct mbox_client *client = &kproc->client;
> >> +    struct device *dev = kproc->dev;
> >> +    struct k3_r5_core *core;
> >> +    u32 boot_addr;
> >> +    int ret;
> >> +
> >> +    client->dev = dev;
> >> +    client->tx_done = NULL;
> >> +    client->rx_callback = k3_r5_rproc_mbox_callback;
> >> +    client->tx_block = false;
> >> +    client->knows_txdone = false;
> >> +
> >> +    kproc->mbox = mbox_request_channel(client, 0);
> >> +    if (IS_ERR(kproc->mbox)) {
> >> +            ret = -EBUSY;
> >> +            dev_err(dev, "mbox_request_channel failed: %ld\n",
> >> +                    PTR_ERR(kproc->mbox));
> >> +            return ret;
> >> +    }
> >
> > Does this needs to be done every time a remote processor is booted or could it
> > be done just once in k3_r5_core_of_init()?
>
> This is to ensure that we are not registering any mailbox callbacks
> until the resource table is parsed and allocated.

I don't see how the callbacks would be used if the resource table
isn't parsed... And if that is somehow and issue callbacks should
simply test if resources are available before proceeding.  In the end
there is nothing wrong with this code, I just find it cumbersome.  But
this is a platform driver so the decision is entirely yours.

>
> >
> >> +
> >> +    /*
> >> +     * Ping the remote processor, this is only for sanity-sake for now;
> >> +     * there is no functional effect whatsoever.
> >> +     *
> >> +     * Note that the reply will _not_ arrive immediately: this message
> >> +     * will wait in the mailbox fifo until the remote processor is booted.
> >> +     */
> >> +    ret = mbox_send_message(kproc->mbox, (void *)RP_MBOX_ECHO_REQUEST);
> >> +    if (ret < 0) {
> >> +            dev_err(dev, "mbox_send_message failed: %d\n", ret);
> >> +            goto put_mbox;
> >> +    }
> >> +
> >> +    boot_addr = rproc->bootaddr;
> >> +    /* TODO: add boot_addr sanity checking */
> >> +    dev_err(dev, "booting R5F core using boot addr = 0x%x\n", boot_addr);
> >
> > s/dev_err()/dev_dbg()
>
> Yes, ok.
>
> >
> >> +
> >> +    /* boot vector need not be programmed for Core1 in LockStep mode */
> >> +    core = kproc->core;
> >> +    ret = ti_sci_proc_set_config(core->tsp, boot_addr, 0, 0);
> >> +    if (ret)
> >> +            goto put_mbox;
> >> +
> >> +    /* unhalt/run all applicable cores */
> >> +    if (cluster->mode) {
> >> +            list_for_each_entry_reverse(core, &cluster->cores, elem) {
> >> +                    ret = k3_r5_core_run(core);
> >> +                    if (ret)
> >> +                            goto unroll_core_run;
> >> +            }
> >> +    } else {
> >> +            ret = k3_r5_core_run(core);
> >> +            if (ret)
> >> +                    goto put_mbox;
> >> +    }
> >> +
> >> +    return 0;
> >> +
> >> +unroll_core_run:
> >> +    list_for_each_entry_continue(core, &cluster->cores, elem) {
> >> +            if (k3_r5_core_halt(core))
> >> +                    dev_warn(core->dev, "core halt back failed\n");
> >> +    }
> >> +put_mbox:
> >> +    mbox_free_channel(kproc->mbox);
> >> +    return ret;
> >> +}
> >> +
> >> +/*
> >> + * The R5F stop function includes the following operations
> >> + * 1. Halt R5F core(s)
> >> + *
> >> + * The sequence is different between LockStep and Split modes, and the order
> >> + * of cores the operations are performed are also in general reverse to that
> >> + * of the start function. The LockStep mode requires each operation to be
> >> + * performed first on Core0 followed by Core1. The Split-mode requires that
> >> + * Core0 to be maintained always in a higher power state that Core1 (implying
> >> + * Core1 needs to be stopped first before Core0).
> >> + *
> >> + * Note that the R5F halt operation in general is not effective when the R5F
> >> + * core is running, but is needed to make sure the core won't run after
> >> + * deasserting the reset the subsequent time. The asserting of reset can
> >> + * be done here, but is preferred to be done in the .unprepare() ops - this
> >> + * maintains the symmetric behavior between the .start(), .stop(), .prepare()
> >> + * and .unprepare() ops, and also balances them well between sysfs 'state'
> >> + * flow and device bind/unbind or module removal.
> >> + */
> >> +static int k3_r5_rproc_stop(struct rproc *rproc)
> >> +{
> >> +    struct k3_r5_rproc *kproc = rproc->priv;
> >> +    struct k3_r5_cluster *cluster = kproc->cluster;
> >> +    struct k3_r5_core *core = kproc->core;
> >> +    int ret;
> >> +
> >> +    /* halt all applicable cores */
> >> +    if (cluster->mode) {
> >> +            list_for_each_entry(core, &cluster->cores, elem) {
> >> +                    ret = k3_r5_core_halt(core);
> >> +                    if (ret) {
> >> +                            core = list_prev_entry(core, elem);
> >> +                            goto unroll_core_halt;
> >> +                    }
> >> +            }
> >> +    } else {
> >> +            ret = k3_r5_core_halt(core);
> >> +            if (ret)
> >> +                    goto out;
> >> +    }
> >> +
> >> +    mbox_free_channel(kproc->mbox);
> >> +
> >> +    return 0;
> >> +
> >> +unroll_core_halt:
> >> +    list_for_each_entry_from_reverse(core, &cluster->cores, elem) {
> >> +            if (k3_r5_core_run(core))
> >> +                    dev_warn(core->dev, "core run back failed\n");
> >> +    }
> >> +out:
> >> +    return ret;
> >> +}
> >> +
> >> +/*
> >> + * Internal Memory translation helper
> >> + *
> >> + * Custom function implementing the rproc .da_to_va ops to provide address
> >> + * translation (device address to kernel virtual address) for internal RAMs
> >> + * present in a DSP or IPU device). The translated addresses can be used
> >> + * either by the remoteproc core for loading, or by any rpmsg bus drivers.
> >> + */
> >> +static void *k3_r5_rproc_da_to_va(struct rproc *rproc, u64 da, size_t len)
> >> +{
> >> +    struct k3_r5_rproc *kproc = rproc->priv;
> >> +    struct k3_r5_core *core = kproc->core;
> >> +    void __iomem *va = NULL;
> >> +    phys_addr_t bus_addr;
> >> +    u32 dev_addr, offset;
> >> +    size_t size;
> >> +    int i;
> >> +
> >> +    if (len == 0)
> >> +            return NULL;
> >> +
> >> +    /* handle both R5 and SoC views of ATCM and BTCM */
> >> +    for (i = 0; i < core->num_mems; i++) {
> >> +            bus_addr = core->mem[i].bus_addr;
> >> +            dev_addr = core->mem[i].dev_addr;
> >> +            size = core->mem[i].size;
> >> +
> >> +            /* handle R5-view addresses of TCMs */
> >> +            if (da >= dev_addr && ((da + len) <= (dev_addr + size))) {
> >> +                    offset = da - dev_addr;
> >> +                    va = core->mem[i].cpu_addr + offset;
> >> +                    return (__force void *)va;
> >> +            }
> >> +
> >> +            /* handle SoC-view addresses of TCMs */
> >> +            if (da >= bus_addr && ((da + len) <= (bus_addr + size))) {
> >> +                    offset = da - bus_addr;
> >> +                    va = core->mem[i].cpu_addr + offset;
> >> +                    return (__force void *)va;
> >> +            }
> >> +    }
> >> +
> >> +    /* handle static DDR reserved memory regions */
> >> +    for (i = 0; i < kproc->num_rmems; i++) {
> >> +            dev_addr = kproc->rmem[i].dev_addr;
> >> +            size = kproc->rmem[i].size;
> >> +
> >> +            if (da >= dev_addr && ((da + len) <= (dev_addr + size))) {
> >> +                    offset = da - dev_addr;
> >> +                    va = kproc->rmem[i].cpu_addr + offset;
> >> +                    return (__force void *)va;
> >> +            }
> >> +    }
> >> +
> >> +    return NULL;
> >> +}
> >> +
> >> +static const struct rproc_ops k3_r5_rproc_ops = {
> >> +    .prepare        = k3_r5_rproc_prepare,
> >> +    .unprepare      = k3_r5_rproc_unprepare,
> >> +    .start          = k3_r5_rproc_start,
> >> +    .stop           = k3_r5_rproc_stop,
> >> +    .kick           = k3_r5_rproc_kick,
> >> +    .da_to_va       = k3_r5_rproc_da_to_va,
> >> +};
> >> +
> >> +static const char *k3_r5_rproc_get_firmware(struct device *dev)
> >> +{
> >> +    const char *fw_name;
> >> +    int ret;
> >> +
> >> +    ret = of_property_read_string(dev->of_node, "firmware-name",
> >> +                                  &fw_name);
> >> +    if (ret) {
> >> +            dev_err(dev, "failed to parse firmware-name property, ret = %d\n",
> >> +                    ret);
> >> +            return ERR_PTR(ret);
> >> +    }
> >> +
> >> +    return fw_name;
> >> +}
> >> +
> >> +static int k3_r5_rproc_configure(struct k3_r5_rproc *kproc)
> >> +{
> >> +    struct k3_r5_cluster *cluster = kproc->cluster;
> >> +    struct device *dev = kproc->dev;
> >> +    struct k3_r5_core *core0, *core, *temp;
> >> +    u32 ctrl = 0, cfg = 0, stat = 0;
> >> +    u32 set_cfg = 0, clr_cfg = 0;
> >> +    u64 boot_vec = 0;
> >> +    bool lockstep_en;
> >> +    int ret;
> >> +
> >> +    core0 = list_first_entry(&cluster->cores, struct k3_r5_core, elem);
> >> +    core = cluster->mode ? core0 : kproc->core;
> >> +
> >> +    ret = ti_sci_proc_get_status(core->tsp, &boot_vec, &cfg, &ctrl,
> >> +                                 &stat);
> >> +    if (ret < 0)
> >> +            return ret;
> >> +
> >> +    dev_dbg(dev, "boot_vector = 0x%llx, cfg = 0x%x ctrl = 0x%x stat = 0x%x\n",
> >> +            boot_vec, cfg, ctrl, stat);
> >> +
> >> +    lockstep_en = !!(stat & PROC_BOOT_STATUS_FLAG_R5_LOCKSTEP_PERMITTED);
> >> +    if (!lockstep_en && cluster->mode) {
> >> +            dev_err(cluster->dev, "lockstep mode not permitted, force configuring for split-mode\n");
> >> +            cluster->mode = 0;
> >> +    }
> >> +
> >> +    /* always enable ARM mode and set boot vector to 0 */
> >> +    boot_vec = 0x0;
> >> +    if (core == core0) {
> >> +            clr_cfg = PROC_BOOT_CFG_FLAG_R5_TEINIT;
> >> +            /*
> >> +             * LockStep configuration bit is Read-only on Split-mode _only_
> >> +             * devices and system firmware will NACK any requests with the
> >> +             * bit configured, so program it only on permitted devices
> >> +             */
> >> +            if (lockstep_en)
> >> +                    clr_cfg |= PROC_BOOT_CFG_FLAG_R5_LOCKSTEP;
> >> +    }
> >> +
> >> +    if (core->atcm_enable)
> >> +            set_cfg |= PROC_BOOT_CFG_FLAG_R5_ATCM_EN;
> >> +    else
> >> +            clr_cfg |= PROC_BOOT_CFG_FLAG_R5_ATCM_EN;
> >> +
> >> +    if (core->btcm_enable)
> >> +            set_cfg |= PROC_BOOT_CFG_FLAG_R5_BTCM_EN;
> >> +    else
> >> +            clr_cfg |= PROC_BOOT_CFG_FLAG_R5_BTCM_EN;
> >> +
> >> +    if (core->loczrama)
> >> +            set_cfg |= PROC_BOOT_CFG_FLAG_R5_TCM_RSTBASE;
> >> +    else
> >> +            clr_cfg |= PROC_BOOT_CFG_FLAG_R5_TCM_RSTBASE;
> >> +
> >> +    if (cluster->mode) {
> >> +            /*
> >> +             * work around system firmware limitations to make sure both
> >> +             * cores are programmed symmetrically in LockStep. LockStep
> >> +             * and TEINIT config is only allowed with Core0.
> >> +             */
> >> +            list_for_each_entry(temp, &cluster->cores, elem) {
> >> +                    ret = k3_r5_core_halt(core);
> >> +                    if (ret)
> >> +                            goto out;
> >> +
> >> +                    if (temp != core) {
> >> +                            clr_cfg &= ~PROC_BOOT_CFG_FLAG_R5_LOCKSTEP;
> >> +                            clr_cfg &= ~PROC_BOOT_CFG_FLAG_R5_TEINIT;
> >> +                    }
> >> +                    ret = ti_sci_proc_set_config(temp->tsp, boot_vec,
> >> +                                                 set_cfg, clr_cfg);
> >> +                    if (ret)
> >> +                            goto out;
> >> +            }
> >> +
> >> +            set_cfg = PROC_BOOT_CFG_FLAG_R5_LOCKSTEP;
> >> +            clr_cfg = 0;
> >> +            ret = ti_sci_proc_set_config(core->tsp, boot_vec,
> >> +                                         set_cfg, clr_cfg);
> >> +    } else {
> >> +            ret = k3_r5_core_halt(core);
> >> +            if (ret)
> >> +                    goto out;
> >> +
> >> +            ret = ti_sci_proc_set_config(core->tsp, boot_vec,
> >> +                                         set_cfg, clr_cfg);
> >> +    }
> >> +
> >> +out:
> >> +    return ret;
> >> +}
> >> +
> >> +static int k3_r5_reserved_mem_init(struct k3_r5_rproc *kproc)
> >> +{
> >> +    struct device *dev = kproc->dev;
> >> +    struct device_node *np = dev->of_node;
> >> +    struct device_node *rmem_np;
> >> +    struct reserved_mem *rmem;
> >> +    int num_rmems;
> >> +    int ret, i;
> >> +
> >> +    num_rmems = of_property_count_elems_of_size(np, "memory-region",
> >> +                                                sizeof(phandle));
> >> +    if (num_rmems <= 0) {
> >> +            dev_err(dev, "device does not have reserved memory regions, ret = %d\n",
> >> +                    num_rmems);
> >> +            return -EINVAL;
> >> +    }
> >> +    if (num_rmems < 2) {
> >> +            dev_err(dev, "device needs atleast two memory regions to be defined, num = %d\n",
> >> +                    num_rmems);
> >> +            return -EINVAL;
> >> +    }
> >> +
> >> +    /* use reserved memory region 0 for vring DMA allocations */
> >> +    ret = of_reserved_mem_device_init_by_idx(dev, np, 0);
> >> +    if (ret) {
> >> +            dev_err(dev, "device cannot initialize DMA pool, ret = %d\n",
> >> +                    ret);
> >> +            return ret;
> >> +    }
> >> +
> >> +    num_rmems--;
> >> +    kproc->rmem = kcalloc(num_rmems, sizeof(*kproc->rmem), GFP_KERNEL);
> >> +    if (!kproc->rmem) {
> >> +            ret = -ENOMEM;
> >> +            goto release_rmem;
> >> +    }
> >> +
> >> +    /* use remaining reserved memory regions for static carveouts */
> >> +    for (i = 0; i < num_rmems; i++) {
> >> +            rmem_np = of_parse_phandle(np, "memory-region", i + 1);
> >> +            if (!rmem_np) {
> >> +                    ret = -EINVAL;
> >> +                    goto unmap_rmem;
> >> +            }
> >> +
> >> +            rmem = of_reserved_mem_lookup(rmem_np);
> >> +            if (!rmem) {
> >> +                    of_node_put(rmem_np);
> >> +                    ret = -EINVAL;
> >> +                    goto unmap_rmem;
> >> +            }
> >> +            of_node_put(rmem_np);
> >> +
> >> +            kproc->rmem[i].bus_addr = rmem->base;
> >> +            /* 64-bit address regions currently not supported */
> >> +            kproc->rmem[i].dev_addr = (u32)rmem->base;
> >
> > Because the bus and the device addresses are the same I have to deduce the AP
> > and the R5 have the same view of the memory.  Please add a comment to assert
> > that is really the case.
>
> Yes for now, since we are not using the Region Address Translator yet
> which would have provided address extension from 32-bit device addresses
> to 64-bit bus addresses.

Ok, that makes sense.  Just add a comment so that nobody thinks it's a mistake.

Thanks,
Mathieu

>
> regards
> Suman
>
> >
> >> +            kproc->rmem[i].size = rmem->size;
> >> +            kproc->rmem[i].cpu_addr = ioremap_wc(rmem->base, rmem->size);
> >> +            if (!kproc->rmem[i].cpu_addr) {
> >> +                    dev_err(dev, "failed to map reserved memory#%d at %pa of size %pa\n",
> >> +                            i + 1, &rmem->base, &rmem->size);
> >> +                    ret = -ENOMEM;
> >> +                    goto unmap_rmem;
> >> +            }
> >> +
> >> +            dev_dbg(dev, "reserved memory%d: bus addr %pa size 0x%zx va %pK da 0x%x\n",
> >> +                    i + 1, &kproc->rmem[i].bus_addr,
> >> +                    kproc->rmem[i].size, kproc->rmem[i].cpu_addr,
> >> +                    kproc->rmem[i].dev_addr);
> >> +    }
> >> +    kproc->num_rmems = num_rmems;
> >> +
> >> +    return 0;
> >> +
> >> +unmap_rmem:
> >> +    for (i--; i >= 0; i--) {
> >> +            if (kproc->rmem[i].cpu_addr)
> >> +                    iounmap(kproc->rmem[i].cpu_addr);
> >> +    }
> >> +    kfree(kproc->rmem);
> >> +release_rmem:
> >> +    of_reserved_mem_device_release(dev);
> >> +    return ret;
> >> +}
> >> +
> >> +static void k3_r5_reserved_mem_exit(struct k3_r5_rproc *kproc)
> >> +{
> >> +    int i;
> >> +
> >> +    for (i = 0; i < kproc->num_rmems; i++)
> >> +            iounmap(kproc->rmem[i].cpu_addr);
> >> +    kfree(kproc->rmem);
> >> +
> >> +    of_reserved_mem_device_release(kproc->dev);
> >> +}
> >> +
> >> +static int k3_r5_cluster_rproc_init(struct platform_device *pdev)
> >> +{
> >> +    struct k3_r5_cluster *cluster = platform_get_drvdata(pdev);
> >> +    struct device *dev = &pdev->dev;
> >> +    struct k3_r5_rproc *kproc;
> >> +    struct k3_r5_core *core, *core1;
> >> +    struct device *cdev;
> >> +    const char *fw_name;
> >> +    struct rproc *rproc;
> >> +    int ret;
> >> +
> >> +    core1 = list_last_entry(&cluster->cores, struct k3_r5_core, elem);
> >> +    list_for_each_entry(core, &cluster->cores, elem) {
> >> +            cdev = core->dev;
> >> +            fw_name = k3_r5_rproc_get_firmware(cdev);
> >> +            if (IS_ERR(fw_name)) {
> >> +                    ret = PTR_ERR(fw_name);
> >> +                    goto out;
> >> +            }
> >> +
> >> +            rproc = rproc_alloc(cdev, dev_name(cdev), &k3_r5_rproc_ops,
> >> +                                fw_name, sizeof(*kproc));
> >> +            if (!rproc) {
> >> +                    ret = -ENOMEM;
> >> +                    goto out;
> >> +            }
> >> +
> >> +            /* K3 R5s have a Region Address Translator (RAT) but no MMU */
> >> +            rproc->has_iommu = false;
> >> +            /* error recovery is not supported at present */
> >> +            rproc->recovery_disabled = true;
> >> +
> >> +            kproc = rproc->priv;
> >> +            kproc->cluster = cluster;
> >> +            kproc->core = core;
> >> +            kproc->dev = cdev;
> >> +            kproc->rproc = rproc;
> >> +            core->rproc = rproc;
> >> +
> >> +            ret = k3_r5_rproc_configure(kproc);
> >> +            if (ret) {
> >> +                    dev_err(dev, "initial configure failed, ret = %d\n",
> >> +                            ret);
> >> +                    goto err_config;
> >> +            }
> >> +
> >> +            ret = k3_r5_reserved_mem_init(kproc);
> >> +            if (ret) {
> >> +                    dev_err(dev, "reserved memory init failed, ret = %d\n",
> >> +                            ret);
> >> +                    goto err_config;
> >> +            }
> >> +
> >> +            ret = rproc_add(rproc);
> >> +            if (ret) {
> >> +                    dev_err(dev, "rproc_add failed, ret = %d\n", ret);
> >> +                    goto err_add;
> >> +            }
> >> +
> >> +            /* create only one rproc in lockstep mode */
> >> +            if (cluster->mode)
> >> +                    break;
> >> +    }
> >> +
> >> +    return 0;
> >> +
> >> +err_split:
> >> +    rproc_del(rproc);
> >> +err_add:
> >> +    k3_r5_reserved_mem_exit(kproc);
> >> +err_config:
> >> +    rproc_free(rproc);
> >> +    core->rproc = NULL;
> >> +out:
> >> +    /* undo core0 upon any failures on core1 in split-mode */
> >> +    if (!cluster->mode && core == core1) {
> >> +            core = list_prev_entry(core, elem);
> >> +            rproc = core->rproc;
> >> +            kproc = rproc->priv;
> >> +            goto err_split;
> >> +    }
> >> +    return ret;
> >> +}
> >> +
> >> +static int k3_r5_cluster_rproc_exit(struct platform_device *pdev)
> >> +{
> >> +    struct k3_r5_cluster *cluster = platform_get_drvdata(pdev);
> >> +    struct k3_r5_rproc *kproc;
> >> +    struct k3_r5_core *core;
> >> +    struct rproc *rproc;
> >> +
> >> +    /*
> >> +     * lockstep mode has only one rproc associated with first core, whereas
> >> +     * split-mode has two rprocs associated with each core, and requires
> >> +     * that core1 be powered down first
> >> +     */
> >> +    core = cluster->mode ?
> >> +            list_first_entry(&cluster->cores, struct k3_r5_core, elem) :
> >> +            list_last_entry(&cluster->cores, struct k3_r5_core, elem);
> >> +
> >> +    list_for_each_entry_from_reverse(core, &cluster->cores, elem) {
> >> +            rproc = core->rproc;
> >> +            kproc = rproc->priv;
> >> +
> >> +            rproc_del(rproc);
> >> +
> >> +            k3_r5_reserved_mem_exit(kproc);
> >> +
> >> +            rproc_free(rproc);
> >> +            core->rproc = NULL;
> >> +    }
> >> +
> >> +    return 0;
> >> +}
> >> +
> >> +static int k3_r5_core_of_get_internal_memories(struct platform_device *pdev,
> >> +                                           struct k3_r5_core *core)
> >> +{
> >> +    static const char * const mem_names[] = {"atcm", "btcm"};
> >> +    struct device *dev = &pdev->dev;
> >> +    struct resource *res;
> >> +    int num_mems;
> >> +    int i, ret;
> >> +
> >> +    num_mems = ARRAY_SIZE(mem_names);
> >> +    core->mem = devm_kcalloc(dev, num_mems, sizeof(*core->mem), GFP_KERNEL);
> >> +    if (!core->mem)
> >> +            return -ENOMEM;
> >> +
> >> +    for (i = 0; i < num_mems; i++) {
> >> +            res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
> >> +                                               mem_names[i]);
> >> +            if (!res) {
> >> +                    dev_err(dev, "found no memory resource for %s\n",
> >> +                            mem_names[i]);
> >> +                    ret = -EINVAL;
> >> +                    goto fail;
> >> +            }
> >> +            if (!devm_request_mem_region(dev, res->start,
> >> +                                         resource_size(res),
> >> +                                         dev_name(dev))) {
> >> +                    dev_err(dev, "could not request %s region for resource\n",
> >> +                            mem_names[i]);
> >> +                    ret = -EBUSY;
> >> +                    goto fail;
> >> +            }
> >> +
> >> +            /*
> >> +             * TCMs are designed in general to support RAM-like backing
> >> +             * memories. So, map these as Normal Non-Cached memories. This
> >> +             * also avoids/fixes any potential alignment faults due to
> >> +             * unaligned data accesses when using memcpy() or memset()
> >> +             * functions (normally seen with device type memory).
> >> +             */
> >> +            core->mem[i].cpu_addr = devm_ioremap_wc(dev, res->start,
> >> +                                                    resource_size(res));
> >> +            if (IS_ERR(core->mem[i].cpu_addr)) {
> >> +                    dev_err(dev, "failed to map %s memory\n", mem_names[i]);
> >> +                    ret = PTR_ERR(core->mem[i].cpu_addr);
> >> +                    devm_release_mem_region(dev, res->start,
> >> +                                            resource_size(res));
> >> +                    goto fail;
> >> +            }
> >> +            core->mem[i].bus_addr = res->start;
> >> +
> >> +            /*
> >> +             * TODO:
> >> +             * The R5F cores can place ATCM & BTCM anywhere in its address
> >> +             * based on the corresponding Region Registers in the System
> >> +             * Control coprocessor. For now, place ATCM and BTCM at
> >> +             * addresses 0 and 0x41010000 (same as the bus address on AM65x
> >> +             * SoCs) based on loczrama setting
> >> +             */
> >> +            if (!strcmp(mem_names[i], "atcm")) {
> >> +                    core->mem[i].dev_addr = core->loczrama ?
> >> +                                                    0 : K3_R5_TCM_DEV_ADDR;
> >> +            } else {
> >> +                    core->mem[i].dev_addr = core->loczrama ?
> >> +                                                    K3_R5_TCM_DEV_ADDR : 0;
> >> +            }
> >> +            core->mem[i].size = resource_size(res);
> >> +
> >> +            dev_dbg(dev, "memory %8s: bus addr %pa size 0x%zx va %pK da 0x%x\n",
> >> +                    mem_names[i], &core->mem[i].bus_addr,
> >> +                    core->mem[i].size, core->mem[i].cpu_addr,
> >> +                    core->mem[i].dev_addr);
> >> +    }
> >> +    core->num_mems = num_mems;
> >> +
> >> +    return 0;
> >> +
> >> +fail:
> >> +    for (i--; i >= 0; i--) {
> >> +            devm_iounmap(dev, core->mem[i].cpu_addr);
> >> +            devm_release_mem_region(dev, core->mem[i].bus_addr,
> >> +                                    core->mem[i].size);
> >> +    }
> >> +    if (core->mem)
> >> +            devm_kfree(dev, core->mem);
> >> +    return ret;
> >> +}
> >> +
> >> +static
> >> +struct ti_sci_proc *k3_r5_core_of_get_tsp(struct device *dev,
> >> +                                      const struct ti_sci_handle *sci)
> >> +{
> >> +    struct ti_sci_proc *tsp;
> >> +    u32 temp[2];
> >> +    int ret;
> >> +
> >> +    ret = of_property_read_u32_array(dev->of_node, "ti,sci-proc-ids",
> >> +                                     temp, 2);
> >> +    if (ret < 0)
> >> +            return ERR_PTR(ret);
> >> +
> >> +    tsp = kzalloc(sizeof(*tsp), GFP_KERNEL);
> >> +    if (!tsp)
> >> +            return ERR_PTR(-ENOMEM);
> >> +
> >> +    tsp->dev = dev;
> >> +    tsp->sci = sci;
> >> +    tsp->ops = &sci->ops.proc_ops;
> >> +    tsp->proc_id = temp[0];
> >> +    tsp->host_id = temp[1];
> >> +
> >> +    return tsp;
> >> +}
> >> +
> >> +static int k3_r5_core_of_init(struct platform_device *pdev)
> >> +{
> >> +    struct device *dev = &pdev->dev;
> >> +    struct device_node *np = dev->of_node;
> >> +    struct k3_r5_core *core;
> >> +    int ret, ret1;
> >> +
> >> +    core = devm_kzalloc(dev, sizeof(*core), GFP_KERNEL);
> >> +    if (!core)
> >> +            return -ENOMEM;
> >> +
> >> +    core->dev = dev;
> >> +    core->atcm_enable = 0;
> >> +    core->btcm_enable = 1;
> >> +    core->loczrama = 1;
> >> +
> >> +    ret = of_property_read_u32(np, "atcm-enable", &core->atcm_enable);
> >> +    if (ret < 0 && ret != -EINVAL) {
> >> +            dev_err(dev, "invalid format for atcm-enable, ret = %d\n", ret);
> >> +            goto err_of;
> >> +    }
> >> +
> >> +    ret = of_property_read_u32(np, "btcm-enable", &core->btcm_enable);
> >> +    if (ret < 0 && ret != -EINVAL) {
> >> +            dev_err(dev, "invalid format for btcm-enable, ret = %d\n", ret);
> >> +            goto err_of;
> >> +    }
> >> +
> >> +    ret = of_property_read_u32(np, "loczrama", &core->loczrama);
> >> +    if (ret < 0 && ret != -EINVAL) {
> >> +            dev_err(dev, "invalid format for loczrama, ret = %d\n", ret);
> >> +            goto err_of;
> >> +    }
> >> +
> >> +    core->ti_sci = ti_sci_get_by_phandle(np, "ti,sci");
> >> +    if (IS_ERR(core->ti_sci)) {
> >> +            ret = PTR_ERR(core->ti_sci);
> >> +            if (ret != -EPROBE_DEFER) {
> >> +                    dev_err(dev, "failed to get ti-sci handle, ret = %d\n",
> >> +                            ret);
> >> +            }
> >> +            core->ti_sci = NULL;
> >> +            goto err_of;
> >> +    }
> >> +
> >> +    ret = of_property_read_u32(np, "ti,sci-dev-id", &core->ti_sci_id);
> >> +    if (ret) {
> >> +            dev_err(dev, "missing 'ti,sci-dev-id' property\n");
> >> +            goto err_sci_id;
> >> +    }
> >> +
> >> +    core->reset = reset_control_get_exclusive(dev, NULL);
> >> +    if (IS_ERR(core->reset)) {
> >> +            ret = PTR_ERR(core->reset);
> >> +            if (ret != -EPROBE_DEFER) {
> >> +                    dev_err(dev, "failed to get reset handle, ret = %d\n",
> >> +                            ret);
> >> +            }
> >> +            goto err_sci_id;
> >> +    }
> >> +
> >> +    core->tsp = k3_r5_core_of_get_tsp(dev, core->ti_sci);
> >> +    if (IS_ERR(core->tsp)) {
> >> +            dev_err(dev, "failed to construct ti-sci proc control, ret = %d\n",
> >> +                    ret);
> >> +            ret = PTR_ERR(core->tsp);
> >> +            goto err_sci_proc;
> >> +    }
> >> +
> >> +    ret = ti_sci_proc_request(core->tsp);
> >> +    if (ret < 0) {
> >> +            dev_err(dev, "ti_sci_proc_request failed, ret = %d\n", ret);
> >> +            goto err_proc;
> >> +    }
> >> +
> >> +    ret = k3_r5_core_of_get_internal_memories(pdev, core);
> >> +    if (ret) {
> >> +            dev_err(dev, "failed to get internal memories, ret = %d\n",
> >> +                    ret);
> >> +            goto err_intmem;
> >> +    }
> >> +
> >> +    platform_set_drvdata(pdev, core);
> >> +
> >> +    return 0;
> >> +
> >> +err_intmem:
> >> +    ret1 = ti_sci_proc_release(core->tsp);
> >> +    if (ret1)
> >> +            dev_err(dev, "failed to release proc, ret1 = %d\n", ret1);
> >> +err_proc:
> >> +    kfree(core->tsp);
> >> +err_sci_proc:
> >> +    reset_control_put(core->reset);
> >> +err_sci_id:
> >> +    ret1 = ti_sci_put_handle(core->ti_sci);
> >> +    if (ret1)
> >> +            dev_err(dev, "failed to put ti_sci handle, ret = %d\n", ret1);
> >> +err_of:
> >> +    devm_kfree(dev, core);
> >> +    return ret;
> >> +}
> >> +
> >> +/*
> >> + * free the resources explicitly since driver model is not being used
> >> + * for the child R5F devices
> >> + */
> >> +static int k3_r5_core_of_exit(struct platform_device *pdev)
> >> +{
> >> +    struct k3_r5_core *core = platform_get_drvdata(pdev);
> >> +    struct device *dev = &pdev->dev;
> >> +    int i, ret;
> >> +
> >> +    for (i = 0; i < core->num_mems; i++) {
> >> +            devm_release_mem_region(dev, core->mem[i].bus_addr,
> >> +                                    core->mem[i].size);
> >> +            devm_iounmap(dev, core->mem[i].cpu_addr);
> >> +    }
> >> +    if (core->mem)
> >> +            devm_kfree(dev, core->mem);
> >> +
> >> +    ret = ti_sci_proc_release(core->tsp);
> >> +    if (ret)
> >> +            dev_err(dev, "failed to release proc, ret = %d\n", ret);
> >> +
> >> +    kfree(core->tsp);
> >> +    reset_control_put(core->reset);
> >> +
> >> +    ret = ti_sci_put_handle(core->ti_sci);
> >> +    if (ret)
> >> +            dev_err(dev, "failed to put ti_sci handle, ret = %d\n", ret);
> >> +
> >> +    platform_set_drvdata(pdev, NULL);
> >> +    devm_kfree(dev, core);
> >> +
> >> +    return ret;
> >> +}
> >> +
> >> +static int k3_r5_cluster_of_init(struct platform_device *pdev)
> >> +{
> >> +    struct k3_r5_cluster *cluster = platform_get_drvdata(pdev);
> >> +    struct device *dev = &pdev->dev;
> >> +    struct device_node *np = dev->of_node;
> >> +    struct platform_device *cpdev;
> >> +    struct device_node *child;
> >> +    struct k3_r5_core *core, *temp;
> >> +    int ret;
> >> +
> >> +    for_each_available_child_of_node(np, child) {
> >> +            cpdev = of_find_device_by_node(child);
> >> +            if (!cpdev) {
> >> +                    ret = -ENODEV;
> >> +                    dev_err(dev, "could not get R5 core platform device\n");
> >> +                    goto fail;
> >> +            }
> >> +
> >> +            ret = k3_r5_core_of_init(cpdev);
> >> +            if (ret) {
> >> +                    dev_err(dev, "k3_r5_core_of_init failed, ret = %d\n",
> >> +                            ret);
> >> +                    put_device(&cpdev->dev);
> >> +                    goto fail;
> >> +            }
> >> +
> >> +            core = platform_get_drvdata(cpdev);
> >> +            put_device(&cpdev->dev);
> >> +            list_add_tail(&core->elem, &cluster->cores);
> >> +    }
> >> +
> >> +    return 0;
> >> +
> >> +fail:
> >> +    list_for_each_entry_safe_reverse(core, temp, &cluster->cores, elem) {
> >> +            list_del(&core->elem);
> >> +            cpdev = to_platform_device(core->dev);
> >> +            if (k3_r5_core_of_exit(cpdev))
> >> +                    dev_err(dev, "k3_r5_core_of_exit cleanup failed\n");
> >> +    }
> >> +    return ret;
> >> +}
> >> +
> >> +static int k3_r5_cluster_of_exit(struct platform_device *pdev)
> >> +{
> >> +    struct k3_r5_cluster *cluster = platform_get_drvdata(pdev);
> >> +    struct device *dev = &pdev->dev;
> >> +    struct platform_device *cpdev;
> >> +    struct k3_r5_core *core, *temp;
> >> +    int ret;
> >> +
> >> +    list_for_each_entry_safe_reverse(core, temp, &cluster->cores, elem) {
> >> +            list_del(&core->elem);
> >> +            cpdev = to_platform_device(core->dev);
> >> +            ret = k3_r5_core_of_exit(cpdev);
> >> +            if (ret) {
> >> +                    dev_err(dev, "k3_r5_core_of_exit failed, ret = %d\n",
> >> +                            ret);
> >> +                    break;
> >> +            }
> >> +    }
> >> +
> >> +    return ret;
> >> +}
> >> +
> >> +static int k3_r5_probe(struct platform_device *pdev)
> >> +{
> >> +    struct device *dev = &pdev->dev;
> >> +    struct device_node *np = dev->of_node;
> >> +    struct k3_r5_cluster *cluster;
> >> +    int ret, ret1;
> >> +    int num_cores;
> >> +
> >> +    cluster = devm_kzalloc(dev, sizeof(*cluster), GFP_KERNEL);
> >> +    if (!cluster)
> >> +            return -ENOMEM;
> >> +
> >> +    cluster->dev = dev;
> >> +    cluster->mode = CLUSTER_MODE_LOCKSTEP;
> >> +    INIT_LIST_HEAD(&cluster->cores);
> >> +
> >> +    ret = of_property_read_u32(np, "lockstep-mode", &cluster->mode);
> >> +    if (ret < 0 && ret != -EINVAL) {
> >> +            dev_err(dev, "invalid format for lockstep-mode, ret = %d\n",
> >> +                    ret);
> >> +            return ret;
> >> +    }
> >> +
> >> +    num_cores = of_get_available_child_count(np);
> >> +    if (num_cores != 2) {
> >> +            dev_err(dev, "MCU cluster requires both R5F cores to be enabled, num_cores = %d\n",
> >> +                    num_cores);
> >> +            return -ENODEV;
> >> +    }
> >> +
> >> +    platform_set_drvdata(pdev, cluster);
> >> +
> >> +    dev_dbg(dev, "creating child devices for R5F cores\n");
> >> +    ret = of_platform_populate(np, NULL, NULL, dev);
> >> +    if (ret) {
> >> +            dev_err(dev, "of_platform_populate failed, ret = %d\n", ret);
> >> +            return ret;
> >> +    }
> >> +
> >> +    ret = k3_r5_cluster_of_init(pdev);
> >> +    if (ret) {
> >> +            dev_err(dev, "k3_r5_cluster_of_init failed, ret = %d\n", ret);
> >> +            goto fail_of;
> >> +    }
> >> +
> >> +    ret = k3_r5_cluster_rproc_init(pdev);
> >> +    if (ret) {
> >> +            dev_err(dev, "k3_r5_cluster_rproc_init failed, ret = %d\n",
> >> +                    ret);
> >> +            goto fail_rproc;
> >> +    }
> >> +
> >> +    return 0;
> >> +
> >> +fail_rproc:
> >> +    ret1 = k3_r5_cluster_of_exit(pdev);
> >> +    if (ret1)
> >> +            dev_err(dev, "k3_r5_cluster_of_exit failed, ret = %d\n", ret1);
> >> +fail_of:
> >> +    of_platform_depopulate(dev);
> >> +    return ret;
> >> +}
> >> +
> >> +static int k3_r5_remove(struct platform_device *pdev)
> >> +{
> >> +    struct device *dev = &pdev->dev;
> >> +    int ret;
> >> +
> >> +    ret = k3_r5_cluster_rproc_exit(pdev);
> >> +    if (ret) {
> >> +            dev_err(dev, "k3_r5_cluster_rproc_exit failed, ret = %d\n",
> >> +                    ret);
> >> +            goto fail;
> >> +    }
> >> +
> >> +    ret = k3_r5_cluster_of_exit(pdev);
> >> +    if (ret) {
> >> +            dev_err(dev, "k3_r5_cluster_of_exit failed, ret = %d\n", ret);
> >> +            goto fail;
> >> +    }
> >> +
> >> +    dev_dbg(dev, "removing child devices for R5F cores\n");
> >> +    of_platform_depopulate(dev);
> >> +
> >> +fail:
> >> +    return ret;
> >> +}
> >> +
> >> +static const struct of_device_id k3_r5_of_match[] = {
> >> +    { .compatible = "ti,am654-r5fss", },
> >> +    { .compatible = "ti,j721e-r5fss", },
> >> +    { /* sentinel */ },
> >> +};
> >> +MODULE_DEVICE_TABLE(of, k3_r5_of_match);
> >> +
> >> +static struct platform_driver k3_r5_rproc_driver = {
> >> +    .probe = k3_r5_probe,
> >> +    .remove = k3_r5_remove,
> >> +    .driver = {
> >> +            .name = "k3_r5_rproc",
> >> +            .of_match_table = k3_r5_of_match,
> >> +    },
> >> +};
> >> +
> >> +module_platform_driver(k3_r5_rproc_driver);
> >> +
> >> +MODULE_LICENSE("GPL v2");
> >> +MODULE_DESCRIPTION("TI K3 R5F remote processor driver");
> >> +MODULE_AUTHOR("Suman Anna <s-anna@ti.com>");
> >> --
> >> 2.23.0
> >>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

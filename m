Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A561D1F78
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 21:40:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k9HduIgtGSC+kdYp3fFRlLOuTK2exaeZdILuzrkeiR0=; b=UxBOm42B1jYI5F
	+mCuj3qDHuCX23QfHcFFr0cPrmBVqKNywsDzRlb1mByNfUxLkNg3YNS4h8qOBDRzIrS2/Z54gdWqK
	dLNBTCo8mCpnJ+c+gCvHuiQOWYAqNvkMi0dGF47ati7EGLBu3F/5lY0e8VN0PZko4M0JQf0TV+HFr
	MqgDmCt2iU0woSV2CbuAtw3GFyKl8468OJ0hiilaN1+85adW4W9sqqxRSWbSuvLW4wvuz+cQ/W91Y
	k0F0NHlrSZULQtsnOcIMT7MOtz8f/G6LgTBCc6Bq5jKlsWhXmU3QbkjZdkiyhm4x596Cfwl4N1WKJ
	aHWHxtlKlVnsNz+GEQNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYxEx-0004yL-MM; Wed, 13 May 2020 19:40:27 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYxEm-0004xL-8h
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 19:40:19 +0000
Received: by mail-il1-x143.google.com with SMTP id e8so899837ilm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 12:40:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=x2dSmsTkZyZU/9tZsgjHKaCK1VqFJjoqPFlDwkRYnmY=;
 b=voAzPjH9owY/oaC89WKCRFQdJFP18fYLs+YxmW45JSmdw84dZqQAeoacHvH7Jvp8DT
 Ewg76y3BKY6syC/BhFviB09LIApcHcft0iEvx25mGlKMlYUeHOCQBliAnRJ6LY0mvfrs
 umxa1f1+PgKs5hUY9cLacuzg/wLSvvGwwX+23DBL68wz/ECPpCCGURuXm46gnD16awNr
 +aZ0vuMapvtE3mxG/AzT6CSnDYmz76YtuhJeJbXRY8RJELgbHzqGzGRAbgQolsNcR1Ez
 dFh90Q1RL0nP03FxAxjRl6YO0TD/S/ZA151RnLjlxgsdOlQDl58bdZjNoXEq+lcgkQZc
 v9Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x2dSmsTkZyZU/9tZsgjHKaCK1VqFJjoqPFlDwkRYnmY=;
 b=cVluoP6FWHwJU35ZAOObaEqs0lp6M6l4v4JGbtbbLUKSD4ZwJydcuNlBujXAisKb/S
 mKdotIWhQ+hNjWSPKV+ppKOIS2Y+ZG4Ig7U8L6Yll9lHh9uuIY1XDWVA7qPlkSCtqO4T
 7l0d/k0h5n6Wzj9rB48KgAGj9WYrEiDI4y2LnqpCDJVk95xpqDJpnQMQ0e34csAUK7Bk
 c4Sp/B/rTv+kXJw81ty7/U81MLE1AQ5gNLB8dXk7HU8p/MYP9Qa5ytAqvb81miBbSJjU
 GvCZYCIWShD6ov83RyMKymyltG8+9GQllNtDHhpqAhT7TlfBAbTSLgCHJMYvf9vxbBbt
 Y8VQ==
X-Gm-Message-State: AOAM530LR1JvZti1OtU+giGHLTMrT1zZli+CXZrYLElRm9MIy9yOJXGW
 fIa3ldIcW3R9xgtfWhrlS+CiRFN0W2fZN1UuDqUZWw==
X-Google-Smtp-Source: ABdhPJwCmz2wkfrs096nFniAlquC/uh3LaFHMXDmGzQ/NToeBxCQP+fLAM8+a1vRdSaWVR5uEc1UbK1sdykB8uDsK24=
X-Received: by 2002:a92:dc0e:: with SMTP id t14mr1102377iln.140.1589398814248; 
 Wed, 13 May 2020 12:40:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200325201839.15896-1-s-anna@ti.com>
 <20200325201839.15896-3-s-anna@ti.com>
 <20200427225737.GB10552@xps15> <908c1244-b9d8-e9bf-87d7-b60a73e98f18@ti.com>
In-Reply-To: <908c1244-b9d8-e9bf-87d7-b60a73e98f18@ti.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 13 May 2020 13:40:03 -0600
Message-ID: <CANLsYkwPqMirrOsWM2pXRj3TKWYV+7cJ5fukTbCr22iv0xew6Q@mail.gmail.com>
Subject: Re: [PATCH 2/3] remoteproc/k3-dsp: Add a remoteproc driver of K3 C66x
 DSPs
To: Suman Anna <s-anna@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_124016_484156_920A91EE 
X-CRM114-Status: GOOD (  34.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Wed, 13 May 2020 at 12:14, Suman Anna <s-anna@ti.com> wrote:
>
> Hi Mathieu,
>
> On 4/27/20 5:57 PM, Mathieu Poirier wrote:
> > On Wed, Mar 25, 2020 at 03:18:38PM -0500, Suman Anna wrote:
> >> The Texas Instrument's K3 J721E SoCs have two C66x DSP Subsystems in MAIN
> >> voltage domain that are based on the TI's standard TMS320C66x DSP CorePac
> >> module. Each subsystem has a Fixed/Floating-Point DSP CPU, with 32 KB each
> >> of L1P & L1D SRAMs that can be configured and partitioned as either RAM
> >> and/or Cache, and 288 KB of L2 SRAM with 256 KB of memory configurable as
> >> either RAM and/or Cache. The CorePac also includes an Internal DMA (IDMA),
> >> External Memory Controller (EMC), Extended Memory Controller (XMC) with a
> >> Region Address Translator (RAT) unit for 32-bit to 48-bit address
> >> extension/translations, an Interrupt Controller (INTC) and a Powerdown
> >> Controller (PDC).
> >>
> >> A new remoteproc module is added to perform the device management of
> >> these DSP devices. The support is limited to images using only external
> >> DDR memory at the moment, the loading support to internal memories and
> >> any on-chip RAM memories will be added in a subsequent patch. RAT support
> >> is also left for a future patch, and as such the reserved memory carveout
> >> regions are all expected to be using memory regions within the first 2 GB.
> >> Error Recovery and Power Management features are not currently supported.
> >>
> >> The C66x remote processors do not have an MMU, and so require fixed memory
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
> >> The driver uses various TI-SCI interfaces to talk to the System Controller
> >> (DMSC) for managing configuration, power and reset management of these
> >> cores. IPC between the A72 cores and the DSP cores is supported through
> >> the virtio rpmsg stack using shared memory and OMAP Mailboxes.
> >>
> >> Signed-off-by: Suman Anna <s-anna@ti.com>
> >> ---
> >>   drivers/remoteproc/Kconfig                |  16 +
> >>   drivers/remoteproc/Makefile               |   1 +
> >>   drivers/remoteproc/ti_k3_dsp_remoteproc.c | 736 ++++++++++++++++++++++
> >>   3 files changed, 753 insertions(+)
> >>   create mode 100644 drivers/remoteproc/ti_k3_dsp_remoteproc.c
> >>
> >> diff --git a/drivers/remoteproc/Kconfig b/drivers/remoteproc/Kconfig
> >> index 073048b4c0fb..66a76acb15b6 100644
> >> --- a/drivers/remoteproc/Kconfig
> >> +++ b/drivers/remoteproc/Kconfig
> >> @@ -240,6 +240,22 @@ config TI_K3_R5_REMOTEPROC
> >>        It's safe to say N here if you're not interested in utilizing
> >>        a slave processor
> >>
> >> +config TI_K3_DSP_REMOTEPROC
> >> +    tristate "TI K3 DSP remoteproc support"
> >> +    depends on ARCH_K3
> >> +    select MAILBOX
> >> +    select OMAP2PLUS_MBOX
> >> +    help
> >> +      Say y here to support TI's C66x and C71x DSP remote processor
> >> +      subsystems on various TI K3 family of SoCs through the remote
> >> +      processor framework.
> >> +
> >> +      You want to say m here in order to offload some processing
> >> +      tasks to these processors.
> >
> > Building this driver has a module, i.e 'm', has nothing to do with what the
> > remote processor does.  I would simply remove the above 2 lines.
>
> Yes, can drop. I will switch the "Say y" to "Say m" - that would be the
> preferred option. Having the driver built-in means the firmware has to
> be part of initramfs.
>
> >
> >> +
> >> +      It's safe to say N here if you're not interested in utilizing
> >> +      the DSP slave processors.
> >> +
> >>   endif # REMOTEPROC
> >>
> >>   endmenu
> >> diff --git a/drivers/remoteproc/Makefile b/drivers/remoteproc/Makefile
> >> index 00ba826818af..eb51cc09e47b 100644
> >> --- a/drivers/remoteproc/Makefile
> >> +++ b/drivers/remoteproc/Makefile
> >> @@ -29,3 +29,4 @@ obj-$(CONFIG_ST_REMOTEPROC)                += st_remoteproc.o
> >>   obj-$(CONFIG_ST_SLIM_REMOTEPROC)   += st_slim_rproc.o
> >>   obj-$(CONFIG_STM32_RPROC)          += stm32_rproc.o
> >>   obj-$(CONFIG_TI_K3_R5_REMOTEPROC)  += ti_k3_r5_remoteproc.o
> >> +obj-$(CONFIG_TI_K3_DSP_REMOTEPROC)  += ti_k3_dsp_remoteproc.o
> >> diff --git a/drivers/remoteproc/ti_k3_dsp_remoteproc.c b/drivers/remoteproc/ti_k3_dsp_remoteproc.c
> >> new file mode 100644
> >> index 000000000000..fd0d84f46f90
> >> --- /dev/null
> >> +++ b/drivers/remoteproc/ti_k3_dsp_remoteproc.c
> >> @@ -0,0 +1,736 @@
> >> +// SPDX-License-Identifier: GPL-2.0-only
> >> +/*
> >> + * TI K3 DSP Remote Processor(s) driver
> >> + *
> >> + * Copyright (C) 2018-2020 Texas Instruments Incorporated - http://www.ti.com/
> >> + *  Suman Anna <s-anna@ti.com>
> >> + */
> >> +
> >> +#include <linux/io.h>
> >> +#include <linux/module.h>
> >> +#include <linux/of_device.h>
> >> +#include <linux/of_reserved_mem.h>
> >> +#include <linux/platform_device.h>
> >> +#include <linux/pm_runtime.h>
> >> +#include <linux/remoteproc.h>
> >> +#include <linux/mailbox_client.h>
> >> +#include <linux/omap-mailbox.h>
> >
> > Please move these two up.
>
> OK.
>
> >
> >> +#include <linux/reset.h>
> >> +#include <linux/soc/ti/ti_sci_protocol.h>
> >> +
> >> +#include "omap_remoteproc.h"
> >> +#include "remoteproc_internal.h"
> >> +#include "ti_sci_proc.h"
> >> +
> >> +#define KEYSTONE_RPROC_LOCAL_ADDRESS_MASK   (SZ_16M - 1)
> >> +
> >> +/**
> >> + * struct k3_dsp_rproc_mem - internal memory structure
> >> + * @cpu_addr: MPU virtual address of the memory region
> >> + * @bus_addr: Bus address used to access the memory region
> >> + * @dev_addr: Device address of the memory region from DSP view
> >> + * @size: Size of the memory region
> >> + */
> >> +struct k3_dsp_rproc_mem {
> >
> > I would rename this 'k3_dsp_mem' to be consistent with k3_r5_mem.
>
> Yeah, will rename.
>
> >
> >> +    void __iomem *cpu_addr;
> >> +    phys_addr_t bus_addr;
> >> +    u32 dev_addr;
> >> +    size_t size;
> >> +};
> >> +
> >> +/**
> >> + * struct k3_dsp_mem_data - memory definitions for a DSP
> >> + * @name: name for this memory entry
> >> + * @dev_addr: device address for the memory entry
> >> + */
> >> +struct k3_dsp_mem_data {
> >> +    const char *name;
> >> +    const u32 dev_addr;
> >> +};
> >> +
> >> +/**
> >> + * struct k3_dsp_dev_data - device data structure for a DSP
> >> + * @mems: pointer to memory definitions for a DSP
> >> + * @num_mems: number of memory regions in @mems
> >> + * @boot_align_addr: boot vector address alignment granularity
> >> + * @uses_lreset: flag to denote the need for local reset management
> >> + */
> >> +struct k3_dsp_dev_data {
> >> +    const struct k3_dsp_mem_data *mems;
> >> +    u32 num_mems;
> >> +    u32 boot_align_addr;
> >> +    bool uses_lreset;
> >> +};
> >> +
> >> +/**
> >> + * struct k3_dsp_rproc - k3 DSP remote processor driver structure
> >> + * @dev: cached device pointer
> >> + * @rproc: remoteproc device handle
> >> + * @mem: internal memory regions data
> >> + * @num_mems: number of internal memory regions
> >> + * @rmem: reserved memory regions data
> >> + * @num_rmems: number of reserved memory regions
> >> + * @reset: reset control handle
> >> + * @data: pointer to DSP-specific device data
> >> + * @tsp: TI-SCI processor control handle
> >> + * @ti_sci: TI-SCI handle
> >> + * @ti_sci_id: TI-SCI device identifier
> >> + * @mbox: mailbox channel handle
> >> + * @client: mailbox client to request the mailbox channel
> >> + */
> >> +struct k3_dsp_rproc {
> >> +    struct device *dev;
> >> +    struct rproc *rproc;
> >> +    struct k3_dsp_rproc_mem *mem;
> >> +    int num_mems;
> >> +    struct k3_dsp_rproc_mem *rmem;
> >> +    int num_rmems;
> >> +    struct reset_control *reset;
> >> +    const struct k3_dsp_dev_data *data;
> >> +    struct ti_sci_proc *tsp;
> >> +    const struct ti_sci_handle *ti_sci;
> >> +    u32 ti_sci_id;
> >> +    struct mbox_chan *mbox;
> >> +    struct mbox_client client;
> >> +};
> >> +
> >> +/**
> >> + * k3_dsp_rproc_mbox_callback() - inbound mailbox message handler
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
> >> +static void k3_dsp_rproc_mbox_callback(struct mbox_client *client, void *data)
> >> +{
> >> +    struct k3_dsp_rproc *kproc = container_of(client, struct k3_dsp_rproc,
> >> +                                            client);
> >
> > Indentation problem.
>
> Thanks. Hmm, checkpatch didn't catch this.
>
> >
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
> >> +            dev_err(dev, "K3 DSP rproc %s crashed\n", name);
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
> >> +/*
> >> + * Kick the remote processor to notify about pending unprocessed messages.
> >> + * The vqid usage is not used and is inconsequential, as the kick is performed
> >> + * through a simulated GPIO (a bit in an IPC interrupt-triggering register),
> >> + * the remote processor is expected to process both its Tx and Rx virtqueues.
> >> + */
> >> +static void k3_dsp_rproc_kick(struct rproc *rproc, int vqid)
> >> +{
> >> +    struct k3_dsp_rproc *kproc = rproc->priv;
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
> >> +/* Put the DSP processor into reset */
> >> +static int k3_dsp_rproc_reset(struct k3_dsp_rproc *kproc)
> >> +{
> >> +    struct device *dev = kproc->dev;
> >> +    int ret;
> >> +
> >> +    ret = reset_control_assert(kproc->reset);
> >> +    if (ret) {
> >> +            dev_err(dev, "local-reset assert failed, ret = %d\n", ret);
> >> +            return ret;
> >> +    }
> >> +
> >> +    ret = kproc->ti_sci->ops.dev_ops.put_device(kproc->ti_sci,
> >> +                                                kproc->ti_sci_id);
> >> +    if (ret) {
> >> +            dev_err(dev, "module-reset assert failed, ret = %d\n", ret);
> >> +            if (reset_control_deassert(kproc->reset))
> >> +                    dev_warn(dev, "local-reset deassert back failed\n");
> >> +    }
> >> +
> >> +    return ret;
> >> +}
> >> +
> >> +/* Release the DSP processor from reset */
> >> +static int k3_dsp_rproc_release(struct k3_dsp_rproc *kproc)
> >> +{
> >> +    struct device *dev = kproc->dev;
> >> +    int ret;
> >> +
> >> +    ret = kproc->ti_sci->ops.dev_ops.get_device(kproc->ti_sci,
> >> +                                               kproc->ti_sci_id);
> >
> > Indentation problem.
>
> Thanks for catching, will fix.
>
> >
> >> +    if (ret) {
> >> +            dev_err(dev, "module-reset deassert failed, ret = %d\n", ret);
> >> +            return ret;
> >> +    }
> >> +
> >> +    ret = reset_control_deassert(kproc->reset);
> >> +    if (ret) {
> >> +            dev_err(dev, "local-reset deassert failed, ret = %d\n", ret);
> >> +            if (kproc->ti_sci->ops.dev_ops.put_device(kproc->ti_sci,
> >> +                                                      kproc->ti_sci_id))
> >> +                    dev_warn(dev, "module-reset assert back failed\n");
> >> +    }
> >> +
> >> +    return ret;
> >> +}
> >> +
> >> +/*
> >> + * Power up the DSP remote processor.
> >> + *
> >> + * This function will be invoked only after the firmware for this rproc
> >> + * was loaded, parsed successfully, and all of its resource requirements
> >> + * were met.
> >> + */
> >> +static int k3_dsp_rproc_start(struct rproc *rproc)
> >> +{
> >> +    struct k3_dsp_rproc *kproc = rproc->priv;
> >> +    struct mbox_client *client = &kproc->client;
> >> +    struct device *dev = kproc->dev;
> >> +    u32 boot_addr;
> >> +    int ret;
> >> +
> >> +    client->dev = dev;
> >> +    client->tx_done = NULL;
> >> +    client->rx_callback = k3_dsp_rproc_mbox_callback;
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
> >> +    if (boot_addr & (kproc->data->boot_align_addr - 1)) {
> >> +            dev_err(dev, "invalid boot address 0x%x, must be aligned on a 0x%x boundary\n",
> >> +                    boot_addr, kproc->data->boot_align_addr);
> >> +            ret = -EINVAL;
> >> +            goto put_mbox;
> >> +    }
> >> +
> >> +    dev_err(dev, "booting DSP core using boot addr = 0x%x\n", boot_addr);
> >> +    ret = ti_sci_proc_set_config(kproc->tsp, boot_addr, 0, 0);
> >> +    if (ret)
> >> +            goto put_mbox;
> >> +
> >> +    ret = k3_dsp_rproc_release(kproc);
> >> +    if (ret)
> >> +            goto put_mbox;
> >> +
> >> +    return 0;
> >> +
> >> +put_mbox:
> >> +    mbox_free_channel(kproc->mbox);
> >> +    return ret;
> >> +}
> >> +
> >> +/*
> >> + * Stop the DSP remote processor.
> >> + *
> >> + * This function puts the DSP processor into reset, and finishes processing
> >> + * of any pending messages.
> >> + */
> >> +static int k3_dsp_rproc_stop(struct rproc *rproc)
> >> +{
> >> +    struct k3_dsp_rproc *kproc = rproc->priv;
> >> +
> >> +    mbox_free_channel(kproc->mbox);
> >> +
> >> +    k3_dsp_rproc_reset(kproc);
> >> +
> >> +    return 0;
> >> +}
> >> +
> >> +/*
> >> + * Custom function to translate a DSP device address (internal RAMs only) to a
> >> + * kernel virtual address.  The DSPs can access their RAMs at either an internal
> >> + * address visible only from a DSP, or at the SoC-level bus address. Both these
> >> + * addresses need to be looked through for translation. The translated addresses
> >> + * can be used either by the remoteproc core for loading (when using kernel
> >> + * remoteproc loader), or by any rpmsg bus drivers.
> >> + */
> >> +static void *k3_dsp_rproc_da_to_va(struct rproc *rproc, u64 da, size_t len)
> >> +{
> >> +    struct k3_dsp_rproc *kproc = rproc->priv;
> >> +    void __iomem *va = NULL;
> >> +    phys_addr_t bus_addr;
> >> +    u32 dev_addr, offset;
> >> +    size_t size;
> >> +    int i;
> >> +
> >> +    if (len == 0)
> >> +            return NULL;
> >> +
> >> +    for (i = 0; i < kproc->num_mems; i++) {
> >> +            bus_addr = kproc->mem[i].bus_addr;
> >> +            dev_addr = kproc->mem[i].dev_addr;
> >> +            size = kproc->mem[i].size;
> >> +
> >> +            if (da < KEYSTONE_RPROC_LOCAL_ADDRESS_MASK) {
> >> +                    /* handle DSP-view addresses */
> >> +                    if (da >= dev_addr &&
> >> +                        ((da + len) <= (dev_addr + size))) {
> >> +                            offset = da - dev_addr;
> >> +                            va = kproc->mem[i].cpu_addr + offset;
> >> +                            return (__force void *)va;
> >> +                    }
> >> +            } else {
> >> +                    /* handle SoC-view addresses */
> >> +                    if (da >= bus_addr &&
> >> +                        (da + len) <= (bus_addr + size)) {
> >> +                            offset = da - bus_addr;
> >> +                            va = kproc->mem[i].cpu_addr + offset;
> >> +                            return (__force void *)va;
> >> +                    }
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
> >> +static const struct rproc_ops k3_dsp_rproc_ops = {
> >> +    .start          = k3_dsp_rproc_start,
> >> +    .stop           = k3_dsp_rproc_stop,
> >> +    .kick           = k3_dsp_rproc_kick,
> >> +    .da_to_va       = k3_dsp_rproc_da_to_va,
> >> +};
> >> +
> >> +static const char *k3_dsp_rproc_get_firmware(struct device *dev)
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
> >
> > The above is a carbon copy of k3_r5_rproc_get_firmware().  Please reuse the same
> > function.
>
> Yeah, I can add this as a common helper to rproc core, would be useful
> beyond just the TI rproc drivers.
>
> >
> >> +
> >> +static int k3_dsp_rproc_of_get_memories(struct platform_device *pdev,
> >> +                                    struct k3_dsp_rproc *kproc)
> >> +{
> >> +    const struct k3_dsp_dev_data *data = kproc->data;
> >> +    struct device *dev = &pdev->dev;
> >> +    struct resource *res;
> >> +    int num_mems = 0;
> >> +    int i;
> >> +
> >> +    num_mems = kproc->data->num_mems;
> >> +    kproc->mem = devm_kcalloc(kproc->dev, num_mems,
> >> +                              sizeof(*kproc->mem), GFP_KERNEL);
> >> +    if (!kproc->mem)
> >> +            return -ENOMEM;
> >> +
> >> +    for (i = 0; i < num_mems; i++) {
> >> +            res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
> >> +                                               data->mems[i].name);
> >> +            if (!res) {
> >> +                    dev_err(dev, "found no memory resource for %s\n",
> >> +                            data->mems[i].name);
> >> +                    return -EINVAL;
> >> +            }
> >> +            if (!devm_request_mem_region(dev, res->start,
> >> +                                         resource_size(res),
> >> +                                         dev_name(dev))) {
> >> +                    dev_err(dev, "could not request %s region for resource\n",
> >> +                            data->mems[i].name);
> >> +                    return -EBUSY;
> >> +            }
> >> +
> >> +            kproc->mem[i].cpu_addr = devm_ioremap_wc(dev, res->start,
> >> +                                                     resource_size(res));
> >> +            if (IS_ERR(kproc->mem[i].cpu_addr)) {
> >> +                    dev_err(dev, "failed to map %s memory\n",
> >> +                            data->mems[i].name);
> >> +                    return PTR_ERR(kproc->mem[i].cpu_addr);
> >> +            }
> >> +            kproc->mem[i].bus_addr = res->start;
> >> +            kproc->mem[i].dev_addr = data->mems[i].dev_addr;
> >> +            kproc->mem[i].size = resource_size(res);
> >> +
> >> +            dev_dbg(dev, "memory %8s: bus addr %pa size 0x%zx va %pK da 0x%x\n",
> >> +                    data->mems[i].name, &kproc->mem[i].bus_addr,
> >> +                    kproc->mem[i].size, kproc->mem[i].cpu_addr,
> >> +                    kproc->mem[i].dev_addr);
> >> +
> >> +            /* zero out memories to start in a pristine state */
> >> +            /*
> >> +             * FIXME: comment out until kernel crash is fixed, possible
> >> +             * issue with local resets.
> >> +             * memset((__force void *)kproc->mem[i].cpu_addr, 0,
> >> +             *      kproc->mem[i].size);
> >> +             */
> >
> > Things still work without zero'ing out the memory?  As such is it mandatory to
> > do so? Function k3_r5_core_of_get_internal_memories does not do a memset().  And
> > didn't Peng also had this problem?
>
> This is a stale comment, I will clean this up. The zeroing out is not
> strictly needed, it is only to ensure that the DSPs are started in a
> pristine condition. The issue is unrelated to what Peng reported, it is
> not the ARM memset issue (which won't be an issue since I am already
> using the ioremap_wc variant), but rather related to device being
> powered-on to be able to access the DSP internal memories from ARM. This
> won't be powered on at the time this function is invoked anyway. The R5F
> does needs to memzero it for ECC reasons, and does so in the
> k3_r5_rproc_prepare().
>
> >
> >> +    }
> >> +    kproc->num_mems = num_mems;
> >> +
> >> +    return 0;
> >> +}
> >> +
> >> +static int k3_dsp_reserved_mem_init(struct k3_dsp_rproc *kproc)
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
> >> +            dev_err(dev, "device does not reserved memory regions, ret = %d\n",
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
> >> +    of_reserved_mem_device_release(kproc->dev);
> >> +    return ret;
> >> +}
> >
> > Other than the type of structure passed to the function, this is an exact
> > replica of k3_r5_reserved_mem_init().  Do you foresee either of them changing
> > to a point where reusing code would be counter productive?  I think we are right
> > on the edge where duplication is better than using the same function.
>
> Yeah, nothing at the moment. The number of regions can change, I have
> not enabled the support for addresses beyond 32-bit atm, so that is
> another factor.
>

Right, it is entirely up to you to make the call.  Lease as is or
reused based on what you think is best.

> >
> >> +
> >> +static void k3_dsp_reserved_mem_exit(struct k3_dsp_rproc *kproc)
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
> >> +static
> >> +struct ti_sci_proc *k3_dsp_rproc_of_get_tsp(struct device *dev,
> >> +                                        const struct ti_sci_handle *sci)
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
> >
> > Contrary to k3_dsp_reserved_mem_init(), this one can definitely be reused for
> > both c66 and r5.
>
> Yeah, but is it worth it introduce a common module for one function?
> Little bit large to define this as an inline function like I have done
> with most of the ti_sci_proc helpers.
>

I see your point.

> >
> >> +
> >> +static int k3_dsp_rproc_probe(struct platform_device *pdev)
> >> +{
> >> +    struct device *dev = &pdev->dev;
> >> +    struct device_node *np = dev->of_node;
> >> +    const struct k3_dsp_dev_data *data;
> >> +    struct k3_dsp_rproc *kproc;
> >> +    struct rproc *rproc;
> >> +    const char *fw_name;
> >> +    int ret = 0;
> >> +    int ret1;
> >> +
> >> +    data = of_device_get_match_data(dev);
> >> +    if (!data)
> >> +            return -ENODEV;
> >> +
> >> +    fw_name = k3_dsp_rproc_get_firmware(dev);
> >> +    if (IS_ERR(fw_name))
> >> +            return PTR_ERR(fw_name);
> >> +
> >> +    rproc = rproc_alloc(dev, dev_name(dev), &k3_dsp_rproc_ops, fw_name,
> >> +                        sizeof(*kproc));
> >> +    if (!rproc)
> >> +            return -ENOMEM;
> >> +
> >> +    rproc->has_iommu = false;
> >> +    rproc->recovery_disabled = true;
> >> +    kproc = rproc->priv;
> >> +    kproc->rproc = rproc;
> >> +    kproc->dev = dev;
> >> +    kproc->data = data;
> >> +
> >> +    kproc->ti_sci = ti_sci_get_by_phandle(np, "ti,sci");
> >> +    if (IS_ERR(kproc->ti_sci)) {
> >> +            ret = PTR_ERR(kproc->ti_sci);
> >> +            if (ret != -EPROBE_DEFER) {
> >> +                    dev_err(dev, "failed to get ti-sci handle, ret = %d\n",
> >> +                            ret);
> >> +            }
> >> +            kproc->ti_sci = NULL;
> >> +            goto free_rproc;
> >> +    }
> >> +
> >> +    ret = of_property_read_u32(np, "ti,sci-dev-id", &kproc->ti_sci_id);
> >> +    if (ret) {
> >> +            dev_err(dev, "missing 'ti,sci-dev-id' property\n");
> >> +            goto put_sci;
> >> +    }
> >> +
> >> +    kproc->reset = devm_reset_control_get_exclusive(dev, NULL);
> >> +    if (IS_ERR(kproc->reset)) {
> >> +            ret = PTR_ERR(kproc->reset);
> >> +            dev_err(dev, "failed to get reset, status = %d\n", ret);
> >> +            goto put_sci;
> >> +    }
> >> +
> >> +    kproc->tsp = k3_dsp_rproc_of_get_tsp(dev, kproc->ti_sci);
> >> +    if (IS_ERR(kproc->tsp)) {
> >> +            dev_err(dev, "failed to construct ti-sci proc control, ret = %d\n",
> >> +                    ret);
> >> +            ret = PTR_ERR(kproc->tsp);
> >> +            goto put_sci;
> >> +    }
> >> +
> >> +    ret = ti_sci_proc_request(kproc->tsp);
> >> +    if (ret < 0) {
> >> +            dev_err(dev, "ti_sci_proc_request failed, ret = %d\n", ret);
> >> +            goto free_tsp;
> >> +    }
> >> +
> >> +    pm_runtime_enable(dev);
> >> +    ret = pm_runtime_get_sync(dev);
> >
> > What do these give you since the dev_pm_ops is not set for the
> > k3_dsp_rproc_driver platform diver and there is no clock specified in the DT?
>
> Yeah, I can drop this. Adding a clock in DT would not have made any
> difference here, but a power-domains property would have. And I don't
> use the power-domains property because of the genpd handling in driver
> core that messes with the device state.
>
> regards
> Sumahn
>
> >
> > Thanks,
> > Mathieu
> >
> >> +    if (ret < 0) {
> >> +            dev_err(dev, "failed to enable clock, status = %d\n", ret);
> >> +            pm_runtime_put_noidle(dev);
> >> +            goto disable_rpm;
> >> +    }
> >> +
> >> +    ret = k3_dsp_rproc_of_get_memories(pdev, kproc);
> >> +    if (ret)
> >> +            goto disable_clk;
> >> +
> >> +    ret = k3_dsp_reserved_mem_init(kproc);
> >> +    if (ret) {
> >> +            dev_err(dev, "reserved memory init failed, ret = %d\n", ret);
> >> +            goto disable_clk;
> >> +    }
> >> +
> >> +    ret = rproc_add(rproc);
> >> +    if (ret) {
> >> +            dev_err(dev, "failed to add register device with remoteproc core, status = %d\n",
> >> +                    ret);
> >> +            goto release_mem;
> >> +    }
> >> +
> >> +    platform_set_drvdata(pdev, kproc);
> >> +
> >> +    return 0;
> >> +
> >> +release_mem:
> >> +    k3_dsp_reserved_mem_exit(kproc);
> >> +disable_clk:
> >> +    pm_runtime_put_sync(dev);
> >> +disable_rpm:
> >> +    pm_runtime_disable(dev);
> >> +    ret1 = ti_sci_proc_release(kproc->tsp);
> >> +    if (ret1)
> >> +            dev_err(dev, "failed to release proc, ret = %d\n", ret1);
> >> +free_tsp:
> >> +    kfree(kproc->tsp);
> >> +put_sci:
> >> +    ret1 = ti_sci_put_handle(kproc->ti_sci);
> >> +    if (ret1)
> >> +            dev_err(dev, "failed to put ti_sci handle, ret = %d\n", ret1);
> >> +free_rproc:
> >> +    rproc_free(rproc);
> >> +    return ret;
> >> +}
> >> +
> >> +static int k3_dsp_rproc_remove(struct platform_device *pdev)
> >> +{
> >> +    struct k3_dsp_rproc *kproc = platform_get_drvdata(pdev);
> >> +    struct device *dev = &pdev->dev;
> >> +    int ret;
> >> +
> >> +    rproc_del(kproc->rproc);
> >> +    pm_runtime_put_sync(&pdev->dev);
> >> +    pm_runtime_disable(&pdev->dev);
> >> +
> >> +    ret = ti_sci_proc_release(kproc->tsp);
> >> +    if (ret)
> >> +            dev_err(dev, "failed to release proc, ret = %d\n", ret);
> >> +
> >> +    kfree(kproc->tsp);
> >> +
> >> +    ret = ti_sci_put_handle(kproc->ti_sci);
> >> +    if (ret)
> >> +            dev_err(dev, "failed to put ti_sci handle, ret = %d\n", ret);
> >> +
> >> +    k3_dsp_reserved_mem_exit(kproc);
> >> +    rproc_free(kproc->rproc);
> >> +
> >> +    return 0;
> >> +}
> >> +
> >> +static const struct k3_dsp_mem_data c66_mems[] = {
> >> +    { .name = "l2sram", .dev_addr = 0x800000 },
> >> +    { .name = "l1pram", .dev_addr = 0xe00000 },
> >> +    { .name = "l1dram", .dev_addr = 0xf00000 },
> >> +};
> >> +
> >> +static const struct k3_dsp_dev_data c66_data = {
> >> +    .mems = c66_mems,
> >> +    .num_mems = ARRAY_SIZE(c66_mems),
> >> +    .boot_align_addr = SZ_1K,
> >> +    .uses_lreset = true,
> >> +};
> >> +
> >> +static const struct of_device_id k3_dsp_of_match[] = {
> >> +    { .compatible = "ti,j721e-c66-dsp", .data = &c66_data, },
> >> +    { /* sentinel */ },
> >> +};
> >> +MODULE_DEVICE_TABLE(of, k3_dsp_of_match);
> >> +
> >> +static struct platform_driver k3_dsp_rproc_driver = {
> >> +    .probe  = k3_dsp_rproc_probe,
> >> +    .remove = k3_dsp_rproc_remove,
> >> +    .driver = {
> >> +            .name = "k3-dsp-rproc",
> >> +            .of_match_table = k3_dsp_of_match,
> >> +    },
> >> +};
> >> +
> >> +module_platform_driver(k3_dsp_rproc_driver);
> >> +
> >> +MODULE_AUTHOR("Suman Anna <s-anna@ti.com>");
> >> +MODULE_LICENSE("GPL v2");
> >> +MODULE_DESCRIPTION("TI K3 DSP Remoteproc driver");
> >> --
> >> 2.23.0
> >>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

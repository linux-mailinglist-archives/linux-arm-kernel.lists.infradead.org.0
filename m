Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5984D432
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 18:50:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uILjqF0ELcYnuSmwoyDu5hqXBXsNvW19Sdjlcn57bLs=; b=PKqLIoCtBBceqv
	8o5HFKklB+inowpWQ2Vdy5h4GCuc3t2318Qu8BFCZV/85NIgqPU6VgarL/89hdyeqaMYfYUtnUd/6
	Ug6i1Y84DytY101OhCsHPrvnxMbGxiM1qsoCG40sn/mhbSq9BdWoVzHGXh6Izo4qa61adtsVvh0M3
	51x7I/WDgB8g4/kvfBwctnvOztfGJtqBJIOnqOSWLZ6+yePYzf3wkIua9YeviKyd/zrgQuvBhYaz2
	33EvaLE9cQC8GPqtRwsm0qmmSVTsYLaC+jYuwzXeSKv4eXdcX9PSHitfxptxrF7JokC9QcHZSW1tf
	bA0P36+vYq0ZlZODTy2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he0Gu-0002rp-O0; Thu, 20 Jun 2019 16:50:48 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he0GX-0002qq-54
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 16:50:26 +0000
Received: by mail-io1-xd41.google.com with SMTP id s7so586053iob.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 09:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Pj7QnGqfxKJhNv5xmHnRYoJ7c15L40SNj/XfqDQg5QE=;
 b=UIkc1i8RkXuf32D1QXNLL25YtqzocZ4t0FwZVF1t0taPjaRCwN37ljjc/QrKP0ekCc
 hKHULfygITG9zFJoeXVS6FucqsrcxT9GdVObdRVHb3MiVajQLLkPTzyMZgiNaA5FMuFF
 jArfRuZldWYjjne+lbPew6fMKFIWDAvoHNiSpqhfLj6gf4zFF56gQ5VbeDcYvkkriKoT
 uFJ/ZjkIEB83m0KaYA9zfDsuIyfBCj7R67reODcNP5Xt86ig+NIzG9FPjmjg7FTOj6uj
 nbaD/+OC1SGoU6jskATe+9cZvTrp5UvAd3NEQwFFOteatAMiB3sTvWaElkAgPqI3BzLg
 MF9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Pj7QnGqfxKJhNv5xmHnRYoJ7c15L40SNj/XfqDQg5QE=;
 b=tLhwiwBm0Za3A1xA6QtfjF4vA1fhIMZt7M1odzJI3WkSgcMG9iLAX6+M1ugZl4yXMS
 66LBhG1AhYmSXiADqbpDO4C5Fj6VvUtyYVlHAqyaZUaQ9USGNuHyLPSBXzhcqJn+lQ1i
 2/V1wYHtbFvdtNjsS54BpHw0C0Vg1CptSGvgfyxoO5cCPbyT4Oy02q7+izWojccpNEMr
 5oMn4Bi3fhQVUqWlIoQN0TfEK/soPlXmA4urLvxIRBMjXqbR7kmhbjTjmMw3zvYjz4RP
 iMsQVsUuW/PLpC3XM58YcnaKwDv+VoLkEATCSr072mI+6rtBDf8KuCqBd7Z+3wLlOsKb
 2GvA==
X-Gm-Message-State: APjAAAX/lG6v9JDidxAdweQC3lI72503ibY6Oo8vEraWYAAqkq2pwU7v
 joIERsG0lPCd4NzMZkAkK8zpyEJU+SLbR+grd4A=
X-Google-Smtp-Source: APXvYqz2nJi/ZRNSQsIF7u4BDFjwk+S62Zk0YgwOvoGeyPiWNS0gqP02Y6wluW3iu/yvBwVvdotwmo9un38F+GN0LwM=
X-Received: by 2002:a02:a38d:: with SMTP id y13mr98730924jak.68.1561049423864; 
 Thu, 20 Jun 2019 09:50:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190603083005.4304-1-peng.fan@nxp.com>
 <20190603083005.4304-3-peng.fan@nxp.com>
In-Reply-To: <20190603083005.4304-3-peng.fan@nxp.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Thu, 20 Jun 2019 11:50:12 -0500
Message-ID: <CABb+yY1wW-arSMQSYjrezXOZ0Ar_shAr78MOyUD3hBxXohWx3g@mail.gmail.com>
Subject: Re: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_095025_193924_F72FFF2E 
X-CRM114-Status: GOOD (  24.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jassisinghbrar[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, festevam@gmail.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andre Przywara <andre.przywara@arm.com>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, ", Sascha Hauer" <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>, van.freenix@gmail.com,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 3, 2019 at 3:28 AM <peng.fan@nxp.com> wrote:
>
> From: Peng Fan <peng.fan@nxp.com>
>
> This mailbox driver implements a mailbox which signals transmitted data
> via an ARM smc (secure monitor call) instruction. The mailbox receiver
> is implemented in firmware and can synchronously return data when it
> returns execution to the non-secure world again.
> An asynchronous receive path is not implemented.
> This allows the usage of a mailbox to trigger firmware actions on SoCs
> which either don't have a separate management processor or on which such
> a core is not available. A user of this mailbox could be the SCP
> interface.
>
> Modified from Andre Przywara's v2 patch
> https://lore.kernel.org/patchwork/patch/812999/
>
> Cc: Andre Przywara <andre.przywara@arm.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>
> V2:
>  Add interrupts notification support.
>
>  drivers/mailbox/Kconfig                 |   7 ++
>  drivers/mailbox/Makefile                |   2 +
>  drivers/mailbox/arm-smc-mailbox.c       | 190 ++++++++++++++++++++++++++++++++
>  include/linux/mailbox/arm-smc-mailbox.h |  10 ++
>  4 files changed, 209 insertions(+)
>  create mode 100644 drivers/mailbox/arm-smc-mailbox.c
>  create mode 100644 include/linux/mailbox/arm-smc-mailbox.h
>
> diff --git a/drivers/mailbox/Kconfig b/drivers/mailbox/Kconfig
> index 595542bfae85..c3bd0f1ddcd8 100644
> --- a/drivers/mailbox/Kconfig
> +++ b/drivers/mailbox/Kconfig
> @@ -15,6 +15,13 @@ config ARM_MHU
>           The controller has 3 mailbox channels, the last of which can be
>           used in Secure mode only.
>
> +config ARM_SMC_MBOX
> +       tristate "Generic ARM smc mailbox"
> +       depends on OF && HAVE_ARM_SMCCC
> +       help
> +         Generic mailbox driver which uses ARM smc calls to call into
> +         firmware for triggering mailboxes.
> +
>  config IMX_MBOX
>         tristate "i.MX Mailbox"
>         depends on ARCH_MXC || COMPILE_TEST
> diff --git a/drivers/mailbox/Makefile b/drivers/mailbox/Makefile
> index c22fad6f696b..93918a84c91b 100644
> --- a/drivers/mailbox/Makefile
> +++ b/drivers/mailbox/Makefile
> @@ -7,6 +7,8 @@ obj-$(CONFIG_MAILBOX_TEST)      += mailbox-test.o
>
>  obj-$(CONFIG_ARM_MHU)  += arm_mhu.o
>
> +obj-$(CONFIG_ARM_SMC_MBOX)     += arm-smc-mailbox.o
> +
>  obj-$(CONFIG_IMX_MBOX) += imx-mailbox.o
>
>  obj-$(CONFIG_ARMADA_37XX_RWTM_MBOX)    += armada-37xx-rwtm-mailbox.o
> diff --git a/drivers/mailbox/arm-smc-mailbox.c b/drivers/mailbox/arm-smc-mailbox.c
> new file mode 100644
> index 000000000000..fef6e38d8b98
> --- /dev/null
> +++ b/drivers/mailbox/arm-smc-mailbox.c
> @@ -0,0 +1,190 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2016,2017 ARM Ltd.
> + * Copyright 2019 NXP
> + */
> +
> +#include <linux/arm-smccc.h>
> +#include <linux/device.h>
> +#include <linux/kernel.h>
> +#include <linux/interrupt.h>
> +#include <linux/mailbox_controller.h>
> +#include <linux/mailbox/arm-smc-mailbox.h>
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +
> +#define ARM_SMC_MBOX_USE_HVC   BIT(0)
> +#define ARM_SMC_MBOX_USB_IRQ   BIT(1)
> +
IRQ bit is unused (and unnecessary IMO)

> +struct arm_smc_chan_data {
> +       u32 function_id;
> +       u32 flags;
> +       int irq;
> +};
> +
> +static int arm_smc_send_data(struct mbox_chan *link, void *data)
> +{
> +       struct arm_smc_chan_data *chan_data = link->con_priv;
> +       struct arm_smccc_mbox_cmd *cmd = data;
> +       struct arm_smccc_res res;
> +       u32 function_id;
> +
> +       if (chan_data->function_id != UINT_MAX)
> +               function_id = chan_data->function_id;
> +       else
> +               function_id = cmd->a0;
> +
Not sure about chan_data->function_id.  Why restrict from DT?
'a0' is the function_id register, let the user pass func-id via the
'a0' like other values via 'a[1-7]'


> +       if (chan_data->flags & ARM_SMC_MBOX_USE_HVC)
> +               arm_smccc_hvc(function_id, cmd->a1, cmd->a2, cmd->a3, cmd->a4,
> +                             cmd->a5, cmd->a6, cmd->a7, &res);
> +       else
> +               arm_smccc_smc(function_id, cmd->a1, cmd->a2, cmd->a3, cmd->a4,
> +                             cmd->a5, cmd->a6, cmd->a7, &res);
> +
> +       if (chan_data->irq)
> +               return 0;
> +
This irq thing seems like oob signalling, that is, a protocol thing.
And then it provides lesser info via chan_irq_handler (returns NULL)
than res.a0 - which can always be ignored if not needed.
So the irq should be implemented in the upper layer if the protocol needs it.

> +       mbox_chan_received_data(link, (void *)res.a0);
> +
This is fine.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B602614548A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 13:45:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/gKtYOZprEMs773mwbxJYW4LgSQPrbSZugjj2B72qBA=; b=q/tLZNN88T+yAI
	EV3KWYgxkGzZ2DydtpsG75SMB30Uqc5/N6BIGLcNxA0hhupLPAF92xHvRblqbdemgh9H1mbkEeLDG
	RCXG6vwczc42Sj3pJ+wXtJBpI3F2Y5JRW7ufTLKdVT0Dl9/pS35CSF8klbsvnshIhodK0XJ4T4Orj
	DSj37lqF6cEuKiXWlY7GSOYs27HkrBc7tVXGqaqtNkIJNKL2du4oKrxZ6XHZrDuUYp0m7scvNGndP
	1FphJTq+VkjTgzwsgHo1z5WZsdVq32tiE/qscS+0cT6FweBLQehuntJmK/wjZfdnvcJIjYdWl9I4l
	dSy7bovD9YgkEiqTZI5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuFOJ-0001cG-Th; Wed, 22 Jan 2020 12:45:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuFN5-0007xq-OA
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 12:44:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D8C76328;
 Wed, 22 Jan 2020 04:44:34 -0800 (PST)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D6E643F52E;
 Wed, 22 Jan 2020 04:44:33 -0800 (PST)
Subject: Re: [PATCH V3] firmware: arm_scmi: Make scmi core independent of the
 transport type
To: Viresh Kumar <viresh.kumar@linaro.org>, arnd@arndb.de,
 Sudeep Holla <sudeep.holla@arm.com>
References: <4b74f1b6c1f9653241a1b5754525e230b3d76a3f.1579595093.git.viresh.kumar@linaro.org>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <3a8836dd-99d3-faff-af05-2032d609f594@arm.com>
Date: Wed, 22 Jan 2020 12:44:32 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <4b74f1b6c1f9653241a1b5754525e230b3d76a3f.1579595093.git.viresh.kumar@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_044435_902521_D4420F49 
X-CRM114-Status: GOOD (  23.06  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: peng.fan@nxp.com, jassisinghbrar@gmail.com, peter.hilber@opensynergy.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

On 21/01/2020 08:27, Viresh Kumar wrote:
> The SCMI specification is fairly independent of the transport protocol,
> which can be a simple mailbox (already implemented) or anything else.
> The current Linux implementation however is very much dependent on the
> mailbox transport layer.
> 
> This patch makes the SCMI core code (driver.c) independent of the
> mailbox transport layer and moves all mailbox related code to a new
> file: mailbox.c.
> 
> We can now implement more transport protocols to transport SCMI
> messages.
> 
> The transport protocols just need to provide struct scmi_transport_ops,
> with its version of the callbacks to enable exchange of SCMI messages.
> 
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>

[snip]

> +/* Offset of fields within the above structure */
> +#define SHMEM_CHANNEL_STATUS		offsetof(struct scmi_shared_mem, channel_status)
> +#define SHMEM_FLAGS			offsetof(struct scmi_shared_mem, flags)
> +#define SHMEM_LENGTH			offsetof(struct scmi_shared_mem, length)
> +#define SHMEM_MSG_HEADER		offsetof(struct scmi_shared_mem, msg_header)
> +#define SHMEM_MSG_PAYLOAD		offsetof(struct scmi_shared_mem, msg_payload)
> +
> +struct scmi_info;
> +
> +/**
> + * struct scmi_chan_info - Structure representing a SCMI channel information
> + *
> + * @payload: Transmit/Receive payload area
> + * @dev: Reference to device in the SCMI hierarchy corresponding to this
> + *	 channel
> + * @handle: Pointer to SCMI entity handle
> + * @transport_info: Transport layer related information
> + */

commment is obsolete
> +struct scmi_chan_info {
> +	struct scmi_info *info;
> +	struct device *dev;
> +	struct scmi_handle *handle;
> +	void *transport_info;
> +};
> +
> +/**
> + * struct scmi_transport_ops - Structure representing a SCMI transport ops
> + *
> + * @send_message: Callback to send a message
> + * @mark_txdone: Callback to mark tx as done
> + * @chan_setup: Callback to allocate and setup a channel
> + * @chan_free: Callback to free a channel
> + */
commment is obsolete but I would also ask: are all of these operations supposed to be mandatory supported
on any possible foreseeable transport ? (beside the obviously needed like send_message)

I'm asking because they are all called straight away from the driver core without any NULL check
so that if a new transport should not need one of them it will be forced to anyway implement a dummy one
to comply, which it will be needlessly invoked every time.

> +struct scmi_transport_ops {
> +	bool (*chan_available)(struct device *dev, int idx);
> +	int (*chan_setup)(struct scmi_chan_info *cinfo, struct device *dev, bool tx);
> +	int (*chan_free)(int id, void *p, void *data);
> +	int (*send_message)(struct scmi_chan_info *cinfo, struct scmi_xfer *xfer);
> +	void (*mark_txdone)(struct scmi_chan_info *cinfo, int ret);
> +	u32 (*read32)(struct scmi_chan_info *cinfo, unsigned int offset);
> +	void (*write32)(struct scmi_chan_info *cinfo, u32 val, unsigned int offset);
> +	void (*memcpy_from)(struct scmi_chan_info *cinfo, void *to, unsigned int offset, long len);
> +	void (*memcpy_to)(struct scmi_chan_info *cinfo, unsigned int offset, void *from, long len);
> +
> +};
> +
> +/**
> + * struct scmi_desc - Description of SoC integration
> + *
> + * @max_rx_timeout_ms: Timeout for communication with SoC (in Milliseconds)
> + * @max_msg: Maximum number of messages that can be pending
> + *	simultaneously in the system
> + * @max_msg_size: Maximum size of data per message that can be handled.
> + */
comment is obsolete
> +struct scmi_desc {
> +	struct scmi_transport_ops *ops;
> +	int max_rx_timeout_ms;
> +	int max_msg;
> +	int max_msg_size;
> +};
> +

[big snip]

>  
> -static const struct scmi_desc scmi_generic_desc = {
> -	.max_rx_timeout_ms = 30,	/* We may increase this if required */
> -	.max_msg = 20,		/* Limited by MBOX_TX_QUEUE_LEN */
> -	.max_msg_size = 128,
> -};
> -
>  /* Each compatible listed below must have descriptor associated with it */
>  static const struct of_device_id scmi_of_match[] = {
> -	{ .compatible = "arm,scmi", .data = &scmi_generic_desc },
> +	{ .compatible = "arm,scmi", .data = &scmi_mailbox_desc },
>  	{ /* Sentinel */ },
>  };

minor thing: shouldn't the chosen transport being configurable at compile time with some
option like CONFIG_SCMI_TRANSPORT_MBOX ? or via DT ?
(minor thing in fact since as of now we have only one transport...)

>  
> diff --git a/drivers/firmware/arm_scmi/mailbox.c b/drivers/firmware/arm_scmi/mailbox.c
> new file mode 100644
> index 000000000000..7509e7eb262a
> --- /dev/null
> +++ b/drivers/firmware/arm_scmi/mailbox.c
> @@ -0,0 +1,202 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * System Control and Management Interface (SCMI) Message Mailbox Transport
> + * driver.
> + *
> + * Copyright (C) 2019 ARM Ltd.
> + */
> +
> +#include <linux/err.h>
> +#include <linux/device.h>
> +#include <linux/mailbox_client.h>
> +#include <linux/of.h>
> +#include <linux/of_address.h>
> +#include <linux/slab.h>
> +
> +#include "common.h"
> +
> +/**
> + * struct scmi_mailbox - Structure representing a SCMI mailbox transport
> + *
> + * @cl: Mailbox Client
> + * @chan: Transmit/Receive mailbox channel
> + * @cinfo: SCMI channel info
> + */
comment is obsolete
> +struct scmi_mailbox {
> +	struct mbox_client cl;
> +	struct mbox_chan *chan;
> +	struct scmi_chan_info *cinfo;
> +	void __iomem *payload;
> +};
> +

[snip]

> +static void mailbox_memcpy_from(struct scmi_chan_info *cinfo, void *to,
> +				unsigned int offset, long len)
> +{
> +	struct scmi_mailbox *smbox = cinfo->transport_info;
> +
> +	memcpy_fromio(to, smbox->payload + offset, len);
> +}
> +
> +static void mailbox_memcpy_to(struct scmi_chan_info *cinfo, unsigned int offset,
> +			      void *from, long len)
> +{
> +	struct scmi_mailbox *smbox = cinfo->transport_info;
> +
> +	memcpy_toio(smbox->payload + offset, from, len);
> +}
> +
> +static struct scmi_transport_ops scmi_mailbox_ops = {
> +	.chan_available = mailbox_chan_available,
> +	.chan_setup = mailbox_chan_setup,
> +	.chan_free = mailbox_chan_free,
> +	.send_message = mailbox_send_message,
> +	.mark_txdone = mailbox_mark_txdone,
> +	.read32 = mailbox_read32,
> +	.write32 = mailbox_write32,
> +	.memcpy_from = mailbox_memcpy_from,
> +	.memcpy_to = mailbox_memcpy_to,
> +};
> +
> +const struct scmi_desc scmi_mailbox_desc = {
> +	.ops = &scmi_mailbox_ops,
> +	.max_rx_timeout_ms = 30, /* We may increase this if required */
> +	.max_msg = 20, /* Limited by MBOX_TX_QUEUE_LEN */
> +	.max_msg_size = 128,
> +};
> 

Regards

Cristian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

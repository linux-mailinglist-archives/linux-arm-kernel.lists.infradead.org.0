Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3681A846F8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 10:18:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ToJi48MCPrUiLJRIf6AKPe+hpcty0Fo8suBo6lcEXPk=; b=ErCBvdHf9co7U6
	2mqwxttKTcN/cjor6jTDFjO/AnNmrTMDKab3tg4OSVh7kYky4N6bQAcRirH1ILKqtCGElqIiAx7a4
	4cj/dCjbjEFkxqIT+M2YWRZv51+WzdOyTMmd6KQA6C04nLGyQhV7YcF+JtWLMNSf1X+L4HuP2zLFY
	XOFcayM32eHOKkxrKdb+n0DTjf8G5DgzEY5mobt+BQyJnCKfh2xu7QkG6kSlf7u/MkRRxacJOvvSa
	rTplhY71TWe7GzFfGV62GpISdIJH+x+YC8vY4iOtMJmVzyiDie+1qvSGN0jxZlIARKG+qcRM6c9up
	7dkEsRfltBaHjQD5o4Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvH93-0007cA-SP; Wed, 07 Aug 2019 08:18:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvH8r-0007bP-T2
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 08:17:55 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1hvH8q-0001UB-81; Wed, 07 Aug 2019 10:17:52 +0200
Message-ID: <1565165870.5048.4.camel@pengutronix.de>
Subject: Re: [PATCH v2 4/5] firmware: arm_scmi: Add RESET protocol in SCMI v2.0
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Date: Wed, 07 Aug 2019 10:17:50 +0200
In-Reply-To: <20190806170208.6787-5-sudeep.holla@arm.com>
References: <20190806170208.6787-1-sudeep.holla@arm.com>
 <20190806170208.6787-5-sudeep.holla@arm.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_011753_951341_448E5480 
X-CRM114-Status: GOOD (  19.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Peng Fan <peng.fan@nxp.com>, Etienne Carriere <etienne.carriere@linaro.org>,
 Souvik Chakravarty <Souvik.Chakravarty@arm.com>, wesleys@xilinx.com,
 aidapala@qti.qualcomm.com, linux-kernel@vger.kernel.org,
 Saeed Nowshadi <saeed.nowshadi@xilinx.com>,
 Bo Zhang <bozhang.zhang@broadcom.com>, Felix Burton <fburton@xilinx.com>,
 Jim Quinlan <james.quinlan@broadcom.com>, pajay@qti.qualcomm.com,
 Gaku Inami <gaku.inami.xh@renesas.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-08-06 at 18:02 +0100, Sudeep Holla wrote:
> SCMIv2.0 adds a new Reset Management Protocol to manage various reset
> states a given device or domain can enter. Device(s) that can be
> collectively reset through a common reset signal constitute a reset
> domain for the firmware.
> 
> A reset domain can be reset autonomously or explicitly through assertion
> and de-assertion of the signal. When autonomous reset is chosen, the
> firmware is responsible for taking the necessary steps to reset the
> domain and to subsequently bring it out of reset. When explicit reset is
> chosen, the caller has to specifically assert and then de-assert the
> reset signal by issuing two separate RESET commands.
> 
> Add the basic SCMI reset infrastructure that can be used by Linux
> reset controller driver.
> 
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/firmware/arm_scmi/Makefile |   2 +-
>  drivers/firmware/arm_scmi/reset.c  | 231 +++++++++++++++++++++++++++++
>  include/linux/scmi_protocol.h      |  26 ++++
>  3 files changed, 258 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/firmware/arm_scmi/reset.c
> 
> diff --git a/drivers/firmware/arm_scmi/Makefile b/drivers/firmware/arm_scmi/Makefile
> index c47d28d556b6..5f298f00a82e 100644
> --- a/drivers/firmware/arm_scmi/Makefile
> +++ b/drivers/firmware/arm_scmi/Makefile
> @@ -2,5 +2,5 @@
>  obj-y	= scmi-bus.o scmi-driver.o scmi-protocols.o
>  scmi-bus-y = bus.o
>  scmi-driver-y = driver.o
> -scmi-protocols-y = base.o clock.o perf.o power.o sensors.o
> +scmi-protocols-y = base.o clock.o perf.o power.o reset.o sensors.o
>  obj-$(CONFIG_ARM_SCMI_POWER_DOMAIN) += scmi_pm_domain.o
> diff --git a/drivers/firmware/arm_scmi/reset.c b/drivers/firmware/arm_scmi/reset.c
> new file mode 100644
> index 000000000000..11cb8b5ccf34
> --- /dev/null
> +++ b/drivers/firmware/arm_scmi/reset.c
> @@ -0,0 +1,231 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * System Control and Management Interface (SCMI) Reset Protocol
> + *
> + * Copyright (C) 2019 ARM Ltd.
> + */
> +
> +#include "common.h"
> +
> +enum scmi_reset_protocol_cmd {
> +	RESET_DOMAIN_ATTRIBUTES = 0x3,
> +	RESET = 0x4,
> +	RESET_NOTIFY = 0x5,
> +};
> +
> +enum scmi_reset_protocol_notify {
> +	RESET_ISSUED = 0x0,
> +};
> +
> +#define NUM_RESET_DOMAIN_MASK	0xffff
> +#define RESET_NOTIFY_ENABLE	BIT(0)
> +
> +struct scmi_msg_resp_reset_domain_attributes {
> +	__le32 attributes;
> +#define SUPPORTS_ASYNC_RESET(x)		((x) & BIT(31))
> +#define SUPPORTS_NOTIFY_RESET(x)	((x) & BIT(30))
> +	__le32 latency;
> +	    u8 name[SCMI_MAX_STR_SIZE];
> +};
> +
> +struct scmi_msg_reset_domain_reset {
> +	__le32 domain_id;
> +	__le32 flags;
> +#define AUTONOMOUS_RESET	BIT(0)
> +#define EXPLICIT_RESET_ASSERT	BIT(1)
> +#define ASYNCHRONOUS_RESET	BIT(2)
> +	__le32 reset_state;
> +#define ARCH_RESET_TYPE		BIT(31)
> +#define COLD_RESET_STATE	BIT(0)
> +#define ARCH_COLD_RESET		(ARCH_RESET_TYPE | COLD_RESET_STATE)
> +};
> +
> +struct reset_dom_info {
> +	bool async_reset;
> +	bool reset_notify;
> +	u32 latency_us;
> +	char name[SCMI_MAX_STR_SIZE];
> +};
> +
> +struct scmi_reset_info {
> +	int num_domains;
> +	struct reset_dom_info *dom_info;
> +};
> +
> +static int scmi_reset_attributes_get(const struct scmi_handle *handle,
> +				     struct scmi_reset_info *pi)
> +{
> +	int ret;
> +	struct scmi_xfer *t;
> +	u32 *attr;
> +
> +	ret = scmi_xfer_get_init(handle, PROTOCOL_ATTRIBUTES,
> +				 SCMI_PROTOCOL_RESET, 0, sizeof(*attr), &t);
> +	if (ret)
> +		return ret;
> +
> +	attr = t->rx.buf;
> +
> +	ret = scmi_do_xfer(handle, t);
> +	if (!ret)
> +		pi->num_domains = le32_to_cpu(*attr) & NUM_RESET_DOMAIN_MASK;
> +
> +	scmi_xfer_put(handle, t);
> +	return ret;
> +}
> +
> +static int
> +scmi_reset_domain_attributes_get(const struct scmi_handle *handle, u32 domain,
> +				 struct reset_dom_info *dom_info)
> +{
> +	int ret;
> +	struct scmi_xfer *t;
> +	struct scmi_msg_resp_reset_domain_attributes *attr;
> +
> +	ret = scmi_xfer_get_init(handle, RESET_DOMAIN_ATTRIBUTES,
> +				 SCMI_PROTOCOL_RESET, sizeof(domain),
> +				 sizeof(*attr), &t);
> +	if (ret)
> +		return ret;
> +
> +	*(__le32 *)t->tx.buf = cpu_to_le32(domain);

Should this use
	put_unaligned_le32(domain, t->tx.buf);
? Either way,

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

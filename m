Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8A11A9B95
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 13:00:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	References:Date:Subject:To:From:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3mueO8SaV+tJ2MolARqaucUIDzYWZG/8kl/eZm3riJQ=; b=fXw3iA1AyqGekflF3Q/GxLSYtC
	tf7DKJuxqCK9d6mp8mhgNnoVajFwgYN7oypdBsxmO80AvmPFR+ocAo+qeMSj4awLGmvjqvKMasuUD
	8BXsg/AIzMwKh4gX593ZyO/IkoO0OJr1TCPWa4fJrQtEuPTOWM3sYVdiqmbe4NY9FLv1+B1RgPsw6
	8KQBZOCj2CXl8Q4FyOVzKugQK6DFJWKDyPhrp+fe8Xco+uLQ5jggSQd7NEd9is7RGL2q4nAsANZxI
	wZP/dhIRZuDa5JEhmkTX+jYPiv3Sq27c7/eQEexNLbM/4UdpH7DInj+Wvr11jdlm2RAd6zNtImX6O
	I9VZlkXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOflp-0003kn-FY; Wed, 15 Apr 2020 10:59:53 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOflZ-0003VI-ON
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 10:59:39 +0000
Received: by mail-wm1-x341.google.com with SMTP id e26so16895116wmk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 03:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:from:to:cc:subject:date:in-reply-to:references
 :in-reply-to; bh=gyOymjuJpKySMZCoUKVOaXwQZFqz9S9M2EkURePP5JQ=;
 b=aSavr5fcI+OXIFlvsLqoQHRmt7boXGXEmcyhWu3T0F/omWnvm4iDIcBBIohbmgnj5W
 JvCt1uK3Qgu3BYPz6Oe9maleNLiKPYVM3LyoQj27hZGEnUktPHRshqd3ReGBuJBbNbTc
 87Y5jNWK0EBZZLyDTy14UnxYUGD+b+1A2lPKjcFpnQrVSPPKyUVE8Wnw72JE/vx3D94U
 jyz3lw/s0r/IJN9epLTv+ldfuM32xCbAaOOPRIlq91RwBHs2Mj/Q0cpk5DRB2gS44219
 3i0XpwtgUrrU3ZrU3rXDP4sG9jeoFYcGRYmPW19rZBq1pV7W88XFq91BqrliFYLSRNZb
 9dAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:from:to:cc:subject:date:in-reply-to
 :references:in-reply-to;
 bh=gyOymjuJpKySMZCoUKVOaXwQZFqz9S9M2EkURePP5JQ=;
 b=jEdGalEY2TK5TgjSBNP5kPnJfYrqFZ1cyhRsUBdTI7m+XQFIIlsU4Ne44SUtaH5WwF
 NoIMVDATQuVcSlQhf0xU5tf7NGbThIsj8xo4bYz432VSNn+zkpfAszVJWJ0+ap07ljsp
 qlqTGyYbCjKApTp/pzkWHB4FiAuYFzUF+aG337/YetiasB3+GPUcn+iwzsjCoJQDI8zE
 BNCca3N4+Y+EwyLis8Yga2btMjbrkmQiKOci8AptAk/LTAfT4Tjl0+KZ0FdCXzy7QPQN
 zMk0YdpirkIUkjsw7GxKTAKrqSZ1GLwSXRtMDGTadtyie7Fs/jW3D2ZTZpjBPUQRuAAY
 oYTQ==
X-Gm-Message-State: AGi0PuY74tuZajHgqNudccgt08CYcSHhBsXHn7KLAY49OpwOMg9MrYGS
 dr7vj2itnf+dXmgdKVij/uQ2IQ==
X-Google-Smtp-Source: APiQypJztDCWY3SxxxokhuvLaaPLo3CbRWDQ/iFxWNphnpUZe0SQ/R33vBiYdtlOrGu0yYj3ol714Q==
X-Received: by 2002:a1c:7d90:: with SMTP id y138mr4956426wmc.121.1586948375471; 
 Wed, 15 Apr 2020 03:59:35 -0700 (PDT)
Received: from lmecxl0524.home
 (2a01cb058702ff002dd4025d621b0504.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8702:ff00:2dd4:25d:621b:504])
 by smtp.gmail.com with ESMTPSA id c83sm20122796wmd.23.2020.04.15.03.59.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 03:59:34 -0700 (PDT)
Message-ID: <5e96e916.1c69fb81.14365.050b@mx.google.com>
X-Google-Original-Message-ID: <1583673879-20714-3-git-send-email-peng.fan@nxp.com> (raw)
From: Etienne Carriere <etienne.carriere@linaro.org>
To: peng.fan@nxp.com
Subject: [PATCH V5 2/2] firmware: arm_scmi: add smc/hvc transport
Date: Wed, 15 Apr 2020 12:58:58 +0200
X-Mailer: git-send-email 2.17.1
In-Reply-To: <1583673879-20714-3-git-send-email-peng.fan@nxp.com>
References: <1583673879-20714-3-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1583673879-20714-1-git-send-email-peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_035937_800642_B9FC65A1 
X-CRM114-Status: GOOD (  20.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com, viresh.kumar@linaro.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 sudeep.holla@arm.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Peng,

I  have 2 comments on this change. The main is about using
arm_smccc_1_1_invoke(). Below some details and I added comments
inside you patch. The second of on SMC return value, see my
comment in your patch below.


About arm_smccc_1_1_invoke(), this functon currently relies on PSCI
driver to define a conduit method but SCMI agent driver does not
mandate CONFIG_PSCI to be enable.

Could you add an optional "method" property for "arm,scmi-smc" for platforms
willing to not rely on PSCI Linux driver? If no property "method" is
defined in the FDT, invocation relies on arm_smccc_1_1_invoke().

"method" naming mimics what is done in the OP-TEE driver (drivers/tee/optee/).
Here is a proposal for the documenting property "method" in 
Documentation/arm,scmi.txt:

- method : "smc" or "hvc"
            Optional property defining the conduit method for to be used
	    for invoking the SCMI server in secure world.
	    "smc" states instruction SMC #0 is used whereas "hvc" states
	    instruction HVC #0 is used.



Regards,
Etienne


> From: Peng Fan <peng.fan@nxp.commm>
> 
> Take arm,smc-id as the 1st arg, leave the other args as zero for now.
> There is no Rx, only Tx because of smc/hvc not support Rx.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
>
> (...)
>
> diff --git a/drivers/firmware/arm_scmi/smc.c b/drivers/firmware/arm_scmi/smc.c
> new file mode 100644
> index 000000000000..336168e40f49
> --- /dev/null
> +++ b/drivers/firmware/arm_scmi/smc.c
> @@ -0,0 +1,152 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * System Control and Management Interface (SCMI) Message SMC/HVC
> + * Transport driver
> + *
> + * Copyright 2020 NXP
> + */
> +
> +#include <linux/arm-smccc.h>
> +#include <linux/device.h>
> +#include <linux/err.h>
> +#include <linux/mutex.h>
> +#include <linux/of.h>
> +#include <linux/of_address.h>
> +#include <linux/slab.h>
> +
> +#include "common.h"
> +
> +/**
> + * struct scmi_smc - Structure representing a SCMI smc transport
> + *
> + * @cinfo: SCMI channel info
> + * @shmem: Transmit/Receive shared memory area
> + * @func_id: smc/hvc call function id
> + */
> +
> +struct scmi_smc {
> +	struct scmi_chan_info *cinfo;
> +	struct scmi_shared_mem __iomem *shmem;
> +	u32 func_id;
> +};

Add here a field for the secure world invocation function handler:

	scmi_arm_smccc_invoke_fn *invoke_fn;

With function proto type defined:

  typedef void (scmi_arm_smccc_invoke_fn)(unsigned long, struct arm_smccc_res *);

And materials to set the invocation hanlder:

/* Simple wrapper functions to be able to use a function pointer */
static void _smccc_smc(unsigned long func_id, struct arm_smccc_res *res)
{
	arm_smccc_smc(func_id, 0, 0, 0, 0, 0, 0, 0, res);
}

static void _smccc_hvc(unsigned long func_id, struct arm_smccc_res *res)
{
        arm_smccc_hvc(func_id, 0, 0, 0, 0, 0, 0, 0, res);
}

static void _smccc_1_1(unsigned long func_id, struct arm_smccc_res *res)
{
	arm_smccc_1_1_invoke(func_id, 0, 0, 0, 0, 0, 0, 0, res);
}

static scmi_arm_smccc_invoke_fn *get_invoke_function(struct device *dev)
{
        const char *method;

        if (device_property_read_string(dev, "method", &method))
		return _smccc_1_1;

        if (!strcmp("hvc", method))
                return _smccc_hvc;

        if (!strcmp("smc", method))
                return _smccc_smc;

        dev_err(dev, "Invalid \"method\" property: %s\n", method);
        return ERR_PTR(-EINVAL);
}
 
> +
> +static DEFINE_MUTEX(smc_mutex);
> +
> +static bool smc_chan_available(struct device *dev, int idx)
> +{
> +	return true;
> +}
> +
> +static int smc_chan_setup(struct scmi_chan_info *cinfo, struct device *dev,
> +			  bool tx)
> +{
> +	struct device *cdev = cinfo->dev;
> +	struct scmi_smc *scmi_info;
> +	resource_size_t size;
> +	struct resource res;
> +	struct device_node *np;
> +	u32 func_id;
> +	int ret;
> +
> +	if (!tx)
> +		return -ENODEV;
> +
> +	scmi_info = devm_kzalloc(dev, sizeof(*scmi_info), GFP_KERNEL);
> +	if (!scmi_info)
> +		return -ENOMEM;
> +
> +	np = of_parse_phandle(cdev->of_node, "shmem", 0> );
> +	if (!np)
> +		np = of_parse_phandle(dev->of_node, "shmem", 0);
> +	ret = of_address_to_resource(np, 0, &res);
> +	of_node_put(np);
> +	if (ret) {
> +		dev_err(cdev, "failed to get SCMI Tx shared memory\n");
> +		return ret;
> +	}
> +
> +	size = resource_size(&res);
> +	scmi_info->shmem = devm_ioremap(dev, res.start, size);
> +	if (!scmi_info->shmem) {
> +		dev_err(dev, "failed to ioremap SCMI Tx shared memory\n");
> +		return -EADDRNOTAVAIL;
> +	}
> +
> +	ret = of_property_read_u32(dev->of_node, "arm,smc-id", &func_id);
> +	if (ret < 0)
> +		return ret;

Here to get the handler for the invocation method:

	scmi_info->invoke_fn = get_invoke_function(dev);
	if (IS_ERR(scmi_info->invoke_fn))
		return PTR_ERR(scmi_info->invoke_fn);
 
> +
> +	scmi_info->func_id = func_id;
> +	scmi_info->cinfo = cinfo;
> +	cinfo->transport_info = scmi_info;
> +
> +	return 0;
> +}
> +
> +static int smc_chan_free(int id, void *p, void *data)
> +{
> +	struct scmi_chan_info *cinfo = p;
> +	struct scmi_smc *scmi_info = cinfo->transport_info;
> +
> +	cinfo->transport_info = NULL;
> +	scmi_info->cinfo = NULL;
> +
> +	scmi_free_channel(cinfo, data, id);
> +
> +	return 0;
> +}
> +
> +static int smc_send_message(struct scmi_chan_info *cinfo,
> +			    struct scmi_xfer *xfer)
> +{
> +	struct scmi_smc *scmi_info = cinfo->transport_info;
> +	struct arm_smccc_res res;
> +
> +	mutex_lock(&smc_mutex);
> +
> +	shmem_tx_prepare(scmi_info->shmem, xfer);
> +
> +	arm_smccc_1_1_invoke(scmi_info->func_id, 0, 0, 0, 0, 0, 0, 0, &res);

Last, here would rahter call the registered handler instead:

	scmi_info->invoke_fn(scmi_info->func_id, &res);


> +	scmi_rx_callback(scmi_info->cinfo, shmem_read_header(scmi_info->shmem));
> +
> +	mutex_unlock(&smc_mutex);
> +
> +	return res.a0;


The SCMI server is likely not to return a errno compliant value.

SMCCC specification states that unsupported function IDs should return signed
extended -1. I suggest to change the return above with:

	return res.a0 == ~0 ? -EINVAL : 0;


Regards,
Etienne

> +}
> +
> +static void smc_mark_txdone(struct scmi_chan_info *cinfo, int ret)
> +{
> +}
> +
> +static void smc_fetch_response(struct scmi_chan_info *cinfo,
> +			       struct scmi_xfer *xfer)
> +{
> +	struct scmi_smc *scmi_info = cinfo->transport_info;
> +
> +	shmem_fetch_response(scmi_info->shmem, xfer);
> +}
> +
> +static bool
> +smc_poll_done(struct scmi_chan_info *cinfo, struct scmi_xfer *xfer)
> +{
> +	struct scmi_smc *scmi_info = cinfo->transport_info;
> +
> +	return shmem_poll_done(scmi_info->shmem, xfer);
> +}
> +
> +static struct scmi_transport_ops scmi_smc_ops = {
> +	.chan_available = smc_chan_available,
> +	.chan_setup = smc_chan_setup,
> +	.chan_free = smc_chan_free,
> +	.send_message = smc_send_message,
> +	.mark_txdone = smc_mark_txdone,
> +	.fetch_response = smc_fetch_response,
> +	.poll_done = smc_poll_done,
> +};
> +
> +const struct scmi_desc scmi_smc_desc = {
> +	.ops = &scmi_smc_ops,
> +	.max_rx_timeout_ms = 30,
> +	.max_msg = 1,
> +	.max_msg_size = 128,
> +};
> -- 
> 2.16.4
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

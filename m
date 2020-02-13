Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB0915BD4F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 12:04:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GemCV2LRLPT50C+TGlIoA/WYIG7MykWHP92PFinQUmY=; b=ELt970jyp2FKW9
	LjOTAOqwKxJ5I2grAHFT4NodTZ5xcODVsr78JlzLZ5ejPs0pZEu1nxdYUO/gWorkuOcX+i/hMR8ue
	QFdapgchd0OdUQnEX57Tf62iI9IbVlM9zdMME9sD/kdYEnZRlJit38idLtbJ0MkMzB24OjB4cOmGE
	LBKurcBGq2N9jeSO//XuajeLGY7Krs+wTLDHrHUHhkUVHVlM/RbQ6eFeGnLLrSBPbjfHu2NrZfchm
	jDjmLi97y9GVZHGVeG9YETfQxQwxnqNQCn3wHYVbC3jmQdK6o1Ot8Vu3whQMu0oM7YmuQcYAx1/fn
	bTEm1EeOr4YW2Wl14acg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2CIK-0007tQ-3W; Thu, 13 Feb 2020 11:04:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2CIB-0007qP-Ms
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 11:04:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ABF381FB;
 Thu, 13 Feb 2020 03:04:22 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3E3233F6CF;
 Thu, 13 Feb 2020 03:04:21 -0800 (PST)
Date: Thu, 13 Feb 2020 11:04:19 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: peng.fan@nxp.com
Subject: Re: [PATCH V2 2/2] firmware: arm_scmi: add smc/hvc transports
Message-ID: <20200213110419.GB23374@bogus>
References: <1581566330-1029-1-git-send-email-peng.fan@nxp.com>
 <1581566330-1029-3-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581566330-1029-3-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_030423_836092_CC4D8CC1 
X-CRM114-Status: GOOD (  18.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, f.fainelli@gmail.com,
 viresh.kumar@linaro.org, Sudeep Holla <sudeep.holla@arm.com>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 andre.przywara@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 11:58:50AM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add SCMI smc/hvc transports support.
> 
> Take smc-id as the 2nd arg, and protocol id as the 2nd arg when
> invokding SMC/HVC. Since we need protocol id, so add this parrameter
> to chan_setup, then smc transport driver could directly use it.
> There is no Rx, only Tx because of smc/hvc not support Rx.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/firmware/arm_scmi/Makefile  |   2 +-
>  drivers/firmware/arm_scmi/common.h  |   4 +-
>  drivers/firmware/arm_scmi/driver.c  |  11 +-
>  drivers/firmware/arm_scmi/mailbox.c |   2 +-
>  drivers/firmware/arm_scmi/smc.c     | 222 ++++++++++++++++++++++++++++++++++++
>  5 files changed, 234 insertions(+), 7 deletions(-)
>  create mode 100644 drivers/firmware/arm_scmi/smc.c

[...]

>
> diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
> index dbec767222e9..65c56328e6d8 100644
> --- a/drivers/firmware/arm_scmi/driver.c
> +++ b/drivers/firmware/arm_scmi/driver.c
> @@ -595,7 +595,7 @@ static int scmi_chan_setup(struct scmi_info *info, struct device *dev,
>  
>  	cinfo->dev = dev;
>  
> -	ret = info->desc->ops->chan_setup(cinfo, info->dev, tx);
> +	ret = info->desc->ops->chan_setup(cinfo, info->dev, prot_id, tx);

Why do you need this ?

>  	if (ret)
>  		return ret;
>  
> @@ -826,7 +829,7 @@ ATTRIBUTE_GROUPS(versions);
>  
>  /* Each compatible listed below must have descriptor associated with it */
>  static const struct of_device_id scmi_of_match[] = {
> -	{ .compatible = "arm,scmi", .data = &scmi_mailbox_desc },
> +	{ .compatible = "arm,scmi",  },

Don't do this, get "arm,scmi-smc"

>  	{ /* Sentinel */ },
>  };
>  
[...]


> +static unsigned long
> +__invoke_scmi_fn_hvc(unsigned long function_id, unsigned long arg0,
> +		     unsigned long arg1, unsigned long arg2,
> +		     unsigned long arg3, unsigned long arg4,
> +		     unsigned long arg5, unsigned long arg6)
> +{
> +	struct arm_smccc_res res;
> +
> +	arm_smccc_hvc(function_id, arg0, arg1, arg2, arg3, arg4, arg5,
> +		      arg6, &res);
> +
> +	return res.a0;
> +}
> +
> +static unsigned long
> +__invoke_scmi_fn_smc(unsigned long function_id, unsigned long arg0,
> +		     unsigned long arg1, unsigned long arg2,
> +		     unsigned long arg3, unsigned long arg4,
> +		     unsigned long arg5, unsigned long arg6)
> +{
> +	struct arm_smccc_res res;
> +
> +	arm_smccc_smc(function_id, arg0, arg1, arg2, arg3, arg4, arg5,
> +		      arg6, &res);
> +
> +	return res.a0;
> +}
> +
> +static int scmi_smc_conduit_method(struct device_node *np)
> +{
> +	const char *method;
> +
> +	if (invoke_scmi_smc_fn)
> +		return 0;
> +
> +	if (of_property_read_string(np, "method", &method))
> +		return -ENXIO;
> +
> +	if (!strcmp("hvc", method)) {
> +		invoke_scmi_smc_fn = __invoke_scmi_fn_hvc;
> +	} else if (!strcmp("smc", method)) {
> +		invoke_scmi_smc_fn = __invoke_scmi_fn_smc;
> +	} else {
> +		pr_warn("invalid \"method\" property: %s\n", method);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +

You don't the above functions

[...]

> +
> +	np = of_find_node_by_path("/psci");
> +	if (!np) {
> +		dev_err(dev, "Not able to find /psci node\n");
> +		return -ENODEV;
> +	}

No need for this as mentioned below.

> +
> +	ret = scmi_smc_conduit_method(np);

Just use arm_smccc_1_1_get_conduit if you want to get the conduit which
I don't think you need. You can just use arm_smccc_1_1_invoke() directly.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

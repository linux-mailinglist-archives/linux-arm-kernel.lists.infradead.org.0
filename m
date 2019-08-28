Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7841FA03F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 16:02:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g/1luy63tXgaf/4lBbevqxnvMDcILesDAwdWs7LDPXM=; b=NGpUjXvODiK8XC
	jC+SkrGqFoYj+KuAoyY/tUCKB7YMKOYTnzUtDOQYR65f9jGqGpAfG0bE+RbzYLC3N5Bawk7gFmfCT
	s3iq0gzL3c+gHi5aiL6GEEgK7MWVc3cXmrJ+Fw4CFxFQgOpGLleUFQfazkOUsMWDMHayAGVuzq1l/
	SAeA8ibKm5dej02N6JwFu7OtscQkHsdSWSZOJqKOILfPi/9OB5iPaX/Jzdc+860nCAFurYbyZ9YNa
	39/SQDQEzMktccdy/73baNYkdK0FjHb3eVTHb/2Zr6mUrCgqBmJ+l2b4BqUKyO5Sm2+24eXk0GKxj
	gLDBDZhhaM8T/yOGZ+VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2yWu-0003Sr-OC; Wed, 28 Aug 2019 14:02:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2yWk-0003S0-Jh
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 14:02:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D5A7D28;
 Wed, 28 Aug 2019 07:02:20 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 66CB93F246;
 Wed, 28 Aug 2019 07:02:19 -0700 (PDT)
Date: Wed, 28 Aug 2019 15:02:17 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH v5 2/2] mailbox: introduce ARM SMC based mailbox
Message-ID: <20190828140217.GC21614@e107155-lin>
References: <1567004515-3567-1-git-send-email-peng.fan@nxp.com>
 <1567004515-3567-3-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567004515-3567-3-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_070222_741327_BF3ED774 
X-CRM114-Status: GOOD (  18.34  )
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 03:03:02AM +0000, Peng Fan wrote:
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
>  drivers/mailbox/Kconfig           |   7 ++
>  drivers/mailbox/Makefile          |   2 +
>  drivers/mailbox/arm-smc-mailbox.c | 215 ++++++++++++++++++++++++++++++++++++++
>  3 files changed, 224 insertions(+)
>  create mode 100644 drivers/mailbox/arm-smc-mailbox.c
>

[...]

> +static int arm_smc_mbox_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct mbox_controller *mbox;
> +	struct arm_smc_chan_data *chan_data;
> +	const char *method;
> +	bool mem_trans = false;
> +	int ret, i;
> +	u32 val;
> +
> +	if (!of_property_read_u32(dev->of_node, "arm,num-chans", &val)) {
> +		if (!val) {
> +			dev_err(dev, "invalid arm,num-chans value %u\n", val);
> +			return -EINVAL;
> +		}
> +	} else {
> +		return -EINVAL;
> +	}
> +
> +	if (!of_property_read_string(dev->of_node, "transports", &method)) {
> +		if (!strcmp("mem", method)) {
> +			mem_trans = true;
> +		} else if (!strcmp("reg", method)) {
> +			mem_trans = false;
> +		} else {
> +			dev_warn(dev, "invalid \"transports\" property: %s\n",
> +				 method);
> +
> +			return -EINVAL;
> +		}
> +	} else {
> +		return -EINVAL;
> +	}
> +
> +	if (!of_property_read_string(dev->of_node, "method", &method)) {
> +		if (!strcmp("hvc", method)) {
> +			invoke_smc_mbox_fn = __invoke_fn_hvc;
> +		} else if (!strcmp("smc", method)) {
> +			invoke_smc_mbox_fn = __invoke_fn_smc;
> +		} else {
> +			dev_warn(dev, "invalid \"method\" property: %s\n",
> +				 method);
> +
> +			return -EINVAL;
> +		}
> +	} else {
> +		return -EINVAL;
> +	}
> +
> +	mbox = devm_kzalloc(dev, sizeof(*mbox), GFP_KERNEL);
> +	if (!mbox)
> +		return -ENOMEM;
> +
> +	mbox->num_chans = val;
> +	mbox->chans = devm_kcalloc(dev, mbox->num_chans, sizeof(*mbox->chans),
> +				   GFP_KERNEL);
> +	if (!mbox->chans)
> +		return -ENOMEM;
> +
> +	chan_data = devm_kcalloc(dev, mbox->num_chans, sizeof(*chan_data),
> +				 GFP_KERNEL);
> +	if (!chan_data)
> +		return -ENOMEM;
> +
> +	for (i = 0; i < mbox->num_chans; i++) {
> +		u32 function_id;
> +
> +		ret = of_property_read_u32_index(dev->of_node,
> +						 "arm,func-ids", i,
> +						 &function_id);

I missed it in binding but I thought we agreed to make this "arm,func-ids"
a required property and not optional ?

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

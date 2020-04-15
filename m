Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A61E1AA3AA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 15:16:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dxe0lmkgveTxd0hD8f896fZgjT9QShcc2etx71elkPU=; b=j/UUlM1W5UIZgq
	Hv+zbJIrjTfAyHYzbNh5gcKQa6lA57XlFCZx1W7KGZyJN0dc+C3/qL1kaiNLdOwZuxycoyR+l8x1G
	L7JQe9Arn7JdJ7d58ZHEgvHWB+WvTzl67k/hZSn6qXugxROPSN/Yoj8nb84TTo0zQGXFUiXgse7QY
	RtLcBvPWuCLsRK4PHHJ6lr41OF0AgsK36MrGpiaBoDzdektlOQNzBFBFSR84EwyWS6D5GVphmKA0O
	qiaZqK00NVt4iVJ6O6bGkhWrFVJQTj/rAodnt4pqdKQBMTD7/cfxKT+Cog7L8ihVpmJZxgnmgc+Bs
	CKTn7e+wqiU3fnJpVAFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhu9-0006nk-J0; Wed, 15 Apr 2020 13:16:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhts-0006lt-Cv
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 13:16:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 016531063;
 Wed, 15 Apr 2020 06:16:18 -0700 (PDT)
Received: from bogus (unknown [10.37.12.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4D75C3F6C4;
 Wed, 15 Apr 2020 06:16:15 -0700 (PDT)
Date: Wed, 15 Apr 2020 14:16:12 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Etienne Carriere <etienne.carriere@linaro.org>
Subject: Re: [PATCH V5 2/2] firmware: arm_scmi: add smc/hvc transport
Message-ID: <20200415131612.GC31928@bogus>
References: <1583673879-20714-3-git-send-email-peng.fan@nxp.com>
 <5e96e916.1c69fb81.14365.050b@mx.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5e96e916.1c69fb81.14365.050b@mx.google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_061620_490880_78B41CC2 
X-CRM114-Status: GOOD (  20.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, peng.fan@nxp.com, f.fainelli@gmail.com,
 viresh.kumar@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-imx@nxp.com, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 12:58:58PM +0200, Etienne Carriere wrote:
> Hello Peng,
>
> I  have 2 comments on this change. The main is about using
> arm_smccc_1_1_invoke(). Below some details and I added comments
> inside you patch. The second of on SMC return value, see my
> comment in your patch below.
>
> About arm_smccc_1_1_invoke(), this functon currently relies on PSCI
> driver to define a conduit method but SCMI agent driver does not
> mandate CONFIG_PSCI to be enable.
>

Yes this was discussed and it is done so deliberately. I have added the
build dependency when I merged the patch. There's no dependency on
CONFIG_PSCI.

> Could you add an optional "method" property for "arm,scmi-smc" for platforms
> willing to not rely on PSCI Linux driver? If no property "method" is
> defined in the FDT, invocation relies on arm_smccc_1_1_invoke().
>

Nope, we don't want mixture here. Why is the system not using PSCI/SMCCC ?

> "method" naming mimics what is done in the OP-TEE driver (drivers/tee/optee/).
> Here is a proposal for the documenting property "method" in
> Documentation/arm,scmi.txt:
>
> - method : "smc" or "hvc"
>             Optional property defining the conduit method for to be used
> 	    for invoking the SCMI server in secure world.
> 	    "smc" states instruction SMC #0 is used whereas "hvc" states
> 	    instruction HVC #0 is used.
>
>

It was rejected, you can try your luck with OPTEE :)
We will just use the system conduit here with SCMI for SMC/HVC transport.
Details in previous version of the patch.

[...]

> > +struct scmi_smc {
> > +	struct scmi_chan_info *cinfo;
> > +	struct scmi_shared_mem __iomem *shmem;
> > +	u32 func_id;
> > +};
>
> Add here a field for the secure world invocation function handler:
>
> 	scmi_arm_smccc_invoke_fn *invoke_fn;
>

As stated not needed if we use  arm_smccc_1_1_invoke()

[...]

>
> The SCMI server is likely not to return a errno compliant value.
>
> SMCCC specification states that unsupported function IDs should return signed
> extended -1. I suggest to change the return above with:
>
> 	return res.a0 == ~0 ? -EINVAL : 0;
>

I need to check that.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

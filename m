Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77AE4F8E8A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 12:24:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DKCLIe2+5JZBxBAS/B0IUINe6oulnaw7YXdpfByK+2k=; b=UQJD1N7RmDcAq1
	JpZOUAyit+/Drv0inKxUq8bG3T5sDaI7MQWlDMdfOat/xEXKmxm2WUyPPT4WDNgfONKL8MwIkecP/
	PqaFXdhtsXMRm7xniWJg2MfKcS9GMF02LHt2iIjam9PieBO9EdqTNrTjrm9YwKAz5L1WG06bTzSW3
	Y1+XA5ARbWoTsK9/GqtpE26rSXHUFq9K7NbzLb4pRBI7EAjWWffCmDDDIulvRhTOcJHaIcnHa3MMD
	VAdmkFdTzxO67t7Wu4vdyG05FfJM//O/SO/yfg5FKufk8iUotV3g6i5I2wx4y0hDI0YykJJ6h/Mue
	Yd8nYk13D/3WwtF0A6hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUUHf-0006aq-CL; Tue, 12 Nov 2019 11:24:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUUHT-0006a2-Te
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 11:24:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 088E831B;
 Tue, 12 Nov 2019 03:24:19 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A44EA3F6C4;
 Tue, 12 Nov 2019 03:24:17 -0800 (PST)
Date: Tue, 12 Nov 2019 11:24:14 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH V10 2/2] mailbox: introduce ARM SMC based mailbox
Message-ID: <20191112112414.10f3f88e@donnerap.cambridge.arm.com>
In-Reply-To: <2c8fa412-33c2-57c7-20b7-37b3b70ce524@gmail.com>
References: <1569824287-4263-1-git-send-email-peng.fan@nxp.com>
 <1569824287-4263-3-git-send-email-peng.fan@nxp.com>
 <2c8fa412-33c2-57c7-20b7-37b3b70ce524@gmail.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_032420_045305_DB6D3E91 
X-CRM114-Status: GOOD (  30.77  )
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
 Peng Fan <peng.fan@nxp.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 8 Nov 2019 09:32:43 -0800
Florian Fainelli <f.fainelli@gmail.com> wrote:

Hi Florian,

> On 9/29/19 11:20 PM, Peng Fan wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> > 
> > This mailbox driver implements a mailbox which signals transmitted data
> > via an ARM smc (secure monitor call) instruction. The mailbox receiver
> > is implemented in firmware and can synchronously return data when it
> > returns execution to the non-secure world again.
> > An asynchronous receive path is not implemented.
> > This allows the usage of a mailbox to trigger firmware actions on SoCs
> > which either don't have a separate management processor or on which such
> > a core is not available. A user of this mailbox could be the SCP
> > interface.  
> 
> Sorry for not spotting this, or rather asking this earlier, but I do
> have one question below.
> 
> [snip]
> 
> > +static int arm_smc_send_data(struct mbox_chan *link, void *data)
> > +{
> > +	struct arm_smc_chan_data *chan_data = link->con_priv;
> > +	struct arm_smccc_mbox_cmd *cmd = data;
> > +	unsigned long ret;
> > +
> > +	if (ARM_SMCCC_IS_64(chan_data->function_id)) {
> > +		ret = chan_data->invoke_smc_mbox_fn(chan_data->function_id,
> > +						    cmd->args_smccc64[0],
> > +						    cmd->args_smccc64[1],
> > +						    cmd->args_smccc64[2],
> > +						    cmd->args_smccc64[3],
> > +						    cmd->args_smccc64[4],
> > +						    cmd->args_smccc64[5]);
> > +	} else {
> > +		ret = chan_data->invoke_smc_mbox_fn(chan_data->function_id,
> > +						    cmd->args_smccc32[0],
> > +						    cmd->args_smccc32[1],
> > +						    cmd->args_smccc32[2],
> > +						    cmd->args_smccc32[3],
> > +						    cmd->args_smccc32[4],
> > +						    cmd->args_smccc32[5]);
> > +	}  
> 
> Why did not we use unsigned long for the args_smccc[] array to be bit
> width independent, this is what the PSCI infrastructure does and it
> looks a lot nicer IMHO. More question below.

Huh, interestingly I think this comes from the combination of the two problems you point out, which evolved separately:
Earlier we had no exported interface between the transport driver and the mailbox client, just a void pointer. So using "long" in the structure would not work, because it would behave differently between arm32 and arm64 kernels. But the firmware interface would always be fixed to one of the two calling conventions, regardless of the kernel "bitness", as advertised by the upper bits of the function ID.
So we introduced explicit types that are used depending on the firmware-advertised calling convention. The idea was that any packed data any client would provide would always end up in consecutive registers in the firmware.
Now we explicitly advertise the expected message structure in the new header file, so we could go back to unsigned long here, indeed. A 32-bit kernel could never use the 64-bit calling convention, so long would fit. In a 64-bit kernel the compiler would either downgrade the long argument to the 32-bit arguments the firmware expects, or keep it long.
So it might be worth a short to go back to long.

> 
> [snip]
> 
> > +
> > +#ifndef _LINUX_ARM_SMCCC_MBOX_H_
> > +#define _LINUX_ARM_SMCCC_MBOX_H_
> > +
> > +#include <linux/types.h>
> > +
> > +/**
> > + * struct arm_smccc_mbox_cmd - ARM SMCCC message structure
> > + * @args_smccc32/64:	actual usage of registers is up to the protocol
> > + *			(within the SMCCC limits)
> > + */
> > +struct arm_smccc_mbox_cmd {
> > +	union {
> > +		u32 args_smccc32[6];
> > +		u64 args_smccc64[6];
> > +	};
> > +};  
> 
> Why is this being moved to a separate header file and not within the
> driver's main file? It is not like we offer the ability for a driver to
> embed this ARM SMC mailbox driver as a library, and customize the values
> of the SMC arguments (maybe we should do that, as a later patch) except
> for the function_id.

I wouldn't call it a "library", but indeed we expose the transport protocol to the mailbox client. It seems that the mailbox framework is not really clear here, it just states that (at least in many cases) the mailbox client knows about the transport protocol, even though the separation between the two suggests otherwise. This probably stems back from the days, where mailboxes were directly used by their users, without providing any kind of abstraction.
So going with this, the SMC mailbox transport driver enforces a specific transport protocol for the payload, namely the six SMCCC defined registers. So we make this available, so any mailbox client knows what to expect. At the end of the day on the other end there will be some firmware probably expecting specific data in specific registers - or no data at all, as in the simple doorbell case we intend to use for SCPI/SCMI.

> If you have a "public" header, there is usually a
> service or some configuration that your driver would offer, which is not
> the case here.

If you want to use the mailbox just as a doorbell (as in our case), it doesn't matter, so we can as well expose the underlying transport protocol.

Cheers,
Andre.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

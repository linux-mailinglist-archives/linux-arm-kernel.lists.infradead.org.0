Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF344CAAD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 11:23:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EMI+UXN+hmGUicvlkPuY6/N+igV7mvqDnB8aDdloXmY=; b=UnAF4dx5K3mv7R
	gEdFATGFNpDcNEOovvu4lkLzulgjYXE8XaOCVSc+6plg1kxFGuTFnaLeYWcfvmcz851XTIDQK6eAg
	hlQYeiPWVEwTawGxLDGFmTkWHS1HGyZYpzKy5kCkw2Z8VEb6MN1zNRnPAM4BsePUcypZH3g20Xhhl
	kUq9uGOtqHM52cwfcr8lsHxB8IY/GXlcuC3IjXW6QmAjk/Ckz1emTz68+7lijbtfGyH/RaDOXaLsq
	R90f1uEEvCZa3ychjz8EuzArFlMrEI6nm2MO2YzSXAptHzfti0IoutmY680xcARXQF11isekmNVP/
	ElbtqsAZh1RTlPmsxWcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdtHd-00032R-Sq; Thu, 20 Jun 2019 09:23:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdtHN-00031V-6m
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 09:22:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1DF54360;
 Thu, 20 Jun 2019 02:22:45 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 378883F246;
 Thu, 20 Jun 2019 02:22:43 -0700 (PDT)
Date: Thu, 20 Jun 2019 10:22:41 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: peng.fan@nxp.com
Subject: Re: [PATCH V2 1/2] DT: mailbox: add binding doc for the ARM SMC
 mailbox
Message-ID: <20190620092241.GC1248@e107155-lin>
References: <20190603083005.4304-1-peng.fan@nxp.com>
 <20190603083005.4304-2-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603083005.4304-2-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_022249_339059_48B9E103 
X-CRM114-Status: GOOD (  27.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, f.fainelli@gmail.com,
 festevam@gmail.com, jassisinghbrar@gmail.com, linux-kernel@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, andre.przywara@arm.com, van.freenix@gmail.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 04:30:04PM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> The ARM SMC mailbox binding describes a firmware interface to trigger
> actions in software layers running in the EL2 or EL3 exception levels.
> The term "ARM" here relates to the SMC instruction as part of the ARM
> instruction set, not as a standard endorsed by ARM Ltd.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
> 
> V2:
> Introduce interrupts as a property.
> 
> V1:
> arm,func-ids is still kept as an optional property, because there is no
> defined SMC funciton id passed from SCMI. So in my test, I still use
> arm,func-ids for ARM SIP service.
> 
>  .../devicetree/bindings/mailbox/arm-smc.txt        | 101 +++++++++++++++++++++
>  1 file changed, 101 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/arm-smc.txt
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/arm-smc.txt b/Documentation/devicetree/bindings/mailbox/arm-smc.txt
> new file mode 100644
> index 000000000000..401887118c09
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mailbox/arm-smc.txt
> @@ -0,0 +1,101 @@
> +ARM SMC Mailbox Interface
> +=========================
> +
> +This mailbox uses the ARM smc (secure monitor call) instruction to trigger
> +a mailbox-connected activity in firmware, executing on the very same core
> +as the caller. By nature this operation is synchronous and this mailbox
> +provides no way for asynchronous messages to be delivered the other way
> +round, from firmware to the OS, but asynchronous notification could also
> +be supported. However the value of r0/w0/x0 the firmware returns after
> +the smc call is delivered as a received message to the mailbox framework,
> +so a synchronous communication can be established, for a asynchronous
> +notification, no value will be returned. The exact meaning of both the
> +action the mailbox triggers as well as the return value is defined by
> +their users and is not subject to this binding.
> +
> +One use case of this mailbox is the SCMI interface, which uses shared memory
> +to transfer commands and parameters, and a mailbox to trigger a function
> +call. This allows SoCs without a separate management processor (or when
> +such a processor is not available or used) to use this standardized
> +interface anyway.
> +
> +This binding describes no hardware, but establishes a firmware interface.
> +Upon receiving an SMC using one of the described SMC function identifiers,
> +the firmware is expected to trigger some mailbox connected functionality.
> +The communication follows the ARM SMC calling convention[1].
> +Firmware expects an SMC function identifier in r0 or w0. The supported
> +identifiers are passed from consumers, or listed in the the arm,func-ids
> +properties as described below. The firmware can return one value in
> +the first SMC result register, it is expected to be an error value,
> +which shall be propagated to the mailbox client.
> +
> +Any core which supports the SMC or HVC instruction can be used, as long as
> +a firmware component running in EL3 or EL2 is handling these calls.
> +
> +Mailbox Device Node:
> +====================
> +
> +This node is expected to be a child of the /firmware node.
> +
> +Required properties:
> +--------------------
> +- compatible:		Shall be "arm,smc-mbox"
> +- #mbox-cells		Shall be 1 - the index of the channel needed.
> +- arm,num-chans		The number of channels supported.
> +- method:		A string, either:
> +			"hvc": if the driver shall use an HVC call, or
> +			"smc": if the driver shall use an SMC call.
> +
> +Optional properties:
> +- arm,func-ids		An array of 32-bit values specifying the function
> +			IDs used by each mailbox channel. Those function IDs
> +			follow the ARM SMC calling convention standard [1].
> +			There is one identifier per channel and the number
> +			of supported channels is determined by the length
> +			of this array.
> +- interrupts		SPI interrupts may be listed for notification,
> +			each channel should use a dedicated interrupt
> +			line.
> +

I think SMC mailbox as mostly unidirectional/Tx only channel. And the
interrupts here as stated are for notifications, so I prefer to keep
them separate channel. I assume SMC call return indicates completion.
Or do you plan to use these interrupts as the indication for completion
of the command? I see in patch 2/2 the absence of IRQ is anyway dealt
the way I mention above.

Does it make sense or am I missing something here ?

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

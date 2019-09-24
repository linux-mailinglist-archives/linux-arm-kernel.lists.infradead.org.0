Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F06B2BC14F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 07:17:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=reXWnI3e1Qmctv7Kqzl7hGsRO06KcO/MSR7YKShUjxc=; b=SDiHx18atAQOxh
	ZtXSioXIajuW7EkRzOW3fJ+ziQGintaMNF2UZJOW2Yj7QcWRB7oT2Ryv6SG5crkKAYqg5UczM8oH3
	Kxh8W1pGh6cohyP2ACKgxXcQR66wra6Nn6khFkQk6seJitEq78hOBj7Ae7LKFsQHRCu33P6bXn/ou
	C8EGI0JxFQLCohl3ibhqX0lhy+F5tJOsvNnfcHHj/dAxzqj3ocUru5uk/QcbdRB9+/Jw7GDARNFYC
	00YUM7RCkxRrqfYEY2r/a+ZQSuHwT/EmUrNQQ2Fr6mNf33Pz3115PhonlH6CVOwRCK++ASWH5Z+0u
	8rsuOYLd2vM5hMjYuvCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCdCj-0000sM-CS; Tue, 24 Sep 2019 05:17:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCdCa-0000rc-IQ
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 05:17:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AD8AC1000;
 Mon, 23 Sep 2019 22:17:25 -0700 (PDT)
Received: from [10.188.159.185] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 648C23F59C;
 Mon, 23 Sep 2019 22:17:24 -0700 (PDT)
Subject: Re: [PATCH V7 0/2] mailbox: arm: introduce smc triggered mailbox
To: Peng Fan <peng.fan@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>
References: <1569220514-27903-1-git-send-email-peng.fan@nxp.com>
From: =?UTF-8?Q?Andr=c3=a9_Przywara?= <andre.przywara@arm.com>
Openpgp: preference=signencrypt
Autocrypt: addr=andre.przywara@arm.com; prefer-encrypt=mutual; keydata=
 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
 i4aIXCH3Wv6K
Organization: ARM Ltd.
Message-ID: <30b20102-40d5-1446-1513-e64b47459db8@arm.com>
Date: Tue, 24 Sep 2019 06:15:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1569220514-27903-1-git-send-email-peng.fan@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_221728_702358_CA590C9F 
X-CRM114-Status: GOOD (  29.06  )
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/09/2019 07:36, Peng Fan wrote:

Hi Peng,

thanks for the update!

> From: Peng Fan <peng.fan@nxp.com>
> 
> V7:
> Typo fix
> #mbox-cells changed to 0
> Add a new header file arm-smccc-mbox.h
> Use ARM_SMCCC_IS_64
> 
> Andre,
>   The function_id is still kept in arm_smccc_mbox_cmd, because arm,func-id
> property is optional, so clients could pass function_id to mbox driver.

Well, to be honest, this is the main thing I am opposing:

It should *not* be optional.

The controller driver DT node should *always* contain the function ID.
The reasons for that I explained in the other emails to Jassi:
We can't safely execute smc calls from the Linux kernel, unless we also
comply with the SMCCC standard. So we should not leave the choice of the
function ID to the mailbox client.
Also this much better separates the mailbox controller driver from the
client.

So I think we should reach an agreement here.

Cheers,
Andre

> V6:
> Switch to per-channel a mbox controller
> Drop arm,num-chans, transports, method
> Add arm,hvc-mbox compatible
> Fix smc/hvc args, drop client id and use correct type.
> https://patchwork.kernel.org/cover/11146641/
> 
> V5:
> yaml fix
> https://patchwork.kernel.org/cover/11117741/
> 
> V4:
> yaml fix for num-chans in patch 1/2.
> https://patchwork.kernel.org/cover/11116521/
> 
> V3:
> Drop interrupt
> Introduce transports for mem/reg usage
> Add chan-id for mem usage
> Convert to yaml format
> https://patchwork.kernel.org/cover/11043541/
>  
> V2:
> This is a modified version from Andre Przywara's patch series
> https://lore.kernel.org/patchwork/cover/812997/.
> The modification are mostly:
> Introduce arm,num-chans
> Introduce arm_smccc_mbox_cmd
> txdone_poll and txdone_irq are both set to false
> arm,func-ids are kept, but as an optional property.
> Rewords SCPI to SCMI, because I am trying SCMI over SMC, not SCPI.
> Introduce interrupts notification.
> 
> [1] is a draft implementation of i.MX8MM SCMI ATF implementation that
> use smc as mailbox, power/clk is included, but only part of clk has been
> implemented to work with hardware, power domain only supports get name
> for now.
> 
> The traditional Linux mailbox mechanism uses some kind of dedicated hardware
> IP to signal a condition to some other processing unit, typically a dedicated
> management processor.
> This mailbox feature is used for instance by the SCMI protocol to signal a
> request for some action to be taken by the management processor.
> However some SoCs does not have a dedicated management core to provide
> those services. In order to service TEE and to avoid linux shutdown
> power and clock that used by TEE, need let firmware to handle power
> and clock, the firmware here is ARM Trusted Firmware that could also
> run SCMI service.
> 
> The existing SCMI implementation uses a rather flexible shared memory
> region to communicate commands and their parameters, it still requires a
> mailbox to actually trigger the action.
> 
> This patch series provides a Linux mailbox compatible service which uses
> smc calls to invoke firmware code, for instance taking care of SCMI requests.
> The actual requests are still communicated using the standard SCMI way of
> shared memory regions, but a dedicated mailbox hardware IP can be replaced via
> this new driver.
> 
> This simple driver uses the architected SMC calling convention to trigger
> firmware services, also allows for using "HVC" calls to call into hypervisors
> or firmware layers running in the EL2 exception level.
> 
> Patch 1 contains the device tree binding documentation, patch 2 introduces
> the actual mailbox driver.
> 
> Please note that this driver just provides a generic mailbox mechanism,
> It could support synchronous TX/RX, or synchronous TX with asynchronous
> RX. And while providing SCMI services was the reason for this exercise,
> this driver is in no way bound to this use case, but can be used generically
> where the OS wants to signal a mailbox condition to firmware or a
> hypervisor.
> Also the driver is in no way meant to replace any existing firmware
> interface, but actually to complement existing interfaces.
> 
> [1] https://github.com/MrVan/arm-trusted-firmware/tree/scmi
> 
> 
> 
> Peng Fan (2):
>   dt-bindings: mailbox: add binding doc for the ARM SMC/HVC mailbox
>   mailbox: introduce ARM SMC based mailbox
> 
>  .../devicetree/bindings/mailbox/arm-smc.yaml       |  95 ++++++++++++
>  drivers/mailbox/Kconfig                            |   7 +
>  drivers/mailbox/Makefile                           |   2 +
>  drivers/mailbox/arm-smc-mailbox.c                  | 168 +++++++++++++++++++++
>  4 files changed, 272 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/arm-smc.yaml
>  create mode 100644 drivers/mailbox/arm-smc-mailbox.c
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

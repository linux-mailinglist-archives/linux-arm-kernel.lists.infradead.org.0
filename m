Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD9F29DA0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 19:57:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FtyXbjMrnAs20Oi1az+ixdqw0yDmPIGrEA0/sYCEx5Q=; b=tfTnVASvMPPb4b
	/qKUtNvZ9qF2ORWPN4LVFFEmPCrah7iNDro3vpwMu89fyeZBsK+3TN0qWjG1m/Mcwmkl5Sqn8pBOp
	nx/Q78zmy8t8Zu2boOPu3GpuSE5wCg6HkSxZHsl+Ploig8EoINngZPrNbNNgpkNqAuyDsUTzOloS8
	rYU0J+Xj3jTBLh81mFBD3OaQlcKp+VZjfPwpE+TLjXV9DprAN+pD0U4twTjFxx+wY0Yu6OmnMcKSZ
	mCrbTpcnSDPbGn9C4wi+f7eZCl7DTqwyr/gmNbaIe7HMI0kQYJpI/g0QmeOlMTgtnKx5lMGNwpJX8
	R/MWP33LZxtv01Nb3UUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUERS-0004e3-G2; Fri, 24 May 2019 17:57:18 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUERK-0004ct-7z
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 17:57:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9C1C4A78;
 Fri, 24 May 2019 10:57:09 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1E1993F703;
 Fri, 24 May 2019 10:57:06 -0700 (PDT)
Date: Fri, 24 May 2019 18:56:58 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 0/2] mailbox: arm: introduce smc triggered mailbox
Message-ID: <20190524175658.GA5045@e107155-lin>
References: <20190523060437.11059-1-peng.fan@nxp.com>
 <4ba2b243-5622-bb27-6fc3-cd9457430e54@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4ba2b243-5622-bb27-6fc3-cd9457430e54@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_105710_292324_96C21768 
X-CRM114-Status: GOOD (  20.24  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Peng Fan <peng.fan@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 10:30:50AM -0700, Florian Fainelli wrote:
> Hi,
>
> On 5/22/19 10:50 PM, Peng Fan wrote:
> > This is a modified version from Andre Przywara's patch series
> > https://lore.kernel.org/patchwork/cover/812997/.
> > [1] is a draft implementation of i.MX8MM SCMI ATF implementation that
> > use smc as mailbox, power/clk is included, but only part of clk has been
> > implemented to work with hardware, power domain only supports get name
> > for now.
> >
> > The traditional Linux mailbox mechanism uses some kind of dedicated hardware
> > IP to signal a condition to some other processing unit, typically a dedicated
> > management processor.
> > This mailbox feature is used for instance by the SCMI protocol to signal a
> > request for some action to be taken by the management processor.
> > However some SoCs does not have a dedicated management core to provide
> > those services. In order to service TEE and to avoid linux shutdown
> > power and clock that used by TEE, need let firmware to handle power
> > and clock, the firmware here is ARM Trusted Firmware that could also
> > run SCMI service.
> >
> > The existing SCMI implementation uses a rather flexible shared memory
> > region to communicate commands and their parameters, it still requires a
> > mailbox to actually trigger the action.
>
> We have had something similar done internally with a couple of minor
> differences:
>
> - a SGI is used to send SCMI notifications/delayed replies to support
> asynchronism (patches are in the works to actually add that to the Linux
> SCMI framework). There is no good support for SGI in the kernel right
> now so we hacked up something from the existing SMP code and adding the
> ability to register our own IPI handlers (SHAME!). Using a PPI should
> work and should allow for using request_irq() AFAICT.
>

We have been thinking this since we were asked if SMC can be transport.
Generally out of 16 SGIs, 8 are reserved for secure side and non-secure
has 8. Of these 8, IIUC 7 is already being used by kernel. So unless we
manage to get the last one reserved exclusive to SCMI, it makes it
difficult to add SGI support in SCMI.

We have been telling partners/vendors about this limitation if they
use SMC as transport and need to have dedicated h/w interrupt for the
notifications.

Another issue could be with virtualisation(using HVC) and EL handling
so called SCMI SGI. We need to think about those too. I will try to get
more info on this and come back on this.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C98F51069B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 11:50:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oZMXftuFPkxmHvbLysSCugcQiHBa8wYWxOOfJvYDcnk=; b=Wb/tx7O2AQc0T/
	5hHXtv2v5HdyM2fmFPCFYdu3QnQBVETrvGAItvaow/HACiMVP6p14cIKEFJSOSTooBQjL6ikoUO08
	LOfE3/NzTNVEAmyoAtRJQx983AfHNatr3Z9/vHZvY9FBz/kY5udpDxqDNKM0Mxrs+4h4rb+XNYuzQ
	X2tBnUJAgADcaUg2RVeatU+TkbFEYWDKpoYQxyTGhjixOl+G/T8PKjjEWyQyCh0z+aWMbSGRNE3vd
	QoXsPSnVQ7+hE8qoAxRv02G4HfRQ5GWq2pXdy5eMD/+vHO3th35cSjN36+QfLmM4JaGrdSwxh0tet
	SdeMSVSzi0N7RHEL08NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLlsU-0007K4-9I; Wed, 01 May 2019 09:50:14 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLlsI-00072n-Fe
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 09:50:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8BDAFA78;
 Wed,  1 May 2019 02:50:01 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CE70D3F719;
 Wed,  1 May 2019 02:49:59 -0700 (PDT)
Date: Wed, 1 May 2019 10:49:53 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Sodagudi Prasad <psodagud@codeaurora.org>
Subject: Re: PSCI version 1.1 and SYSTEM_RESET2
Message-ID: <20190501094953.GA21851@e107155-lin>
References: <24970f7101952f347bd4046c9a980473@codeaurora.org>
 <efee74624f986a358b8986ae3085fba2@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <efee74624f986a358b8986ae3085fba2@codeaurora.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_025002_727199_B1BEFA22 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, julien.thierry@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 05:07:31PM -0700, Sodagudi Prasad wrote:
> On 2019-04-30 14:44, Sodagudi Prasad wrote:
> +Sudeep
>
> > Hi Mark/Will,
> >
> > I would like to understand whether ARM linux community have plans to
> > support PSCI version 1.1 or not.
> > PSCI_1_1 specification introduced support for SYSTEM_RESET2 command
> > and this new command helps mobile devices to SYSTEM_WARM_RESET
> > support. Rebooting devices with warm reboot helps to capture the
> > snapshot of the ram contents for post-mortem analysis.
>
> I think, there is a recent discussion from Sudeep for the SYSTEM_RESET2
> support.
> https://patchwork.kernel.org/patch/10884345/
>

This has landed in -next, and hopefully must appear in v5.2

>
> Hi Sudeep,
>
> I was going through your discussion in the below list -
> https://lore.kernel.org/lkml/d73d3580-4ec1-a281-4585-5c776fc08c79@xilinx.com/
>
> There is no provision to set up reboot mode dynamically instead kernel
> command line parameter.
> Looking for options to reboot device with warm reboot option when kernel
> crashed.
>
> panic() --> emergency_restart() --> machine_emergency_restart() -->
> machine_restart(NULL);
>
> It would nice if there is a config option to reboot the device either in
> warm or cold in the case of kernel panic.

I presume you prefer to do warm boot in case of panic to get a dump of
the memory to inspect ? If so, is kexec/kdump not the mechanism to
achieve that ?

I am just trying to understand the use case. Xilinx asked for the same
but never got to understand their use case.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

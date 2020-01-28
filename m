Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5053514B320
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 11:58:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CO2JG8N9D23HIOo5U+rFJ52rnB9AyFkUkw9lu9uxHZM=; b=GreG5BRLmAdxIRG1wuDEhW8UK
	CL2tgsf2xRrD2a9Ux3QTSRq03jRhIT9ujF14pQ1oLPekG4NH43+w+KQEjprTQhxnVPQho9NOoeSxv
	ZGtqdyv/Lr5UJu7LoxYh7GZFXO4/mH0Fso0qH0lnj/4X+7JahoAzJUxIAcMDwHSas9EvBhm3ouRM8
	q7LEBhZJ7+/5oc67te2WOVam+bLpI7BGXt+EamJLkbWyRq/aITekT/m5LgrRQr6nzR53GKdbmK2+X
	04iMsTOWM8OK5hdMbBGGE1StywBhYELtRoVubwPcbfcab4eMTMIB/gXd/+1StmIhfSIUhdmcgyM8Z
	dyqVAefRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwOZv-00042Y-0L; Tue, 28 Jan 2020 10:58:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwOZj-00042A-Th
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 10:58:33 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 022272467B;
 Tue, 28 Jan 2020 10:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580209111;
 bh=fPIGD7bZiuPsICx66b+4r7EJxaT51+ZFDK7Fnb9seEk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=1ctD0lburdWt3ZOtVj5XjYkEhuGI8R5O7+QvVol5aKA4A/kVC5guTaNEXrw4S+q7C
 ROcM5bCZuKIpf1xHbcixgP2r6MHVi4yBvKGo9D46PITetF2dNVQ29fOpZ1T4os+5tm
 1AAyEH+The9/aovJDctEl2W6zefngSGCDwPsxEhU=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1iwOZh-001naq-9h; Tue, 28 Jan 2020 10:58:29 +0000
MIME-Version: 1.0
Date: Tue, 28 Jan 2020 10:58:29 +0000
From: Marc Zyngier <maz@kernel.org>
To: Makarand Pawagi <makarand.pawagi@nxp.com>
Subject: Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
In-Reply-To: <1580198925-50411-1-git-send-email-makarand.pawagi@nxp.com>
References: <1580198925-50411-1-git-send-email-makarand.pawagi@nxp.com>
Message-ID: <d8aa6658f8f3763e28bb5d4884b9b686@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: makarand.pawagi@nxp.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, linux@armlinux.org.uk, jon@solid-run.com,
 cristian.sovaiala@nxp.com, laurentiu.tudor@nxp.com, ioana.ciornei@nxp.com,
 V.Sethi@nxp.com, calvin.johnson@nxp.com, pankaj.bansal@nxp.com,
 lorenzo.pieralisi@arm.com, guohanjun@huawei.com, sudeep.holla@arm.com,
 rjw@rjwysocki.net, lenb@kernel.org, stuyoder@gmail.com, tglx@linutronix.de,
 jason@lakedaemon.net, shameerali.kolothum.thodi@huawei.com, will@kernel.org,
 robin.murphy@arm.com, nleeder@codeaurora.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_025832_000430_D5EC4800 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: calvin.johnson@nxp.com, stuyoder@gmail.com, nleeder@codeaurora.org,
 ioana.ciornei@nxp.com, cristian.sovaiala@nxp.com, guohanjun@huawei.com,
 will@kernel.org, lorenzo.pieralisi@arm.com, pankaj.bansal@nxp.com,
 jon@solid-run.com, linux@armlinux.org.uk, linux-acpi@vger.kernel.org,
 lenb@kernel.org, jason@lakedaemon.net, V.Sethi@nxp.com, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, laurentiu.tudor@nxp.com,
 netdev@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 shameerali.kolothum.thodi@huawei.com, sudeep.holla@arm.com,
 robin.murphy@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-28 08:08, Makarand Pawagi wrote:
> ACPI support is added in the fsl-mc driver. Driver will parse
> MC DSDT table to extract memory and other resorces.
> 
> Interrupt (GIC ITS) information will be extracted from MADT table
> by drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c.
> 
> IORT table will be parsed to configure DMA.
> 
> Signed-off-by: Makarand Pawagi <makarand.pawagi@nxp.com>
> ---
>  drivers/acpi/arm64/iort.c                   | 53 +++++++++++++++++++++
>  drivers/bus/fsl-mc/dprc-driver.c            |  3 +-
>  drivers/bus/fsl-mc/fsl-mc-bus.c             | 48 +++++++++++++------
>  drivers/bus/fsl-mc/fsl-mc-msi.c             | 10 +++-
>  drivers/bus/fsl-mc/fsl-mc-private.h         |  4 +-
>  drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c | 71 
> ++++++++++++++++++++++++++++-
>  include/linux/acpi_iort.h                   |  5 ++
>  7 files changed, 174 insertions(+), 20 deletions(-)

A general comment when you do this kind of work:

Do not write a single patch that impacts at least three different
subsystems. As it is, it is unmergeable.

Now the real question is *WHY* we need this kind of monstruosity?
ACPI deals with PCI, not with exotic busses and whatnot. If you want
to be creative, DT is your space. ACPI is designed to be plain and
boring, and that's how we like it.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

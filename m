Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61DFE14EEB9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 15:48:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I62aZdd/S4vX1WFkmtZCD2d7A7xNcr11y06WovC7vpA=; b=S8ZqR7IBr6Jc5Q
	Lt3SgwdyUHERpkB+hOeragGBvMkGrszlq2Ajnfsr7Sdguu9YW3QYJiLBW5s7fqiQaT5FnD3/20ufr
	LwUajVlRuhZLOdiKrTtV9p4x7GTQgiVK+tGMU74EJsUc6Oc7bu6YDJJEKUHvmeIL7g8ck2qV2evrW
	JRhHYIyLXGcFDq/M0edYr/XVpeaULTrebZUBxd+D2Rtdwe6RL7tFJGAvGOBwaudtrlf9ue6pJKZRp
	8oO44ZEsuDmebLM2X9sXTwbCF+PXgilQTRTuBdrKk/HJaas4gUJsH3ZN26uguNVFMfutgl7dYfSqg
	AY6vW8LTr/1xmgTnDnkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixXaQ-000294-Mk; Fri, 31 Jan 2020 14:47:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixXaF-00028H-6c
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 14:47:48 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B5E3C206D5;
 Fri, 31 Jan 2020 14:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580482066;
 bh=Pa0QAne+ikfRhcST4dhxQhcKQvjaN3EVPx5vMgOXzVo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=D3UmqQ/pBjmnWl1PtBaM6XfZQzl+sLU+f2jy7YCYWNZLtIrbEIrys0/0Ss5/Xc0lt
 raWKCH990ysM7rxkXTHv8SnUgWPyGF598DtDtLi+tCyQAYtjlGKnr4B2Eg5USJNfqG
 DokwLpRCs+Dw9Nz5XRQL4vnFqRCVD2pGmTcn3Qy8=
Date: Fri, 31 Jan 2020 14:47:38 +0000
From: Will Deacon <will@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
Message-ID: <20200131144737.GA4948@willie-the-truck>
References: <1580198925-50411-1-git-send-email-makarand.pawagi@nxp.com>
 <20200128110916.GA491@e121166-lin.cambridge.arm.com>
 <DB8PR04MB7164DDF48480956F05886DABEB070@DB8PR04MB7164.eurprd04.prod.outlook.com>
 <12531d6c569c7e14dffe8e288d9f4a0b@kernel.org>
 <CAKv+Gu8uaJBmy5wDgk=uzcmC4vkEyOjW=JRvhpjfsdh-HcOCLg@mail.gmail.com>
 <CABdtJHsu9R9g4mn25=9EW3jkCMhnej_rfkiRzo3OCX4cv4hpUQ@mail.gmail.com>
 <0680c2ce-cff0-d163-6bd9-1eb39be06eee@arm.com>
 <CABdtJHuLZeNd9bQZ-cmQi00WnObYPvM=BdWNw4EMpOFHjRd70w@mail.gmail.com>
 <b136adc4-be48-82df-0592-97b4ba11dd79@arm.com>
 <20200131142906.GG9639@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200131142906.GG9639@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_064747_284008_728256CA 
X-CRM114-Status: GOOD (  17.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Calvin Johnson <calvin.johnson@nxp.com>, stuyoder@gmail.com,
 nleeder@codeaurora.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>, Hanjun Guo <guohanjun@huawei.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Marc Zyngier <maz@kernel.org>,
 Pankaj Bansal <pankaj.bansal@nxp.com>, Jon Nettleton <jon@solid-run.com>,
 Russell King <linux@armlinux.org.uk>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Len Brown <lenb@kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 Andy Wang <Andy.Wang@arm.com>, Makarand Pawagi <makarand.pawagi@nxp.com>,
 Varun Sethi <V.Sethi@nxp.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>, Paul Yang <Paul.Yang@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "<netdev@vger.kernel.org>" <netdev@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 31, 2020 at 03:29:06PM +0100, Andrew Lunn wrote:
> > > But by design SFP, SFP+, and QSFP cages are not fixed function network
> > > adapters.  They are physical and logical devices that can adapt to
> > > what is plugged into them.  How the devices are exposed should be
> > > irrelevant to this conversation it is about the underlying
> > > connectivity.
> > 
> > Apologies - I was under the impression that SFP and friends were a
> > physical-layer thing and that a MAC in the SoC would still be fixed such
> > that its DMA and interrupt configuration could be statically described
> > regardless of what transceiver was plugged in (even if some configurations
> > might not use every interrupt/stream ID/etc.) If that isn't the case I shall
> > go and educate myself further.
> 
> It gets interesting with QSFP cages. The Q is quad, there are 4 SERDES
> lanes. You can use them for 1x 40G link, or you can split them into 4x
> 10G links. So you either need one MAC or 4 MACs connecting to the
> cage, and this can change on the fly when a modules is ejected and
> replaced with another module. There are only one set of control pins
> for i2c, loss of signal, TX disable, module inserted. So where the
> interrupt/stream ID/etc are mapped needs some flexibility.
> 
> There is also to some degree a conflict with hiding all this inside
> firmware. This is complex stuff. It is much better to have one core
> implementing in Linux plus some per hardware driver support, than
> having X firmware blobs, generally closed source, each with there own
> bugs which nobody can fix.

Devicetree to the rescue!

Entertaining the use of ACPI without any firmware abstraction for this
hardware really feels like a square peg / round hole situation, so I'm
assuming somebody's telling you that you need it "FOAR ENTAPRYZE". Who
is it and can you tell them to bog off?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

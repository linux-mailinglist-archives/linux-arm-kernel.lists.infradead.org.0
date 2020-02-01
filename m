Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC7114F92D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Feb 2020 18:36:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jyjCKL9LABs4AIt4R1Ka9OlbZ7TvZgygHIXGlZ2Lu3o=; b=fnAryHeLNWDWmw
	7k1eqd5lMC7W2K2fPf9MSjSUCkC4j/TOzi/Un5PMDS7t6XrQDzul/ezoMIGc2tS3MtMa+cIKayTCs
	BxsQFlsKJkZUms0wvIJszAIIBVk16jnGbJ9ZLpYFJpF15BPPvmqLBuR6krr7272JVDn2tWpLeFPoz
	v4nlGBPCJFGF32+DcunxVE3ojm8B5zfVSi+1R9B+1AWxaCnKdK/F0AAuOhhDLWJ1iCQ/efB8MCl4+
	RkZFEqqYEf9ClEpg3WWNNKFSa2GNWpiul9FCgH16FE2aPYX88Hu3YAt54jHK7CVdnDIW/AcdopGQ8
	JEovW7/FWuFYm9w1dOqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixwh4-0003Iu-Qu; Sat, 01 Feb 2020 17:36:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixwgy-0003IU-4K
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Feb 2020 17:36:25 +0000
Received: from cakuba.hsd1.ca.comcast.net (c-73-93-4-247.hsd1.ca.comcast.net
 [73.93.4.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3A7DC20678;
 Sat,  1 Feb 2020 17:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580578582;
 bh=KuaxtJRw14v59ff+I3CJb9O7IIbfHXwjQfiE5sV/mdE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=npYR5SuSSCd/RxiufbwuT5b4Zl8DzXdHMvm2gczI+LuLTrmyTyRHAxb8GqPRusVOi
 Nksy1LlWZ878WB0PdUdrVy/8Ii2I44Uj6dzZknH6IzTQTsdL+SqTTz+l5y69hwYEb7
 /5shIJwIWw2mwK7nG7bHMe+sX4ZF1a4Tus98IhLg=
Date: Sat, 1 Feb 2020 09:36:20 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
Message-ID: <20200201093620.4b55d6fa@cakuba.hsd1.ca.comcast.net>
In-Reply-To: <20200201114919.GQ25745@shell.armlinux.org.uk>
References: <DB8PR04MB7164DDF48480956F05886DABEB070@DB8PR04MB7164.eurprd04.prod.outlook.com>
 <12531d6c569c7e14dffe8e288d9f4a0b@kernel.org>
 <CAKv+Gu8uaJBmy5wDgk=uzcmC4vkEyOjW=JRvhpjfsdh-HcOCLg@mail.gmail.com>
 <CABdtJHsu9R9g4mn25=9EW3jkCMhnej_rfkiRzo3OCX4cv4hpUQ@mail.gmail.com>
 <0680c2ce-cff0-d163-6bd9-1eb39be06eee@arm.com>
 <CABdtJHuLZeNd9bQZ-cmQi00WnObYPvM=BdWNw4EMpOFHjRd70w@mail.gmail.com>
 <b136adc4-be48-82df-0592-97b4ba11dd79@arm.com>
 <20200131142906.GG9639@lunn.ch>
 <20200131151500.GO25745@shell.armlinux.org.uk>
 <20200131074050.38d78ff0@cakuba.hsd1.ca.comcast.net>
 <20200201114919.GQ25745@shell.armlinux.org.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200201_093624_216526_DFA5A070 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew Lunn <andrew@lunn.ch>, Calvin Johnson <calvin.johnson@nxp.com>,
 stuyoder@gmail.com, nleeder@codeaurora.org,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>, Hanjun Guo <guohanjun@huawei.com>,
 Will Deacon <will@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Marc Zyngier <maz@kernel.org>, Pankaj Bansal <pankaj.bansal@nxp.com>,
 Jon Nettleton <jon@solid-run.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Len Brown <lenb@kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 Andy Wang <Andy.Wang@arm.com>, Makarand Pawagi <makarand.pawagi@nxp.com>,
 Varun Sethi <V.Sethi@nxp.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>, Paul Yang <Paul.Yang@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "<netdev@vger.kernel.org>" <netdev@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Jiri Pirko <jiri@mellanox.com>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 1 Feb 2020 11:49:19 +0000, Russell King - ARM Linux admin wrote:
> What if someone decides to do:
> 
> 	devlink port split device/1 count 2
> 
> what do we end up with?  Presumably two network devices running with
> two serdes lanes each (if supported by the hardware).  At that point
> can they then do:
> 
> 	devlink port split device/2 count 2
> 
> and end up with one network device with two 10G serdes lanes, and two
> network devices each with one 10G serdes lane, 

I think all your guesses are correct, it's a pretty straight forward
API, but it's also pretty thin, and some of the logic is in FW, so
there isn't much in a way of a standard on how things should behave :S

> or can port splitting only be used on the "master" device/port ?

I think both mlxsw and the NFP rejects re-split/further splitting.
Ports have to be unsplit first. So there is only one device for
splitting, and unsplitting can be done on any of the sub-devices.

> Unfortunately, I don't think I have any network devices that support
> this so I can't experiment to find out how this should work; yes, I
> have a Mellanox card, but it supports a single 10G SFP+, and therefore
> does not support port splitting.

I think you'd need a mlxsw or an nfp to play with this.

Maybe Jiri can clarify further :)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

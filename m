Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1DD114EFDF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 16:41:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=chvrgFVi/NDne4XkUWuYqqxS1s15lNVEGhdy+PavuoU=; b=IL3jZiViwypju3
	HIhGOJbErE33O+2jGLAW7iKPtU8MLiZ9tScr5FMfHlb9B13uQXevMEqtsnQZarc/MCtu/t5ulftGQ
	Cgr4xesXhg4Nh2dHVY2sE7aFM6ipjCO16mN6x1KkpB+Mc78riDXoBzpIY9NUrotj3b/Ci2xpYqiVA
	9g5t5nnsqAnciLY7R3hmiiDt1Dup7wV4sVC7neO9Rz2HaDggwTRpUKBA02Tj50Ko5Op/uph5lAf/X
	LrXxIRLWESebstiILqbSczp0xeAjOnzAN0vVIaKh14PyskxqXZ3xr2DrIZrcvXjeGHFOP1Dem4ALh
	b4kWNYLl3BFowsFYFJpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixYPm-0004Hs-Vx; Fri, 31 Jan 2020 15:41:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixYPc-0004H2-J7
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 15:40:53 +0000
Received: from cakuba.hsd1.ca.comcast.net (unknown [199.201.64.133])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1AE6D20707;
 Fri, 31 Jan 2020 15:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580485252;
 bh=p1kYkLVWMHwzIbsEGD46qdhZq5Y2YJPlobf+Blab68E=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=lfZ/hfqTb0BASsotmVHVHj2tQUvKafrX3wJzuaN3VhrqcZbum02xR0sPK280lWANx
 xIOmJZbqxvSv8A3k9XPcNLfLhegYjp5NgSDka9igFFVF6EeX+u5r7n2yeYthuilkA7
 1aYnGTH2/vTocVAYAJcanlDeXHDBQwV8mYaoAcyU=
Date: Fri, 31 Jan 2020 07:40:50 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
Message-ID: <20200131074050.38d78ff0@cakuba.hsd1.ca.comcast.net>
In-Reply-To: <20200131151500.GO25745@shell.armlinux.org.uk>
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
 <20200131151500.GO25745@shell.armlinux.org.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_074052_650772_D5DF4F74 
X-CRM114-Status: GOOD (  10.33  )
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
Cc: Andrew Lunn <andrew@lunn.ch>, Calvin Johnson <calvin.johnson@nxp.com>,
 stuyoder@gmail.com, nleeder@codeaurora.org,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
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
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 31 Jan 2020 15:15:00 +0000, Russell King - ARM Linux admin
wrote:
> I have some prototype implementation for driving the QSFP+ cage, but
> I haven't yet worked out how to sensible deal with the "is it 4x 10G
> or 1x 40G" issue you mention above, and how to interface the QSFP+
> driver sensibly with one or four network drivers.

I'm pretty sure you know this but just FWIW - vendors who do it in FW
write the current config down in NVM so it doesn't get affected by
reboots and use devlink port splitting to change it.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

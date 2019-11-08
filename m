Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF28F4160
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 08:30:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DmTmChwZYjk+QJgy7TgpkfxlkFLh3U/K2JoYinwrw5A=; b=o3U05BVG16O9x8
	58n4lB2Za3OBN/pea98H116NzkyqMg1DIA97Pr37wlQax4oHyjaLIGbF6Lzgyxy/PVWaQCIh1GQTo
	fYRI9aHWElwsskJ+CCXGTGTM+SQHV8bp15E4OXN1pSG8MEg2mEORhth3yqjeTpi3/a97ecYx5MOdP
	Wb4TB/sT0lDLgkfh3z07+RPeka2D6U/TCwa53E83bE9aJ8bUfblgmZn060Vc3OuBmxYRkBpoR83Tn
	ZvYcx8a59YPfEJZBStMQw94vdyRUFqhhqaIgBhJWW4i+DXzIgbbIOcFDcMB0E5XOegh2ZQgG+qAaj
	Cjk7w1ZjhPVs0BWLSzcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSyj7-0000Ge-EV; Fri, 08 Nov 2019 07:30:37 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSyiz-0000Fg-5T
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 07:30:30 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 08 Nov 2019 16:30:27 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 95741180B84;
 Fri,  8 Nov 2019 16:30:27 +0900 (JST)
Received: from 172.31.9.53 (172.31.9.53) by m-FILTER with ESMTP;
 Fri, 8 Nov 2019 16:30:35 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by iyokan.css.socionext.com (Postfix) with ESMTP id 635E740364;
 Fri,  8 Nov 2019 16:30:27 +0900 (JST)
Received: from [10.213.132.48] (unknown [10.213.132.48])
 by yuzu.css.socionext.com (Postfix) with ESMTP id 27386121B00;
 Fri,  8 Nov 2019 16:30:27 +0900 (JST)
Date: Fri, 08 Nov 2019 16:30:27 +0900
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH 2/2] PCI: uniphier: Add checking whether PERST# is
 deasserted
In-Reply-To: <20191107124617.GA43905@e119886-lin.cambridge.arm.com>
References: <20191107205239.65C1.4A936039@socionext.com>
 <20191107124617.GA43905@e119886-lin.cambridge.arm.com>
Message-Id: <20191108163026.0DFB.4A936039@socionext.com>
MIME-Version: 1.0
X-Mailer: Becky! ver. 2.70 [ja]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_233029_321630_57414D17 
X-CRM114-Status: GOOD (  27.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Jassi Brar <jaswinder.singh@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,
+CC Kishon

On Thu, 7 Nov 2019 12:46:17 +0000 <andrew.murray@arm.com> wrote:

> On Thu, Nov 07, 2019 at 08:52:39PM +0900, Kunihiko Hayashi wrote:
> > Hi Andrew,
> > Thank you for your comments.
> > 
> > On Thu, 7 Nov 2019 10:02:08 +0000 <andrew.murray@arm.com> wrote:
> > 
> > > On Thu, Nov 07, 2019 at 01:58:15PM +0900, Kunihiko Hayashi wrote:
> > > > When PERST# is asserted once, EP configuration will be initialized.
> > > 
> > > I don't quite understand this - does the EP/RC mode depend on how often
> > > PERST# is toggled?
> > 
> > I think of connecting this RC controller and EP based on `Linux PCI
> > endpoint framework' in another machine.
> > 
> > While this RC driver is probing, the EP driver might be also probing and
> > configurating itself using configfs. If PERST# is toggled after the EP
> > has done its configuration, this configuration will be lost.
> > 
> > I expect that the EP configurates after RC has toggled PERST#, however,
> > there is no way to synchronize both of them.
> > 
> 
> OK I understand where you are coming from now. Please ensure the commit
> message gives this rationale.

I'll explain about that in the commit message next.

> However, If I understand correctly, doesn't your solution only work some
> of the time? What happens if you boot both machines at the same time,
> and PERST# isn't asserted prior to the kernel booting?

I think it contains an annoying problem.

If PERST# isn't toggled prior to the kernel booting, PERST# remains asserted
and the RC driver can't access PCI bus.

As a result, this patch works and deasserts PERST# (and EP configuration will
be lost). So boot sequence needs to include deasserting PERST#.

> The only way you can ensure the EP is started after the RC is initialised
> is to start the EP after the RC is initialised.

Yes, it's the only soution for now.

> I'm not sure what the solution is here, but it feels like this approach
> only partially solves it.

Surely relying on outside of the driver doesn't seem to be a complete solution.

If there is the way that `Linux PCI endpoint framework' assumes,
I'd like to follow it, however, I can't find the other way.

Thank you,

---
Best Regards,
Kunihiko Hayashi



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

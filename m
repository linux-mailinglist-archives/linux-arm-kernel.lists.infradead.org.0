Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD839A8B4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 09:24:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OvIeDaz3VPq85IKUVWiFPlcx4xZv/c3r0lLetePKaCw=; b=a6CzCezmiLzbEV
	o6TvnCYGl6T2g/r3Vbzn4z09BmYhj1YNAW4JegmUlZ1V3ewRevNAhPJoYjhXovS4wAJuu++zSkKjl
	oQtfUJYBsgzmx+PbrZEDTuq8K8DEGDy9RFeKGqM4AvO2UzBck5jsksjT9EZKzDYkNQ/1vOcZmEamC
	8MDVerTy/COUJ05wrjQLhYpVb2A5felunCEeYpbu7bPI3WRxX+CJI/NmFPxjM34lvyB2E8Go7TGip
	j5Bm+PAaHUTQ3KXLaFqA2Yhv5ryF96B7aJyf9vX8yKlkK+jZ2iP0JuKmSksvB+O06HPWGuIToA3NT
	MHgf3AwrgtnGOXKQGZEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i13va-00073C-Hu; Fri, 23 Aug 2019 07:24:06 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i13ld-0006tf-F9
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 07:13:54 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id F065CD7697;
 Fri, 23 Aug 2019 09:13:39 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id yGh66jtHXRfw; Fri, 23 Aug 2019 09:13:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 46C8AD7698;
 Fri, 23 Aug 2019 09:13:36 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 9QtK_aypLOFJ; Fri, 23 Aug 2019 09:13:35 +0200 (CEST)
Received: from belphegor (nat-pool-brq-t.redhat.com [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id D11F1D7697;
 Fri, 23 Aug 2019 09:13:34 +0200 (CEST)
Message-ID: <0897fa54f487f481bf8770ed516578b6f4f53380.camel@v3.sk>
Subject: Re: [PATCH v2 16/20] ARM: mmp: add SMP support
From: Lubomir Rintel <lkundrak@v3.sk>
To: Florian Fainelli <f.fainelli@gmail.com>, Olof Johansson <olof@lixom.net>
Date: Fri, 23 Aug 2019 09:13:33 +0200
In-Reply-To: <6f9d2285-5ca4-a63a-610e-890b49a4f816@gmail.com>
References: <20190822092643.593488-1-lkundrak@v3.sk>
 <20190822092643.593488-17-lkundrak@v3.sk>
 <6f9d2285-5ca4-a63a-610e-890b49a4f816@gmail.com>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_001351_618711_768071BE 
X-CRM114-Status: GOOD (  17.03  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Stephen Boyd <sboyd@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-08-22 at 09:36 -0700, Florian Fainelli wrote:
> On 8/22/19 2:26 AM, Lubomir Rintel wrote:
> > Used to bring up the second core on MMP3.
> > 
> > Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> > 
> > ---
> > Changes since v1:
> > - Wrap SW_BRANCH_VIRT_ADDR with __pa_symbol()
> > 
> >  arch/arm/mach-mmp/Makefile  |  3 +++
> >  arch/arm/mach-mmp/platsmp.c | 33 +++++++++++++++++++++++++++++++++
> >  2 files changed, 36 insertions(+)
> >  create mode 100644 arch/arm/mach-mmp/platsmp.c
> > 
> > diff --git a/arch/arm/mach-mmp/Makefile b/arch/arm/mach-mmp/Makefile
> > index 322c1c97dc900..7b3a7f979eece 100644
> > --- a/arch/arm/mach-mmp/Makefile
> > +++ b/arch/arm/mach-mmp/Makefile
> > @@ -22,6 +22,9 @@ ifeq ($(CONFIG_PM),y)
> >  obj-$(CONFIG_CPU_PXA910)	+= pm-pxa910.o
> >  obj-$(CONFIG_CPU_MMP2)		+= pm-mmp2.o
> >  endif
> > +ifeq ($(CONFIG_SMP),y)
> > +obj-$(CONFIG_MACH_MMP3_DT)	+= platsmp.o
> > +endif
> >  
> >  # board support
> >  obj-$(CONFIG_MACH_ASPENITE)	+= aspenite.o
> > diff --git a/arch/arm/mach-mmp/platsmp.c b/arch/arm/mach-mmp/platsmp.c
> > new file mode 100644
> > index 0000000000000..98d5ef23623cb
> > --- /dev/null
> > +++ b/arch/arm/mach-mmp/platsmp.c
> > @@ -0,0 +1,33 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later
> > +/*
> > + * Copyright (C) 2019 Lubomir Rintel <lkundrak@v3.sk>
> > + */
> > +#include <linux/io.h>
> > +#include <asm/smp_scu.h>
> > +#include <asm/smp.h>
> > +#include "addr-map.h"
> > +
> > +#define SW_BRANCH_VIRT_ADDR	CIU_REG(0x24)
> > +
> > +static int mmp3_boot_secondary(unsigned int cpu, struct task_struct *idle)
> > +{
> > +	/*
> > +	 * Apparently, the boot ROM on the second core spins on this
> > +	 * register becoming non-zero and then jumps to the address written
> > +	 * there. No IPIs involved.
> > +	 */
> > +	__raw_writel(virt_to_phys(secondary_startup),
> > +			__pa_symbol(SW_BRANCH_VIRT_ADDR));
> 
> That looks wrong, the __pa_symbol() is applicable to secondary_startup,
> while SW_BRANCH_VIRT_ADDR does not need that.

Whoops, sorry for that. Will fix in the next patch version in a few
days.

Thanks
Lubo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

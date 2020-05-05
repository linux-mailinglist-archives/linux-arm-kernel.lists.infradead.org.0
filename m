Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 767DE1C5F73
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 19:59:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U5JsVEdMsrpvglIVMb3c+caHv4meAilpBx3A3kxJ9aA=; b=D75TyZufTGGB+R
	J8I8QVaScIPIUreH+fH56Mz7Cfw2HmcJWPDaS/w5TAz3fmAb1Zn3DG/aEnh1iDThvb9eikVnjj2Xo
	Vv47qDdy+UQTK8q15PN8jWKPxbji0neO1wM5W7+PPtA4eCRcG4un0G+d0g+t+5FgVHhUqH1lnJ+Rl
	KAmfeN4hGQ5cC+oQVS9xs91ahk8uH35ccHRG7ipxw6o2f+8oAPDXpHC2c9K0ZpDItGPkIS7S+p4rG
	PdJa9/72UHt95cJphXLanx8CkYurcFedMClADBA59sN8sXLcu7vdKLcEZPG6AjE007QWlqvg2snIK
	RgK4POXVwQ4xA2RAG/ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW1qf-0006EP-Cp; Tue, 05 May 2020 17:59:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW1qY-0006DQ-7F
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 17:59:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A8B031FB;
 Tue,  5 May 2020 10:59:07 -0700 (PDT)
Received: from bogus (unknown [10.37.12.47])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 118F83F305;
 Tue,  5 May 2020 10:59:04 -0700 (PDT)
Date: Tue, 5 May 2020 18:59:01 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 5/5] arm/arm64: smccc: Add ARCH_SOC_ID support
Message-ID: <20200505175901.GD23612@bogus>
References: <20200504092905.10580-1-sudeep.holla@arm.com>
 <20200504092905.10580-6-sudeep.holla@arm.com>
 <20200505162049.GG24239@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505162049.GG24239@willie-the-truck>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_105910_312291_45A133DF 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Steven Price <steven.price@arm.com>, harb@amperecomputing.com,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 05:20:50PM +0100, Will Deacon wrote:
> On Mon, May 04, 2020 at 10:29:05AM +0100, Sudeep Holla wrote:
> > diff --git a/drivers/firmware/psci/soc_id.c b/drivers/firmware/psci/soc_id.c
> > new file mode 100644
> > index 000000000000..b45f2d78e12e
> > --- /dev/null
> > +++ b/drivers/firmware/psci/soc_id.c
> > @@ -0,0 +1,165 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright 2020 Arm Limited
> > + */
> > +
> > +#include <linux/arm-smccc.h>
> > +#include <linux/bitfield.h>
> > +#include <linux/device.h>
> > +#include <linux/module.h>
> > +#include <linux/kernel.h>
> > +#include <linux/slab.h>
> > +#include <linux/sys_soc.h>
> > +
> > +#define SMCCC_SOC_ID_JEP106_BANK_IDX_MASK	GENMASK(30, 24)
> > +/*
> > + * As per the spec bits[23:16] are JEP-106 identification code with parity bit
> > + * for the SiP. We can drop the parity bit.
> > + */
> 
> Which spec? Could you link to the doc and section here, please?
> 

Sure, sorry since I updated the link in 1/5, I forgot all of it and just
started referring it here.

-- 
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFD31D4D0B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 13:50:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xf/0Bax1q5k1plXIAFTCYonOKmKE5Tm5h94vxqm+paA=; b=MQpFKfNhuAgD1R
	ELVOVp4OdlTnDKFpd69zKcQyGa146nvDHfy8O2oyTmNH6mG86KHnAPs1d24H/2LlikjuV7ZM9TH84
	7cvBb9t+soZ3C/5cLL4uiKsy6nyUF1Hud/fUHbWsL5sWxJT9efPAQMJGZNXEVx1JFqONGCfRd8S5y
	oTsmzbyBt3p4WcLg3cdhcvYQd3dqU9CjNwKOFmpJbo1bwFG0AIwxxj72Od5x+zxvmDPuSc/S8nYMO
	qOsPYr004PtxlD1xlgPPnh7iiOc5MBglSn+XXOCKwYXVvsl4ioMc02mi/kb6npQjIJYKJokS+oKPY
	dIA4EC6K4mHU7Oytu1Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZYrF-0006cQ-34; Fri, 15 May 2020 11:50:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZYql-0006Z7-9i
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 11:50:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9EFCAD6E;
 Fri, 15 May 2020 04:49:58 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.24.119])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AA17C3F305;
 Fri, 15 May 2020 04:49:56 -0700 (PDT)
Date: Fri, 15 May 2020 12:49:53 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v3 5/7] firmware: smccc: Refactor SMCCC specific bits
 into separate file
Message-ID: <20200515114953.GE67718@C02TD0UTHF1T.local>
References: <20200506164411.3284-1-sudeep.holla@arm.com>
 <20200506164411.3284-6-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506164411.3284-6-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_044959_380334_739ECA96 
X-CRM114-Status: GOOD (  18.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Steven Price <steven.price@arm.com>,
 harb@amperecomputing.com, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 05:44:09PM +0100, Sudeep Holla wrote:
> In order to add newer SMCCC v1.1+ functionality and to avoid cluttering
> PSCI firmware driver with SMCCC bits, let us move the SMCCC specific
> details under drivers/firmware/smccc/smccc.c
> 
> We can also drop conduit and smccc_version from psci_operations structure
> as SMCCC was the sole user and now it maintains those.
> 
> No functionality change in this patch though.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  MAINTAINERS                     |  9 +++++++++
>  drivers/firmware/Makefile       |  3 ++-
>  drivers/firmware/psci/psci.c    | 19 ++++---------------
>  drivers/firmware/smccc/Makefile |  3 +++
>  drivers/firmware/smccc/smccc.c  | 26 ++++++++++++++++++++++++++
>  include/linux/arm-smccc.h       | 11 +++++++++++
>  include/linux/psci.h            |  2 --
>  7 files changed, 55 insertions(+), 18 deletions(-)
>  create mode 100644 drivers/firmware/smccc/Makefile
>  create mode 100644 drivers/firmware/smccc/smccc.c
> 
> Hi Mark, Lorenzo,
> 
> I have replicated PSCI entry in MAINTAINERS file and added myself to
> for SMCCC entry. If you prefer I can merge it under PSCI. Let me know
> your preference along with other review comments.

> +SECURE MONITOR CALL(SMC) CALLING CONVENTION (SMCCC)
> +M:	Mark Rutland <mark.rutland@arm.com>
> +M:	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> +M:	Sudeep Holla <sudeep.holla@arm.com>
> +L:	linux-arm-kernel@lists.infradead.org
> +S:	Maintained
> +F:	drivers/firmware/smccc/
> +F:	include/linux/arm-smccc.h

As per the above, I'm fine with having this separate from the PSCI
entry, and I'm fine with sharing this maintainership.

> diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h

> +/**
> + * arm_smccc_version_init() - Sets SMCCC version and conduit
> + * @version: SMCCC version v1.1 or above
> + * @conduit: SMCCC_CONDUIT_SMC or SMCCC_CONDUIT_HVC
> + *
> + * When SMCCCv1.1 or above is not present, defaults to ARM_SMCCC_VERSION_1_0
> + * and SMCCC_CONDUIT_NONE respectively.
> + */
> +void __init arm_smccc_version_init(u32 version, enum arm_smccc_conduit conduit);

Given we only expect the PSCI code to call this, could we avoid putting
this in a header and just define it within psci.c?

Either way:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23703D3DFE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 13:10:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rFkGipbuTeO3XsHg9pCwD/pBr3aIKEzKJAsooEIeXvc=; b=mrxSD+qXjs+jQt
	nQiA3Z85Qx9JiXqNvZVUURQmga1zA/CaOwKadrrqKntpqwM3fNaDCZs04S6Ll63PosKhqkBEzwz6U
	1DxHEdsn88O9PAgvNCDmnsUHgVGQpMcqH5oU9LtiMvXG+XpOspAsWoe20eT4WlHMsPpBMU7u1zfjT
	tR47jqKj0QtnWOm2ME9Z51JUN6kELyYCcQt4WbtUNLDAnb0i3ZXC0tPzsOgiRc/FKZ2vpd/e0kop0
	MKDA9h9Ukwr8gPJIFuHG73Z1GdbyNZq4U1eL6aFg46HUwpGKqsoqR5JlYP0B1nVek0NWm29iscM1L
	W0R/blcWNR/kt+gL4shQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIsoM-0001qI-AG; Fri, 11 Oct 2019 11:10:18 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIso5-0001oG-R4
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 11:10:04 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id EB584205C8;
 Fri, 11 Oct 2019 13:09:57 +0200 (CEST)
Received: from [192.168.108.37] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id D51C52058F;
 Fri, 11 Oct 2019 13:09:57 +0200 (CEST)
Subject: Re: Relax CPU features sanity checking on heterogeneous architectures
To: Mark Rutland <mark.rutland@arm.com>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
References: <b3606e76af42f7ecf65b1bfc2a5ed30a@codeaurora.org>
 <20191011105010.GA29364@lakrids.cambridge.arm.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <a86e9be2-fc82-afea-5e94-b15d7eef1b84@free.fr>
Date: Fri, 11 Oct 2019 13:09:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191011105010.GA29364@lakrids.cambridge.arm.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Fri Oct 11 13:09:58 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_041002_058690_5E210E1C 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: MSM <linux-arm-msm@vger.kernel.org>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/10/2019 12:50, Mark Rutland wrote:

> Before we make any changes, we need to check whether we do actually
> handle this variation in a safe way, and we need to consider what this
> means w.r.t. late CPU hotplug.
> 
> Even if we can handle variation at boot time, once we've determined the
> set of system-wide features we cannot allow those to regress, and I
> believe we'll need new code to enforce that. I don't think it's
> sufficient to mark these as NONSTRICT, though we might do that with
> other changes.
> 
> We shouldn't look at the part number at all here. We care about
> variation across CPUs regardless of whether this is big.LITTLE or some
> variation in tie-offs, etc.

See also the "Unexpected variation in SYS_ID_AA64MMFR0_EL1" thread
from a year ago: (that was on msm8998)

	https://www.spinics.net/lists/arm-kernel/msg691242.html

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

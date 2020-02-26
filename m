Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0CC16FEAA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 13:09:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UaE13FiogtBfAM2KHAFUYdvW27SuNyMEiq+GJ7j7RjE=; b=FhhFRAhZCKLp/Z
	R2ZNash6NKhM0zhBWRJRELTWiw0VI2sh38ZwjF+8XR/CFZSyB99wOxKe1/C09/ldQHJJjSJL6OHxD
	LUwv55XTv/3KuMJrc7z96qgWCWYeSwOrA3nvBEF6yGdeV6GhWndNZKg81QVFTL8MuHsB7dsQOPwkH
	9zwogsno9/tUGaK/Y8o6Oawoa6RvIIDHXmPU7kQv5WU9a9IuRLLTufuThf07mfmVasqP/mffzWRIq
	muB1pQ63p2QKhssEr73cYZ+UaqmmLwxMVQMs6FSctEyiOZ3EI4GGenewRgrp5aGFvd/UhoZNTe2Sf
	JaiDH3QTrh1m20GNv0Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6vVQ-0006d4-23; Wed, 26 Feb 2020 12:09:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6vVF-0006ce-TW
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 12:09:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 352171FB;
 Wed, 26 Feb 2020 04:09:25 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D98253FA00;
 Wed, 26 Feb 2020 04:09:23 -0800 (PST)
Date: Wed, 26 Feb 2020 12:09:19 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Elliot Berman <eberman@codeaurora.org>
Subject: Re: [PATCH v2 1/3] dt: psci: Add arm,psci-sys-reset2-type property
Message-ID: <20200226120918.GA21897@lakrids.cambridge.arm.com>
References: <1582577858-12410-1-git-send-email-eberman@codeaurora.org>
 <1582577858-12410-2-git-send-email-eberman@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582577858-12410-2-git-send-email-eberman@codeaurora.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_040925_996316_BE0D3274 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Trilok Soni <tsoni@codeaurora.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 David Collins <collinsd@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Prasad Sodagudi <psodagud@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 12:57:36PM -0800, Elliot Berman wrote:
> Some implementors of PSCI may relax the requirements of the PSCI
> architectural warm reset. In order to comply with PSCI specification, a
> different reset_type value must be used.

This reads as-if you're saying the firmware isn't spec compliant, and
this is a workaround in order to get the expected behaviour.

Can you please elaborate on what you mean by "relax the requirements"
here? What's your firmware doing or not doing that you want to avoid?

> The alternate PSCI SYSTEM_RESET2 may be used in all warm/soft reboot
> scenarios, replacing the architectural warm reset.

I assume you mean SYSTEM_REET2's SYSTEM_WARM_RESET reset? Please call
that out explicitly by name -- it makes this easier to look up, and
if/when more architectural resets are added the commit message won't
become ambiguous.

> 
> Signed-off-by: Elliot Berman <eberman@codeaurora.org>
> ---
>  Documentation/devicetree/bindings/arm/psci.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
> index 8ef8542..469256a2 100644
> --- a/Documentation/devicetree/bindings/arm/psci.yaml
> +++ b/Documentation/devicetree/bindings/arm/psci.yaml
> @@ -102,6 +102,11 @@ properties:
>        [1] Kernel documentation - ARM idle states bindings
>          Documentation/devicetree/bindings/arm/idle-states.txt
>  
> +  arm,psci-sys-reset2-param:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +        reset_param value to use during a warm or soft reboot.

A "soft" reboot isn't a PSCI concept, so I'm worried this is just
hooking up magic values for Linux internals.

I'd like to better understand what you're trying to achieve here.

Thanks,
Mark.

> +
>    "#power-domain-cells":
>      description:
>        The number of cells in a PM domain specifier as per binding in [3].
> -- 
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

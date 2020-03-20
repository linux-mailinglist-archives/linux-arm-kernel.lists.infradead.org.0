Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B33EF18CD66
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 13:01:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=15BYqh1L1ALv71IjF7NXoGOSeeS0sbsBf/ahe6hUVYY=; b=AoWzGqG2lL+PnT
	eHgf22G62sLTs4kKNimymlbuMng5lx29kBuft3E15X+B1hWZr4smk8/XlIARAMD2tVef89z6wBHTq
	Uj3FBiZzghCEKhiW+yJA2h/DxfBmBWBDmS2iPBQlehFOpftLMApK6uSGvHKbh4CjuYVS1FFjzli2g
	10leZnncASBmeyiZl/17d3H286+dalis6nDW6GfOYMzg/zhlZJi630/CPEsmlt/4TkIr6SQYPsfpI
	DtjiDGeQYCZEqNvtu22etrtCleRfqtsoLyLYBSD1zn2haDJTzhhDQgoZ8+8xr2dzNR9lnhfONmyHC
	8Q65eWvNSwTvJlb55XxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFGL5-0004HY-Go; Fri, 20 Mar 2020 12:01:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFGKt-0004Gl-QZ
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 12:01:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7AA5D31B;
 Fri, 20 Mar 2020 05:01:10 -0700 (PDT)
Received: from C02TD0UTHF1T.local (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1E89A3F85E;
 Fri, 20 Mar 2020 05:01:07 -0700 (PDT)
Date: Fri, 20 Mar 2020 12:01:05 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Elliot Berman <eberman@codeaurora.org>
Subject: Re: [PATCH v3 1/3] dt: psci: Add arm,psci-sys-reset2-vendor-param
 property
Message-ID: <20200320120105.GA36658@C02TD0UTHF1T.local>
References: <1583435129-31356-1-git-send-email-eberman@codeaurora.org>
 <1583435129-31356-2-git-send-email-eberman@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583435129-31356-2-git-send-email-eberman@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_050112_965539_E60DC8A3 
X-CRM114-Status: GOOD (  19.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

Hi Elliot,

On Thu, Mar 05, 2020 at 11:05:27AM -0800, Elliot Berman wrote:
> Some implementors of PSCI may wish to use a different reset type than
> SYSTEM_WARM_RESET. For instance, Qualcomm SoCs support an alternate
> reset_type which may be used in more warm reboot scenarios than
> SYSTEM_WARM_RESET permits (e.g. to reboot into recovery mode).

To be honest, I'm still confused by this series, and I think that these
patches indicate a larger problem that we cannot solve generally (e.g.
on other platofrms and/or with ACPI).

I think the underlying issue is whether the semantics for:

a) Linux's RESET_WARM and RESET_SOFT
b) PSCI's SYSTEM_RESET2 SYSTEM_WARM_RESET

... actually align in practice, which this series suggests is not the
case.

If those don't align, then I think that commit:

  4302e381a870aafb ("firmware/psci: add support for SYSTEM_RESET2")

... is not actually reliable, and not something we can support by
default, and we should rethink the code introduce in that commit.

If (a) and (b) are supposed to align, and the behaviour on your platform
is an erratum, then I think we should treat it as such rather than
adding a property that is open to abuse.

Thoughts?

Thanks,
Mark.

> 
> Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
> Signed-off-by: Elliot Berman <eberman@codeaurora.org>
> ---
>  Documentation/devicetree/bindings/arm/psci.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
> index 8ef8542..1a9d2dd 100644
> --- a/Documentation/devicetree/bindings/arm/psci.yaml
> +++ b/Documentation/devicetree/bindings/arm/psci.yaml
> @@ -102,6 +102,13 @@ properties:
>        [1] Kernel documentation - ARM idle states bindings
>          Documentation/devicetree/bindings/arm/idle-states.txt
>  
> +  arm,psci-sys-reset2-vendor-param:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +        Vendor-specific reset type parameter to use for SYSTEM_RESET2 during
> +        a warm or soft reboot. If no value is provided, then architectural
> +        reset type SYSTEM_WARM_RESET is used.
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

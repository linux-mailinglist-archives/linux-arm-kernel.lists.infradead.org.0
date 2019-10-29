Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E3FE8666
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 12:15:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QhX5I7be0J5WbPfPKe4J4Mox3AAptB/dt/hO5LcrCPA=; b=JScPLXVD6qvccX
	4kyp0WK1PrL1AxJVins8lD7HSqZTffYicAwbFxooHu3xIYw8ra9fg/5dmfE5+S959dlH6QFzdCrqm
	R5poHeL3xHug58lF1gXaNj/XQnUi25IDQYgd2FQj5Bx8pD7/ZJhBOTVZGBQqAFVuKmJi3mREeBus8
	HkHnLAe2DeFYbtcTSSA93hYEZOm+r2ZUNblieMVvrCilw3M2XUfzCCIdPDLmn3mJLkQ9YnaImEtpI
	PQGrDKC7NrPAbdTVfw0gkNwuBqcyAlqtGZwqs7Sp81IJeyGndA+80oQWGsT4NiaYlFOJuwGN9MkFE
	vkNuji5wW45aTrz+aXTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPPTK-0001sI-BD; Tue, 29 Oct 2019 11:15:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPPT9-0001rr-1U
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 11:15:24 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 11E4020874;
 Tue, 29 Oct 2019 11:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572347722;
 bh=SRzW6FPQi8ILQcHxWmUOSb/ba5l1skxBzk0N9Zb67L4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MJdt7Qkk8k8EZ3/tmQnFyxliB71kW0Fijqg99du9tXDTYkAjb/luEfkEjNGNcaZwg
 +HMHEyLiKIi9Eui/X2aR2rO4gQQR2I113KBb4OV19kIVsDSHx0qGFkdXJhnjZBu40T
 587urYEACjLw9EEzNQ6voqtMd9lA5yn3AW3eFhvQ=
Date: Tue, 29 Oct 2019 11:15:17 +0000
From: Will Deacon <will@kernel.org>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [PATCH] arm64: cpufeature: Export Armv8.6 Matrix feature to
 userspace
Message-ID: <20191029111517.GE11590@willie-the-truck>
References: <20191025171056.30641-1-julien.grall@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025171056.30641-1-julien.grall@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_041523_143558_26973209 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: catalin.marinas@arm.com, Dave.Martin@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 25, 2019 at 06:10:56PM +0100, Julien Grall wrote:
> This patch provides support for reporting the presence of Armv8.6
> Matrix and its optional features to userspace.

Are you sure this is 8.6 and not earlier?

> This based on [1] + commit ec52c7134b1f "arm64: cpufeature: Treat
> ID_AA64ZFR0_EL1 as RAZ when SVE is not enabled" (taken from v5.4-rc4).
> 
> [1]  arm64/for-next/elf-hwcap-docs
> ---
>  Documentation/arm64/cpu-feature-registers.rst |  8 ++++++++
>  Documentation/arm64/elf_hwcaps.rst            | 15 +++++++++++++++
>  arch/arm64/include/asm/hwcap.h                |  4 ++++
>  arch/arm64/include/asm/sysreg.h               |  7 +++++++
>  arch/arm64/include/uapi/asm/hwcap.h           |  4 ++++
>  arch/arm64/kernel/cpufeature.c                | 11 +++++++++++
>  arch/arm64/kernel/cpuinfo.c                   |  4 ++++
>  7 files changed, 53 insertions(+)
> 
> diff --git a/Documentation/arm64/cpu-feature-registers.rst b/Documentation/arm64/cpu-feature-registers.rst
> index ffcf4e2c71ef..d1d6d56a7b08 100644
> --- a/Documentation/arm64/cpu-feature-registers.rst
> +++ b/Documentation/arm64/cpu-feature-registers.rst
> @@ -193,6 +193,8 @@ infrastructure:
>       +------------------------------+---------+---------+
>       | Name                         |  bits   | visible |
>       +------------------------------+---------+---------+
> +     | I8MM                         | [52-55] |    y    |
> +     +------------------------------+---------+---------+

Looking at:

https://developer.arm.com/docs/ddi0601/latest/aarch64-system-registers/id_aa64isar1_el1

Then I8MM is advertised as "Armv8.2", alongside other fields that we haven't
listed here such as BF16 and SPECRES.

So we probably want a patch bringing all of this up to speed, rather than
randomly advertising some features and not others.

>       | SB                           | [36-39] |    y    |
>       +------------------------------+---------+---------+
>       | FRINTTS                      | [32-35] |    y    |
> @@ -227,6 +229,12 @@ infrastructure:
>       +------------------------------+---------+---------+
>       | Name                         |  bits   | visible |
>       +------------------------------+---------+---------+
> +     | F64MM                        | [56-59] |    y    |
> +     +------------------------------+---------+---------+
> +     | F32MM                        | [52-55] |    y    |
> +     +------------------------------+---------+---------+
> +     | I8MM                         | [44-47] |    y    |
> +     +------------------------------+---------+---------+

Urgh, we're inconsistent in our bitfields. Some are [lo-hi] whilst others
are [hi-lo]. Please can you fix that in a preparatory patch? I prefer
[hi-lo] and it matches the arch docs.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

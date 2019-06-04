Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA013451C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 13:12:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nw+L+1n+2biIXnJp59/+t2+Wau2xwgo3otMVy4yFU6U=; b=k2qdH+nJcha9WK
	J5LSzWzKuyMTRdQpyWNLX/tueeJ/4hZ75dZMj+4oI7YcciogGUPRaE3gRbi/cDNWTw91rwqxTGItC
	Ah8qFBp0qQrtJNQuo0IzQqjp9eEhTls8LEv29cwsFD0bLIKnWdS0B5s1Z8JjwhuOs4lQe3/RBk+rk
	25AiEVKMWPZaGMlrK91wibKxhJZB8/MhHKyNJYTytk6gHnQqNSkFqLYDK2RLWthPkdsSAg7fZ4uyf
	Q6DuN0KT+ma37uGJ65HLXHI4eGSArdkrih1fdCidtzKgibvUlO7PhiaYcKROkUiGLynzbzqBQFLUO
	mtacUDgJPbxACV2ohMyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY7Mx-000248-Oe; Tue, 04 Jun 2019 11:12:43 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY7Mr-00023Q-ER
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 11:12:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0E61280D;
 Tue,  4 Jun 2019 04:12:36 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 EC0753F690; Tue,  4 Jun 2019 04:12:33 -0700 (PDT)
Date: Tue, 4 Jun 2019 12:12:31 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [PATCH v5 2/3] arch/arm64: fpsimd: Introduce
 fpsimd_save_and_flush_cpu_state() and use it
Message-ID: <20190604111230.GA5668@arrakis.emea.arm.com>
References: <20190521172139.21277-1-julien.grall@arm.com>
 <20190521172139.21277-3-julien.grall@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521172139.21277-3-julien.grall@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_041237_684679_5297552C 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: ard.biesheuvel@linaro.org, julien.thierry@arm.com, marc.zyngier@arm.com,
 Dave.Martin@arm.com, suzuki.poulose@arm.com, will.deacon@arm.com,
 christoffer.dall@arm.com, linux-kernel@vger.kernel.org, james.morse@arm.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 06:21:38PM +0100, Julien Grall wrote:
> The only external user of fpsimd_save() and fpsimd_flush_cpu_state() is
> the KVM FPSIMD code.
> 
> A following patch will introduce a mechanism to acquire owernship of the
> FPSIMD/SVE context for performing context management operations. Rather
> than having to export the new helpers to get/put the context, we can just
> introduce a new function to combine fpsimd_save() and
> fpsimd_flush_cpu_state().
> 
> This has also the advantage to remove any external call of fpsimd_save()
> and fpsimd_flush_cpu_state(), so they can be turned static.
> 
> Lastly, the new function can also be used in the PM notifier.
> 
> Signed-off-by: Julien Grall <julien.grall@arm.com>
> Reviewed-by: Dave Martin <Dave.Martin@arm.com>
[...]
> ---
>  arch/arm64/include/asm/fpsimd.h |  4 +---
>  arch/arm64/kernel/fpsimd.c      | 17 +++++++++++++----
>  arch/arm64/kvm/fpsimd.c         |  4 +---
>  3 files changed, 15 insertions(+), 10 deletions(-)

Marc, since this touches KVM, can I get an ack on this patch? I plan to
queue the series.

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

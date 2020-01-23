Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5739146EB9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 17:56:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/5Smb18+lMEUi+HQEon+Xd5+Myw8+PX4z1XfkSniacI=; b=O6fblmy1DMTaTa
	dt7tp3ZK+DcrsdZyK0ifkLVyJevuQHp8vkUP2yWhwABpAtbDyIfK5RsFsYEZDYSLtgwqK2ND4i1mh
	19Ao7nQr8IU/i3XW19wurrVIBaSbIyotcqRENq4vSeigbWvarQYX+3Rq5ugNrVCKDi4dotP40jd5Q
	RfnEpW3wyXFnmCZ94bQru35NGFTJHgh80GdpFo5H2KtXVu5BZBKOlrCpKBYHGrNFoTUvTlfqX5XAj
	tiu25ULE0gGPt3V3TgwzpZ6b3sOOwmlLzuMMybZRZWwZoxTlzOozqiu5pEl4njriJWS5w+1fcG+aq
	T9rGd+q200wN2DVH4Qww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iufmN-0000h5-DM; Thu, 23 Jan 2020 16:56:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iufmG-0000gk-Sv
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 16:56:22 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E2BB021569;
 Thu, 23 Jan 2020 16:56:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579798580;
 bh=MSOvB9Ez+GU+Pkc0XJ8/972rCHvs2v7owDXEQdOJ5OQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=q+TtOV4tbUrPSn3Gk4mwwbwCxHA8ZjpNbBNWtTs3aXqLLcoSrO/LjJAzTiG4nQxCd
 mL63iyR5GiKt9QQuNj+uC/+aRwbbnxz/27bWPGf8znZzWIktJXWAhcu/hV+7oMKR4+
 se+rQLlgCsD3delxx1vWAqt6fqgUIK1zUygX3/kQ=
Date: Thu, 23 Jan 2020 16:56:15 +0000
From: Will Deacon <will@kernel.org>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH -next] arm64/spinlock: fix a -Wunused-function warning
Message-ID: <20200123165614.GA20126@willie-the-truck>
References: <20200123162945.7705-1-cai@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200123162945.7705-1-cai@lca.pw>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_085620_955564_67893DD4 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: peterz@infradead.org, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, mingo@redhat.com, longman@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 23, 2020 at 11:29:45AM -0500, Qian Cai wrote:
> The commit f5bfdc8e3947 ("locking/osq: Use optimized spinning loop for
> arm64") introduced a warning from Clang because vcpu_is_preempted() is
> compiled away,
> 
> kernel/locking/osq_lock.c:25:19: warning: unused function 'node_cpu'
> [-Wunused-function]
> static inline int node_cpu(struct optimistic_spin_node *node)
>                   ^
> 1 warning generated.
> 
> Since vcpu_is_preempted() had already been defined in
> include/linux/sched.h as false, just comment out the redundant macro, so
> it can still be served for the documentation purpose.
> 
> Fixes: f5bfdc8e3947 ("locking/osq: Use optimized spinning loop for arm64")
> Signed-off-by: Qian Cai <cai@lca.pw>
> ---
>  arch/arm64/include/asm/spinlock.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/spinlock.h b/arch/arm64/include/asm/spinlock.h
> index 102404dc1e13..b05f82e8ba19 100644
> --- a/arch/arm64/include/asm/spinlock.h
> +++ b/arch/arm64/include/asm/spinlock.h
> @@ -17,7 +17,8 @@
>   *
>   * See:
>   * https://lore.kernel.org/lkml/20200110100612.GC2827@hirez.programming.kicks-ass.net
> + *
> + * #define vcpu_is_preempted(cpu)	false
>   */
> -#define vcpu_is_preempted(cpu)	false

Damn, the whole point of this was to warn in the case that
vcpu_is_preempted() does get defined for arm64. Can we force it to evaluate
the macro argument instead (e.g. ({ (cpu), false; }) or something)?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

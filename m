Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 778613CC02
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 14:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UnZSPp+1rxbc1C4S1no5vux3rGiIXVDbvbELak3f9jA=; b=eMvI/yF5+Mmbtt
	JQ9xpxvNYv7WtL9tsYlVAGRgEECqbutP1TZGkyvMkZnLej45EpaZTZ6q+xfZWln6B0hecHSnzV+Q/
	xevbo+yjMyNPWw0Od9Nwb65PXgGSwsGmBQ5TcOVEpVgRkoxoXZktuxBas4GslU7fCSwOGhTtBva+5
	cWQnAoVJ9nrWoSUQp8ULOlCAjRhZ4N40tmeYtMuCX0AuO01+IEUbuhIhroguaIG2m+1RClDYitSL6
	YolvaP8JQZX+4LrWTVio9wzvmyiMUm23GkAbJMfbu0PLT284mu6mz8oWK0+ZEGDMJYg/OOccHuOai
	5hrJYBINFevbRmnUxPQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hagA9-0007DC-MA; Tue, 11 Jun 2019 12:46:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hag9w-0007Bk-BA
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 12:45:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B350D344;
 Tue, 11 Jun 2019 05:45:49 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 423343F557;
 Tue, 11 Jun 2019 05:45:48 -0700 (PDT)
Date: Tue, 11 Jun 2019 13:45:42 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Julien Thierry <julien.thierry@arm.com>
Subject: Re: [PATCH v4 1/8] arm64: Do not enable IRQs for ct_user_exit
Message-ID: <20190611124542.GA29008@lakrids.cambridge.arm.com>
References: <1560245893-46998-1-git-send-email-julien.thierry@arm.com>
 <1560245893-46998-2-git-send-email-julien.thierry@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560245893-46998-2-git-send-email-julien.thierry@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_054552_431526_0DF1923C 
X-CRM114-Status: GOOD (  14.44  )
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
Cc: marc.zyngier@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org, james.morse@arm.com,
 yuzenghui@huawei.com, wanghaibin.wang@huawei.com, liwei391@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 10:38:06AM +0100, Julien Thierry wrote:
> For el0_dbg and el0_error, DAIF bits get explicitly cleared before
> calling ct_user_exit.
> 
> When context tracking is disabled, DAIF gets set (almost) immediately
> after. When context tracking is enabled, among the first things done
> is disabling IRQs.
> 
> What is actually needed is:
> - PSR.D = 0 so the system can be debugged (should be already the case)
> - PSR.A = 0 so async error can be handled during context tracking
> 
> Do not clear PSR.I in those two locations.
> 
> Signed-off-by: Julien Thierry <julien.thierry@arm.com>
> Reviewed-by: James Morse <james.morse@arm.com>
> Cc:Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Marc Zyngier <marc.zyngier@arm.com>

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/kernel/entry.S | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index cd0c7af..89ab6bd 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -870,7 +870,7 @@ el0_dbg:
>  	mov	x1, x25
>  	mov	x2, sp
>  	bl	do_debug_exception
> -	enable_daif
> +	enable_da_f
>  	ct_user_exit
>  	b	ret_to_user
>  el0_inv:
> @@ -922,7 +922,7 @@ el0_error_naked:
>  	enable_dbg
>  	mov	x0, sp
>  	bl	do_serror
> -	enable_daif
> +	enable_da_f
>  	ct_user_exit
>  	b	ret_to_user
>  ENDPROC(el0_error)
> --
> 1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

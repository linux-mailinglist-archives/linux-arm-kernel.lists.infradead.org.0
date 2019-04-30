Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FE0F50C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 13:06:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dyi6NQnwneLTSoNRA27nQvykN/wO1ZCjRMGO+lujGlE=; b=aQgxhWv0DG/8VA
	SBkB1r8Z+dIepZ2/y01BeFeDSjYEgt1TULRo/vv/O0Ey+GljH1vLccqt6S81H3jB/ngL/Lo31rdDy
	U6bv81qw/kffzHtNRuXgeanS1biOPsVfdLvv+X4YgDlMSA8PidR0zmvRYpVewageyCOpgiOT81lil
	1+R+kvn5tHFbDLGs3eS/P4QRcr8nvSS7WqdJwvLClv7kdO+stcCopYiqNWUIMdkfmFVQCLNyJPpVw
	D4p8zNlG/j9XrdFBXUxjMUhnIjfvHy0Y5ELfS+nxYBDNFswLQtxX8y51PL/pFRDdzQlCd0uh4PgFD
	/aPQLTvrr55ifHFsPcBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLQar-0002QI-K3; Tue, 30 Apr 2019 11:06:37 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLQak-0002Pf-1I
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 11:06:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F0A0180D;
 Tue, 30 Apr 2019 04:06:28 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 40C353F5C1;
 Tue, 30 Apr 2019 04:06:27 -0700 (PDT)
Date: Tue, 30 Apr 2019 12:06:24 +0100
From: Will Deacon <will.deacon@arm.com>
To: Arun KS <arunks@codeaurora.org>
Subject: Re: arm64: Fix size of __early_cpu_boot_status
Message-ID: <20190430110624.GB16204@fuggles.cambridge.arm.com>
References: <1556620535-10060-1-git-send-email-arunks@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556620535-10060-1-git-send-email-arunks@codeaurora.org>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_040630_085385_1F1394F9 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, Steve Capper <steve.capper@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Jun Yao <yaojun8558363@gmail.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 04:05:04PM +0530, Arun KS wrote:
> __early_cpu_boot_status is of type long. Use quad
> assembler directive to allocate proper size.
> 
> Signed-off-by: Arun KS <arunks@codeaurora.org>
> ---
>  arch/arm64/kernel/head.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
> index eecf792..115f332 100644
> --- a/arch/arm64/kernel/head.S
> +++ b/arch/arm64/kernel/head.S
> @@ -684,7 +684,7 @@ ENTRY(__boot_cpu_mode)
>   * with MMU turned off.
>   */
>  ENTRY(__early_cpu_boot_status)
> -	.long 	0
> +	.quad 	0

Yikes. How did you spot this? Did we end up corrupting an adjacent variable,
or does the alignment in the linker script save us in practice?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

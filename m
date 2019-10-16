Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78125D8EA4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 12:52:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C9Z+vXuCEQeXcCl89Kv7IfROhz0j0LlFtB4EPb3ZYcw=; b=Cqm6Y47ALd7a+I
	RlmAYL6KDZoRsZSJdwiz2MFYqdSdhjowqoDg8SfbnRYRVb9bNhCK5bqm28y4cmNDIQuC/yilabowC
	7wYXxYKA8KpF2DiNeQroUuotOi9bhtK5kziZintH/jPGOEUZB6qRK5wLqEHdCN5Zg812zWdFoqvqu
	0JWe9MuhxebLfHlYanHcvXShiiMmQSFpgDx05v/CWOvg33vkFZJpbqRG0Q/ZPC6oXCYvN2r4lomxp
	4uDOKhGgmPbJBmWtCGtLm1j2JovhHLhRjcLcARm0SE8t4jMVEBIhHY1PP2ZgYvm03gqO+htsO7V+/
	/MwAuPcuEWeMNQtptiQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKgup-0007IM-5K; Wed, 16 Oct 2019 10:52:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKgrs-0003gA-Hy
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 10:49:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7C4EC1570;
 Wed, 16 Oct 2019 03:49:22 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D69893F6C4;
 Wed, 16 Oct 2019 03:49:21 -0700 (PDT)
Date: Wed, 16 Oct 2019 11:49:16 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Yang Yingliang <yangyingliang@huawei.com>
Subject: Re: [PATCH] arm64: sysreg: fix wrong PAR_EL1.F macro
Message-ID: <20191016104915.GA44246@lakrids.cambridge.arm.com>
References: <1571197377-48650-1-git-send-email-yangyingliang@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571197377-48650-1-git-send-email-yangyingliang@huawei.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_034924_726820_B00F3F7F 
X-CRM114-Status: GOOD (  16.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 11:42:57AM +0800, Yang Yingliang wrote:
> According to the spec:
> 
> Field descriptions
> The PAR_EL1 bit assignments are:
> For all register layouts:
>     F, bit [0]
>                Indicates whether the conversion completed successfully.
>                0 VA to PA conversion completed successfully.
>                1 VA to PA conversion aborted.
> 
> PAR_EL1.F is bit0.
>
> Fixes: e8620cff9994 ("arm64: sysreg: Add some field definitions for PAR_EL1")
> Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
> ---
>  arch/arm64/include/asm/sysreg.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> index 972d196..6e919fa 100644
> --- a/arch/arm64/include/asm/sysreg.h
> +++ b/arch/arm64/include/asm/sysreg.h
> @@ -212,7 +212,7 @@
>  #define SYS_FAR_EL1			sys_reg(3, 0, 6, 0, 0)
>  #define SYS_PAR_EL1			sys_reg(3, 0, 7, 4, 0)
>  
> -#define SYS_PAR_EL1_F			BIT(1)
> +#define SYS_PAR_EL1_F			BIT(0)

Looks like this was a thinko, as we converted 1 -> BIT(1) in the
original patch.

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

That said, looking at is_spurious_el1_translation_fault() where this is
used, we currently have:

| if (!(par & SYS_PAR_EL1_F))
| 	return false;

... which I think is inverted.  If PAR_EL1.F == 0, we now have a valid
translation, so the fault *was* spurious, and we should return true.

I'll spin a patch...

Mark.

>  #define SYS_PAR_EL1_FST			GENMASK(6, 1)
>  
>  /*** Statistical Profiling Extension ***/
> -- 
> 1.8.3
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

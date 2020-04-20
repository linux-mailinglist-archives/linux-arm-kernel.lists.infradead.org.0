Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2D71B0663
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 12:17:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XS1cudYDF6PiGytdO7Scr/bf+88yd8uI0bFXiWBMk+I=; b=mLavKhjjyimBtJ
	QH5pC9RAIzzW8UACXkfDQGm2U2KUiLdr6TJClJ/A/YcB6A3vBWWWbIkDHygX6vMBTj8yfaP8M33sF
	NgOxPVEqDKwgqC7Mwy6llhekon286vLs+Brf5wfBBl28EAz+WniHdEVSXIyeq4+GQmZhPjTpnLZZp
	RFDg8N+W/5MFgO6Pvw0aCOPATWk9E7f8rOPVr3V8y+1DOtIW5BhbD5jbwtjnzMV/yuT0HHH13vxQD
	gI7SiOr2uQIwt/ST5rVbcUpOXeQQ7ATHeXcCGeBFgSmtBf4iroyytnWnkKR3eBHWX4UjHwnzaxdGa
	5vs38wWXyGFMVR7miSEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQTUJ-0007Qk-Ah; Mon, 20 Apr 2020 10:17:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQTUB-0007PN-Um
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 10:17:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8B8BD30E;
 Mon, 20 Apr 2020 03:17:04 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.30.55])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3FC0E3F73D;
 Mon, 20 Apr 2020 03:17:03 -0700 (PDT)
Date: Mon, 20 Apr 2020 11:16:57 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Jason Yan <yanaijie@huawei.com>
Subject: Re: [PATCH] arm64: entry: remove unneeded semicolon in
 el1_sync_handler()
Message-ID: <20200420101657.GA69441@C02TD0UTHF1T.local>
References: <20200418081909.41471-1-yanaijie@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200418081909.41471-1-yanaijie@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_031708_032957_9A0C3EF0 
X-CRM114-Status: GOOD (  13.48  )
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 Hulk Robot <hulkci@huawei.com>, james.morse@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 18, 2020 at 04:19:09PM +0800, Jason Yan wrote:
> Fix the following coccicheck warning:
> 
> arch/arm64/kernel/entry-common.c:97:2-3: Unneeded semicolon
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Jason Yan <yanaijie@huawei.com>

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/kernel/entry-common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/entry-common.c b/arch/arm64/kernel/entry-common.c
> index c839b5bf1904..bed09a866c2f 100644
> --- a/arch/arm64/kernel/entry-common.c
> +++ b/arch/arm64/kernel/entry-common.c
> @@ -94,7 +94,7 @@ asmlinkage void notrace el1_sync_handler(struct pt_regs *regs)
>  		break;
>  	default:
>  		el1_inv(regs, esr);
> -	};
> +	}
>  }
>  NOKPROBE_SYMBOL(el1_sync_handler);
>  
> -- 
> 2.21.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

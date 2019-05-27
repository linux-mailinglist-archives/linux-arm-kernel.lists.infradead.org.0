Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB0C2AE59
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 08:07:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dOfDeSGFurcE0isQ99S7zbg2Fe2GwYqNwGUL7kjCqME=; b=Mqodg/qUtfAXDh
	3F54zdPfhRdxkQSKYObpDn2zZ388W5WIjap8CtEjf8ek5TOUp3pC5Mutf0hJtcZv/Ehbu9I8Ei/I0
	3flf8nTLuOYT7HiN3LhMo3yMZV6DeJQkV/siF/46qhoTDzd/uAAQRWgrPUUVuUIj834ipAk6ckpYF
	+FzZPp0i4nxvZT6/rZll0L2XkA1ggWVZFy5FOxeaOTNpRVoQl9YmrmJ8B1W8uvxnqVKZgzXHpNW3i
	wyV12gF74/a3vNf94apRju3UHdfUSoNonzH7L4PVTtRPeLYuBp9hyxepHuo8t+R0pPOo34dsZ6Y6X
	74TYiBaRn5LW/XUnhxjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV8mp-0007Lu-Bk; Mon, 27 May 2019 06:07:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV8mi-0007LZ-Ul
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 06:07:02 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 75DBE204EC;
 Mon, 27 May 2019 06:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558937220;
 bh=mw+L/lLqY44mNdz/h0RDLRWC8v4KYOi5aOl1+CIT9wA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RRp7RK35mra3nwfLeSnANm7jg9RuE5Xik4SIoiYMi2PYUvCZu2b5m/t7BU7kliO6J
 1Vf3DetAjGyPp8/lPrqpTmOqANVXTe8co9sTQ3LnD4ptx1nAxwPAFhWJ4B3x7COQQV
 cR2NmSD9PKbsSn0OuiImgyLxb8g+55SRD5uDhAwM=
Date: Mon, 27 May 2019 08:06:56 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Shaokun Zhang <zhangshaokun@hisilicon.com>
Subject: Re: [PATCH v3 1/2] drivers: base: cacheinfo: Add variable to record
 max cache line size
Message-ID: <20190527060656.GA7997@kroah.com>
References: <1558922768-29155-1-git-send-email-zhangshaokun@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558922768-29155-1-git-send-email-zhangshaokun@hisilicon.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_230701_007389_3A093588 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Jeremy Linton <jeremy.linton@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 10:06:07AM +0800, Shaokun Zhang wrote:
> Add coherency_max_size variable to record the maximum cache line size
> for different cache levels. We will synchronize it with CTR_EL0.CWG
> reporting in cache_line_size() for arm64.
> 
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: "Rafael J. Wysocki" <rafael@kernel.org>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Jeremy Linton <jeremy.linton@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
> ---
> ChangeLog since v2:
>   -- Rebase to 5.2-rc2
>   -- Export cache_line_size for I/O driver
> ChangeLog since v1:
>   -- Move coherency_max_size to drivers/base/cacheinfo.c
>   -- Address Catalin's comments
>   Link: https://www.spinics.net/lists/arm-kernel/msg723615.html
> 
>  drivers/base/cacheinfo.c  | 5 +++++
>  include/linux/cacheinfo.h | 2 ++
>  2 files changed, 7 insertions(+)
> 
> diff --git a/drivers/base/cacheinfo.c b/drivers/base/cacheinfo.c
> index a7359535caf5..8827c60f51e2 100644
> --- a/drivers/base/cacheinfo.c
> +++ b/drivers/base/cacheinfo.c
> @@ -213,6 +213,8 @@ int __weak cache_setup_acpi(unsigned int cpu)
>  	return -ENOTSUPP;
>  }
>  
> +unsigned int coherency_max_size;

Why are you creating a global variable?

Where are the other patches in this series?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

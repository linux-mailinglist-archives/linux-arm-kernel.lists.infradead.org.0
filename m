Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB271CC719
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 May 2020 08:14:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V1E6jwbn4JuDDMj7kYhyN6FN0kGs3o4QOkpSc089fcY=; b=VUg9iQp6NRYUrq
	gQRtafdtsMgObo7XXNE6u6EdP2DpKJBap7lm3bHGlONdHLs2cUVsxeL0I48s9pISNTTqoY6hkMo+6
	Ch9o9RfI8sBSOmWB27hiYN7b8SmuFNuxO71lQFwWRWi7IJavyltOUInPAwIPCNRe8wJAxevpeC6Xn
	DvQk5u/fDLj2LLEMmVO6KAP5YaF0ih3N5+G3WtoXiDGon34XoxyyOsxkv+XYWppdfuyMvINcUSU9P
	oJyBeTWASkavp7ftkI9sqbmuJwkTwhSMIOj5sIFbRXzJQrUPOqevI7rRl7kqQLInZJ+XpLHd38P6Y
	fM0q+tCHxUB3s/PY1Fdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXfES-0003HF-3p; Sun, 10 May 2020 06:14:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXfEL-0003Fx-Aw
 for linux-arm-kernel@lists.infradead.org; Sun, 10 May 2020 06:14:30 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E6ACE2082E;
 Sun, 10 May 2020 06:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589091265;
 bh=dhSX1koUXR01QNflrqzyeDk0HZwGZnOuulR+owPUVxA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ucm/1umG+61KjNyTKq2IX2ZBYcRg+6v/Mx/iyTwnFn9ufXLQC8aqrYWQiFPYuy7ap
 eUeKYsnKisIPlDOWh3qlbQuhDe39DkIeXMbpEWrZDcYHefB7xrrtgGL45LM5DaAhto
 tJN5JUcFYWgXPbSBWeJ9TDusCbJSFEB0MeuNI9FM=
Date: Sun, 10 May 2020 08:14:22 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Chen Zhou <chenzhou10@huawei.com>
Subject: Re: [PATCH -next] arch/arm: use scnprintf() in l2x0_pmu_event_show()
Message-ID: <20200510061422.GA3375088@kroah.com>
References: <20200509083539.113156-1-chenzhou10@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200509083539.113156-1-chenzhou10@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_231429_395584_62F9CBB4 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 alexios.zavras@intel.com, allison@lohutok.net, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 09, 2020 at 04:35:39PM +0800, Chen Zhou wrote:
> snprintf() returns the number of bytes that would be written,
> which may be greater than the the actual length to be written.
> 
> show() methods should return the number of bytes printed into the
> buffer. This is the return value of scnprintf().
> 
> Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
> ---
>  arch/arm/mm/cache-l2x0-pmu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mm/cache-l2x0-pmu.c b/arch/arm/mm/cache-l2x0-pmu.c
> index 993fefdc167a..d20626451a2e 100644
> --- a/arch/arm/mm/cache-l2x0-pmu.c
> +++ b/arch/arm/mm/cache-l2x0-pmu.c
> @@ -343,7 +343,7 @@ static ssize_t l2x0_pmu_event_show(struct device *dev,
>  	struct l2x0_event_attribute *lattr;
>  
>  	lattr = container_of(attr, typeof(*lattr), attr);
> -	return snprintf(buf, PAGE_SIZE, "config=0x%x\n", lattr->config);
> +	return scnprintf(buf, PAGE_SIZE, "config=0x%x\n", lattr->config);

This should just be replaced with sprintf() as there's no way such a
string can go beyond PAGE_SIZE.

And the "config=" part could be dropped as well, but now userspace
probably requires it, that is sad.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

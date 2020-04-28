Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4C21BCC7A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 21:37:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tgQYkBCuSU9+F9n1nvLnzxd+UmmgY5cD6H1zLjAXxbk=; b=AFs/MBzguIY8JB
	z8zjAVjniTw5TQ66sBZUjBSa3uvv86iv89xDivsuAxS7XLXa7vgTCsqRWHFk14wxMgWFmSOqGnYqy
	9i0ata8qRd6POYSSGmLtHqXDOMdSX2sZdO8Gic70UiPyPmjWTCxNWWe3eXvptHYr65CUQRd4nx5vB
	mxe4DIrjiqqIkTASnw23dJc+RMspzSnEq3A+Gyry7OClkmnhSMq4ox7WzTcgMJV9ph703XAjbYp/8
	nvK2isIRra/Zn6tuxNeYYewu3VVM71Y1VXOIB7zlSQp6v/ImB9T6h3L9PL0WF/cm27pDV5k5p+EA6
	A4yCCNFSrp7uSTF/aZOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTW2W-0002PX-W2; Tue, 28 Apr 2020 19:37:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTW2H-0002NU-DK
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 19:36:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3D459C14;
 Tue, 28 Apr 2020 12:36:48 -0700 (PDT)
Received: from C02TF0J2HF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EC1933F68F;
 Tue, 28 Apr 2020 12:36:44 -0700 (PDT)
Date: Tue, 28 Apr 2020 20:36:41 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 20/23] fs: Allow copy_mount_options() to access
 user-space in a single pass
Message-ID: <20200428193641.GA35158@C02TF0J2HF1T.local>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-21-catalin.marinas@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200421142603.3894-21-catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_123653_498769_8F7E4CAD 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 03:26:00PM +0100, Catalin Marinas wrote:
> --- a/fs/namespace.c
> +++ b/fs/namespace.c
> @@ -3025,13 +3025,16 @@ void *copy_mount_options(const void __user * data)
>  	if (!copy)
>  		return ERR_PTR(-ENOMEM);
>  
> -	size = PAGE_SIZE - offset_in_page(data);
> +	size = PAGE_SIZE;
> +	if (!arch_has_exact_copy_from_user(size))
> +		size -= offset_in_page(data);
>  
> -	if (copy_from_user(copy, data, size)) {
> +	if (copy_from_user(copy, data, size) == size) {
>  		kfree(copy);
>  		return ERR_PTR(-EFAULT);
>  	}
>  	if (size != PAGE_SIZE) {
> +		WARN_ON(1);
>  		if (copy_from_user(copy + size, data + size, PAGE_SIZE - size))
>  			memset(copy + size, 0, PAGE_SIZE - size);
>  	}

Argh, this WARN_ON should not be here at all. It's something I added to
make check that I don't reach this part in arm64. Will remove in v4.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

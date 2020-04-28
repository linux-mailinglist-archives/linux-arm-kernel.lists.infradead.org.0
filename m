Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5541BB7AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 09:35:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k+RakUpKHElOo3rbPkFb3uWfKjm0bniMA9i3jdt18rM=; b=OTE8Ts1SRcvayZ
	oEYsEdxqphNlGoRg71+fP1jYbQ7xl5O1+73tp7+PRpD3qFVSO0IrrKBvlTkUfZhuV346wGZnfzMUx
	PW+ZJo3/C9esWBqO6cJM2fS53Cidc8ApnNZkFsRx/ubIe9P+2pX8UMXHbTxtoC9+FISyuqtLpoS+D
	+fnk4WSJWbPUBKX89UhYuym8TsGRAXM7lo7ZFpGz9YC70bar8eC10a3nGaa5JCvrtYgSjEY9+wyMj
	z9L+1IkN6NM367NLSB87vWvJBrH4qV9drc58JM+tkuS6lgZ1OkpBeXXMu1zIuuxiPKXUBl57icDdN
	m+bvk0f8Z7L8pQsnOvbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTKm7-0005rv-5U; Tue, 28 Apr 2020 07:35:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTKlM-0005bq-DG
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 07:34:41 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EF906206D9;
 Tue, 28 Apr 2020 07:34:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588059280;
 bh=Ij7cKVnIonfucw210eJQSpASNDrQWgMhCCdpFFpQWvc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lLyX/U4TLpN1vT2REDLFDIRX7lLSspJBA8MAcJxiUXiClH0a60z5PNE8mvoCJrxLy
 wrR5yCHzRZdq43COnv6rpOCsMN/kGmwYk3F1iURnolKcMcgoxLrrp4q/RZaT7MStPJ
 oB85UMPKlpyPwkCi31jO8hHcBj1AiGelx6BiRQaY=
Date: Tue, 28 Apr 2020 08:34:35 +0100
From: Will Deacon <will@kernel.org>
To: Szabolcs Nagy <szabolcs.nagy@arm.com>
Subject: Re: arm64 vdso might miss .eh_frame
Message-ID: <20200428073435.GC4049@willie-the-truck>
References: <20200415092336.GK987@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415092336.GK987@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_003440_472686_AD6FDD8D 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org, Tamas Zsoldos <tamas.zsoldos@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 10:23:36AM +0100, Szabolcs Nagy wrote:
> On aarch64 linux gcc uses -fasynchronous-unwind-tables -funwind-tables
> by default since gcc-8, so now the de facto platform ABI is to allow
> unwinding from async signal handlers.
> 
> However on bare metal targets (aarch64-none-elf), and on old gcc,
> async and sync unwind tables are not enabled by default to avoid
> runtime memory costs.
> 
> This means if linux is built with a baremetal toolchain the vdso.so
> may not have unwind tables which breaks our (undocumented) platform
> ABI guarantee in userspace. So adding -fasynchronous-unwind-tables
> explicitly to the vgettimeofday.o cflags would be nice (the other
> objects in the vdso seem to be asm).
> 
> There was also a report that android clang built linux vdso.so lacks
> .eh_frame completely, that may be a missing --eh-frame-hdr or different
> platform ABI on android, Tamas on cc may be able to verify this.

Vincenzo? Looks like this is a regression caused by the move to C -- please
can you take a look?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

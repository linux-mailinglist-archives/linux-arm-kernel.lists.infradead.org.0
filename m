Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0209414B0AC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 09:08:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XKDVQHEB1HuB1pN4cgQ8IYM5bed7y1kys8bm0vNaWBs=; b=mKuMNZLolVjTWX
	OlZI0Xy6U6Jnjge+tvtNBHHZZtV2mg8jtSndD3nDbDH5nbNOmcvwR4Ud5sBIi9gjQzuf+/nWs2FvG
	myIe3oUppKxzCYPLmDTNDyNahxdIbIyAFVij3BOtoPJVUPLQP0296zV/hZ8+DVTe0hDNmjSuYtCNY
	0ZeCucpiLTMJPO5tonDuTJLjhBUQ1QTUdP3rgOfOxfsLJKz6vG/2qbyHKnegFHllUUnPBSdDVGn4P
	5eud4zmDeza3KjjNBMnmBtPO7u5tcO5QbZPIPPPkOXEFTOHCV9wIklNUxp3BJSsrifR2U22YgP7iM
	EwT+XzO40dNYRAnxN45g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwLv4-0003ld-Ok; Tue, 28 Jan 2020 08:08:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwLuu-0003kP-KI
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 08:08:13 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8491B2467B;
 Tue, 28 Jan 2020 08:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580198892;
 bh=IQrFgVNc1B4IPrCk+m5OMuVQaRx7YDEOKWXm/35raU8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vYH7VZGGdsNcxxeXIwG/T0w6wSXO+zCOqd3sXgjHrITJtLPbzkvzU18Cgd5lUMCrB
 2ywUksWgU8qOAQf4Fr3Yxb8m8i+6LNiwY8h0vw3xMFW+iFf1azI39YeaKrYI5eRtq3
 EANie1McZ1qXHhIfInh60M9AkRMAENjUtnIJFTJ0=
Date: Tue, 28 Jan 2020 09:08:07 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH stable 4.9] arm64: kpti: Whitelist Cortex-A CPUs that
 don't implement the CSV3 field
Message-ID: <20200128080807.GJ2105706@kroah.com>
References: <20200124200820.18272-1-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200124200820.18272-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_000812_693504_BB9B585F 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: sashal@kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 open list <linux-kernel@vger.kernel.org>, stable@vger.kernel.org,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 24, 2020 at 12:08:20PM -0800, Florian Fainelli wrote:
> From: Will Deacon <will.deacon@arm.com>
> 
> commit 2a355ec25729053bb9a1a89b6c1d1cdd6c3b3fb1 upstream.
> 
> While the CSV3 field of the ID_AA64_PFR0 CPU ID register can be checked
> to see if a CPU is susceptible to Meltdown and therefore requires kpti
> to be enabled, existing CPUs do not implement this field.
> 
> We therefore whitelist all unaffected Cortex-A CPUs that do not implement
> the CSV3 field.
> 
> Signed-off-by: Will Deacon <will.deacon@arm.com>
> [florian: adjust whilelist location and table to stable-4.9.y]
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>

Thanks for the backport, now applied.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

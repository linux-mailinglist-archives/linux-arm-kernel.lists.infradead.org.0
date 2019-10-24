Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8EFFE2E6C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 12:11:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qwDubYqhRWbgtsLo3hcZ8GNCHddtmjInnum9kE239KM=; b=PgFJkU1DUROXO7
	YqMaUCfdS3Dvz40HejQ9qjtdG/Lm3Y+7MC8KdYR7PDBX8GbgXB+RgKkU66miGPwryh7Wo7tE1yl0c
	k2+cqMg7K987Elp69H07Vo202I38Py+KGLn0hMiO87yVPkeqk40gZl7eaJuPnffK+oyjbp6hDn6Zu
	+hytRKytP0oHDHCGEE19qWlwFDSWIhxqn9VYO23sXLryRheRITjsHOVBIk8ylucTIir32XYN1ZAxa
	c9RfR7oWU46hd4OqTVczntcP8dXLLFwAYNuEirnuCFkTJYh4MHtjehh/wIohX/JrvgDdS50jQZuPG
	UMHYwU60osTiwpgaD2SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNa5Y-0003kO-Bw; Thu, 24 Oct 2019 10:11:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNa5O-0003it-Rh
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 10:11:20 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9DD4220663;
 Thu, 24 Oct 2019 10:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571911875;
 bh=GAzI7AKx+PVpncoO4UpmIj72JX3lG6ATmQS41JBBfo8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CmQeDlN5UKYqL60qRwfWxqb2yPoqvTUrB7TZwgbqgA92gssG6Sux49TbrK7JKQoRc
 XUosd5V/6zjNqbpUVw6TWvzsa1ccl5aAu3DGNYeaJo9p/YoW2JvKBmujZZ6dAE0kMX
 CISQDFp3/fX2LK7yhHqjsrXMLkPGycywZl8QTALw=
Date: Thu, 24 Oct 2019 11:11:10 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] arm64: docs: cpu-feature-registers: Document
 ID_AA64PFR1_EL1
Message-ID: <20191024101110.GA1242@willie-the-truck>
References: <20191023175222.24688-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023175222.24688-1-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_031118_916825_C677F2D5 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 06:52:22PM +0100, Mark Brown wrote:
> From: Dave Martin <Dave.Martin@arm.com>
> 
> Commit d71be2b6c0e1 ("arm64: cpufeature: Detect SSBS and advertise
> to userspace") exposes ID_AA64PFR1_EL1 to userspace, but didn't
> update the documentation to match.
> 
> Add it.
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
> 
> This was posted by Dave as part of the BTI series as it's a dependency
> for that but it's a standalone fix so reposting it separately so it
> doesn't get tied up with the review of the wider series - AIUI there are
> be some other versions of this in flight but whatever gets merged it
> seems useful for other work so it'd be good to do so.

Do you know what the other versions of this are? I couldn't figure it out
from Dave's original posting. Either way:

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D94CB86D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 12:37:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2T4Nd8IZS2FaxilTcu5idzi+w5qb1t416UhqaFghe9U=; b=A40wSaSRauCt3Q
	hUR3V0mmMptxq0i/WWKn2EKkA5rrITNIu71st99V4O0N8fmI9y/k8VMNgixyz2Q8f4jMmEWD2su7Z
	UvKe6FmBQHElybXlEt295wrjq1qXttY+r57o9tFR5AFP1MjjcC4q7cXeIAwXqvm5EmtMxwhrw/oFx
	mblyb949DMF8RIFzGCUulBTW0UOwtm31StsF15+ynt/fvs/HD5srBRtGe7SZn70IBKyT+zBfup3IZ
	7D+3DG+Zb4HFGenm6rCvbcvlBDFhPxVcA3sklV/x1ZeTZPzUvQW7QFQIv70Dvp/itIuNMxHzKpAXz
	RGWj5ETTvRmfc/UpY3/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGKxI-0000RV-Sj; Fri, 04 Oct 2019 10:37:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGKwv-0000HJ-IA
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 10:36:46 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E54D7215EA;
 Fri,  4 Oct 2019 10:36:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570185397;
 bh=rIudrNGjah/L0Jg56io6hWVEojz5fibU2TXQSNQLG4o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=deaqYMTwHkkS2pcpxPp6MFDeoZRdg1jAMQ9Ks/PvvG1SgrOnSpZXaPIZ/Mqz4/4sR
 53IbgRYk+B2YUlGXEhB6eQ6ogJKcC1flrwRXbnWHkxfnkQJtnHFRTCVURWPxdpbOZx
 O75aUjUg8u3hpJbhbvfoNQ2ML68N6uqDP4I7T99A=
Date: Fri, 4 Oct 2019 11:36:33 +0100
From: Will Deacon <will@kernel.org>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [PATCH 1/4] arm64: cpufeature: Effectively expose FRINT
 capability to userspace
Message-ID: <20191004103632.lnkyxq2h2owdf7c4@willie-the-truck>
References: <20191003111211.483-1-julien.grall@arm.com>
 <20191003111211.483-2-julien.grall@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191003111211.483-2-julien.grall@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_033637_748480_03F91D42 
X-CRM114-Status: GOOD (  15.55  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: catalin.marinas@arm.com, mark.brown@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 03, 2019 at 12:12:08PM +0100, Julien Grall wrote:
> The HWCAP framework will detect a new capability based on the sanitized
> version of the ID registers.
> 
> Sanitization is based on a whitelist, so any field not described will end
> up to be zeroed.
> 
> At the moment, ID_AA64ISAR1_EL1.FRINTTS is not described in
> ftr_id_aa64isar1. This means the field will be zeroed and therefore the
> userspace will not be able to see the HWCAP even if the hardware
> supports the feature.
> 
> This can be fixed by describing the field in ftr_id_aa64isar1.
> 
> Fixes: ca9503fc9e98 ("arm64: Expose FRINT capabilities to userspace")
> Signed-off-by: Julien Grall <julien.grall@arm.com>
> Cc: mark.brown@arm.com
> ---
>  arch/arm64/kernel/cpufeature.c | 1 +
>  1 file changed, 1 insertion(+)

D'oh, we should've caught this in testing. Queued as a fix.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

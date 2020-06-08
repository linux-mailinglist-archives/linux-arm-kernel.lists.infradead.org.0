Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF341F1464
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 10:19:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=69y0vr5Rs3TGtVpGp+jTWvo0Ll99Ttb6N4yApx9WV8k=; b=N9UT9dSqWsFGgd
	jnGRp2W3+o8tijs7V46hrQC85k2/Ce2kQuB+GEdYp9Ul6yRNJAfba9rED+qet3PA/SnTTrr+kwm/0
	qY7FSEceRl02rh7HVgGFzn3Vj8g5YBK0aM8PAvBh6ewbciTkqe2Wql1jGbrCCn6qKt3hwOaQbPxrZ
	YPxv/Kh3OjcU9LpTXAUHCSTgz11hTF3xPZ+/3TB7cVbZKPTf03yNbYuQA+pce2QD7XuAwfebSa+6X
	zmWM6gug33je4QTb2FI9ZY6GJlhGDx8wZVkA7vJW20h8vsrl3bWOmXZIS50hVNKBopOOgZ+F58ytr
	3VrEQPtYCHVnz8lcCmHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiCzl-0002uL-OY; Mon, 08 Jun 2020 08:19:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiCzd-0002th-RQ
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 08:18:55 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 86E3A20656;
 Mon,  8 Jun 2020 08:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591604331;
 bh=/IVx+9cPa/hdjtqn+bLeDhAxS+2dke/9caQWfUasXMg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nX2kx0ZJvQ6eZb5gFid2h2iyefJIxDMhLvhqHQ4r8PSN5juMtyzG6Rk24zGvO1Rsy
 YWYrlfUa7aCsUXURPJMHFxn4msfRGLefqDnBmBLqgQrVlSjZWwHAIHDjTXHV99AK/q
 dYwj7VLYrifpUdMj+buPBiepFMcBy74p2nfhMrh0=
Date: Mon, 8 Jun 2020 09:18:46 +0100
From: Will Deacon <will@kernel.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [RFC PATCH] iommu/arm-smmu: Remove shutdown callback
Message-ID: <20200608081846.GA1542@willie-the-truck>
References: <20200607110918.1733-1-saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200607110918.1733-1-saiprakash.ranjan@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_011853_907482_980D92ED 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 07, 2020 at 04:39:18PM +0530, Sai Prakash Ranjan wrote:
> Remove SMMU shutdown callback since it seems to cause more
> problems than benefits. With this callback, we need to make
> sure that all clients/consumers of SMMU do not perform any
> DMA activity once the SMMU is shutdown and translation is
> disabled. In other words we need to add shutdown callbacks
> for all those clients to make sure they do not perform any
> DMA or else we see all kinds of weird crashes during reboot
> or shutdown. This is clearly not scalable as the number of
> clients of SMMU would vary across SoCs and we would need to
> add shutdown callbacks to almost all drivers eventually.
> This callback was added for kexec usecase where it was known
> to cause memory corruptions when SMMU was not shutdown but
> that does not directly relate to SMMU because the memory
> corruption could be because of the client of SMMU which is
> not shutdown properly before booting into new kernel. So in
> that case, we need to identify the client of SMMU causing
> the memory corruption and add appropriate shutdown callback
> to the client rather than to the SMMU.
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>  drivers/iommu/arm-smmu-v3.c | 6 ------
>  drivers/iommu/arm-smmu.c    | 6 ------
>  2 files changed, 12 deletions(-)

This feels like a giant bodge to me and I think that any driver which
continues to perform DMA after its ->shutdown() function has been invoked
is buggy. Wouldn't that cause problems with kexec(), for example?

There's a clear shutdown dependency ordering, where the clients of the
SMMU need to shutdown before the SMMU itself, but that's not really
the SMMU driver's problem to solve.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C13DA7A1A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 06:42:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YNYXYLvbl/J6DXleNLApqYzuHo9ygB3AShp5H1ZtWmU=; b=TyAkAsV0ZaviZl
	wdiz3ZoPWj2UYCTLarn/SEGG9LxLDeQufr7iwbhr/Piu1kRETqXhPPJiJ+ri/AHoPjz1S9ig0ikKI
	IL56kwTAjXaMDHne1gzXAwA8j3oPHGWYvwDGJyJqCFx3Ldkog5me2C7Q59rpk0GkgpILu2WTC9fug
	46eHH6bxQfokPutrzo1WGXlqB4D1MGtzIMydEwoFQ/9c5eQD6GFMgM2IS8nlh196cVUi5p52rmzzp
	oGuxPb5ubQXQH+iq0zHyDpWctU/UOYc0LJxqoUL0qBHI5dzi1Dzq7F7598TWA09OEk6YRAZbIhGxI
	iYKmpntWHbE/05KQpRHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5N7P-0002Uk-8A; Wed, 04 Sep 2019 04:42:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5N7D-0002UO-Rl
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 04:41:56 +0000
Received: from localhost (unknown [122.182.201.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8A30022CED;
 Wed,  4 Sep 2019 04:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567572115;
 bh=Y3SgjdI4eTUWwvUoaem0J4TTnC5iUZrRH8WOPdvvpp0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qprynB9AGH9qA25g6oG7NVhLbnrtnuUd3wQ1EMSI6lTWdifZYUGC9P3+PjwcyAzSu
 z8wlY3zIdNXnYsOFfey3c4ZnxLVsFqh80Rv1zs2BfYzUIk6YuXc3OwwSehoNCBA1DW
 zvPPY7JU5f6UyvCB0erYVoO1bbRwBb3khRt6rrjM=
Date: Wed, 4 Sep 2019 10:10:47 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH] dmaengine: ti: omap-dma: Remove 'Assignment in if
 condition'
Message-ID: <20190904044047.GT2672@vkoul-mobl>
References: <20190730132015.2863-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730132015.2863-1-peter.ujfalusi@ti.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_214155_920750_9DCBF4CC 
X-CRM114-Status: UNSURE (   6.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30-07-19, 16:20, Peter Ujfalusi wrote:
> While the compiler does not have problem with how it is implemented,
> checkpatch does give en ERROR for this arrangement.

Applied, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

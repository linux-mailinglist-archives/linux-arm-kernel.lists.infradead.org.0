Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0C7246F6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 06:39:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9cC1JZlQHQBrv6SF876WvHO1la67CSxzTQLoPcv5XIQ=; b=OMcnZgf+4zGOZa
	kDP7LHe+0tbYSfDcqIUxsC4DD1UV+5sbOM5BC9ER0N9xvQSlWUFGuLrYNpXGIC1DbzA6LvJg1PL+6
	djvaIjo6pRgKBdnRktsGFr6y2DGZmiTdHNsN4lI3vHROY8jKauLdjFtc/WxbNnjj1y3cZWZMCVAvq
	9E/p0q1pm86zaLJng7Jhjxj4kySKkRIlZuUA7evaPF5JCOWuHqOvf7UIEDUc4bFKHIPm1V8l7mxtP
	nbHrxUlZXBvjh8gSqeV0n9Z3TB4umnuOO1mho3CUJfxd5K3Di9AcF+k5H0haUsQ1GBqk+GW0Ux4Yk
	oHIISIUOhUEocc+ZPK1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSwYy-0008N4-Nl; Tue, 21 May 2019 04:39:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSwYr-0008Mk-I5
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 04:39:38 +0000
Received: from localhost (unknown [106.201.107.13])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9148421743;
 Tue, 21 May 2019 04:39:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558413577;
 bh=H7+dKgf9U1QiGInh5iVvhafZtmO+M7kgnQMPzeqYjo0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KeQBu1tCKZLQG+03G9UbFYtHR9NW57lVMYWf7MPGLME2MSubFvEPCE14TsGk1cspd
 UGbdrXn/HEK1itT+UUVcGh51pJ9CQTO1Po6yIQ023X1hX8fVV4TgjPlB1mw5rCY31s
 hiUQ5/0VdmXfoL2hngULJKfmlbitS2/7OvEhCrQs=
Date: Tue, 21 May 2019 10:09:33 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Amelie Delaunay <amelie.delaunay@st.com>
Subject: Re: [PATCH] dmaengine: stm32-dma: Fix redundant call to
 platform_get_irq
Message-ID: <20190521043933.GO15118@vkoul-mobl>
References: <1557215681-18541-1-git-send-email-amelie.delaunay@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557215681-18541-1-git-send-email-amelie.delaunay@st.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_213937_611311_B081543C 
X-CRM114-Status: UNSURE (   7.61  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07-05-19, 09:54, Amelie Delaunay wrote:
> Commit c6504be53972 ("dmaengine: stm32-dma: Fix unsigned variable compared
> with zero") duplicated the call to platform_get_irq.
> So remove the first call to platform_get_irq.

Applied, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

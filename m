Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A43AA7A78
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 06:56:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cQzZIhvf1NSBagVUqES1QmoqVVTaCW1mDSx5dFCz5Fs=; b=R87gEr9bfdpABe
	oHVrpszdtqHot1ymMKXs2m9rYJ8zyzQD1ritTvxPr5V237ScknFEHLPdRlZCNid1kkQPtA1Z+tlVv
	+7e9T1f/UME8zKAa8UMvD240Iy4gWtqfESIQWSupg4NWF8xq9VYtok96nl+LzLuZvpYdwTCGtKFfS
	TXQCMpnuR3CC+tleXZ2gWxxdrHiThZ5fU8Ow5JwMMbyPAYNIBPZHeeJH43dSQAp4g4f+IUM4CLvbX
	OWLzuVvm84UObqzCQYAVATJ/VM/PI/nXar7gB7wyprPVOT0Ez4jpQBl/sA9cHkBVpdp16WTMg9HC7
	yKGnRxwWA+ryL7waFsIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5NLU-0007Ep-LA; Wed, 04 Sep 2019 04:56:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5NLH-0007EN-TN
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 04:56:29 +0000
Received: from localhost (unknown [122.182.201.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A4AB12077B;
 Wed,  4 Sep 2019 04:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567572987;
 bh=xkQZikYEyY3c7L/C+i3x3dyZJTWQdFUTYOzei9xlyQk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Qru4PME1plSqZSD3Y0yICIVW9mG8C6MIOggnFtQeOImhWC+FBN6IDZmu3YNXSXfsp
 /CtM4d+VWQw/4xbdRL1f5E/kqn+X8vqamBF55CBzDkJAaWkH6pNZU4tRZd+X+E6DqX
 V7Xgvu0JOuirnwEN3Hsu9poD7z85dNhWmTT4l4mg=
Date: Wed, 4 Sep 2019 10:25:19 +0530
From: Vinod Koul <vkoul@kernel.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH] dmaengine: stm32-dma: Use struct_size() helper
Message-ID: <20190904045519.GZ2672@vkoul-mobl>
References: <20190830161423.GA3483@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830161423.GA3483@embeddedor>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_215627_974658_18D797BE 
X-CRM114-Status: GOOD (  11.03  )
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30-08-19, 11:14, Gustavo A. R. Silva wrote:
> One of the more common cases of allocation size calculations is finding
> the size of a structure that has a zero-sized array at the end, along
> with memory for some number of elements for that array. For example:
> 
> struct stm32_dma_desc {
> 	...
>         struct stm32_dma_sg_req sg_req[];
> };
> 
> 
> Make use of the struct_size() helper instead of an open-coded version
> in order to avoid any potential type mistakes.
> 
> So, replace the following function:
> 
> static struct stm32_dma_desc *stm32_dma_alloc_desc(u32 num_sgs)
> {
>        return kzalloc(sizeof(struct stm32_dma_desc) +
>                       sizeof(struct stm32_dma_sg_req) * num_sgs, GFP_NOWAIT);
> }
> 
> with:
> 
> kzalloc(struct_size(desc, sg_req, num_sgs), GFP_NOWAIT)
> 
> This code was detected with the help of Coccinelle.

Applied, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25852154538
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 14:45:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iaCH06IsUgaf+xqibieZbXj+BC2wFl0kyNeCBmThX38=; b=JnuxYxFULjOkQL
	K5g4+5e8CZWEiCWldMHYkrdLWBaxc2632EuZaa1+CJx7zoxqn/aUTosrgNP6ylITpUoDLzME2Hd5s
	meYG0Nmlyg7kPnjKFa+9B/7PZsyvl/rWLTu3ZgqjQBFSwkv22TNlb94X/tit7SyyhlpWXorlf8EGZ
	lYJSc6DL/tItMsT22wAkF2Z/+jZBHtgA6j2u3yZXVvHDm50SVBSARUixKTwYsngKPNM8r1KqbIy4b
	QbqnHVwZqRnZ/qQn1eqYvUjMLbMev+C3bVYNbyyk76QPOZzZVgPRxDoVTBncTTAEA4Iy84Wuxmj88
	XeON/8PfZL1h0r8upimA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izhTU-0002Jf-Ir; Thu, 06 Feb 2020 13:45:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izhTL-0002IX-Aa
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 13:45:36 +0000
Received: from localhost (unknown [122.178.198.215])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DC66521775;
 Thu,  6 Feb 2020 13:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580996734;
 bh=21B1htHlSXP+EtSU9SC4zC69SofeXvGLzj2qSGbg6VA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Tlwz94dY/S6h58vaVEkN+y235uq3TjML3gxqp6SJtVBoSAknq3GnQuw3EEuvrPuzl
 k0/FZIoXE1a7Dgl0VfvfAcX5sgo0UhNS4+BMYhgUS6os2SJyoE4k9CM4ctBh+dERXF
 VvzrVuMB841uk/o/zxU59YNS3srmNGn9Yoj/kXmA=
Date: Thu, 6 Feb 2020 19:15:30 +0530
From: Vinod Koul <vkoul@kernel.org>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH] net: stmmac: fix a possible endless loop
Message-ID: <20200206134530.GP2618@vkoul-mobl>
References: <20200206132147.22874-1-zhengdejin5@gmail.com>
 <20200206133554.GO2618@vkoul-mobl>
 <20200206.143753.1516354381077365451.davem@davemloft.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200206.143753.1516354381077365451.davem@davemloft.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_054535_382509_C9176D09 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alexandre.torgue@st.com, zhengdejin5@gmail.com,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 netdev@vger.kernel.org, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06-02-20, 14:37, David Miller wrote:
> > 
> > Also, I think this should be CCed stable
> 
> Networking patches do not CC: stable, I queued them up myself manually.
> 
> Please read the netdev FAQ under Documentation/ for details.

Oops sorry I forgot about that part.

Thanks
-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

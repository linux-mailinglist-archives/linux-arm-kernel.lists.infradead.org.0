Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2411AAD3C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 18:18:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wc4+Aktqgn0eHtOH41iC3q7xwOTWY7WVD/XDssabiPs=; b=jCbVq5/olCx/jy
	jl3CugRAyVHoayCPPIz9gsmNuTtkNsFeVk6VYMhobWRUC07PbiVwgOQDsrKtoQrYAyuD6ZGVLNov5
	5DWTrK08R76Z2nZ4gLVVgXq1xktMfRFTWyA8IevzxAjPxAJL+srjdZJRD8pc46+dx+pE+tcLdYFi8
	ezURONRaRQWvDcSVPmDVCUPNeo7KLKuNw4yguYB808sBCPu1nqchbcZuA1K0FDGBL6bkzeWhrjMUY
	qNV7jvOrFmLC2NhSQytsLHb8c7QZUzjOKQUVIADY/ib4+kCMijrUQXfv3h8Y7pUTCPvOly+fD01/n
	T+Oj7suqwUBaz+MpJYiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOkjg-0004Og-J3; Wed, 15 Apr 2020 16:18:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOkjW-0004O4-Id
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 16:17:52 +0000
Received: from localhost (unknown [106.201.106.187])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EBD3120656;
 Wed, 15 Apr 2020 16:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586967470;
 bh=zP3lZ8cIaF1xN3mOhhjx+SXGY2uwLZfMaLq+cugMpB0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gUWW7cntAUTAnTbxd/cZ2tr4jipCWJRHbreDzAm/RrO6G0pC0G0fkjNsc7VZv3zEQ
 orfWsfIwk65UF8ptT7MIcEnP662Df60Na1D5U4Iame0Cg/inAMto6HOojbRnZmaGoT
 smTtPa5RDe4yS9gEKhO5dkvLL8IRFkxpRAo+K4Cs=
Date: Wed, 15 Apr 2020 21:47:39 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] dt-bindings: dma: uniphier-xdmac: switch to single reg
 region
Message-ID: <20200415161739.GA72691@vkoul-mobl>
References: <20200401032150.19767-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401032150.19767-1-yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_091750_995490_63CEEB70 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01-04-20, 12:21, Masahiro Yamada wrote:
> The reg in the example "<0x5fc10000 0x1000>, <0x5fc20000 0x800>"
> is wrong. The register region of this controller is much smaller,
> and there is no other hardware register interleaved. There is no
> good reason to split it into two regions.
> 
> Just use a single, contiguous register region.
> 
> While I am here, I made the 'dma-channels' property mandatory because
> otherwise there is no way to determine the number of the channels.
> 
> Please note the original binding was merged recently. Since there
> is no user yet, this change has no actual impact.

Applied, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

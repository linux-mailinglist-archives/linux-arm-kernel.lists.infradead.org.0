Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC0E84AF5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 13:46:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=u7cRQMK3LBBUVWv4P+6fzycjsb/idI0mGL+HTZwX54g=; b=EWZb5MzbmaXwKt4CoK/JheQSz
	otvjq/ZjvvoMUInU5r21GQekfucEU/SUyPTN9AbwybTWBDaIVm0Zs4mYBk82H/j0S6uuIeXF1ad6h
	h3vDhuT1epkbg7EflY3Dqey82q42wy6EkNqj2wZvnyXdGIf+cd/Pgz/OIUKhufBYHeqPWUQRVQdii
	O6tELHVEQettAruMJvyRqbQk/eC5iqPLFyoCKJ2rbtf3vsczQ3AWU5fzDbv2itNrFBTHUnqHGrFY6
	ZmWxQHcKTClfUcwcxawh2+lERS1k4ekLoHhPETXIj9B9VAN9kvsaEYJPNGQ+2URZog7gu7HlcWaeZ
	vfIawKCDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvKOg-0006kz-57; Wed, 07 Aug 2019 11:46:26 +0000
Received: from alpha.anastas.io ([104.248.188.109])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvKOH-0006jZ-Nk
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 11:46:03 +0000
Received: from authenticated-user (alpha.anastas.io [104.248.188.109])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by alpha.anastas.io (Postfix) with ESMTPSA id 4E68D7F6C7;
 Wed,  7 Aug 2019 06:45:56 -0500 (CDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=anastas.io; s=mail;
 t=1565178359; bh=446J/ks+11OkveMVUDF0cNPnmfj1n92jZbU24O7P9/w=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=hP9u2rSZ2plqV7LSihnZ4KMQVILfq7Ta2sV8HqIs1xbk2MqAhVpRJ6umqGgci1XIw
 hvh77x7f8n37Psb6kp4uuHgh1P6AfAITszpAvWuCtCDloHJlE5k+uWk9f/dQej3UDU
 qMHsetLafrL3ESTZBFd89wh1+uVXTW3/D3TX+Bpwv2+kSdwrkuePe9f0Clec/3r7iH
 7yIC+pqI+WIPPbX9PsepRnRJZLc921VqOzBwDqsh6FmLCalWwMFybFzndKvL3JEuXi
 5dqTaMkGqM4FXMkjra5WMd5s7geBuqsT9BcRdnx5ncHjHaUtqJtFLGYWb97FotCml5
 CVyfcDxoPGXew==
Subject: Re: [PATCH 1/2] dma-mapping: fix page attributes for dma_mmap_*
To: Christoph Hellwig <hch@lst.de>
References: <20190805080145.5694-1-hch@lst.de>
 <20190805080145.5694-2-hch@lst.de>
 <7df95ffb-6df3-b118-284c-ee32cad81199@anastas.io>
 <20190807060432.GD6627@lst.de>
From: Shawn Anastasio <shawn@anastas.io>
Message-ID: <765a7f25-0e3d-3edc-3f6d-9a17e2379253@anastas.io>
Date: Wed, 7 Aug 2019 13:45:51 +0200
MIME-Version: 1.0
In-Reply-To: <20190807060432.GD6627@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_044601_796886_BA7604E3 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Gavin Li <git@thegavinli.com>, linux-kernel@vger.kernel.org,
 Will Deacon <will@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 linuxppc-dev@lists.ozlabs.org, Russell King <linux@armlinux.org.uk>,
 linux-mips@vger.kernel.org, iommu@lists.linux-foundation.org,
 Paul Burton <paul.burton@mips.com>, Catalin Marinas <catalin.marinas@arm.com>,
 James Hogan <jhogan@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/7/19 8:04 AM, Christoph Hellwig wrote:
> Actually it is typical modern Linux style to just provide a prototype
> and then use "if (IS_ENABLED(CONFIG_FOO))" to guard the call(s) to it.

I see.

>> Also, like Will mentioned earlier, the function name isn't entirely
>> accurate anymore. I second the suggestion of using something like
>> arch_dma_noncoherent_pgprot().
> 
> As mentioned I plan to remove arch_dma_mmap_pgprot for 5.4, so I'd
> rather avoid churn for the short period of time.

Yeah, fair enough.

>> As for your idea of defining
>> pgprot_dmacoherent for all architectures as
>>
>> #ifndef pgprot_dmacoherent
>> #define pgprot_dmacoherent pgprot_noncached
>> #endif
>>
>> I think that the name here is kind of misleading too, since this
>> definition will only be used when there is no support for proper
>> DMA coherency.
> 
> Do you have a suggestion for a better name?  I'm pretty bad at naming,
> so just reusing the arm name seemed like a good way to avoid having
> to make naming decisions myself.

Good question. Perhaps something like `pgprot_dmacoherent_fallback`
would better convey that this is only used for devices that don't
support DMA coherency? Or maybe `pgprot_dma_noncoherent`?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

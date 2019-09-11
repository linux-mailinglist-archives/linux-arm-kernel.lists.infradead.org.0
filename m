Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A4FB017B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 18:20:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7u8+nAfq5xMroYAEWVcoRIh4NSMtuToRncawcGW22EI=; b=cJQ/0/AGUeDwMy
	QKj0sHV/JTF3LoLCeAh30g90kAGdAs2kFnUBA3GaQhXZebIwYFTraMu2v6JSEjL1t5uOJ8H3zuiil
	0RMkkw9+xJ8huNpg5KInxDOAQahK2FbtmXlp3PGaoUva1QejcqGCa4kqnDm/rpU1U5yc9aaOFOYgP
	KCeQkkhAYVLn7b7kSgkWcknn/flHxMAjZXxuBGpw1oS9jbath4d5Kr7gZEda0NbpYhtx06dJBekhL
	AP/D7MUE92WnSUwQrN7GpI2gJLJtc/sXVvzO6ZVOHDM8J6ktTRkzokSRfGJn+htEhHRfN3nXtge9N
	SyMT+xbiqdFRbO2wiWNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i85MP-00007i-Iu; Wed, 11 Sep 2019 16:20:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i85M8-00007A-FS
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 16:20:33 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 52C712075C;
 Wed, 11 Sep 2019 16:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568218830;
 bh=ML9CagDnoV24dH/liU+tAV3aws+Mfn1OHAlc/UJ+x0g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YL25Ni2zh9FTQ3GoCsbQsOR1W3iZd/tbahynfMIKv17ojfj8LQb99yqPIyiZhhJ0H
 4AERf6MS5IOX0xMaMu9mdyGGrJbZf9jbKyVbvjtQ2ALBDeN97EjAexI1toVw2tHMzW
 Au3jP/SJp7uqBKxhElR/0lFix5x/gvzJprHWiX/8=
Date: Wed, 11 Sep 2019 17:20:25 +0100
From: Will Deacon <will@kernel.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 0/3] iommu/io-pgtable-arm: Mali LPAE improvements
Message-ID: <20190911162024.i2sda7uzy3pbrnyd@willie-the-truck>
References: <cover.1568211045.git.robin.murphy@arm.com>
 <d77047c2-1f16-eded-17ba-7463310d4bba@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d77047c2-1f16-eded-17ba-7463310d4bba@baylibre.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_092032_542886_1618DBD2 
X-CRM114-Status: GOOD (  15.43  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: robh@kernel.org, tomeu.vizoso@collabora.com, joro@8bytes.org,
 steven.price@arm.com, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 06:19:04PM +0200, Neil Armstrong wrote:
> On 11/09/2019 16:42, Robin Murphy wrote:
> > Here's the eagerly-awaited fix to unblock T720/T820, plus a couple of
> > other bits that I've collected so far. I'm not considering this as
> > 5.3 fixes material, but it would be nice if there's any chance still
> > to sneak it into 5.4.
> > 
> > Robin.
> > 
> > 
> > Robin Murphy (3):
> >   iommu/io-pgtable-arm: Correct Mali attributes
> >   iommu/io-pgtable-arm: Support more Mali configurations
> >   iommu/io-pgtable-arm: Allow coherent walks for Mali
> > 
> >  drivers/iommu/io-pgtable-arm.c | 61 ++++++++++++++++++++++++++--------
> >  1 file changed, 48 insertions(+), 13 deletions(-)
> > 
> 
> Tested-by: Neil Armstrong <narmstrong@baylibre.com>
> 
> On Khadas VIM2 (Amlogic S912) with T820 Mali GPU
> 
> I hope this will be part of v5.4 so we can run panfrost on vanilla v5.4 !

Not a chance -- the merge window opens on Monday and -next isn't being
rolled out at the moment due to LPC. Let's shoot for 5.5 and get this
queued up in a few weeks.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

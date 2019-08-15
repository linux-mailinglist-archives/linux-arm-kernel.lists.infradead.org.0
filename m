Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 642DF8E833
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 11:26:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f3PQVwBPGjFvZNOOdY7ukTjxNbQd4cBfMoEgmimFQ2M=; b=IUSJ3c3tEI3pmT
	4eu3VA0GobttHQWT6gZkVy0TF8+t7VIxLtL0yaYEJMI952o7l/js3yHiasPTyraXagGPnXVrOoEUn
	H+lAUVLQ8A4tNU1Zbgv+UgrNmOFOSoBDo7b6+WlL2xV1lCIJB8EIQ9hdaF1mvTKIiPe/77avqAJWD
	ZkYN3YhBzVHvaWrcn04E9gYxmhS52A522xs90a/SPPKfapMi0xQHOHZ+GmWzrD2YwvyGOHZWV5IW7
	FRZ7Ee5hwtFcQahzTov8lMAIMABanfxJWcrh/A9G1YkDqoFyhgpY814RvQGRIS3gE11CQSvXCrzvF
	52xCLe6i+dCIPEq7rH0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyC1j-0006Ef-8R; Thu, 15 Aug 2019 09:26:35 +0000
Received: from bedivere.hansenpartnership.com ([66.63.167.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyC1P-0006DS-Do
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 09:26:16 +0000
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id 8AEBC8EE1FB;
 Thu, 15 Aug 2019 02:26:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1565861165;
 bh=ChiJO460CwqJr6bCz/k4RtKNXSI3O1ZZt8g3+Id8X0Q=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=txS1ipMiR7CUHSlUoHY7Yr340RD45sludbWwlFZbAST/wJTgB93X+NH4hXMHmM+sf
 fNgzpuZSnLQC7esRTxpsajyQxQCp08OzyfabL7vdCWupMwcui8U+xdDnveqEPNhWv9
 Z8o5cDslbreqbUwKWCvykOv3uCBIKZbKtc9/CFHc=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id xdeaREgeheqG; Thu, 15 Aug 2019 02:26:04 -0700 (PDT)
Received: from [192.168.1.74] (host31-48-63-146.range31-48.btcentralplus.com
 [31.48.63.146])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 68D8F8EE0BF;
 Thu, 15 Aug 2019 02:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1565861164;
 bh=ChiJO460CwqJr6bCz/k4RtKNXSI3O1ZZt8g3+Id8X0Q=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=OlWfXIG7zOd1sAz8WOHgBIsq+CjD6O6sa7mniwoVsb5xfY6YsyfecX180meWmNBEE
 AScnlELkp6geKt+seKwyCwqWGyxc9X+k5anMN1Vuga1ATt8Sq1gJxaFt33pFzZ4vBU
 rFECwrGGAhoFxx6qCn0IkP2mtfuU8za0Eta3XNl4=
Message-ID: <1565861152.2963.7.camel@HansenPartnership.com>
Subject: Re: [PATCH 7/8] parisc: don't set ARCH_NO_COHERENT_DMA_MMAP
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Christoph Hellwig <hch@lst.de>, iommu@lists.linux-foundation.org, Marek
 Szyprowski <m.szyprowski@samsung.com>
Date: Thu, 15 Aug 2019 10:25:52 +0100
In-Reply-To: <20190808160005.10325-8-hch@lst.de>
References: <20190808160005.10325-1-hch@lst.de>
 <20190808160005.10325-8-hch@lst.de>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_022615_479184_82B6DCA5 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [66.63.167.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-xtensa@linux-xtensa.org, Michal Simek <monstr@monstr.eu>,
 Vladimir Murzin <vladimir.murzin@arm.com>, linux-parisc@vger.kernel.org,
 linux-sh@vger.kernel.org, Takashi Iwai <tiwai@suse.de>,
 linuxppc-dev@lists.ozlabs.org, Helge Deller <deller@gmx.de>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-08-08 at 19:00 +0300, Christoph Hellwig wrote:
> parisc is the only architecture that sets ARCH_NO_COHERENT_DMA_MMAP
> when an MMU is enabled.  AFAIK this is because parisc CPUs use VIVT
> caches,

We're actually VIPT but the same principle applies.

>  which means exporting normally cachable memory to userspace is
> relatively dangrous due to cache aliasing.
> 
> But normally cachable memory is only allocated by dma_alloc_coherent
> on parisc when using the sba_iommu or ccio_iommu drivers, so just
> remove the .mmap implementation for them so that we don't have to set
> ARCH_NO_COHERENT_DMA_MMAP, which I plan to get rid of.

So I don't think this is quite right.  We have three architectural
variants essentially (hidden behind about 12 cpu types):

   1. pa70xx: These can't turn off page caching, so they were the non
      coherent problem case
   2. pa71xx: These can manufacture coherent memory simply by turning off
      the cache on a per page basis
   3. pa8xxx: these have a full cache flush coherence mechanism.

(I might have this slightly wrong: I vaguely remember the pa71xxlc
variants have some weird cache quirks for DMA as well)

So I think pa70xx we can't mmap.  pa71xx we can provided we mark the
page as uncached ... which should already have happened in the allocate
and pa8xxx which can always mmap dma memory without any special tricks.

James


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

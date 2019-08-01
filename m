Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05ACD7E214
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 20:17:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/v/+Pq6Q721T9CUssX89eFytKLK9IjKVSMwWNLO+Uc=; b=kysAHxteFbgxdP
	KbHW3MIF5biba7ZGu8vfJXi89eMQoJprlOO2cVevIZAQi4Pz2YAWv9zIgjhO2tObEkddTBuPNW1Ta
	JcWrRYRouU3+ZmGQ2x2E8JTdnRJ6yDxsI6lANkOBWuJAHPJiByvpZu2eyRP4XUufxp9/etx5JAX+C
	pWJOzcRs4OnzbCOR9sDk2fMaTWzYPuJtP45JDTjCQanOfwAeCAw1tLwwjZRCaY0oLDb1qRH3ske15
	LGM2+CdeP4dQqdXaPcVfUxUv7Z9NKoVAVAeiEUkTdtSGQ8a1OiVkNC7OzZgqzuaspuAX12MPHGalM
	mNpsDfOzvFef7/oY9L4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htFe8-0005VJ-Hx; Thu, 01 Aug 2019 18:17:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htFe2-0005Uz-4b
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 18:17:43 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E981620644;
 Thu,  1 Aug 2019 18:17:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564683461;
 bh=4l1pf57jOzIbyw30jv0MCo2zWaHXYdWRS8k2O5a56Sg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JuNW0ilzTYb7PGVpjaqJjjttWeUvfppWQaPJhxiKUxhgwzTGuJrKASKpccK26jmsx
 ZEpp/uAuWQHMVxLIOeFbdPiuHymPaAFTdefAcg1wyDDpzlWW3V4KZaiQKuFHFFCxrD
 yNcusCL7Kj1zG6wjXXf0gVTlv5fWYZ/oaT7sDzaQ=
Date: Thu, 1 Aug 2019 20:17:39 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 0/1] coresight: Fix for v5.3-rc3
Message-ID: <20190801181739.GB5048@kroah.com>
References: <20190801172323.18359-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801172323.18359-1-mathieu.poirier@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_111742_206958_B0449A2D 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 01, 2019 at 11:23:22AM -0600, Mathieu Poirier wrote:
> Good morning Greg,
> 
> Here is a fix I'd like you to consider for this cycle.  Do you think you
> could apply it to driver-core-next rather than char-misc-next?

All of my -next branches are for 5.4-rc1, not 5.3 (i.e. the "next"
kernel).

So either one of them isn't going to matter to you for 5.3-final.

> My current
> coresight branch is based on driver-core-next to pick up Suzuki's
> generic device lookup helpers patchset [1]. Applying it to char-misc-next
> will create two different signature for the same patch, something that
> gives Stephen a hard time when building the linux-next tree.

Why would Suzuki's patch matter for 5.3-final?

> I also think this patch should go in stable but haven't marked it as such since
> it doesn't apply to any of the stable trees.  Once it is part of v5.3 I intend 
> to send a new version of the patch that does apply cleanly to those trees.  Let
> me know if you want me to proceed differently. 
> 
> Thanks,
> Mathieu
> 
> [1]. https://www.spinics.net/lists/dri-devel/msg219674.html
> 
> 
> Suzuki K Poulose (1):
>   coresight: Fix DEBUG_LOCKS_WARN_ON for uninitialized attribute
> 
>  drivers/hwtracing/coresight/coresight-etm-perf.c | 1 +
>  1 file changed, 1 insertion(+)

Why would this patch depend on anything in any of my trees?

totally confused,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

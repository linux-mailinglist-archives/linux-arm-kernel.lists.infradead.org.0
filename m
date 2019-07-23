Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 654CC71548
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 11:35:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aY/7LTOHUYPZJGOXoGj5N0mBKSVnnzV4iaf/yjKhmLQ=; b=Q61GsvCeEY9Ijh
	WejQbJgWRrT27QzdwU/3G5LHpGbLZJtds9IGcLuktKfQwhskzrqo1L9zFbQJQtMdueCaEp7IQntp5
	Zr0e96T0fMz1jBA3jkj/wditz5wQtzq9y+QRZuXKWag8vdR/fHOCV4O0q0/3ZpqpJHiAaj/BTjTnN
	vaqpHtR6CJPw4HyeIvEPNbXOL+nUdgAoTe8YeFR0SNLe8+lD9OBvWNAOD8OH6qBg47ZoPfJHGMkLP
	J2oJcOusvsZTgS+KBoyrsDHPAVStARByJNsxa5gzHq786U0G013Yx/3d0uPKDzW7jkEnM3iFnytEi
	kPk6eiZrUmIATmuHnIgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hprCJ-0004jt-Mq; Tue, 23 Jul 2019 09:35:03 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hprC4-0004it-6I; Tue, 23 Jul 2019 09:34:49 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id AD04B68AFE; Tue, 23 Jul 2019 11:34:42 +0200 (CEST)
Date: Tue, 23 Jul 2019 11:34:42 +0200
From: Christoph Hellwig <hch@lst.de>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH 00/18] ARM: Add minimal Raspberry Pi 4 support
Message-ID: <20190723093442.GA27239@lst.de>
References: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
 <96113adb5fcab9c2f4bb5fa82b84ff5f9c07fd07.camel@suse.de>
 <bc650090-db86-ccac-01dc-23f08ad7b19b@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bc650090-db86-ccac-01dc-23f08ad7b19b@gmx.net>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_023448_379670_E1EE6AFB 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Matthias Brugger <mbrugger@suse.com>, Scott Branden <sbranden@broadcom.com>,
 linux-gpio@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Ray Jui <rjui@broadcom.com>, Linus Walleij <linus.walleij@linaro.org>,
 linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
 Rob Herring <robh+dt@kernel.org>, Christoph Hellwig <hch@lst.de>,
 Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 Michael Turquette <mturquette@baylibre.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 08:10:17PM +0200, Stefan Wahren wrote:
> i rebased this series also and got this only on the RPi 4.
> 
> After reverting the following:
> 
> 79a986721de dma-mapping: remove dma_max_pfn
> 7559d612dff0 mmc: core: let the dma map ops handle bouncing
> 
> This crash disappear, but wifi seems to be still broken.
> 
> Would be nice, if you can investigate further.

That means dma addressing on this system doesn't just work for some
memory, and the mmc bounce buffering was papering over that just for
mmc.  Do you have highmem on this system?  

You might want to try this series, which has been submitted upstream:

http://git.infradead.org/users/hch/misc.git/shortlog/refs/heads/arm-swiotlb

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

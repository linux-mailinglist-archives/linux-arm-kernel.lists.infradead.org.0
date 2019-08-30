Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE386A3400
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 11:30:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pd1jW0BJv3HwvqzMStmIiz5dn2kT+wxNPxrtvxEFP3U=; b=ow1tucIVlPH0lt
	K6Xar3UtPirEteImTCvpjnuYlTbaSJQoaEeuPByEbj8WZlH3WbENjWzOZ4KEHBK6+M75tPuk1wp/R
	CSVdJredpZZN7jFn8N+no/vXzuzMgDpFJ4Nb0cYCeYjaJWbXnhzcPQjsevf9XN0q7m2RZf1272s20
	+1abxy9FDCRU9A6BZ18s7xwhs3FPBY8D2wt3dPXnnN217Fd6c4HPq8TqUpzwEGMyuF/bLMT6doJwC
	M5f1IsbXdP5eRLoHyD4jnvw7rPiGJ++zvkaeIZxUnr0XAzhqgdm+aSoFPGLy6BoT74pqx+KN5X0cu
	y6PszZHgxS5LDNsyt5oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3dEC-0003vA-D6; Fri, 30 Aug 2019 09:29:56 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3dE3-0003u8-69
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 09:29:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iNRAllMjt31eu9zy7JGxTVD30r/pdrKbydJfDQMe+J4=; b=rX91iRiZdjWC6hoEnFRS722J7
 SxkVBjFqteo8x9SyP1WwxzAUhpdtDP6JUGf4YUVNw2FjPQDcLvqhx+qXP7i+yRxS4m1zYftTCD+Lb
 VJPySWDVwhhg/uVPVl6RNAl+Ihny0mGimC9joQ/FwKkq72afk+2brrX+AuRHDeJfksb68IguU1XA8
 X0cZMOtIX5rhG3RxYQy6WgHwMYkgK549LYEMnWnJyiRrvqT8McRuTwpBYQl8Jk6hyWU0Q2JVe+8a9
 ioX8r92Eu0VH22YGnHjJdo54nhCQM5OPDIPnawLCt5RXmAKMVRtoHo/JjoENzGpi68fZkOjv118n6
 Pzpy0EqUQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:35292)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i3dDh-0005xS-IE; Fri, 30 Aug 2019 10:29:25 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i3dDb-0008ON-0E; Fri, 30 Aug 2019 10:29:19 +0100
Date: Fri, 30 Aug 2019 10:29:18 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 1/4] vmalloc: lift the arm flag for coherent mappings to
 common code
Message-ID: <20190830092918.GV13294@shell.armlinux.org.uk>
References: <20190830062924.21714-1-hch@lst.de>
 <20190830062924.21714-2-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830062924.21714-2-hch@lst.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_022947_231256_C75B0BE8 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-xtensa@linux-xtensa.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 08:29:21AM +0200, Christoph Hellwig wrote:
> The arm architecture had a VM_ARM_DMA_CONSISTENT flag to mark DMA
> coherent remapping for a while.  Lift this flag to common code so
> that we can use it generically.  We also check it in the only place
> VM_USERMAP is directly check so that we can entirely replace that
> flag as well (although I'm not even sure why we'd want to allow
> remapping DMA appings, but I'd rather not change behavior).

Good, because if you did change that behaviour, you'd break almost
every ARM framebuffer and cripple ARM audio drivers.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

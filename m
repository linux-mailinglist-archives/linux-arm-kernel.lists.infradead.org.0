Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EDFC8804E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 18:38:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nrD6VZjd3BCyQDekSC1/8C8EsBS/pvVQaGGXR5XgzE4=; b=DuBu0dlgElwQ2A
	3jHI2Znu9jGU8pMES45wr2YaPfSQC/XjwE2Q2pM7qzaDHkZeyWXMRj0w5jWew8j8GgElAfYsdx/UN
	+I0Cm2x6xz2lJPnujL4n3qeqLiJrpGgXNU7eZVG+e+mmWN0i9aO/K4zIEinq8gzqoq+wASeW9QEDP
	ChSUoOn5l6m2pyciREOvAzZ5e5CG4iZB5MB0z/Zu+9hUyGU4Hsqk4O4zHzdVzGVVIYEpxjnhkUvuO
	yOZzjEB/rYYqWIS8dYBk6YuKCzWQ+AtIpLpdlFCcWKy0X/rywjg4rKYc2HtEnaT/7plEAJ4KsndVN
	kzslatMbZYMkaogZXcDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw7uE-0007Rn-9O; Fri, 09 Aug 2019 16:38:18 +0000
Received: from hmm.wantstofly.org ([138.201.34.84] helo=mail.wantstofly.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw7u4-0007RK-MC
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 16:38:10 +0000
Received: by mail.wantstofly.org (Postfix, from userid 1000)
 id 4FABD7F310; Fri,  9 Aug 2019 19:38:03 +0300 (EEST)
Date: Fri, 9 Aug 2019 19:38:03 +0300
From: Lennert Buytenhek <buytenh@wantstofly.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 0/7] ARM: preparation for multiplatform iop32x
Message-ID: <20190809163803.GT2080@wantstofly.org>
References: <20190809162956.488941-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190809162956.488941-1-arnd@arndb.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_093808_878612_11C44C39 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Dave Jiang <dave.jiang@intel.com>, Linus Walleij <linus.walleij@linaro.org>,
 Russell King <linux@armlinux.org.uk>, soc@kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Imre Kaloz <kaloz@openwrt.org>,
 Martin Michlmayr <tbm@cyrius.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 09, 2019 at 06:29:41PM +0200, Arnd Bergmann wrote:

> I'm looking into converting some of the remaining ARMv5
> platforms in arch/arm/ to work together in a single kernel
> binary.
> 
> IOP32x seems to be a fairly easy target for multiplatform
> by itself, but the way the plat-iop code interacts with
> three generations of the code, and how the dma-adma driver
> is configured at compile-time for each version gets in the
> way.
> 
> I considered adding more indirection layers for those two,
> but removing iop33x and iop13xx is much easier in comparison,
> so this is the first approach I'm posting.
> 
> If we conclude that iop33x and iop13xx are indeed not used
> any more, the remaining patches in this series are
> straightforward. The actual multiplatform conversion also
> requires changes to the irqchip driver that are not completely
> mechanic, and we can discuss those after deciding what to do
> with the first set.
> 
> Adding a few people to Cc that historically worked on IOP.

I haven't worked with any of these platforms for many years now,
and I can't really say much about their current use.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

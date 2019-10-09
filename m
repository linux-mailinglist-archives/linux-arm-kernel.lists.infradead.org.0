Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F0ED12DD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 17:35:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G+bl8gKv2wotk6CFfLg7zJbNG//1bRVm7jcEw1cuN5g=; b=ElSazU1TzCRsRd
	uSs+apQa2omJw7M2rVpOxEbPXOBXvVkthQtAhAjKqiZacZVDAvhxqkLAAIX1sRtUcB0JqsJnYFWWI
	l5w0oD5E8nCnyQiJmNn2HWASIEeuAgI9dlobRqsX8hEQk6sy9EslyNQkUHOG0TrhjqfMUx+7O6etX
	L9Xv5qJ7HtsZBOcLJHYozBaKjXI0h0CXuYTxKDx7Ep99mTc2wgdkj61yyKHS+vQtpYNLKXsXb0g9R
	MWWKPWO4R+IzI8Wtc4xrV7kTPPiBLl883/5y6AJbe3UAYCVIomM1RCOZyyWJxXNwfHgZNqoUtj5L/
	/fC/0eBek1kHjU18E19g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIDzy-0008U7-HC; Wed, 09 Oct 2019 15:35:34 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iIDzq-0008Tq-70; Wed, 09 Oct 2019 15:35:26 +0000
Date: Wed, 9 Oct 2019 08:35:26 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Ben Dooks <ben.dooks@codethink.co.uk>
Subject: Re: [PATCH] mvebu: fix __iomem on mvebu_pm_store_armadaxp_bootinfo()
Message-ID: <20191009153526.GB25186@infradead.org>
References: <20191009153342.23789-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009153342.23789-1-ben.dooks@codethink.co.uk>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: linux-kernel@lists.codethink.co.uk, Andrew Lunn <andrew@lunn.ch>,
 Jason Cooper <jason@lakedaemon.net>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 09, 2019 at 04:33:42PM +0100, Ben Dooks wrote:
> The mvebu_pm_store_armadaxp_bootinfo() uses writel to
> store data, so the pointer into it should be __iomem
> annotated. Fixes the following sparse warnings:

Shouldn't this use something like early_ioremap instead of blind casts?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1578B98C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 15:09:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Uy8ZA4GZ3HONKHv/WRrSOl5IOnGqtdQ4mVigeQWqT0=; b=qwapEMxUZm8ljT
	S8F3vbJkrvpTWbs9i3LYPkLJkTwXMLacbNiZxGpwIdF5J3smhGViLyXgqNz3wwHmYjfkPCgeQixly
	RkUWV8UeLRcMEPX7zqaaljj7fozow5TEScNhEbP4DIK1AOVY/30YP9vuT+awLjaHGW1or+VMj4D3j
	NciF1qZe9I+GbO7Hryz6FrTL7OHe1FALBYUb3bQhRJJfh4cLTXk6DlBcC+dOW7ncpuyom1es9obYN
	mR5bPQkWgj2YRE521doAVEFNaWyBY4jMpozrDwNXIAM84sdcTQt7HH8ro0yJ+KfjxGTu8XWngeLGP
	os8Tgqsy+GaIgi2vcvhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxWXv-0005fv-F8; Tue, 13 Aug 2019 13:09:03 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxWXi-0005TE-8q
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 13:08:54 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id DC2FC68B02; Tue, 13 Aug 2019 15:08:44 +0200 (CEST)
Date: Tue, 13 Aug 2019 15:08:44 +0200
From: Christoph Hellwig <hch@lst.de>
To: Mark Brown <broonie@kernel.org>
Subject: Re: next/pending-fixes build: 222 builds: 3 failed, 219 passed, 3
 errors, 425 warnings (v5.3-rc4-185-g260510fdbaa7)
Message-ID: <20190813130844.GA6117@lst.de>
References: <5d52a9c3.1c69fb81.69154.3085@mx.google.com>
 <20190813123740.GD5093@sirena.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813123740.GD5093@sirena.co.uk>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_060852_660174_5A6E9A2B 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-next@vger.kernel.org, kernel-build-reports@lists.linaro.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 01:37:40PM +0100, Mark Brown wrote:
> On Tue, Aug 13, 2019 at 05:14:59AM -0700, kernelci.org bot wrote:
> 
> For the past few days -next has been failing to build configurations
> with LPAE enabled:
> 
> > arm:
> >     axm55xx_defconfig: (gcc-8) FAIL
> >     keystone_defconfig: (gcc-8) FAIL
> >     multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y: (gcc-8) FAIL
> 
> due to errors related to dma_atomic_pool_init()
> 

The commit is completely bogus and slipped into my tree that gets pulled
into linux-next by accident.  It has been dropped already.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

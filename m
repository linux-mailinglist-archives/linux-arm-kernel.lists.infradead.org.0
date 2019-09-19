Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23592B7528
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 10:33:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IakGFkVIjClM7Ntqhe+RAJt+t3ZC37hCb1pehht0HQg=; b=MS+GPSdR1RVdFF
	QmB2FXHKlER05tL0Kd8w+JY2xWyBWnhyflh+UBCSm5lHiuTQ9fr055g59jJDgcNmG9BFv+P5rHRHM
	geHYID7ixDaXAQ2HmtMklqk+JBR+RWpD0auKkzhRHBOSaQWVfCv/RNRsvDkJbdHgnCpTux6ebct7I
	iSC/jmCBHyYPORJKd6TgU2HEJSn3/NZOEBYhJ4Rl293BIF/FLlK2XeMcXT2jNmKpfod/F/dOtS0EO
	biYP75UggtqeIlTvoomJ+HFZCyAoy2gvamv6XCX5PoL9NmLsOCoLKaT1xot1Z3xQojZT5yHPt8jpD
	ORXiCeFU9bWyBQ5zO39A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iArsC-0000ZF-36; Thu, 19 Sep 2019 08:33:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iArpp-0000Vm-D0
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 08:31:04 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DA49821848;
 Thu, 19 Sep 2019 08:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568881840;
 bh=70jWnwAiYRqfqQ+d0aaB2GKnTdunYcF688MZOsueZew=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=s6GQJ1/215lVfM96QTr8ENVVsdKogyfrPhCT0k1PseixGMSoQhEEP1Z/TzuSr84lW
 gN1nLwPC8WIZi5gjT9QGw/bzcwiCQrp3TM5wUyPwngZ3NRuov+zOkwt8U0JMBODnbQ
 mTEdWOY7jgI6J4EI454uaBdpsaYxd55o/QKXtAKQ=
Date: Thu, 19 Sep 2019 09:30:35 +0100
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 0/3] iommu/io-pgtable-arm: Mali LPAE improvements
Message-ID: <20190919083035.tv446nelad6ki6db@willie-the-truck>
References: <cover.1568211045.git.robin.murphy@arm.com>
 <d77047c2-1f16-eded-17ba-7463310d4bba@baylibre.com>
 <20190911162024.i2sda7uzy3pbrnyd@willie-the-truck>
 <83c45e97-8398-349d-5593-03af23b39c59@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <83c45e97-8398-349d-5593-03af23b39c59@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_013047_963615_95C43C38 
X-CRM114-Status: GOOD (  20.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: robh@kernel.org, tomeu.vizoso@collabora.com,
 Neil Armstrong <narmstrong@baylibre.com>, joro@8bytes.org,
 steven.price@arm.com, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 06:19:40PM +0100, Robin Murphy wrote:
> On 2019-09-11 5:20 pm, Will Deacon wrote:
> > On Wed, Sep 11, 2019 at 06:19:04PM +0200, Neil Armstrong wrote:
> > > On 11/09/2019 16:42, Robin Murphy wrote:
> > > > Here's the eagerly-awaited fix to unblock T720/T820, plus a couple of
> > > > other bits that I've collected so far. I'm not considering this as
> > > > 5.3 fixes material, but it would be nice if there's any chance still
> > > > to sneak it into 5.4.
> > > > 
> > > > Robin.
> > > > 
> > > > 
> > > > Robin Murphy (3):
> > > >    iommu/io-pgtable-arm: Correct Mali attributes
> > > >    iommu/io-pgtable-arm: Support more Mali configurations
> > > >    iommu/io-pgtable-arm: Allow coherent walks for Mali
> > > > 
> > > >   drivers/iommu/io-pgtable-arm.c | 61 ++++++++++++++++++++++++++--------
> > > >   1 file changed, 48 insertions(+), 13 deletions(-)
> > > > 
> > > 
> > > Tested-by: Neil Armstrong <narmstrong@baylibre.com>
> > > 
> > > On Khadas VIM2 (Amlogic S912) with T820 Mali GPU
> > > 
> > > I hope this will be part of v5.4 so we can run panfrost on vanilla v5.4 !
> > 
> > Not a chance -- the merge window opens on Monday and -next isn't being
> > rolled out at the moment due to LPC. Let's shoot for 5.5 and get this
> > queued up in a few weeks.
> 
> Fair enough, that was certainly more extreme optimism than realistic
> expectation on my part :)
> 
> There is some argument for taking #1 and #2 as 5.4 fixes, though - the
> upcoming Mesa 19.2 release will enable T820 support on the userspace side -
> so let's pick that discussion up again in a few weeks.

Ok, I'll include those two in my fixes pull to Joerg at -rc1.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1237F8B7BA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 13:59:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sNtFfBU+eSii3N4NPVkkJCHkesfeu9dVl1VfMaY6JGc=; b=EhtjQn7agoO65z
	fUYrDYUG0kBnZZl9mLAGPhgtEeCmbZEypOP4RbFqS7SCn7j5HxzozgjpObbVF0db32+sGOQzWi3Os
	VPanf1po4kGBVMpDa4cTHQLvn2q0OuTQqVTv3UC7rm3XT8xT6rhmGpZg6zyjflCDKFkEC+mVJhz9e
	ZdHsITMxItu1FuFez3RbGrNHtY2mlrHBb6ARGNvP1OPceemBaBtEE0Ct/+rAK45yy6X2CMhOo1Izv
	J27Cn1W4IMgfsy9n/nfbf5J6hUQWU5+ohSnv5Gn7MFy6QowzeqT5w8WEE4dssR5Fku7wc50shY8Ph
	78ARfXn71OHlMLzo0hKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxVSp-0003dD-Uf; Tue, 13 Aug 2019 11:59:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxVSa-0003bI-UA
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 11:59:31 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7DC3520679;
 Tue, 13 Aug 2019 11:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565697567;
 bh=ABkD9MvkdQ3TVC5IqnaUxwD5XnLdKIpcQrtSz7IuwqY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AG3+ufMMtl7/lP5ba8Ucu8jFkAddOhgJ4sC9/4Hxq8UlZr/Iaa6ojoaTxpJeHq53Y
 eqbUfdL55B5p2GBqm4qisjGThrh+kAnJWCniU3u1DhMy0CYwYl/IxwBBLiCTCzuh9L
 9WsAPk9iQ4bHj4OPjpk3LdSBwrgJzs8EkGAMU5yM=
Date: Tue, 13 Aug 2019 12:59:23 +0100
From: Will Deacon <will@kernel.org>
To: Steve Capper <Steve.Capper@arm.com>
Subject: Re: [PATCH V5 00/12] 52-bit kernel + user VAs
Message-ID: <20190813115922.vqcd4inqqxy2obh4@willie-the-truck>
References: <20190807155524.5112-1-steve.capper@arm.com>
 <20190809164716.qtt7zizfbqyjukwe@willie-the-truck>
 <20190813112348.GA19242@capper-ampere.manchester.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813112348.GA19242@capper-ampere.manchester.arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_045929_010751_799E5D62 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "crecklin@redhat.com" <crecklin@redhat.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "bhsharma@redhat.com" <bhsharma@redhat.com>, "maz@kernel.org" <maz@kernel.org>,
 nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 11:23:50AM +0000, Steve Capper wrote:
> On Fri, Aug 09, 2019 at 05:47:17PM +0100, Will Deacon wrote:
> > On Wed, Aug 07, 2019 at 04:55:12PM +0100, Steve Capper wrote:
> > > This patch series adds support for 52-bit kernel VAs using some of the
> > > machinery already introduced by the 52-bit userspace VA code in 5.0.
> > 
> > Cheers, I've pushed this out on a for-next/52-bit-kva branch with one
> > small patch on top and Catalin's tags added.
> > 
> 
> Many thanks Will!

Save your thanks for when I've fixed the bugs ;)

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

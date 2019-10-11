Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B10D3894
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 06:56:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5N3oH+bH59A00+2EqAuNBdJ6k7YARCq04M/TU/XCRTo=; b=qONi3D9O4TNt60
	F14aEghev9bV5phIInw6JZxPHJ5z6996G2s9q52/KsPlV7mwofkwuofuGsBcpCtYWKNixVTbFNZkD
	+EbzN6sBWiqjUWFjQ3EEKGCfC81zLFA8LyPQoqI8uku/zqqRn1B5ObQKdWkEcZnO5XlFYnJDNk4Zh
	7wGUi8AmX2EIlyHEwU5OIqY/J+38yEYr4GNNGLDGRAxRGyEKlvIzSWzB7X0vixbsZOnLCMpGJyoWU
	zhbFtqG5Xu74q8D7MAkJsZ+yfdGzvzWnk8gF6e4V7AvXcvZNScHcFhPM82BSnsqIBMUtQIrANtCMN
	6ow0xmXv5aWvE6/kmZ7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iImxx-0004Qg-94; Fri, 11 Oct 2019 04:55:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iImxp-0004QN-B3
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 04:55:43 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6A35521A4C;
 Fri, 11 Oct 2019 04:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570769740;
 bh=hftfiU+kT/TNnyZlpbWqbcWjHwMH/AuUzvwYRGoeIrA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IGW7X5RKK+E5PPLsG99qOox9BuVtajtNtii1IGzZym8RutGfZFgb+RcDS8UGCFFyN
 VrVH5C3Zock7eKa8N2YgIkV4rpdGbOjzhg0n/e9Z4RXFGggo+thdDj79SQ0+wwa1rE
 F03tXu4ChnuNG+Y6KlOTZZ02eLdWtndUdVRY/XiM=
Date: Fri, 11 Oct 2019 06:55:38 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH] arm64: cpufeature: Fix truncating a feature value
Message-ID: <20191011045538.GA977916@kroah.com>
References: <20191010122922.GA720144@kroah.com>
 <20191010131943.26822-1-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010131943.26822-1-suzuki.poulose@arm.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_215541_400846_6C5DFD1D 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 02:19:43PM +0100, Suzuki K Poulose wrote:
> A signed feature value is truncated to turn to an unsigned value
> causing bad state in the system wide infrastructure. This affects
> the discovery of FP/ASIMD support on arm64. Fix this by making sure
> we cast it properly.
> 
> This was inadvertently fixed upstream in v4.6 onwards with the following :
> commit 28c5dcb22f90113dea ("arm64: Rename cpuid_feature field extract routines")

What prevents us from just taking that commit instead?  You did not
document that here at all, which I thought I asked for.

Also, you only need 12 digits for a sha1, 28c5dcb22f90 ("arm64: Rename
cpuid_feature field extract routines") would be just fine :)

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

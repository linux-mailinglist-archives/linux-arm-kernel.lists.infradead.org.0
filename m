Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C092D2ABE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 15:16:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=28mc5EFrinS9SLz0fbMnkU0YRB9WSKsAQeHws40SEdQ=; b=sRqbTwtIq0UH5+
	GJHe/WdaWvXX9My1rMJB6bimNDZ43N1WXfQnW7Pza87RmxUVDYW6hp9uCNI0I53fGko2w66G8n3s9
	Sgiwv8ZDfe52EdlTTlsNXzxEh1x39y1S4LYIvHco7NSF4/ZyQjj73zvk5bxQ2N9WegbTXkx8hiNu4
	NzPoOoVu70Q1WqO0wHXgowKHm1fBv/TNxrsBFLL3WpWZZjC7Kr7BkrTBXVvjjYz6Yw79xZUxjFMQk
	jbhuILrcYMyj7iAcUgs+R3OQJ71rQPxWc595iy3D/IB9w+r4TiyXAx73BMREATzE3vMwP6Xd6iRdZ
	n/U0gvyg/D4R0EStfTUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIYIs-0008UN-27; Thu, 10 Oct 2019 13:16:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIYIk-0008TZ-8F
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 13:16:19 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 430472064A;
 Thu, 10 Oct 2019 13:16:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570713377;
 bh=xh+EReLGfdsskxTMZ7/BthgoffJ0cZf67pQ4tR0/oGM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=i1yA1g6cjKkfM1aaNhQSHecf9IRXaKF+kPlN34I+m+FvfDsE0UJQXzCgr6I8KS0OG
 WF2Acy6TQ464Rb/uWZEQp5vQYLBh/l/LoQqNp+M+ht8qs6E6l6BydUaHOgzrhe3Smm
 kdwi2sxWQ14heVKKPX3Vh+2ETZwgpw8ywy6apZKo=
Date: Thu, 10 Oct 2019 15:16:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH] arm64: cpufeature: Fix truncating a feature value
Message-ID: <20191010131615.GA807662@kroah.com>
References: <20191010110856.4376-1-suzuki.poulose@arm.com>
 <ca77dec7-b29b-5a3b-0c01-047a06d1854d@arm.com>
 <20191010122922.GA720144@kroah.com>
 <295cfb9e-ac7b-73e7-bc80-8b9150f4a626@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <295cfb9e-ac7b-73e7-bc80-8b9150f4a626@arm.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_061618_315872_ADFF518D 
X-CRM114-Status: GOOD (  16.63  )
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

On Thu, Oct 10, 2019 at 01:46:21PM +0100, Suzuki K Poulose wrote:
> 
> 
> On 10/10/2019 13:29, Greg KH wrote:
> > On Thu, Oct 10, 2019 at 12:12:01PM +0100, Suzuki K Poulose wrote:
> > > All,
> > > 
> > > On 10/10/2019 12:08, Suzuki K Poulose wrote:
> > > > A signed feature value is truncated to turn to an unsigned value
> > > > causing bad state in the system wide infrastructure. This affects
> > > > the discovery of FP/ASIMD support on arm64. Fix this by making sure
> > > > we cast it properly.
> > > > 
> > > > Fixes: 4f0a606bce5ec ("arm64: cpufeature: Track unsigned fields")
> > > > Cc: stable@vger.kernel.org # v4.4
> > > 
> > > Please note that this patch is only applicable for stable 4.4 tree.
> > > I should have removed the Fixes tag.
> > 
> > Why is it only for 4.4?  That needs to be documented really really
> 
> This was fixed later in v4.6 onwards with commit 28c5dcb22f90113dea
> ("arm64: Rename cpuid_feature field extract routines") rather inadvertently.
> 
> > really well in the changelog as to why this is a one-off patch, and why
> > we can't just take the relevant patches that are in Linus's tree
> > instead.
> > 
> > Please fix up and resend.
> 
> I can resend the patch with the above information included if you like.

As I said, please do, I can not take it otherwise.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

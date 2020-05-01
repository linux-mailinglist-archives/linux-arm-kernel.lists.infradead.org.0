Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D071C1144
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 12:55:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xXLPDQigAeg0O+QxfJcprTSTqJKecQFjw/doVVNtvbM=; b=LqEwdJlaT4YBhH
	aY+TBe355/HxRXXjdWtdbQwWsWdjsOrl8rgqwkZiOOhBOfzbB+EjQ3FBQ/bb3u5JymJUCqQRetr1n
	EYUE5fQzgYe6cASO4EdFMpACWdVO3615GPLhN7MF/a0L6bHDIidnxwetnMxJe2Z7Qj/B2oZBrXsQR
	HUGJluIRuPlTMj741M4+ai6JKvVXtRm5dNd4OnJ4MZS2Bi9ikcXymygJysGEd9wKyhYcMXcr7ltuh
	EjLlYCPWd9N6Npp8fpw41CqkizbM5CO/3xcfIPgmq3E1h2CQNr9KLK/WECmghHxrOgQZo8Fybk2wF
	9S5bw9rJtNeaTcOh5UEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUTKK-0002ED-Re; Fri, 01 May 2020 10:55:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUTKE-0002Dc-Gr
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 10:55:23 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E06052166E;
 Fri,  1 May 2020 10:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588330522;
 bh=erC6W5Is3Nh/oL4QwwTvkse8Vyv5xbMSlz9NG80pnSs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uEKrn4o5840WtXxkC9WrJ17O5Jlu2T5837fDfIhIeL2APjwSqIXoIC8mLpye/1y/9
 13sLP6s7aik7eVuQOxVCXsjN5lnl3XoM4n3Zye2tx6gXqZmiZX0iAeWLo/MDIQpnJQ
 aytWAXjD/jPWwGbEdZVKarybkBxRoKVTfPxdNT4E=
Date: Fri, 1 May 2020 12:55:20 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] usb: usbfs: correct kernel->user page attribute mismatch
Message-ID: <20200501105520.GA1434711@kroah.com>
References: <20200430211922.929165-1-jeremy.linton@arm.com>
 <20200501070500.GA887524@kroah.com>
 <20200501103712.GA51954@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501103712.GA51954@C02TD0UTHF1T.local>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_035522_584179_AB4CAF1F 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: git@thegavinli.com, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 jarkko.sakkinen@linux.intel.com, stern@rowland.harvard.edu,
 Jeremy Linton <jeremy.linton@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 11:37:12AM +0100, Mark Rutland wrote:
> On Fri, May 01, 2020 at 09:05:00AM +0200, Greg KH wrote:
> > On Thu, Apr 30, 2020 at 04:19:22PM -0500, Jeremy Linton wrote:
> > > On arm64, and possibly other architectures, requesting
> > > IO coherent memory may return Normal-NC if the underlying
> > > hardware isn't coherent. If these pages are then
> > > remapped into userspace as Normal, that defeats the
> > > purpose of getting Normal-NC, as well as resulting in
> > > mappings with differing cache attributes.
> > 
> > What is "Normal-NC"?
> 
> Arm terminology for "Normal Non-Cacheable"; it might be better to say
> something like:
> 
> On some architectures (e.g. arm64) an IO coherent mapping may use
> non-cachable attributes if the relevant device is cache coherent.
> If userspace mappings are cacheable, these may not be coherent with
> non-cacheable mappings. On arm64 this is the case for Normal-NC and
> Normal (cacheable) mappings.

That's better, but it doesn't answer any of my other questions on this
patch :)

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

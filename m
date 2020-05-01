Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A471C0F19
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 10:04:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g7B/X8JB8fg6rtHMo9VsFI647Hhqm3rx2Ejmbplf4eg=; b=AKLVYt6tWWgtRY
	frF/KFocJHbIVzecYgBT05LnTyqUP9fRxXwIZWWW4LxBFVKeT4WVyvf667lZtHXikqhHZ4XtJuPh6
	FM9x+zfQ73it40tK9jHH3PtFvbtWbORv8h7dWs8tkuaUzLvD+wNabVwZnBJWliK1eCBiy6p//pVOa
	Y3m5SR6dM9yunYQ8e1F5B2RPgZ3mxb4gfu+/f9a6hnPMBekkxDOsDtrBeYVo9HYc+xfHbHgqdgepA
	8koIxMaykzHGiRVqwpevBn7ttm4tza2mhMh89eJA564QOMJIB4k68F/1Ux/BwJ0QRrRvQrVBSyubN
	d+MdEkEMV0X4a2EmRPLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUQfD-0004j6-52; Fri, 01 May 2020 08:04:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUQf7-0004iG-R5
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 08:04:47 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3B02B208C3;
 Fri,  1 May 2020 08:04:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588320284;
 bh=lamkafcb9ifi0CkloDrVZk+9/LKsm77P4Ce9z/TkKZI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EdhnMAdBJ2aX7UhxdGvolxXe6kFB6/uOZUZeFFRBF2CLtG/+Ec/0FMSAdrSbHMvhr
 75o17SVYdowHgoR4J3F+MPUXSXldG3MYxqu8dbPWxkUuDK1igDERkZVzfP0wl1e5/S
 h8wVSFWO+hM+nEV9VmNf6snwnJnHzNz9Huw/rWmU=
Date: Fri, 1 May 2020 10:04:42 +0200
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: Daniele Alessandrelli <daniele.alessandrelli@linux.intel.com>
Subject: Re: [PATCH 0/1] Add IMR driver for Keem Bay
Message-ID: <20200501080442.GA1055655@kroah.com>
References: <cover.1587485099.git.daniele.alessandrelli@intel.com>
 <d3f045b05c83d0eca1d5498587493ca485e0a1a0.camel@intel.com>
 <20200501070930.GA892454@kroah.com>
 <c6c51b93978b95cc1ca5b03909f0766bc4bc2638.camel@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c6c51b93978b95cc1ca5b03909f0766bc4bc2638.camel@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_010445_898743_95153ED4 
X-CRM114-Status: GOOD (  17.73  )
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
Cc: "robh@kernel.org" <robh@kernel.org>, "Shevchenko,
 Andriy" <andriy.shevchenko@intel.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Murphy,
 Paul J" <paul.j.murphy@intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 08:53:34AM +0100, Daniele Alessandrelli wrote:
> On Fri, 2020-05-01 at 09:09 +0200, gregkh@linuxfoundation.org wrote:
> > On Thu, Apr 30, 2020 at 07:49:36PM +0000, Alessandrelli, Daniele
> > wrote:
> > > This e-mail and any attachments may contain confidential material
> > > for the sole
> > > use of the intended recipient(s). Any review or distribution by
> > > others is
> > > strictly prohibited. If you are not the intended recipient, please
> > > contact the
> > > sender and delete all copies.
> > 
> > This footer means I delete all of your emails...
> 
> My bad, I replied using the wrong email address (i.e., the one that
> adds the footer automatically). Sorry about that :/
> I'll be more careful the next time.
> 
> The original emails (the ones with the cover letter and the patch) were
> fine though (unless I did something else wrong). Any advice on how to
> have the patch reviewed and eventually merged?
> 
> 
> 
> 
> 
> 
> 

Ok, let me go look at the code...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

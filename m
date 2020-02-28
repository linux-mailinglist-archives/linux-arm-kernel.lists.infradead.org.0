Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A3517373F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 13:33:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f9y1Wm7R17AOLiRLgnnZ4kZ29iA3eajw4RqqiR9ixEo=; b=kNFkwnMMvjfAqJ
	WvGN4nc3QvNmakMyuX0iSbLakeqV98xf9gBkhWWs27TTMwPbXVDkiRNPymO3IyNjZjYmt11elHtJ1
	Zc6IfIwPUfj6Uwe5H6IosFMvEF6Hw1qY5dAbRFUkF3reNV4esHNa21mPRNNGInyplaZYETynEnV8U
	q/BYy+JCtvdY4anCi9RBvzmLufLsZtPpa0jPrC7lDbXoprMbASG0zChoAqTc82dTPOkqtNJr25qLD
	Se6jI/0bx6e+4gALBgqGBCVFq/rtGZJWJ5zsp1dq/tSL0C2JqOP1ysR5Dq0PaAeL0gDNVWntEelnq
	O3w6dXc8DnvrfCRU42Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7epa-0002mq-O6; Fri, 28 Feb 2020 12:33:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7epR-0002mT-8v
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 12:33:18 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8CD00246A8;
 Fri, 28 Feb 2020 12:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582893197;
 bh=iI9Izp1/xx+N6k2MZVXAFgzynuOg+3ILMN2IFASspNo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=olfkeknYTpfaX/G5LJGKxEF7bCQJHQDBcFV0o4Y32z0y3RCRqnI9oG1BX+JRrVIDM
 jVnYWDRgGEVWdB5aQsvMkI+iM0U2ehwm8z6utSeJMQEYPYQ30Yt2oo2dGT96FB5Kf0
 JeU4N0FzFT0mpC2zqdVHP/N1OEZsd2Ohi8L+71pg=
Date: Fri, 28 Feb 2020 12:33:12 +0000
From: Will Deacon <will@kernel.org>
To: Daniel Jordan <daniel.m.jordan@oracle.com>
Subject: Re: WARNING: at kernel/workqueue.c:1473 __queue_work+0x3b8/0x3d0
Message-ID: <20200228123311.GE3275@willie-the-truck>
References: <20200217204803.GA13479@Red>
 <20200218163504.y5ofvaejleuf5tbh@ca-dmjordan1.us.oracle.com>
 <20200220090350.GA19858@Red>
 <20200221174223.r3y6tugavp3k5jdl@ca-dmjordan1.us.oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200221174223.r3y6tugavp3k5jdl@ca-dmjordan1.us.oracle.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_043317_335740_4762AEB7 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, jiangshanlai@gmail.com, linux-kernel@vger.kernel.org,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-crypto@vger.kernel.org,
 tj@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 12:42:23PM -0500, Daniel Jordan wrote:
> On Thu, Feb 20, 2020 at 10:03:50AM +0100, Corentin Labbe wrote:
> > But I got the same with plain next (like yesterday 5.6.0-rc2-next-20200219 and tomorow 5.6.0-rc2-next-20200220) and master got the same issue.
> 
> Thanks.  I've been trying to reproduce this on an arm board but it's taking a
> while to get it setup since I've never used it for kernel work.
> 
> Hoping to get it up soon, though someone with a working setup may be in a
> better position to help with this.

Any joy with this? It sounded to me like the issue also happens on a
mainline kernel. If this is the case, have you managed to bisect it?

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4268515FBD9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 01:58:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZjKbqk9JRlGTGG/J0ruca7C2c2gEm16F8FNJmOmvvNo=; b=H+lhKKfEKdCKzh
	N83i7qO5edF7gkMYzR9MfctNtJlBbBZtlYWvlYlWkqXCtFEQBlXYVankrLHDdRY42M2mqUVE7KLpX
	akGmCfe+B6gIZAaV6lmMxjjFPL36aMG/4+63AuzpfGT7x5j3Dzn9AO2NmnJZZzSyHpajXuHN3U+j/
	qKXfIjxN5aUQLHUJ4+FJqFebi5LBgQVjQ4hpNCbab8pzHsu7ItwBUQJAfm5fTijrHrZ3gDJuUx2Ug
	r5B8DQhEZk5J6TyBwgKbQRNp3naKL5eR2LeqQF3tJhp2q6aRPy45YKRdWCG7BwZNVHQiEFIz7921j
	7LfK8fxaYDaH3qS2Hp4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2lnF-0007ha-Bm; Sat, 15 Feb 2020 00:58:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2ln6-0007h6-1a
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 00:58:41 +0000
Received: from localhost (unknown [38.98.37.142])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9BFF720726;
 Sat, 15 Feb 2020 00:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581728318;
 bh=epAipassIVTXLEk61xbPswQ/wJFZR8JeHH7+aNFL18w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LJ7VCwPEWnIEAj+lS8iPopr8Gi5FgFwj1wdOvOdgCLWp/8gK/V4Ij8yF6l734w1Cf
 n0D+VkC39CWrj1swmFEjR1TCM2g9XODsAG9y930H/cSJzSGIvYyyXCTw1obME+cKus
 SU8s68S+0oKLyV1ne3cxnSsHAmp0LQX5c6pSXhaE=
Date: Fri, 14 Feb 2020 19:52:35 -0500
From: 'Greg KH' <gregkh@linuxfoundation.org>
To: Jolly Shah <jolly.shah@xilinx.com>
Subject: Re: [PATCH v2 1/4] firmware: xilinx: Add sysfs interface
Message-ID: <20200215005235.GA32359@kroah.com>
References: <20200124060339.GB2906795@kroah.com>
 <2D4B924A-D10C-4A90-A8E6-507BF6C30654@xilinx.com>
 <20200128062814.GA2097606@kroah.com>
 <4EF659A1-2844-46B9-9ED6-5A6A20401D9D@xilinx.com>
 <20200131061038.GA2180358@kroah.com>
 <BYAPR02MB40559D6B62C4532C0EAD0281B7070@BYAPR02MB4055.namprd02.prod.outlook.com>
 <20200131093646.GA2271937@kroah.com>
 <3ef20e9d-052f-665c-7fc8-69a1f8bc9bd2@xilinx.com>
 <20200214171005.GB4034785@kroah.com>
 <c2914eae-bf95-ad51-79a4-07f199f37e27@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c2914eae-bf95-ad51-79a4-07f199f37e27@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_165840_106896_1AABB785 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: "keescook@chromium.org" <keescook@chromium.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "matt@codeblueprint.co.uk" <matt@codeblueprint.co.uk>,
 "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rajan Vaja <RAJANV@xilinx.com>, Michal Simek <michals@xilinx.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 14, 2020 at 04:37:16PM -0800, Jolly Shah wrote:
> > Just make the direct call to the firmware driver, no need to muck around
> > with tables of function pointers.  In fact, with the spectre changes,
> > you just made things slower than needed, and you can get back a bunch of
> > throughput by removing that whole middle layer.
> > 
> 
> arm,scpi is doing the same way and we thought this approach will be more
> acceptable than direct function calls but happy to change as suggested.

Just because one random tiny thing does it the wrong way does not mean
to focus on that design pattern and ignore the thousands of other
apis/interfaces in the kernel that do not do it that way :)

> > So go do that first please, before adding any new stuff.
> > 
> > Now for the ioctl, yeah, that's not a "normal" pattern either.  But
> > right now you only have 2 "different" ioctls that you call.  So why not
> > just turn those 2 into real function calls as well that then makes the
> > "ioctl" call to the hardware?  That makes things a lot more obvious on
> > the kernel driver side exactly what is going on.
> > 
> 
> Sure as i understand firmware driver will provide real function calls to be
> used by user drivers and underneath it will call ioctl for desired
> operation. Please correct if I misunderstood.

You do not misunderstand.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

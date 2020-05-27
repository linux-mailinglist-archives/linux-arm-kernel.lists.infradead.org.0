Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2D21E41DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:17:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XYhwx9cXiatqGCvl3grUX/qC29sPryPCI1K5Ta+0o/U=; b=WieqQgMJcCyLTz
	Fft98Axcd5LjIWGuBcXuIXPhq/gmswyt+3MJolX2uPiLbumRbMJviH8mZwyJnbduvs32AB5KOtIKg
	zzASL51J2vqMCg4AkInWUxhomuS91yElRjBaHSKmVRTWJKtGaoBxb1fmsz8/q8Eu9z5PshcQqcUeJ
	F2hx3ZxG7tM8h0YMEeOMki+qsB75wQ9QILvQQut/qPWbVlY21QVyWAuu2rBeTVrPbdvvNU1BF+PBj
	iz2kHrqM6pzRyM98xrwbATQ+Yp3FgKW+hdpsUIK6QS9eqfOngev71fj54KkidDK6URDI8PYDY/6f1
	AGnydkvJSwHipvaN59Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jduzk-0003dM-Fb; Wed, 27 May 2020 12:17:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdurj-0000XZ-4C; Wed, 27 May 2020 12:09:00 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1643E207D8;
 Wed, 27 May 2020 12:08:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590581338;
 bh=QQD+MRgE+NZNCZ1eRvLYNsmu3HPx3aINjpU48jwRlJg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ppw1YZ13U3GlFvOUOKJHjPS6spIo3N1LnVyxUGcYWXLlt024/UzwJ/j8caj9QRbTT
 aStNnpVrgk/9GGow9w2VyKFQ6ePWmKMXiHP945Qbwoml51r0Kleg1cpF40zR8TI9kv
 Tv3jem1MlMHO38AXGJOvAA8k+fHHZha6t1JWxNVs=
Date: Wed, 27 May 2020 14:08:55 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [RFC 00/50] staging: vchiq: Getting rid of the vchi/vchiq split
Message-ID: <20200527120855.GA429709@kroah.com>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_050859_311719_73B89C9B 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org, kernel-list@raspberrypi.com,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 laurent.pinchart@ideasonboard.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 01:53:05PM +0200, Nicolas Saenz Julienne wrote:
> vchi acts as a mid layer between vchiq and its kernel services, while
> arguably providing little to no benefit: half of the functions exposed
> are a 1:1 copy of vchiq's, and the rest provide some functionality which
> can be easly integrated into vchiq without all the churn. Moreover it
> has been found in the past as a blockage to further fixes in vchiq as
> every change needed its vchi counterpart, if even possible.
> 
> Hence this series, which merges all vchi functionality into vchiq and
> provies a simpler and more concise API to services.
> 
> I'm aware that kernel's vchi API tries to mimic its userspace
> counterpart (or vice versa). Obviously this breaks the parity, but I
> don't think it's a sane goal to have. There is little sense or gain from
> it, and adds impossible constraints to upstreaming the driver.
> 
> Overall the series falls short of removing 1500 lines of code, which is
> pretty neat on itself.
> 
> So far it has been tested trough bcm2835-camera, audio and vchiq-test. I
> can't do much about vc-sm-cma for now, but the changes are done in a way
> that shouldn't affect its behaviour.
> 
> Note that the series builds up on RPi/Laurent's camera support series[1]
> and can't yet be merged. We'd have to coordinate here. We could either
> wait for the vc_sm_cma rework (if it's not going to take months and
> months to finish), or factor out all the vc-sm-cma stuff, merge that into
> the downstream kernel and take the rest of the series on top of
> Laurent's mmal-vchiq changes.

These look great, but due to the dependancy, I can't take them all.

But I can take the first 10, so I did that, they are now queued up,
thanks!

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

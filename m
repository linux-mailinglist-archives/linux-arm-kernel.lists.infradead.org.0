Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF3436CB4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 08:58:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hc2JAbzGei5IqT2R9+CvB/0VW24CZO1VT84Un+Q3jRc=; b=MjdWBCVpxe4BH/
	b1Q/YQiI1AGnM5FH8kS0zCu9q1HpNcWjdfjNv8HLf5Edh6mbiajAvBzT+o6jbapBnZw1qfWlDHeF0
	w51Wx0frjuTG4MPsmm7BVoUOwmTOxqGLNjLq2HToTHkZPgAVvACT2KFeZg/93m1q6xKAUo+ET8uFN
	8Y4SIPXg7t8y/HIpkUNIKx26OkZyPZhv16cYamB+D9VqUnBV00hfyotOxImvtAfJaZ4QuNtZ5+0vi
	Yj3FREDDFZsMsSX1o98wKjpziarCLXHqOtdtBuxks78SWCKEpZxCuqmI094BLsonux1v+P91dhNo+
	e9yrso2+KF2r0QUURxew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYmM8-0003q3-92; Thu, 06 Jun 2019 06:58:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYmLz-0003p4-5G; Thu, 06 Jun 2019 06:58:29 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A8752207E0;
 Thu,  6 Jun 2019 06:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559804305;
 bh=/AotUYAn81Yvabr0QOuYw3tgELf9Sx7jAvd3vMMU3kY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=loi3rC5hpwqc/ItwOijTJjtZsZuRbo9pg0ZFutYYR/BfAfq7OxiyuXfyiod69OYcM
 ykyNP7GpIsHdSWwKHqY4ppeG7Kya1j5n+9jllVJz6BFPiB17yIxD5L300a0TaTn8Sz
 ijLeZZ+AGRzmaXxhGzDwgga8F1Q3++6lFMxc6ZqI=
Date: Thu, 6 Jun 2019 08:58:22 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH v3] USB: move usb debugfs directory creation to the usb
 common core
Message-ID: <20190606065822.GA29436@kroah.com>
References: <20190605092816.GA23758@kroah.com>
 <20190605124440.GD17558@kroah.com>
 <1559788368.8487.109.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559788368.8487.109.camel@mhfsdcap03>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_235827_220335_33547244 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Felipe Balbi <felipe.balbi@linux.intel.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 10:32:48AM +0800, Chunfeng Yun wrote:
> On Wed, 2019-06-05 at 14:44 +0200, Greg Kroah-Hartman wrote:
> > The USB gadget subsystem wants to use the USB debugfs root directory, so
> > move it to the common "core" USB code so that it is properly initialized
> > and removed as needed.
> > 
> > In order to properly do this, we need to load the common code before the
> > usb core code, when everything is linked into the kernel, so reorder the
> > link order of the code.
> > 
> > Also as the usb common code has the possibility of the led trigger logic
> > to be merged into it, handle the build option properly by only having
> > one module init/exit function and have the common code initialize the
> > led trigger if needed.
> > 
> > Reported-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > Cc: Felipe Balbi <felipe.balbi@linux.intel.com>
> > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > ---
> > Chunfeng, can you try testing this again?
> 
> Tested-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> 
> Thank you, Greg, Felipe

Thanks for the review, and all of the different iterations for this.
For something so "simple" it sure took us all a number of tries :)

I'll go queue it up now so that your future work can rely on it.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

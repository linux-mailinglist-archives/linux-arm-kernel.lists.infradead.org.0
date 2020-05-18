Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AEF61D7CE5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 17:33:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=04+0SlHHz5B80/f37B2l2M3iTPhbnp6i0V9GWOAtpY8=; b=Orw3Ih3svqe85Q
	8Lwx+fXY3bU8xJyThsjsMt+jWCO+qgz4tZR5mexzSI9wLONqKkwqvyFgMHgmgUQ7xHZy1QOHZADhF
	NpatHgaQ/QlDCJG6h654wceucS7BSf7C6kiAnLj+vBQWdC4zsfUiX1dchonsgC5QBlrXH/RKUnPCm
	VepdvZ3NAoULQVjBYl+hvKP/UzB2SpSvumcyrJgF3yTEUkjVv2vtjvKZqT0NmLRWWIu8QjHyxwt9d
	n/dOJ9jY00Z1UTY2WHJev4DVY83M/plgl+G5GpQFPHbKIQdCT2BCh3XSAWQCuhWxW1SWwa9yCI9UF
	44704/YhDpfrWWosLNzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jahlb-0000i8-4W; Mon, 18 May 2020 15:33:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jahlS-0000hJ-TU
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 15:33:16 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 269B0207ED;
 Mon, 18 May 2020 15:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589815994;
 bh=TyenBBcRlC7bHcDCgrQGTESSKFo/bxcfFo2JmDj2gPg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2bkezwy1Dc3M7HZgrw3dCxOGmxDcnV20LYmEDJpxoZlAjzDsoEut3EaU8jMFKnHH7
 9eO7bFr7vaIXSYWoj9XUc5T/0mtcMFZg0oDggYw7qupQHvTtJEOmou1pm00LR+XO+b
 gDN3m0O1mh9OPm14IdCrla7JnVoJlBC7DzuhojYA=
Date: Mon, 18 May 2020 17:33:12 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Alan Stern <stern@rowland.harvard.edu>
Subject: Re: [PATCH 1/3] usb/ohci-platform: Fix a warning when hibernating
Message-ID: <20200518153312.GA1963214@kroah.com>
References: <20200424134800.4629-1-qais.yousef@arm.com>
 <Pine.LNX.4.44L0.2004281459240.1555-100000@netrider.rowland.org>
 <20200518145748.puvxkcmyrxc7eqt7@e107158-lin.cambridge.arm.com>
 <20200518151940.GC15479@rowland.harvard.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518151940.GC15479@rowland.harvard.edu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_083314_971741_AC4B7249 
X-CRM114-Status: GOOD (  12.67  )
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
Cc: Oliver Neukum <oneukum@suse.de>, Mathias Nyman <mathias.nyman@intel.com>,
 linux-usb@vger.kernel.org, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, Tony Prisk <linux@prisktech.co.nz>,
 Qais Yousef <qais.yousef@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 11:19:40AM -0400, Alan Stern wrote:
> On Mon, May 18, 2020 at 03:57:49PM +0100, Qais Yousef wrote:
> > > For both this patch and the 3/3 patch (ehci-platform):
> > > 
> > > Acked-by: Alan Stern <stern@rowland.harvard.edu>
> > 
> > Thanks Alan. Did this make it through to any tree? I don't see it on next, nor
> > on Linus. But it could be queued somewhere else.
> > 
> > I have sent v2 to patch 2 (xhci) as a reply, so hopefully it wasn't missed.
> > I can resend the whole series if necessary.
> 
> Greg, what happened to this series?  Did it just fall through the 
> cracks?

No idea, it's not in my to-review queue, so maybe it got merged
somewhere?  If not, can someone resend it please?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E7214A788
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 16:51:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mpM7AF7fdzrE2O0y6jl7UGaKoOnlE8c0l10GM8v4aPI=; b=WZKby2PVf7WD8Q
	mLRBDK8ZI82CJN11sUS54WdTlsPljq2NYwqs5DrvN986A8m9U9uHwhBrpdmXhgH4tlVZa0alC2RJL
	wpjuPZaH8UqpQf4eyJ+Cz1NknpDvlVIINys0XEU9GrRWvV+SGeecXBPCIzY7gGAzoowNtRpj5Yocq
	WX5yVu12Yvakr80kz2yD4WfFfX2FUY+Y/f24BSf4q+Yfwj/qGRW1XGLomram/nhiT363/xoFIVgSv
	1GLUwcrXmCQw8kN973eshP9Og9DwbydrrzmHxCC3MfnpFcs87sFk5FcrMzjhIKtJY344zGh4AVBp5
	1sRHnMfB6swSEb4Fdomw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw6fa-0001oE-H5; Mon, 27 Jan 2020 15:51:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw6fN-0001nA-S7
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 15:51:13 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4DE5D214D8;
 Mon, 27 Jan 2020 15:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580140268;
 bh=fgHgC1IHpgok6v54v63FdkHsuyc6wfcAIdY8ET3xw48=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tuyF5hywFyHks62ZJx/CbFxfdDW4y/Ago9dPOXjapDQc5cz9lysg9eYEyYAS1LR9V
 VckH/7w2tWiny7qW/aRgepW9O8OdkridutkSYk8tvuH/W1a5OmJ7+hOp6EeRL5RuYK
 Bvum/7Oh546J1VVzH5nguplJxViDKvfu017tftDg=
Date: Mon, 27 Jan 2020 16:51:06 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: Request to backport "Documentation: Document arm64 kpti control"
Message-ID: <20200127155106.GA668073@kroah.com>
References: <520fee3a-4d14-9a78-e542-cce98acae9f6@gmail.com>
 <20200126135233.GB11467@sasha-vm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200126135233.GB11467@sasha-vm>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_075111_577344_DD3FF81E 
X-CRM114-Status: GOOD (  10.23  )
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
Cc: "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Florian Fainelli <f.fainelli@gmail.com>, stable@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jan 26, 2020 at 08:52:33AM -0500, Sasha Levin wrote:
> On Sat, Jan 25, 2020 at 08:03:25PM -0800, Florian Fainelli wrote:
> > Hi Greg, Sasha,
> > 
> > Could you backport upstream commit
> > de19055564c8f8f9d366f8db3395836da0b2176c ("Documentation: Document arm64
> > kpti control") to the stable 4.9, 4.14 and 4.19 kernels since they all
> > support the command line parameter.
> 
> Hey Florian,
> 
> We don't normally take documentation patches into stable trees.

Normally we do not, but this is simple enough I've queued it up for 4.19
and 4.14.  Are you sure it is ok for 4.9?  If so, Florian, can you
provide a backported version of it?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

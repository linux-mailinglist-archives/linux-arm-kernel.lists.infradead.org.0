Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0398EBC2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 14:42:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WW+xSOePLtUtMCjEY+wB0gheB1Xg2jMWl07hV9Le5oo=; b=Z4eRVNnynUBW/S
	NGVx9m6ggjrOHnm9sye5dMH/5JOsQc/onJ7MinXXth9CL7GjLfm3VCmTWZLK7iFRyf1AGcXvUpl/1
	Sh467t3j7mBjbdT/Am8XUH0ITvTOrTvQ9PJ4FemtTxocqpwgN+Sgw2kjhWaqoJqKDlsDnIKpKMz66
	NrNomGhudRhWTlxwa9uNzS/vmuEGg8G4HJc74oR45M61ZiB0xZxzfrDro1YScvlop6/KGjtwpdrp3
	fktS4yfXD65CFe2qlAFY1MPTTrI5bTeDaLyLIhjTpjO+XxZp8FEF+imEZTmmFhrUlUMWLOPm4gi1c
	oDDR4mNVcjizb+BcRMDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyF5N-0000BN-2v; Thu, 15 Aug 2019 12:42:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyF4t-0000Aw-TC
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 12:42:05 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EC5692084D;
 Thu, 15 Aug 2019 12:42:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565872923;
 bh=Fs4BzkJvrJrfQMAEr386HjecxX0kE83h+eyln2fEU70=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sN+vZD78RiF8Gmu3YvjeKVcRTt8dpUE61TMxT/fiuYxYDlI7VXJfnmx4pPeGPRpcH
 p+I5ZwfjJaY+UX3bt2d/vk4L+cBR3KFcu4EvIk0FjpLRi8Y6Qnd+thnnq0gNHYPIkG
 KihHHOYBp5DNlfuLhTDSyL6+nY6HPvNU1XVgD5sc=
Date: Thu, 15 Aug 2019 14:42:01 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v2 01/13] usb: ohci-nxp: enable compile-testing
Message-ID: <20190815124201.GA30054@kroah.com>
References: <20190809144043.476786-1-arnd@arndb.de>
 <20190809144043.476786-2-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190809144043.476786-2-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_054203_963446_3AF02618 
X-CRM114-Status: GOOD (  13.62  )
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
Cc: Felipe Balbi <felipe.balbi@linux.intel.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vladimir Zapolskiy <vz@mleia.com>,
 soc@kernel.org, Alan Stern <stern@rowland.harvard.edu>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 09, 2019 at 04:40:27PM +0200, Arnd Bergmann wrote:
> The driver hardcodes a hardware I/O address the way one should
> generally not do, and this prevents both compile-testing, and
> moving the platform to CONFIG_ARCH_MULTIPLATFORM.
> 
> Change the code to be independent of the machine headers
> to allow those two. Removing the hardcoded address would
> be hard and is not necessary, so leave that in place for now.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/usb/host/Kconfig    |  3 ++-
>  drivers/usb/host/ohci-nxp.c | 25 ++++++++++++++++++-------
>  2 files changed, 20 insertions(+), 8 deletions(-)

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

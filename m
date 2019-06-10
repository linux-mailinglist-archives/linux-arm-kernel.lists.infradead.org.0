Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD573BAA4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 19:13:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bfVU01ERT9P7k5AmecC39WhmG6nNy/H98GtGUjwRoGA=; b=q5d8ZQCMyX7zhC
	4J0ZzIEe8xj+bfc0ISkbVixVbpOv069FV281pfL1jYPu8bamHKPMyeF8/zAI9Iqc7yXplAwRYRzEu
	CgCfg49F8wJFrHk/jEqqCYOhscmzjv4d1BrkS9AIbbVoPifJCMu/Ls5gh8hkIasLVziZ7fVVTTeHv
	94WUx2fBA6sxMxaN6fmNVO8rCm4V72zhJ3TmMiiw2xWWnnqFKm+7PJUsOHU/6JaYallqTrByqFJk9
	2UsGfEzEdyPh4LC9519oaZ+oo8s4pG2uYPNt1nQ5UvEqBcqpddQTsRNT8F3p8JnI/MKNUUT3wOq6R
	/RGDAK9X9nvuWbjpcB9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haNr9-0007zQ-PG; Mon, 10 Jun 2019 17:13:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haNr0-0007yW-BF
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 17:13:07 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 41AE5207E0;
 Mon, 10 Jun 2019 17:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560186785;
 bh=sT/rZSZYEkVXc+vfxxISMm6Asd7SJoGF8UinSixDpnE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1bSwVDIRlZNG9xrSaFEIuayW/tn8kHGx1Y+QO1S18vHPPtZ9tJlabLj8ZLJC6+Tz2
 y8zMJ6kOVtka73LQLBRNh+BCMJSvcylXJPydtkd+yOr2W2daDYUUczRmRC32TVuVqy
 9Ynq/LYS1yDKhy4KOLZhtUGXm2SmfunmUR5jtq2A=
Date: Mon, 10 Jun 2019 19:13:03 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH 2/2] serial: uartps: Use the same dynamin major number
 for all ports
Message-ID: <20190610171303.GA14134@kroah.com>
References: <c6753260caf8b20cc002b15fcbf22b759c91d760.1560156294.git.michal.simek@xilinx.com>
 <381ea608440345a4424d24296666b2451b1a20ee.1560156294.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <381ea608440345a4424d24296666b2451b1a20ee.1560156294.git.michal.simek@xilinx.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_101306_399238_B68EC32B 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: monstr@monstr.eu, Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-kernel@vger.kernel.org, johan@kernel.org, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 10:44:56AM +0200, Michal Simek wrote:
> From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> 
> Let kernel to find out major number dynamically for the first device and
> then reuse it for other instances.
> This fixes the issue that each uart is registered with a
> different major number.
> 
> After the patch:
> crw-------    1 root     root      253,   0 Jun 10 08:31 /dev/ttyPS0
> crw--w----    1 root     root      253,   1 Jan  1  1970 /dev/ttyPS1
> 
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
> 
>  drivers/tty/serial/xilinx_uartps.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

Does not apply without patch 1/2, so dropping it from my queue.

Which is ALWAYS a good reason why you should submit bug fixes or other
things before code cleanup patches.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

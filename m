Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E769E82AC5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 07:17:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CYMrkMv9qzbJRPaUG9QmnUAOjEbcYiDvhGkNAmSidbw=; b=aBxXd1OitL0VI8
	9EqnOc8z7w14lFZzS0KPHexQ8DyiUdcKJyK8xIxFb4AC7kSerib75eTtpmLyMBLCzzU3XlpoQHaH/
	ESoozwjVl44NqFkOkZm0LJ8ZAcr2Z1Ov6XYFJ8IdTzejsMxThgdFMEKizxVgtMNDsnieSpR6R2+mJ
	ab6psiIcmx3S2t+21g/nL36+x6uMYCyQM3NZoTKE7jKB4puri9izM3xqdSwdp/+ROuDUDoClJX7xt
	qEJBAolZFRIkS/ABl4eTnRzTr/BFvqq7TggbusyOdeMH/Op8CIWxN8KBvstbvvY2dRqDaG0DUFKj9
	nWlR/eauQOrsUUCqGVzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hurqa-0001wo-MV; Tue, 06 Aug 2019 05:17:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hurqT-0001vo-Bc
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 05:17:14 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BBA372147A;
 Tue,  6 Aug 2019 05:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565068631;
 bh=t9g0NyRteN+/Mf2Nk1jPL7u+czYsHH5GImLgIJ3adbc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=REKNBgzQpPCbxpbo4T21CE1eMyMHOCzn9jaQ2Xo4KAbz97+ynmh1dszHKM6G+PTsH
 gsCI8GiOfrsTRxk6enfIO3NUGKfkCHDEySlEoUbtaKNBOp106UGClxR5RLzSItd0PD
 TurbFmNWsMsJWXNN2Oi1NVyEoH7ZFspomnKxW3EQ=
Date: Tue, 6 Aug 2019 07:17:08 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Luis Araneda <luaraneda@gmail.com>
Subject: Re: [PATCH 0/2] ARM: zynq: smp improvements
Message-ID: <20190806051708.GB8525@kroah.com>
References: <20190806030718.29048-1-luaraneda@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806030718.29048-1-luaraneda@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_221713_423468_8F06F4C7 
X-CRM114-Status: GOOD (  16.16  )
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
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux@armlinux.org.uk, stable@vger.kernel.org, michal.simek@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 05, 2019 at 11:07:16PM -0400, Luis Araneda wrote:
> This series adds support for kernel compiled in Thumb mode
> and fixes a kernel panic on smp bring-up when FORTIFY_SOURCE
> is enabled.
> 
> The series started with the second patch as an RFC, and
> the first patch were suggested on the review to complement
> the fix.
> 
> The changes were run-tested on a Digilent Zybo Z7 board
> 
> Luis Araneda (2):
>   ARM: zynq: support smp in thumb mode
>   ARM: zynq: Use memcpy_toio instead of memcpy on smp bring-up
> 
>  arch/arm/mach-zynq/headsmp.S | 2 ++
>  arch/arm/mach-zynq/platsmp.c | 4 ++--
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 
> -- 
> 2.22.0
> 

<formletter>

This is not the correct way to submit patches for inclusion in the
stable kernel tree.  Please read:
    https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
for how to do this properly.

</formletter>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

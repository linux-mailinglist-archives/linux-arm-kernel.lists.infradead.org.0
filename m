Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 755821BF383
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 10:51:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wWIiuN/uRVUaekYe3va8xiF67LyO6XnK9WX57ZYl5nE=; b=kT/4Dlrz2f5u+F
	5lhGWlTsFSpAWD+ixjjL8ua+efDHfDmZZchFTIShJUtihN/aQ861jrzM07pa1geF2yO39ACCTG5Bb
	qzaVNIzMiySkdP3gDCEkkQRvXAgInrG+oFwXSJjPEXUp21N+iyLoPs/yRr2hmNniGyE997H0LRsze
	zyB5CIiedcfd7WKZaa0Y9dtfHwWHUd1w8f5b0WzDR4tL4KZtn2CQcFy0wFdHwJOnNNjAvmNb47YSR
	Lh13UMvypSE4OjFvWNXMTQHaeg8MdZdeb7oK83IUqaGQ7SD12oha18kYCsC4nOZsWdKiI4Vx3n4NR
	89EQgeBfJOYNA8oMcZmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU4um-0002pN-9Z; Thu, 30 Apr 2020 08:51:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU4sg-0007Bj-T0
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 08:49:21 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6931920787;
 Thu, 30 Apr 2020 08:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588236557;
 bh=J8dfL1puxygVx/IlBM6DbxBoxp2B2lbaeh0Jyf/zt5I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lUgdFv3A3wy6Cj/P0sEaQQmV4uf/6P3kcXZ8rX9/GDr5VkbFPSBo+sRbDzL50gNvz
 grVtyzjVTf4taIT/s9ZbxFgeIWE/UgM3KvPoEqaZgNvvKbvgdFMBTVC0D/3hRe0Veu
 aC2Yxj5t8OI6L5lOXN3ZVg3JqAV+B9c2CZXqn2p0=
Date: Thu, 30 Apr 2020 10:49:15 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH] tty: xilinx_uartps: Add the id to the console
Message-ID: <20200430084915.GD2496467@kroah.com>
References: <06195dc0effe2fb82e264e4faefcfdd6ebc00516.1588234277.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <06195dc0effe2fb82e264e4faefcfdd6ebc00516.1588234277.git.michal.simek@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_014919_110435_DD4BFC7F 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: monstr@monstr.eu, Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, git@xilinx.com,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 10:11:21AM +0200, Michal Simek wrote:
> From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> 
> Update the console index. Once the serial node is found update it to the
> console index.
> 
> Fixes: 18cc7ac8a28e ("Revert "serial: uartps: Register own uart console and driver structures"")
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> Cc: stable <stable@vger.kernel.org>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
> 
> Greg: Would be good if you can take this patch to 5.7 and also to stable
> trees.

WHy?  I don't understand what bug this fixes/resolves, please be much
more descriptive in your changelog text showing this if you wish for it
to be backported to a stable tree.  As it is, this just looks like you
are adding a new feature.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

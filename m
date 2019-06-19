Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D134C0CA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 20:31:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FJwJmZ51WhCQHzXGPVMESZKxj04Cc/YKvUUDjUo94mA=; b=KjddE02hVzdk4v
	8nN1w3XD2lkOvyWKjIA9OY8mSXjmyJG+cYeuoIYj3RgCDpY/RSyIxf5vw1EKn6rX2Ie65a8VXwSCf
	Yhh3Sudw0NGkDbEeyy0ypkqLo+ZldE6E+SD//mckCDZleFIBddmNrX4gBrg2Z02zwbS3kKC1/gBoI
	CYqRQ7X+6fSr7FMZuYxltIRwLHtP90hWYUz4QCHnpsRGpk0aW0aovxg42WFLFB/EA5zB7PYcnCFy9
	VIBnyqSrrqbTiCn9u2phe0RJc5FG8PFe1yh6ZXYwTAFPfd0aRIo1mnDplANo18n+MBuMGCNXLDztp
	wtXEYRDsHSY8KOQ8cshw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdfN4-0004HV-HM; Wed, 19 Jun 2019 18:31:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdfMp-0004H7-0g
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 18:31:32 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 29D0C214AF;
 Wed, 19 Jun 2019 18:31:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560969090;
 bh=XBG0dxmiiFJ+GT6hxWF0ECFvhdLG12QMTMvnMxs4IRs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zJAWG8KtvXAlj9R6AZWa0n0YtLnPFT3YtMh5pjIGbWSq+VhRlyZTy6kktbBLlNGyM
 HJ4DFduWJOD4oYufIHPLx27On+5saj9IgeVekf0lsYMaT5OzCaxJYSZLnCtoxoSd4p
 X8LJa3nlpVSCd/AtE7Ub8Weqk56I5IzUuplRLjX4=
Date: Wed, 19 Jun 2019 20:31:28 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 19/45] coresight: platform: Make memory allocation helper
 generic
Message-ID: <20190619183128.GA6735@kroah.com>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
 <20190619172949.4522-20-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619172949.4522-20-mathieu.poirier@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_113131_078026_81BD8BCD 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 11:29:23AM -0600, Mathieu Poirier wrote:
> From: Suzuki K Poulose <suzuki.poulose@arm.com>
> 
> Rename the of_coresight_alloc_memory() => coresight_alloc_conns()
> as it is independent of the underlying firmware type. This is in
> preparation for the ACPI support.
> 
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> ---
>  .../hwtracing/coresight/coresight-platform.c  | 34 +++++++++++--------
>  1 file changed, 19 insertions(+), 15 deletions(-)

This file is not in my tree.

Did you forget to send me the commit:
	coresight: Rename of_coresight to coresight-platform
???

I applied all patches up to here, can you rebase and resend the
remaining ones?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

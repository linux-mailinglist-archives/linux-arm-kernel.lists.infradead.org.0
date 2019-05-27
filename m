Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABD42B715
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 15:56:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bI7WoXjzZq7Bclj6TCz6SMd9zKkqNpWB6b3hJF/quTI=; b=iyVz1i2PSwi2Y7
	7EgfZ8GUwVCDoPjr5kh531pogxP7cWmuyHGle2uibXDJUsWp4civbGwVm1n0Pyb8BBiCmKPzJ1/je
	aQyU14Tk7hBdqGIyyOsOzQb7MaxuyypENt4KPTRapoOqKzgFgkJh0PNoyEu19IFiJ8I8rB/dKpWx0
	WNB2pH/sVqvL+CMHsLyF3rNomSm/1EOohi7DPR/9zfaB/FlIrCKWn6bs0FPOv1h1wNp745Zy3//gi
	6NaFOC1AFblYO2LhokLtZBIKj6JfuyviNWai4ODeY20qROLM/plPPf1nWNDtYXW3IQMRHBjxFRS+S
	9S13YipFCgqjeBSWR0hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVG6l-0006tX-Bd; Mon, 27 May 2019 13:56:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVG6d-0006r0-Gu
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 13:56:05 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6C4F120665;
 Mon, 27 May 2019 13:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558965362;
 bh=7nAEx+NEYoct6Lsn//YELk+M+9k47SCsZD+tBmiWwMc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Q2r+HchmvjCQjRXjqu8bFPd9MoncBBHw0AleyBNg9uXe8iQrDSIpoAWV8EWjdmYbo
 pMgwCkPxoAMMMWXgu47XTb2H1Zan7nMkrLl/gLDzS76teyVMk2i1d7w1upsCwT4eao
 GQPNL1n1GYa29nLlbeHCXWP454EVBUTnc+j0zYl8=
Date: Mon, 27 May 2019 15:56:00 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
Subject: Re: [PATCH stable 4.9] arm64: Save and restore OSDLR_EL1 across
 suspend/resume
Message-ID: <20190527135600.GA7659@kroah.com>
References: <155809593723029@kroah.com>
 <20190523152733.28069-1-jean-philippe.brucker@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523152733.28069-1-jean-philippe.brucker@arm.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_065603_652747_F85EDB04 
X-CRM114-Status: GOOD (  10.51  )
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
Cc: catalin.marinas@arm.com, will.deacon@arm.com,
 linux-arm-kernel@lists.infradead.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 04:27:33PM +0100, Jean-Philippe Brucker wrote:
> commit 827a108e354db633698f0b4a10c1ffd2b1f8d1d0 upstream
> 
> When the CPU comes out of suspend, the firmware may have modified the OS
> Double Lock Register. Save it in an unused slot of cpu_suspend_ctx, and
> restore it on resume.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
> Signed-off-by: Will Deacon <will.deacon@arm.com>
> ---
> Modified for v4.9 backport: 623b476fc815 and 6d99b68933fb are missing in
> v4.9, but the conflict is easily resolved.
> 
> Tested on Juno with cpuidle.

Now queued up, thanks.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

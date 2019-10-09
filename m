Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 330E2D12D4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 17:33:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bBecw/qJyuu6AyvT/2BIZHRBV1KqZY4VToxvNPcQYpY=; b=RzIpPqzdRC0abV
	TA1XxHvaO3+nRLKVIYKm3/KcmBmoge8eOdmd4vT9UQFRICaqqOjN+eTN0CLa1h3KdR2oeAoM3t0zf
	6Y0/Ov87g6pyB62fXJ8mrzxc6NVvClhLC72ydYiAwtPfneN8NoxAQSW55ObvLNRmc3bJkQFuY7Voe
	KtVDu4e4fJZ+biR7Vkw+/vfsIYZ4cpOZCbrSJ7G5p7T7XX6+E4Oc+rJzfjcuGru8WJ9RH3WXHFXHM
	HBeSPrO2pwWGEuQQK5na4CZ9v7pGBJmXxCvFwoi7vceCShjK6TUiOJ7bo8zrWzu+oKNQWpiDOiT+M
	Teg/iWmKNuu2XoCVTXHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIDxu-0006fR-Mj; Wed, 09 Oct 2019 15:33:26 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iIDxk-0006fF-L7; Wed, 09 Oct 2019 15:33:16 +0000
Date: Wed, 9 Oct 2019 08:33:16 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Ben Dooks <ben.dooks@codethink.co.uk>
Subject: Re: [PATCH] arm: add kernel/fork.c function definitions
Message-ID: <20191009153316.GA25186@infradead.org>
References: <20191009140637.12443-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009140637.12443-1-ben.dooks@codethink.co.uk>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: linux-kernel@lists.codethink.co.uk, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 09, 2019 at 03:06:37PM +0100, Ben Dooks wrote:
> Add the definitions of arch_release_task_struct,
> arch_task_cache_init and arch_dup_task_struct which
> are used in kernel/fork.c but defined in various
> architecture's <asm/thread_info.h>.

So please lift them into a common header.  In fact I'm pretty sure
I had that comment before when people did the same blind sparse
cleanups for riscv..

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

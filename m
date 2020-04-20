Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9AB1B0672
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 12:21:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vdnrkG2NFi0Vj6IZos+MhbbGlpnOW3vegPJfZzgN2h0=; b=K82tyuBG/xE6WN
	Y97xOfDqla5xNua7L7V6MP2Lzegs0bViauKqcG9dTCW8Lxr6Gf8YO8AD71yF409LjvpsJrXyTVBh6
	U4VTC1BFbzZRbU52HXcweM7DqHqN+u3a5D4AqyVwOfTzSLV3TLX399dqnTkr29LtWr1I2uCx0sDTQ
	wQ8sCfp/qfnlR/vYrHBKZU3/9rxB2SZTxIFV1gBCYgTWz6iL7u0PC9laEym0DZDBIqHp2cay73p+v
	Vi05wXu8U6w34PEnK7rxQRs3lmPSoufmHKO8VXB9YvSbvvrFCaXtJNWI4hHnfGUb+AHnYaG4f7pF6
	taSTq9w3GqfIX4ovKb6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQTYW-0002eO-2o; Mon, 20 Apr 2020 10:21:36 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jQTYN-0002db-Un; Mon, 20 Apr 2020 10:21:27 +0000
Date: Mon, 20 Apr 2020 03:21:27 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Russell King <rmk+kernel@armlinux.org.uk>
Subject: Re: [PATCH] arm: compat: remove KERNEL_DS usage in
 sys_oabi_epoll_ctl()
Message-ID: <20200420102127.GA17772@infradead.org>
References: <E1jOjmS-0005r0-MD@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1jOjmS-0005r0-MD@rmk-PC.armlinux.org.uk>
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
Cc: Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 04:16:48PM +0100, Russell King wrote:
> We no longer need to switch to KERNEL_DS mode in sys_oabi_epoll_ctl()
> as we can use do_epoll_ctl() to avoid the additional copy.
> 
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Looks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

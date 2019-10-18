Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4A5DCA5E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:09:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=imCGr+GT6OnkMsTPcA7d1CVhE4UzkETUxDpUMNeZx10=; b=F3cH2YPbpDgjoq
	tLyHyF1WwgNoh3E/Zr578fsGlfBuLBlrVGmcnjA9m2+GhDZOll4pKh9GsvVcUoaquQF0HZwYKlG8Y
	tFhWWXv5+IRAh/Drz/GrKMuh8Lo0McIIf7RSk2KPTlinbbmDJHOlvVmuG6Qc3qmCbUEVYzKRMSqUR
	joxW+LHmOhAEvXOX1Jv2cZ3eMsMLg2E4HfuHXOSe16B+VqpHhiXzjbGHbbdciYns6QHyo3ox8gDfF
	xoZh9L+QYlvuTYbdlOVGgYi3dlys2hgEr92l7fBpzfNmqktA/aJ+VhiQ6FBWwmVuh/1mkYVDvu4P/
	I+VshP0rBoHLubkkPgNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUop-0007vk-1v; Fri, 18 Oct 2019 16:09:35 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iLUo8-0007Tv-Ic; Fri, 18 Oct 2019 16:08:52 +0000
Date: Fri, 18 Oct 2019 09:08:52 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: Re: [PATCH 4/7] soc: fsl: qe: replace spin_event_timeout by
 readx_poll_timeout_atomic
Message-ID: <20191018160852.GA13036@infradead.org>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191018125234.21825-5-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018125234.21825-5-linux@rasmusvillemoes.dk>
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
Cc: Li Yang <leoyang.li@nxp.com>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 02:52:31PM +0200, Rasmus Villemoes wrote:
>  	/* wait for the QE_CR_FLG to clear */
> -	ret = spin_event_timeout((ioread32be(&qe_immr->cp.cecr) & QE_CR_FLG) == 0,
> -				 100, 0);
> -	/* On timeout (e.g. failure), the expression will be false (ret == 0),
> -	   otherwise it will be true (ret == 1). */
> +	ret = readx_poll_timeout_atomic(ioread32be, &qe_immr->cp.cecr, val, (val & QE_CR_FLG) == 0,

This creates an overly long line.

Btw, given how few users of spin_event_timeout we have it might be good
idea to just kill it entirely.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

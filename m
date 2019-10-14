Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5722DD6711
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 18:17:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hQdWb/CcMwzA/BnAA+pwvdv66b52T7v6LbVqpcv/T1U=; b=EZCDR/RzBFesCL
	wBfxteDUj24GAF8wrIYcNA2MsllOVBIqsIp/0li50EcUg/86xi3BCPYqE5y01gat9/l+An69iOSaq
	UO4mSbnRc+s5VdEVsJ78/uOP+duvXHWI+YqRzq4Xa0PY7ugvTPluDuZOtS0wwb4v2ACmPSyWJQIig
	FP6RYlysvxwm4NigrVT0d+n6AreMR1iscBlOwApFmtPiEypkHTaK5cD+yfaIUXDrsWAM559skUz/3
	xpepYlMRFqDR3gmMx1u1cFi8an3ug3wHc1CS3o3dbuJqofM3pEb97k1OcoAR6BODvuP9C2mAd+Y9t
	VqE09mCS1CX9mZLXT9WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK32i-00039z-Jg; Mon, 14 Oct 2019 16:17:56 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iK32N-00034o-Ss; Mon, 14 Oct 2019 16:17:35 +0000
Date: Mon, 14 Oct 2019 09:17:35 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Ben Dooks <ben.dooks@codethink.co.uk>
Subject: Re: [PATCH] arm: add kernel/fork.c function definitions
Message-ID: <20191014161735.GA9498@infradead.org>
References: <20191009140637.12443-1-ben.dooks@codethink.co.uk>
 <20191009153316.GA25186@infradead.org>
 <12dd599c-e7e8-2cdb-4363-fdf18c023bef@codethink.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <12dd599c-e7e8-2cdb-4363-fdf18c023bef@codethink.co.uk>
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
Cc: Christoph Hellwig <hch@infradead.org>, linux-kernel@lists.codethink.co.uk,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 02:44:25PM +0100, Ben Dooks wrote:
> Does anyone have a preference to where these should go?

Maybe include/linux/thread_info.h ?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

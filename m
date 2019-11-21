Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9BC105B31
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 21:36:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K/VNvYfx9F4Ddyo4AKRgrU+Pe/o2xyuAUgWekIEubls=; b=jO7LQUjWKCuIDq
	1ko62h/Wb7ULNbOKB+UfNsdvoolm5GAyNGyCynfsHdFsa3mcImM/SWy3VH8yGJzRoBU/iCQGpb4v2
	I4eoylR+rvfCwzqNmcKsAUSfXRzP7m+yf4OO2QQyug9+ctUlFS0xUEXQi5Z3OyUynh9fCKmJHAPJM
	opusCYlAsDxmkpo0J3jJX9QwAEhodQxeBQE1WwYJqW8YcHB7FTL8T9BYyXC15u4pSvUKRReKbx3yG
	aIkr8vIe4et8hwanOGW0/aDo3RtRF+HY33ND6Cwa8OovL4Q+/2ET+0EB3bmOnuQoDjhQv01InMB2o
	1yHqleK8SAbiF7IKPrFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXtBR-0000qI-Hr; Thu, 21 Nov 2019 20:36:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXtBG-0000pR-CW
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 20:35:59 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D9F442067D;
 Thu, 21 Nov 2019 20:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574368557;
 bh=EBEuWEXiND5r+hzvfssTP/k6Pzy7IzSaEwfFoMMhtG4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hTLafm0tmhYvG24r+oqQKAppv2cnWeGr379P8zg4tUDualXOU7iS51eNapOndq0w5
 rmJSK96IY+YHN360Q0l6q5Vqqc7aZxD9hJlRiCPZokZB8pnIbWJ3pUtkM4uJL56bDt
 3yhtdxUuCoQuhiBhQ3ZFobG2pvbcigDuiZGOqsp0=
Date: Thu, 21 Nov 2019 21:35:55 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [stable 4.19+][PATCH 01/20] i2c: stm32f7: fix first byte to send
 in slave mode
Message-ID: <20191121203555.GC813260@kroah.com>
References: <20191115223356.27675-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115223356.27675-1-mathieu.poirier@linaro.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_123558_445811_0E8EC217 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
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
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 15, 2019 at 03:33:37PM -0700, Mathieu Poirier wrote:
> From: Fabrice Gasnier <fabrice.gasnier@st.com>
> 
> commit 915da2b794ce4fc98b1acf64d64354f22a5e4931 upstream

That commit is not in Linus's tree :(

I'll stop here.  Please check all of these and resend the whole thing.

Also, does this series also apply fully to 5.3.y?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

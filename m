Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BB782ACA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 07:17:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yVoM07icSmOA+lnt6Zf6EbtrN95a8WU6Mtcgh+cJ95I=; b=J/vnu++L89do1M
	zD3B83+DqhXUPc65wNXMoOf//Gzo/5/wlZp/0Pt9CDtnObiYDDIkHpXxL96pBw/pjPnG5zoLr47mQ
	BkK21qzsZAoYcGWh38rGXtvUS1KYFuuGkZIkZ0vxQRtW2VU4a8Yq3kTnqyuGNgUTyZk0Ph1cGdEW8
	mvySw5YKkiZTeYs5M9vymDOZLO68cPiOPFIXZ5lbb/T5je/0dGX1/O3/DqCKYBjmZocuT7oXa5d4r
	N+O+SJIWEnls8jA/H7/7H9kB8R+A1GVUSRb25/cfwoGXi2yx05a+3VHpOVrGZZT/9zmw6bCQHXG3t
	RLXO9W0Rb4Clj+aPUiXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hurqo-0002A3-CZ; Tue, 06 Aug 2019 05:17:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hurqa-00023S-6N
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 05:17:21 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5D97F2147A;
 Tue,  6 Aug 2019 05:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565068639;
 bh=Gx5uSt/sYnvCcyG+tEybLFzNUAO0M+4D5ABXPzmpRVw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=I9sf3PA9DTJc+/mPn59TBlyh8/QisNcIYi8MNQmYQU1qXx43Kl9lAs6u9PTr5LYkA
 2YLFnng4ERnv4NggJKt6jslhD5t0247zy4UD8bNn8EzyZNPo6FVDixAJ21o5+d/c5O
 3wIOT2cTf6H9gilQHKt9uQNMWm372CuQIROuB2HA=
Date: Tue, 6 Aug 2019 07:17:17 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Luis Araneda <luaraneda@gmail.com>
Subject: Re: [PATCH 2/2] ARM: zynq: Use memcpy_toio instead of memcpy on smp
 bring-up
Message-ID: <20190806051717.GC8525@kroah.com>
References: <20190806030718.29048-1-luaraneda@gmail.com>
 <20190806030718.29048-3-luaraneda@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806030718.29048-3-luaraneda@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_221720_342467_8AEAC4AA 
X-CRM114-Status: GOOD (  14.97  )
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

On Mon, Aug 05, 2019 at 11:07:18PM -0400, Luis Araneda wrote:
> This fixes a kernel panic (read overflow) on memcpy when
> FORTIFY_SOURCE is enabled.
> 
> The computed size of memcpy args are:
> - p_size (dst): 4294967295 = (size_t) -1
> - q_size (src): 1
> - size (len): 8
> 
> Additionally, the memory is marked as __iomem, so one of
> the memcpy_* functions should be used for read/write
> 
> Signed-off-by: Luis Araneda <luaraneda@gmail.com>
> ---
>  arch/arm/mach-zynq/platsmp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

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

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D49FF185074
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 21:42:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TBgE3cebRARdD/IBPyI+/GfF6bB4pHZBCWEp6xiIUsE=; b=AoTX5b1LRFBLeG
	4BdSaGcYiA1FqoeL6PE33e04vmLLCuqhtOoiaMk1a58zWurECByTjp8ALr1Q/E3598kCBGuAUK9Ms
	p0xQ4KOHjUrTliMLVcOQYi37rFWjb1RZI6mDnBeDyfyf/rSDNWo5k+fWfyfbkF0VM3saegpE59F67
	aDB4mNWPq8XqUALg6jrgIqXbv+bW8GF1Pzw37qWqwSio794BS1k9wx/MKdB+6sfmRHDoTr3G/G71f
	4y3aJKZB/VjLd4CGwVl3MFf6AUjnd+vWRr2MIZ5TTBt7yMow1ZNlXdCR3uRp0cC7TA49HiV26IsQG
	dNxnMhUOE1/e4ZLFpJRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCr8K-0004BN-D6; Fri, 13 Mar 2020 20:42:16 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCr8B-0004AU-Cb
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 20:42:09 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 71EB88087;
 Fri, 13 Mar 2020 20:42:53 +0000 (UTC)
Date: Fri, 13 Mar 2020 13:42:04 -0700
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: Re: [GIT PULL] ti-sysc fix for v5.6
Message-ID: <20200313204204.GF37466@atomide.com>
References: <pull-1584132028-918607@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <pull-1584132028-918607@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_134207_474512_EBE5357B 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-omap@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tony Lindgren <tony@atomide.com> [200313 20:41]:
> From: "Tony Lindgren" <tony@atomide.com>
> 
> The following changes since commit b2745d92bb015cc4454d4195c4ce6e2852db397e:
> 
>   bus: ti-sysc: Add support for PRUSS SYSC type (2020-03-04 07:54:57 -0800)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.7/ti-sysc-fix-signed
> 
> for you to fetch changes up to aef067e8e95d856bc09557a91e740b2d6a81a6ae:
> 
>   Merge branch 'fix-lcdc-quirk' into omap-for-v5.7/ti-sysc (2020-03-10 09:06:02 -0700)
> 
> ----------------------------------------------------------------
> Fix for ti-sysc suspend/resume issue on am335x for v5.7 merge window
> 
> Just merge in a ti-sysc fix for am335x lcdc suspend/resume issue, and
> resolve merge conflict.

Oops sorry this one is for v5.7 merge window, not for v5.6 like the
subject says.

Regards,

Tony

> ----------------------------------------------------------------
> Tony Lindgren (2):
>       bus: ti-sysc: Fix quirk flags for lcdc on am335x
>       Merge branch 'fix-lcdc-quirk' into omap-for-v5.7/ti-sysc
> 
>  drivers/bus/ti-sysc.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

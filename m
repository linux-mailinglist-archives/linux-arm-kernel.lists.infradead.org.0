Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8C41A1631
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 21:48:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4hD8ja/vNiZXXCJQETwqitb9FCmebKLpZF+3K7KIWkY=; b=S3OaPHfGS5UGqb
	m9vRAXafeQEAazkOJmKcaU+DTKMRrWuv0LmFgYLZ3wnreLOi+egGs9M4xdkPpuYwHsU/4TbjnGZoM
	aqfxaJK5LmQVZ1FMSTbla/oeh7n2hWmNKwdZQQl2pUfoyoQAGNkGGO8IJd7RRYbtnqhaYcy1FRReW
	AkVAi97ieOolGGxftgp8F8cjpWsRsSHGcWZNLb9X+WuHdxA2h+gzLRTO2eZwcGrQgA8RXK1O6wHDv
	uXYMEm/Nn10bBaR04OFDSkQwIy4hexJJCeFd7yuu8aG7E5jCGE7rPgYBzIamcmSSM6zBzz2eujjKr
	agxx4E4+YCbyut/H7gcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLuD9-000344-0N; Tue, 07 Apr 2020 19:48:39 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLuD1-000332-Pd
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 19:48:34 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 0EAE380533;
 Tue,  7 Apr 2020 21:48:26 +0200 (CEST)
Date: Tue, 7 Apr 2020 21:48:24 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Jules Irenge <jbi.octave@gmail.com>
Subject: Re: [PATCH 2/5] video: Add missing annotation for
 cyber2000fb_enable_ddc() and cyber2000fb_disable_ddc()
Message-ID: <20200407194824.GA28801@ravnborg.org>
References: <0/5> <20200403160505.2832-1-jbi.octave@gmail.com>
 <20200403160505.2832-3-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403160505.2832-3-jbi.octave@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=XpTUx2N9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=pGLkceISAAAA:8
 a=e5mUnYsNAAAA:8 a=c_KzuGgbJLCNkQNsKyQA:9 a=CjuIK1q_8ugA:10
 a=Vxmtnl_E_bksehYqCbjh:22 a=pHzHmUro8NiASowvMSCR:22
 a=Ew2E2A-JSTLzCXPT_086:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_124832_003507_E0F6451A 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:FRAMEBUFFER LAYER" <linux-fbdev@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, boqun.feng@gmail.com,
 Russell King <linux@armlinux.org.uk>,
 "open list:FRAMEBUFFER LAYER" <dri-devel@lists.freedesktop.org>,
 linux-kernel@vger.kernel.org,
 "moderated list:CYBERPRO FB DRIVER" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jules.

On Fri, Apr 03, 2020 at 05:05:02PM +0100, Jules Irenge wrote:
> Sparse reports warnings at cyber2000fb_enable_ddc()
> 	and cyber2000fb_disable_ddc()
> 
> warning: context imbalance in cyber2000fb_enable_ddc()
> 	- wrong count at exit
> 
> warning: context imbalance in cyber2000fb_disable_ddc()
> 	- unexpected unlock
> 
> The root cause is the missing annotation at cyber2000fb_enable_ddc()
> 	and cyber2000fb_disable_ddc()
> 
> Add the missing __acquires(&cfb->reg_b0_lock) annotation
> Add the missing __releases(&cfb->reg_b0_lock) annotation
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>

Thanks, added to drm-misc-next, so the patch will hit the kernel
when the merge windows opens the next time.

Was this the only locking relevant warning in fbdev?
I would expect a few more.

	Sam

> ---
>  drivers/video/fbdev/cyber2000fb.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/video/fbdev/cyber2000fb.c b/drivers/video/fbdev/cyber2000fb.c
> index 460826a7ad55..513f58f28b0f 100644
> --- a/drivers/video/fbdev/cyber2000fb.c
> +++ b/drivers/video/fbdev/cyber2000fb.c
> @@ -1160,12 +1160,14 @@ EXPORT_SYMBOL(cyber2000fb_detach);
>  #define DDC_SDA_IN	(1 << 6)
>  
>  static void cyber2000fb_enable_ddc(struct cfb_info *cfb)
> +	__acquires(&cfb->reg_b0_lock)
>  {
>  	spin_lock(&cfb->reg_b0_lock);
>  	cyber2000fb_writew(0x1bf, 0x3ce, cfb);
>  }
>  
>  static void cyber2000fb_disable_ddc(struct cfb_info *cfb)
> +	__releases(&cfb->reg_b0_lock)
>  {
>  	cyber2000fb_writew(0x0bf, 0x3ce, cfb);
>  	spin_unlock(&cfb->reg_b0_lock);
> -- 
> 2.24.1
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

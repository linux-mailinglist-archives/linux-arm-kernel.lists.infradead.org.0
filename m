Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3725BA43B8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 11:49:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X7XOiQy3Zc6UY4RZan8+ktJzuA64UBXgeeyNhQrakY0=; b=o313XNB6I4FlP8
	M3fchtI06d+Iy5lWHz2l5ohwCn4b678sQcCaQX3veC82dcTZdWoYu5g3ijK2O/WXG5mm2PZ+0QhKr
	r8efZ/e9WZrFFvziFE30W2QvA9kYjA0hUeXX9v/nH1R07nbmsk5ZbAVgsdREzH12aKD9oBAOGKcV0
	/314w6tfCvpxqITJy723ZJw5kETPXlh9J6uf9phJtpSJzbbDCg9mJLLcYa4OsfW/aEG56VL+uQQMb
	sSynh7w9CWqImEobFEkqaTIm+0oSN9kvy/U9MlU1dvljZIqpkEDzVyx6iwcVroe2pdeVL1hwIM5Qf
	z2pZiDXa+ayAz3WtHtqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i400T-0002MN-O3; Sat, 31 Aug 2019 09:49:17 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3zzv-0002Lw-4A
 for linux-arm-kernel@lists.infradead.org; Sat, 31 Aug 2019 09:48:44 +0000
Received: from penelope.horms.nl (ip4dab7138.direct-adsl.nl [77.171.113.56])
 by kirsty.vergenet.net (Postfix) with ESMTPA id A4F8E25AE77;
 Sat, 31 Aug 2019 19:48:35 +1000 (AEST)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id 76A5BE22BF5; Sat, 31 Aug 2019 11:48:33 +0200 (CEST)
Date: Sat, 31 Aug 2019 11:48:33 +0200
From: Simon Horman <horms@verge.net.au>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH v2 0/7] soc: renesas: rcar-gen3-sysc: Fix power request
 conflicts
Message-ID: <20190831094833.qhj6otyocnq2di5l@verge.net.au>
References: <20190828113618.6672-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828113618.6672-1-geert+renesas@glider.be>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_024843_315018_8BF2CD05 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 01:36:11PM +0200, Geert Uytterhoeven wrote:
> 	Hi all,
> 
> Recent R-Car Gen3 SoCs added an External Request Mask Register to the
> System Controller (SYSC).  This register allows to mask external power
> requests for CPU or 3DG domains, to prevent conflicts between powering
> off CPU cores or the 3D Graphics Engine, and changing the state of
> another power domain through SYSC, which could lead to CPG state machine
> lock-ups.
> 
> This patch series starts making use of this register.  Note that the
> register is optional, and that its location and contents are
> SoC-specific.
> 
> This was inspired by a patch in the BSP by Dien Pham
> <dien.pham.ry@renesas.com>.
> 
> Note that the issue fixed cannot happen in the upstream kernel, as
> upstream has no support for graphics acceleration yet.  SoCs lacking the
> External Request Mask Register may need a different mitigation in the
> future.
> 
> Changes compared to v1[1]:
>   - Improve description of cover letter and first patch.
> 
> Changes compared to RFC[2]:
>   - Rebased.
> 
> This has been boot-tested on R-Car H3 ES1.0, H3 ES2.0, M3-W ES1.0, M3-N,
> V3M, and E3 (only the last 3 have this register!), and regression-tested
> on R-Car Gen2.
> 
> This has not been tested on R-Car H3 ES3.0, M3-W ES2.0, and V3H.
> 
> For your convenience, this series is available in the
> topic/rcar3-sysc-extmask-v2 branch of my renesas-drivers git repository at
> git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-drivers.git.
> 
> Thanks for your comments!

Looks good to me.

Reviewed-by: Simon Horman <horms+renesas@verge.net.au>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

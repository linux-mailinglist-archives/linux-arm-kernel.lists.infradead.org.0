Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B12DB132E49
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 19:21:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FG1MoTJSKbPBLfzPxuzITHSA15dM661jT4fvAe8/cw8=; b=ko8yHKYw5yGNGj
	t22oIaYZsnxVwt0MrbnsXBbqyGccj/PuhOac4dFiYViegNCiFohwTCH0QjO7Xq+U+cw5xkI8TTiKW
	SvSzTsuSuxEhv3OjU0kFbBJ/YKGnqf6Kn5XUQLGIA6sD8sU0pkIgYqwQIbhoGHaye0MlGAr3CZLhB
	LbBYC1HEzegAXo4WPNCqsglOZR6HSSVItAJMRWSBzWpxch7z654noEehaCQGJc7ICLjzU6vv6Ttdz
	5VFD8ADm+RqwDJ4lJ+XPkREZtZVtTAe502/32w24xLxppNkgQ9dclJQq7Bos9wcUZx1RCzHAGlAIz
	ZpAyd2PR4GpFmkVrfVUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iotU2-0006eg-Q6; Tue, 07 Jan 2020 18:21:38 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iotTw-0006dm-8Q
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 18:21:33 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id C5AF020033;
 Tue,  7 Jan 2020 19:21:25 +0100 (CET)
Date: Tue, 7 Jan 2020 19:21:24 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Lee Jones <lee.jones@linaro.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: Re: [GIT PULL] Immutable branch between MFD and DRM due for the v5.6
 merge window
Message-ID: <20200107182124.GB20555@ravnborg.org>
References: <1576672109-22707-1-git-send-email-claudiu.beznea@microchip.com>
 <20200107101748.GC14821@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107101748.GC14821@dell>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=eMA9ckh1 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=VwQbUJbxAAAA:8
 a=htO-QbRAU_hgi8wv2wEA:9 a=CjuIK1q_8ugA:10 a=AjGcO6oz07-iQ99wixmX:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_102132_479525_B2AD1210 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: alexandre.belloni@bootlin.com, airlied@linux.ie,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, peda@axentia.se,
 boris.brezillon@bootlin.com, Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maarten.

On Tue, Jan 07, 2020 at 10:17:48AM +0000, Lee Jones wrote:
> The MFD parts for testing:
> 
> The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:
> 
>   Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git tags/ib-mfd-drm-v5.6
> 
> for you to fetch changes up to 10f9167664362bac6f44813687cf52fec9d15845:
> 
>   mfd: atmel-hlcdc: Return in case of error (2020-01-07 10:08:58 +0000)
> 
> ----------------------------------------------------------------
> Immutable branch between MFD and DRM due for the v5.6 merge window
> 
> ----------------------------------------------------------------
> Claudiu Beznea (2):
>       mfd: atmel-hlcdc: Add struct device member to struct atmel_hlcdc_regmap
>       mfd: atmel-hlcdc: Return in case of error
> 
>  drivers/mfd/atmel-hlcdc.c | 18 ++++++++++++++----
>  1 file changed, 14 insertions(+), 4 deletions(-)

Can we get this into drm-misc-next?

I am not familiar with the process how to do this, and hope you can
help.

Thanks in advance,

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

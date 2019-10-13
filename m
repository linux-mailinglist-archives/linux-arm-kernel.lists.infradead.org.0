Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F92D586B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 23:58:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+EPEA42SI8Q/8YDGBj31P5zl3qSZZdqerxyTGspxQxs=; b=N2wB+DDlEa1Iz0
	tiLfJrPc/kDHlerLEC5sR+Io/XRsMbuSRfd8bYLEOlxPVnyQzTOTMheUy1zXsXR8vPypdE6Gun87h
	JqJWSAPvCeVWW8wp+WBs7/p9bt+BcTPIp3p46de4/ZJsK01PQaYLR5n3d4x44+IWekgrsuBSaZfve
	7E1f13qXdGuYi59Bx9BrKJAg3MkZGnjpt4YO8CjmLDHC+jLYwJEmVkM5OB78c5JuZSG79tt/yf9S5
	FiK/OIxQVLvaAxwQPV+wAakFR73hghjveBUZTncr/Z9B7zEYycjqlnoreCCRVr/7mm8kktn/TcHCt
	yiWEB1d/MzC3U9AgwrYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJlsF-0008Nt-6C; Sun, 13 Oct 2019 21:57:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJls6-0008NM-Vl; Sun, 13 Oct 2019 21:57:52 +0000
Received: from i59f7e0c5.versanet.de ([89.247.224.197] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iJlry-0004uB-PY; Sun, 13 Oct 2019 23:57:43 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Ben Dooks <ben.dooks@codethink.co.uk>
Subject: Re: [PATCH] drm/rockchip: include rockchip_drm_drv.h
Date: Sun, 13 Oct 2019 23:57:36 +0200
Message-ID: <12674451.zEyZYcXUJe@phil>
In-Reply-To: <20191009132134.18384-1-ben.dooks@codethink.co.uk>
References: <20191009132134.18384-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_145751_173088_C00881CC 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-kernel@lists.codethink.co.uk, David Airlie <airlied@linux.ie>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Mittwoch, 9. Oktober 2019, 15:21:34 CEST schrieb Ben Dooks:
> Include rockchip_drm_drv.h for definition of vop_platform_driver
> to avoid the following sparse warning:
> 
> drivers/gpu/drm/rockchip/rockchip_vop_reg.c:982:24: warning: symbol 'vop_platform_driver' was not declared. Should it be static?
> 
> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>

applied to drm-misc-next

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

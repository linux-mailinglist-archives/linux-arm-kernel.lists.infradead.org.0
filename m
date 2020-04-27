Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C94F1BADB7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 21:19:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RTj+VhQOtaGU4dIPWlA/kYVTbpqk2j1roVDSisVTCqU=; b=kjC9eT9x7G57Lc
	0vTRXAI/8x8UhOfkchUvFeGp2Bb7A17Ruu1vwSeUlbW1mIXhbvI1Q3h992qugTmLPVdL1uqloYKSV
	29d8U2bA4IsFeGAER47vPaSdI0wwiJ29KQ4iEO1tr8ZTs/qWgQQzaI3qGXsRxw4Pb94/MIVy/6tUZ
	CaVAlbJjjIDgdCXbxCGZXLFgyJejKw0iY0zlciUK7T+ne1WzLWCXedb6Wq2lGJuKCLZ9p2r1DdRmy
	WqGCjld6KIlpWYr8p7Yg8zT7Ugtp2zJTVxnLvuzMeIavC0ZT6Awut7ClDiTvy1Itsq4ICnGNpuoXx
	jfV1qzcVbxwbEbHH3+IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9HO-00083L-N9; Mon, 27 Apr 2020 19:18:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9HE-00081Q-FV; Mon, 27 Apr 2020 19:18:49 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jT9H7-0008PW-0i; Mon, 27 Apr 2020 21:18:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org, airlied@linux.ie, daniel@ffwll.ch,
 linux-rockchip@lists.infradead.org, Zheng Bin <zhengbin13@huawei.com>,
 dri-devel@lists.freedesktop.org, hjc@rock-chips.com
Subject: Re: [PATCH] drm/rockchip: Remove unneeded semicolon
Date: Mon, 27 Apr 2020 21:18:38 +0200
Message-Id: <158801509401.47920.4814357124924437922.b4-ty@sntech.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200424074410.1070-1-zhengbin13@huawei.com>
References: <20200424074410.1070-1-zhengbin13@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_121848_520085_657E8820 
X-CRM114-Status: UNSURE (   6.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 24 Apr 2020 15:44:10 +0800, Zheng Bin wrote:
> Fixes coccicheck warning:
> 
> drivers/gpu/drm/rockchip/cdn-dp-reg.c:604:2-3: Unneeded semicolon
> drivers/gpu/drm/rockchip/cdn-dp-reg.c:622:2-3: Unneeded semicolon
> drivers/gpu/drm/rockchip/cdn-dp-reg.c:703:2-3: Unneeded semicolon
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Zheng Bin <zhengbin13@huawei.com>
> 
> [...]

Applied, thanks!

[1/1] drm/rockchip: Remove unneeded semicolon
      commit: 611e22b1d9f61a8742c99433de9ff40795574c61

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

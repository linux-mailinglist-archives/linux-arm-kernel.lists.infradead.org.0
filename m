Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2700A1813DA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 10:01:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XsUvxesylf8GhC9GYenz2wv/sq9Yg7i9XfzyWhJmPSs=; b=uKYMvjtm2sXP11
	6F6k/eFBagZp+xjXBnfz4KaR2vCy20wppvmRGaNzt295Jw1zqshiwov0pOIw3gCBs4jXK0Uxot8J4
	a6vEQsJejPlwCyrjqxE1d/4iy5Ydq/nTMiUTTTmaYhPAdovqy0wgdLvynbfm31B2XSNqZA7tToxKM
	fjXBCoppsNT/74rMhTdtyddnoALuMG3hrn/LuBIaVJbAbomu1meuBGJ+QW5eqgHto1dJE4ufSsSpt
	AKdkot38Boorw3OqUk+UtiUMmPLACuNhUqWUDuj7wFx7z4WgfQkVHfNmnM6/29SNKErJTr3uirMvt
	APkRz5Zh+iwdxoLO+f3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBxEZ-0001OD-CD; Wed, 11 Mar 2020 09:00:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBxEQ-0001NY-5t; Wed, 11 Mar 2020 09:00:51 +0000
Received: from p5b127c69.dip0.t-ipconnect.de ([91.18.124.105]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jBxEM-0000VE-HA; Wed, 11 Mar 2020 10:00:46 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: hjc@rock-chips.com
Subject: Re: [PATCH] drm/rockchip: rgb: don't count non-existent devices when
 determining subdrivers
Date: Wed, 11 Mar 2020 10:00:45 +0100
Message-ID: <2624804.tm1DkxDElZ@phil>
In-Reply-To: <20200121224828.4070067-1-heiko@sntech.de>
References: <20200121224828.4070067-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_020050_366141_B03744D2 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, miquel.raynal@bootlin.com,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Dienstag, 21. Januar 2020, 23:48:28 CET schrieb Heiko Stuebner:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> rockchip_drm_endpoint_is_subdriver() may also return error codes.
> For example if the target-node is in the disabled state, so no
> platform-device is getting created for it.
> 
> In that case current code would count that as external rgb device,
> which in turn would make probing the rockchip-drm device fail.
> 
> So only count the target as rgb device if the function actually
> returns 0.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

applied to drm-misc-next



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

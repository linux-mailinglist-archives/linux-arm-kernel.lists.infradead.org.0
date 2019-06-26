Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A0A564A8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 10:33:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1nsUfXm+h7ESoA3XfO8MkTArok7j/z0Rnrj0xD5GRFg=; b=YFrYRch7R1WmYg
	Si2BRq/LRAungGFB5i/fl/soRf70ZO5yEIrB9KXCBHdTbFu70uvEs4/GVASFiX7jpUlvf7Vnl6sdo
	OoGUaVIzgc7QSO7mJ+5NntO4SUUITeUrIqes4zHKXL4omtid2F0+vrKdMflbiZ3MgIv7SIhJGLCqR
	Zh6g3huDgOHd8E2la7StVWhKb+Qpr5ku5sIXTUo6JkkdGCBgNrvx9lVyqDdSVq7G0W1NGN9+HMb65
	EOOt70zY0JwHPZ2843Z/gimijul/ektdIEmlOa5Yz7rvk9GJYmoXLMXr6jEq9oxpEQX6E/BhccO59
	NSnPshI8MVwwwuEtIItQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg3NC-0005DI-BN; Wed, 26 Jun 2019 08:33:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg3Mx-0005CN-CE
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 08:33:32 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1hg3Ml-0004LD-L5; Wed, 26 Jun 2019 10:33:19 +0200
Message-ID: <1561537996.4870.3.camel@pengutronix.de>
Subject: Re: [PATCH v3 4/4] drm/imx: only send event on crtc disable if kept
 disabled
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Daniel Vetter <daniel@ffwll.ch>, Robert Beckett <bob.beckett@collabora.com>
Date: Wed, 26 Jun 2019 10:33:16 +0200
In-Reply-To: <20190625202244.GG12905@phenom.ffwll.local>
References: <cover.1561483965.git.bob.beckett@collabora.com>
 <6599f538740632c5524bab86514b8ba026798537.1561483965.git.bob.beckett@collabora.com>
 <20190625202244.GG12905@phenom.ffwll.local>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_013331_420364_C9B8EB72 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Fabio Estevam <festevam@gmail.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 David Airlie <airlied@linux.ie>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-06-25 at 22:22 +0200, Daniel Vetter wrote:
> On Tue, Jun 25, 2019 at 06:59:15PM +0100, Robert Beckett wrote:
> > The event will be sent as part of the vblank enable during the modeset
> > if the crtc is not being kept disabled.
> > 
> > Fixes: 5f2f911578fb ("drm/imx: atomic phase 3 step 1: Use atomic configuration")
> > 
> > Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
> 
> Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

Thank you, patches 2 and 4 applied to imx-drm/fixes.

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

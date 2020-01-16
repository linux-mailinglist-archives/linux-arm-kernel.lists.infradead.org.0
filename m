Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C670613E3B8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 18:03:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Gj6HrKk6jHdiWYKUCY6Lkb5Hzv+BiAQHkPOJws86bU=; b=rYKMFZI4V7AszZ
	1u2UX/Lp82KXgwIehXBwJrMxGOYqsiUBD5QtDWnqnfYT0ayfdKcfW+DqbdH/EexGn2126zMQG8lmp
	YHbTSoiFCjYgNWUrPxGc/+tfnjTK/JrTzCvb0Xj0+/DhvobHufxc/MSvdNSaqJi/JASkaO11eAV1p
	EFSz0KZrs63A9ML0VQRrL3U7RCEUBn9IjEFspAGOtFPf5g2kM5paVq8o7H/lUX+axMoZs+pMD61gA
	6hTS0oy4gYBb+nReAxsAQhK/Eog/Tdh1W6tE0ASAlQ5NZNpehYjWr4XLDgJgOzxIgTnDoVPDzN4eY
	OTKtN6E4l3t636GnfIaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8Yb-0003EN-Vg; Thu, 16 Jan 2020 17:03:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8RS-000473-J6
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 16:56:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1is8RL-0003ja-2D; Thu, 16 Jan 2020 17:56:15 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1is8RK-0003vs-9c; Thu, 16 Jan 2020 17:56:14 +0100
Date: Thu, 16 Jan 2020 17:56:14 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH AUTOSEL 5.4 053/205] pwm: sun4i: Fix incorrect
 calculation of duty_cycle/period
Message-ID: <20200116165614.a3u5x7g4qxxrm6s4@pengutronix.de>
References: <20200116164300.6705-1-sashal@kernel.org>
 <20200116164300.6705-53-sashal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200116164300.6705-53-sashal@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_085622_706362_884FE938 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Ondrej Jirman <megous@megous.com>, linux-pwm@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 11:40:28AM -0500, Sasha Levin wrote:
> From: Ondrej Jirman <megous@megous.com>
> =

> [ Upstream commit 50cc7e3e4f26e3bf5ed74a8d061195c4d2161b8b ]
> =

> Since 5.4-rc1, pwm_apply_state calls ->get_state after ->apply
> if available, and this revealed an issue with integer precision
> when calculating duty_cycle and period for the currently set
> state in ->get_state callback.
> =

> This issue manifested in broken backlight on several Allwinner
> based devices.
> =

> Previously this worked, because ->apply updated the passed state
> directly.
> =

> Fixes: deb9c462f4e53 ("pwm: sun4i: Don't update the state for the caller =
of pwm_apply_state")
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> Signed-off-by: Thierry Reding <thierry.reding@gmail.com>
> Signed-off-by: Sasha Levin <sashal@kernel.org>

Note that while the patch is still correct, the problem isn't that bad
any more since commit 01ccf903edd65f6421612321648fa5a7f4b7cb10 was
reverted.

So .get_state is only called once during boot where the breakage doesn't
hurt that much.

I let you decide if you still want to apply this patch.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

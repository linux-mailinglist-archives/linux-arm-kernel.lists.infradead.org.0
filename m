Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F607F6B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 14:16:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RgJW8EYC0F+mqXcRrm4A2ZwtOAbzFJxXw1vwnoqM5WY=; b=kqN7jYD/4untEW
	Rb7+aZN2hL3fYLWjQ8z7xESJzQb/K6um3rBZQCs0UsLGJ/ZKJ8/RD7oIUWX/j+bRqGJpkwbCr6E+T
	GpVptNDjjVtSGXBn2xalNoHnuaGrcXpO8aXJVwCAlCSEKZhRRrEse6hg4yV5Qc5zagcRGurJr5vp1
	SYMGJWENwAt3LKUr+8wXrexyoX58SvzIWq2DvN1rdBbZWdydGGjRgE9Wmk6nUmygNCk/D3/UT3+eB
	VL0aOXM9DuATvKc5ucZHOLYHKHSwzXx9Rrd5EAhl7mruzwAJqzGsyXfTYUi+sP5CNdcQJeRIxxjyn
	msH9pyqEQKaf3raOWH1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htWTj-0005Jy-02; Fri, 02 Aug 2019 12:16:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htWTd-0005JI-2m
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 12:16:06 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1htWTU-00081H-RR; Fri, 02 Aug 2019 14:15:56 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1htWTT-000728-QG; Fri, 02 Aug 2019 14:15:55 +0200
Date: Fri, 2 Aug 2019 14:15:55 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Schrempf Frieder <frieder.schrempf@kontron.de>
Subject: Re: [PATCH v3 4/4] serial: 8250: Don't check for mctrl_gpio_init()
 returning -ENOSYS
Message-ID: <20190802121555.dl6rpjphgaxdvcke@pengutronix.de>
References: <20190802100349.8659-1-frieder.schrempf@kontron.de>
 <20190802100349.8659-4-frieder.schrempf@kontron.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802100349.8659-4-frieder.schrempf@kontron.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_051605_127205_F913B249 
X-CRM114-Status: UNSURE (   9.49  )
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
Cc: "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Jiri Slaby <jslaby@suse.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 02, 2019 at 10:04:11AM +0000, Schrempf Frieder wrote:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> =

> Now that the mctrl_gpio code returns NULL instead of ERR_PTR(-ENOSYS)
> if CONFIG_GPIOLIB is disabled, we can safely remove this check.
> =

> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

@greg: This patch doesn't depend on patch 2; ditto for patch 3. So only
taking patches 1, 3 and 4 should be fine. This way Frieder's v4 only
have to care for patch 2. (Assuming noone objects to 1, 3 and 4 of
course.)

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

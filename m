Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE86E2B3B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 09:36:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qZl//+dwaOn08fWVsv6YDXIzkgjMu0V4ze0Bg5fjeSo=; b=i+5AhGfsCZ/iFC
	S/pWaTL09ZVtqUKIJ32bcgLltmxZXCSD9Xq2jED7aFDRrPBfIQ0HqBvyqp7RkSIANxSAgptMY5Zl0
	vO9HaVFTMLs6EYcbGXq8VwkZvrckku8vwv/O0ILIqCngkNwRgucfhqOKi/gVILgm002Y1NfYcWKKN
	gtuJXiOSAxrOxNja0zxqqo1+qRvEpRIFwLBg7pRsTg+BtZ+gscRTfwq2uoCToy4DzxHegsczv25uk
	eOCAcONWrIUTzwYEc4pmlICwoKdbBbQOS1qETmV4aT5kZe0xuZuJ70N3FkpVqK/YvrunWlvYpD+bz
	ervck1kAscS1HA4lxxEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNXfX-0003Ms-OK; Thu, 24 Oct 2019 07:36:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNXfM-0003MG-Is
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 07:36:18 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iNXfJ-0004NC-Nm; Thu, 24 Oct 2019 09:36:13 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iNXfD-0006fS-TZ; Thu, 24 Oct 2019 09:36:07 +0200
Date: Thu, 24 Oct 2019 09:36:07 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Thierry Reding <thierry.reding@gmail.com>,
 Yendapally Reddy Dhananjaya Reddy <yendapally.reddy@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Subject: Re: [PATCH] pwm: bcm-iproc: prevent unloading the driver module
 while in use
Message-ID: <20191024073607.fs33i2rztfjqmvfj@pengutronix.de>
References: <20191017192218.9042-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191017192218.9042-1-u.kleine-koenig@pengutronix.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_003616_623219_43DA870E 
X-CRM114-Status: UNSURE (   9.75  )
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
Cc: linux-pwm@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Thu, Oct 17, 2019 at 09:22:18PM +0200, Uwe Kleine-K=F6nig wrote:
> The owner member of struct pwm_ops must be set to THIS_MODULE to
> increase the reference count of the module such that the module cannot
> be removed while its code is in use.
> =

> Fixes: daa5abc41c80 ("pwm: Add support for Broadcom iProc PWM controller")
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Assuming you will send another PR to Linus for 5.4 with the revert of
01ccf903edd65f6421612321648fa5a7f4b7cb10 I suggest to add this patch,
too.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

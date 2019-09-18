Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C975FB6ABC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 20:41:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xSqOv4HyESj3g9es7U8eAda7aHt4BpDq29fAd7pchGE=; b=Qd4yvEZDqxKliW
	XA+2hZWMEbw3Rgz8QgdNc26QMigwVT7S8WmIfippnDqMM3CcpsdStX+PTQko7oPL//qpCoP37AWX2
	MxTw2C98R1VgGy07HA+bV8iPzws7hWQalsoFuzBjhSjWiuM7h5PVVHEPuuHw9XN+txiEJHUQh3zRO
	3jEpEhfbAmPrS0soLwJObNCaHNL6rFPpUCGkfw6893b1ox987bi5cdkEarqcaOwzLBBgutxLpm3KC
	Z2fEc5sydjkNR2bBDaP5eVhDZDjkDKPRW8zP102+lhg5ccJrXUz1KdjWqQZu5nwxr69t+CbX64afN
	llCo2SxnZizPEHzijgcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAesq-0001pT-Tu; Wed, 18 Sep 2019 18:40:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAesf-0001p2-Tw
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 18:40:47 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iAesa-00059E-Ip; Wed, 18 Sep 2019 20:40:40 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iAesZ-0002ge-3I; Wed, 18 Sep 2019 20:40:39 +0200
Date: Wed, 18 Sep 2019 20:40:39 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH v2] pwm: stm32-lp: add check in case requested period
 cannot be achieved
Message-ID: <20190918184039.27dtd3zguawijsqo@pengutronix.de>
References: <1568818461-19995-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568818461-19995-1-git-send-email-fabrice.gasnier@st.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_114045_974449_DF7D802A 
X-CRM114-Status: GOOD (  13.56  )
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
Cc: linux-pwm@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, thierry.reding@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 04:54:21PM +0200, Fabrice Gasnier wrote:
> LPTimer can use a 32KHz clock for counting. It depends on clock tree
> configuration. In such a case, PWM output frequency range is limited.
> Although unlikely, nothing prevents user from requesting a PWM frequency
> above counting clock (32KHz for instance):
> - This causes (prd - 1) =3D 0xffff to be written in ARR register later in
> the apply() routine.
> This results in badly configured PWM period (and also duty_cycle).
> Add a check to report an error is such a case.
> =

> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
Reviewed-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

If you are interested to improve the driver further, there are a few
things that I would welcome to see fixed in a tested patch:

 - duty calculation uses requested instead of implemented period.
 - stm32_pwm_lp_apply calls pwm_get_state
 - Calculation of prd could be done without a loop
 - A hint about relevant documentation in the driver's header would be
   great
 - Documentation about behaviour of the hardware is missing:
   - Does the hardware complete the currently running period when
     STM32_LPTIM_CR is cleared?
   - Does the output stop in the inactive output level when the PWM is
     stopped?
 - clk_get_rate might be called without the clock being enabled.
 - The driver does:

 	ret =3D regmap_write(priv->regmap, STM32_LPTIM_CMP, prd - (1 + dty));

   That looks wrong. (Consider dty =3D=3D prd.)

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

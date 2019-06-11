Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A353D106
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 17:37:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iwWqG2XgtHiVd39oNwV3IuWZLWM1gpRBPZdK2+VtU1o=; b=cbhB6gKQecDhNb
	+sAtmqTGEsDugf+JdLj9QhmoDHYVe9xT3D0Rot+gcHpI9NqGfyw3eJ+rVVSSkAL7GyBrc1SYOWTmE
	1UNjaakQl3NKMz2uBmEL5YDUToX8JrVgiLRcoVY8i1tnJAU1HZDRckPtOhWbfr8Sw+m8kUpCFXlSJ
	tmjOti2DPvFsrT5kWRkARnQ1jgQSHO7zQ4tCz5VzhcfLcMgVbq7BB9Vy+izX8/Yk0OMIGZeTTgdb5
	YO8m3s9xRW5VsS/3iOetIM7rhp3X69CQ29Pmbkbq5qWaDes9i6syK1hpSyIY5Uyk4red9dIvAZbZ6
	8j0o19wtfTFKYVRCiR1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiqA-0006Py-Q0; Tue, 11 Jun 2019 15:37:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haipy-0006Ol-PN
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 15:37:28 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1haipw-000382-M3; Tue, 11 Jun 2019 17:37:24 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1haipw-0004sA-4S; Tue, 11 Jun 2019 17:37:24 +0200
Date: Tue, 11 Jun 2019 17:37:24 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH v2 02/14] pwm: meson: use devm_clk_get_optional() to get
 the input clock
Message-ID: <20190611153724.fg34zp6vof7lpcgl@pengutronix.de>
References: <20190608180626.30589-1-martin.blumenstingl@googlemail.com>
 <20190608180626.30589-3-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190608180626.30589-3-martin.blumenstingl@googlemail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_083726_981955_2B16E8E8 
X-CRM114-Status: UNSURE (   9.72  )
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
Cc: linux-pwm@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, thierry.reding@gmail.com, kernel@pengutronix.de,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 08, 2019 at 08:06:14PM +0200, Martin Blumenstingl wrote:
> Simplify the code which fetches the input clock for a PWM channel by
> using devm_clk_get_optional().
> This comes with a small functional change: previously all errors except
> EPROBE_DEFER were ignored. Now all other errors are also treated as
> errors. If no input clock is present devm_clk_get_optional() will return
> NULL instead of an error which matches the behavior of the old code.
> =

> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>

Nitpick: Put your S-o-b last. Otherwise this ends as

	Sgned-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
	Rviewed-by: Neil Armstrong <narmstrong@baylibre.com>
	Sgned-off-by: Thierry Reding <thierry.reding@gmail.com>

and this implies that Thierry added Neil's tag.  (Typos are done on
purpose to not confuse patchwork.)

Reviewed-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

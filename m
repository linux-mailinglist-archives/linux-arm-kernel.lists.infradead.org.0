Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D925B136838
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 08:19:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WjeWpczsiPosrCUxn/usO7fr5QBBQUh1MlvuoJCVOP0=; b=KLzqU7DrYCuHnm
	6xOUwwM0F7eagyu2+gAp4hwxcj/PjYbWQycEGc5nYeAl7EInS7EcWdT3ZMrm+AuCeZck0DdO5AMoB
	qTvdtXmoUUz2A47bh6BT4huH5iH+GwV1+jfvlpTerSh5PAd4hsSYXtYFhppyvRakXp7L4nhbs8aPv
	9qOldhUUmDEkgBkpo8USPnJQJOuhasoPbAxreOBI2c8p1bHPgu80oYTHDJLN/+7n/3ulH20THE999
	JxIdDO2VqWzQaF2+5r3OsaIAngqgBeu3zb5PpZu9dgSPouVEUptcej2th0uSItu/1o/VwT60LZk+s
	lerzcFGBdizaBlstDwhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipoZp-0005nS-8A; Fri, 10 Jan 2020 07:19:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipoZ8-0005MU-9k
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 07:18:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1ipoZ1-0002MZ-4M; Fri, 10 Jan 2020 08:18:35 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1ipoZ0-0002Cm-5e; Fri, 10 Jan 2020 08:18:34 +0100
Date: Fri, 10 Jan 2020 08:18:34 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH] pwm: sun4i: Fix inconsistent IS_ERR and PTR_ERR
Message-ID: <20200110071834.jewrtgqbwrpjdweq@pengutronix.de>
References: <20200109072735.GA22886@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109072735.GA22886@embeddedor>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_231842_351115_EAEC1744 
X-CRM114-Status: GOOD (  11.05  )
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
Cc: linux-pwm@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Thu, Jan 09, 2020 at 01:27:35AM -0600, Gustavo A. R. Silva wrote:
> Fix inconsistent IS_ERR and PTR_ERR in sun4i_pwm_probe().
> =

> The proper pointers to be passed as arguments are pwm->clk and pwm->bus_c=
lk.
> =

> This bug was detected with the help of Coccinelle.
> =

> Fixes: b8d74644f34a ("pwm: sun4i: Prefer "mod" clock to unnamed")
> Fixes: 5b090b430d75 ("pwm: sun4i: Add an optional probe for bus clock")
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>

Patchwork seems to have missed my earlier reply with my Reviewed-by:.
(https://patchwork.ozlabs.org/patch/1220206/ only has Cl=E9ment's reply
that still contains my quoted text, but obviously this wasn't picked up
by patchwork.)

So resending it in the hope this was a one-time miss:

Reviewed-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

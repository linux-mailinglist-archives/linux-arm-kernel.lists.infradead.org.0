Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1E2122565
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 08:26:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SkeB6npZ7FhJW47lIK41G/drh76Gamx+wh4lYaT/Lu8=; b=aDBChMcv0sI/Kp
	rIiQhCLHHzTstuKeAET+cb381fWCWLXNXdlijQ1Ek+zuIbyYjFGdbFjbvnqBCk7ECqcJ+XWlT6vHv
	IFk3t43nqOkYkTBKc/xVrJK/y6v78UVD5U1Q5QPxASwl259sJNPcDie3/Kfs5gLcRwyaoel1ej/YQ
	ivRLSg4nq1+ygc5C8N2Hz+m0qrBjVMHlbxam04Z+ONW60y6IzLR3itIEh1ty8GtvHUGmDkwMAJiJS
	4IYPZ8Es+T1VlPm45PHaYadCiGGts40bPF/j+UvafZ/TZZ7p++HlPsR9YDFUvEz5dEfj3S5oIVtPT
	Ir0e8cNK6QVWxz2+0rcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih7Fl-0004E4-Ct; Tue, 17 Dec 2019 07:26:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih7Fd-0004Dh-Fq
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 07:26:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1ih7FU-00039L-Ep; Tue, 17 Dec 2019 08:26:28 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1ih7FR-0001zP-Ly; Tue, 17 Dec 2019 08:26:25 +0100
Date: Tue, 17 Dec 2019 08:26:25 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Stefan Mavrodiev <stefan@olimex.com>
Subject: Re: [PATCH 1/1] drm/sun4i: hdmi: Check for null pointer before cleanup
Message-ID: <20191217072625.rqzl2udojrxcxqd4@pengutronix.de>
References: <20191216144348.7540-1-stefan@olimex.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216144348.7540-1-stefan@olimex.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_232637_530448_7624E20D 
X-CRM114-Status: UNSURE (   6.49  )
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
Cc: David Airlie <airlied@linux.ie>, linux-sunxi@googlegroups.com,
 open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 04:43:48PM +0200, Stefan Mavrodiev wrote:
> It's possible hdmi->connector and hdmi->encoder divices to be NULL.

The wording is broken and s/divices/devices/. I'd write:

	It's possible that the parent devices of the connector and/or
	encoder are NULL. This makes drm_connector_cleanup and
	drm_encoder_cleanup respectively trigger a NULL pointer
	exeception:

		<...log here...>

	This is reproducible by

		<...receipt here...>

	So add a check for NULL before calling these functions.

Of course this doesn't address the reservations by Maxime.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

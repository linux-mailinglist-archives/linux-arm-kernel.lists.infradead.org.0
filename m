Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C69E757C5A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:44:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yMCFa1PaCm6r+sP+XzIa0+JjZMPMJMCY89LDe/KzoK4=; b=TKBIQvrqTZwmFY
	yie+j86kWLBMJUImTPuaTXKbUxkzu7r5goZZhvOhxuoccQHxTHEgGS1R8GWrSu18wyxIjGssx3A0s
	ra72bYAaDF2uLveoTTlBNPE7o/2GADgXxZMQQCVaQAGnx2YGLiO+4WA9Wqv2Pg+nwKtH6vrcmc3N7
	OSZzL5ZzyAKdLM7QY17FM7qWLgwKysLVbrWnq7Hex5bFcobmBGhYbWXUU+YhqeK14yCyJ9QMz/qzk
	Y1+6bv2OVqvO+Lw2mPyPjLCzZW5CfPCeX8uwmZUPSJc9Z+rZSoo41B/vfZtydL6Tue7h1TcJhyPo7
	sZjSegqjG9WTFtf7wmWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgO8X-0006V4-Nf; Thu, 27 Jun 2019 06:44:02 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO80-0006KM-74
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 06:43:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qRBNSm0//Nesp5VmYUO2lQ2YkPsJeDFE5DpBuUECW5Y=; b=yQqc1c3xRwyPFQmQ2fhGQA36Sp
 mBjvMTDzoeDpYDUc5x9Z4dtDaJGhBY75J4re2Y48hBiNFVeuHKCOtJaBIJMDrflmseb5GZDkYCrzn
 DMtk1oasnrlZFKXPeT9OGoVnVU7AcxMIbRUxPk+JcWjeSxxuhgC7ECyyb2yoE3K1yobYniK6tzRza
 qbySz96cWxfJvfVhNbDFkN5ByA9s0hJRCr+gp/BhoGOanlUU/BTNpohhSj/5CkwfHjGOGouNVklC5
 AZMHEztkf1izMke+ZPrB6x1pYQB0Xmt12+Jjq6/JuJLR6ngCLzNGSx/jCKUK/OirinVwI/+/CbwS2
 ghzPzyAQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMbe-0006hv-HC
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 05:05:59 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hgMbc-0001Ym-01; Thu, 27 Jun 2019 07:05:56 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hgMbb-0001TH-JD; Thu, 27 Jun 2019 07:05:55 +0200
Date: Thu, 27 Jun 2019 07:05:55 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Sergey Organov <sorganov@gmail.com>
Subject: Re: [PATCH v2 2/7] serial: imx: set_termios(): factor-out 'ucr2'
 initial value
Message-ID: <20190627050555.fiqzap4iha26ugqc@pengutronix.de>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1561558293-7683-1-git-send-email-sorganov@gmail.com>
 <1561558293-7683-3-git-send-email-sorganov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561558293-7683-3-git-send-email-sorganov@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
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
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 05:11:28PM +0300, Sergey Organov wrote:
> Set common bits in a separate statement to make initialization
> explicit and not repeat the common part.
> =

> Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
> Tested-by: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Sergey Organov <sorganov@gmail.com>

Reviewed-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Thanks
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

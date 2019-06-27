Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D0557B9F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 07:41:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NyBnMcWSRLFtnbfDrXfreAZcpDZInpe9djSs3gYcV2I=; b=r8ClYhzpJklVQI
	raFEQ9IN9CnA7fAT1uac7Lw/lvfmebr7z/zzp77tBCbPnCVyU3QYGri/OS1QQZVxCvC0+W5+dDDQi
	wYDB4O8lsMVyaKm0L+8UZYJeMxYTXx9NcAn6hT0m8PfFu9u8l4lJA/+xC217bN0mC/fhuWy/KX4bo
	rKQmEbYzuCsrccIi3AyIIM4hbRitgD+0WFsTLH6J+jhBuVnE2z5sWNGwnBiek2vm2nVeiHnX7LU95
	oP13akUwBfbgOoxBIDQh8jcCqBJglW+NpPlJnv8BM8W20V1ynXEfGy8Qxm5Q+PpsL4w73UJoao6mc
	c9qDuW+vGFkTUimmqong==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgN9X-0002wG-8t; Thu, 27 Jun 2019 05:40:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgN9I-0002vn-NQ
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 05:40:46 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hgN9G-0005LM-FG; Thu, 27 Jun 2019 07:40:42 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hgN9F-0002Vw-0O; Thu, 27 Jun 2019 07:40:41 +0200
Date: Thu, 27 Jun 2019 07:40:40 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Sergey Organov <sorganov@gmail.com>
Subject: Re: [PATCH v2 4/7] serial: imx: set_termios(): preserve RTS state
Message-ID: <20190627054040.fmox5woti4gztmat@pengutronix.de>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1561558293-7683-1-git-send-email-sorganov@gmail.com>
 <1561558293-7683-5-git-send-email-sorganov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561558293-7683-5-git-send-email-sorganov@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_224044_767068_C7210B8E 
X-CRM114-Status: UNSURE (   9.17  )
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
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 05:11:30PM +0300, Sergey Organov wrote:
> imx_set_termios() cleared RTS on every call, now fixed.

Is this a real problem, or something you noticed by looking at the code?
I think I already asked that in a previous round, if so this should at
least be explained in more detail in the commit log. Also please note
that this is about the UCR2_CTS flag. (It is, isn't it? I don't
understand it after staring at the code for a while.)

Assuming this is a real fix, it would be great if this patch came first
in the series (i.e. before the cleanups) and would be more straight
forward to understand.

Best regards
Uwe


-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7BF324B8
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Jun 2019 22:03:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lS8OJFLLC4k3/bs53UWg4FBOws3qaQMlTQ9ZENpGgvw=; b=M2nIVGqGfYqw+v
	7nVIOAQVy8llpqGMsh9Yhat+qIzMYR2+XNFv5FZ0xcI8pdO9LnOSrcTWENFcsU4I4Hn9KyltZUwYT
	TsTOXqPAYh4pKIo6RlsSKJWmtzuS3XsiynMnCJQXfKI7zfs8CEjDcys3/xe6VwCMKA8468Km8e0G8
	C5lzMXGLd6F3DrI/BNOYDD0Jrq1zfEfUYP2Wx1G5XqzZXd5VPxyEOc/x1a3Sqyl+shXv1klffeeXd
	xIvdEtl9yqN+sYnVpw/8sPumlK3EvEUfCEY/svWLoLfsXk1VFmpSyy/4ESrrDVpZ/5IrfCJjQGF+7
	39nniVnBpsD7jYNChEEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXWhW-0003VG-0o; Sun, 02 Jun 2019 20:03:30 +0000
Received: from gofer.mess.org ([2a02:8011:d000:212::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXWhN-0003Ui-Qs; Sun, 02 Jun 2019 20:03:23 +0000
Received: by gofer.mess.org (Postfix, from userid 1000)
 id B29A260474; Sun,  2 Jun 2019 21:03:18 +0100 (BST)
Date: Sun, 2 Jun 2019 21:03:18 +0100
From: Sean Young <sean@mess.org>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH] pwm: bcm2835: increase precision of pwm
Message-ID: <20190602200318.ymyewngns745m2vx@gofer.mess.org>
References: <20190602102350.zzwmfvlky3mnlqln@gofer.mess.org>
 <0e6eef35-244a-4d52-2d87-e8ff22355f09@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0e6eef35-244a-4d52-2d87-e8ff22355f09@gmx.net>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_130322_025903_251D51EF 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-pwm@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>,
 Andreas Christ <andreas@christ-faesch.ch>, Ray Jui <rjui@broadcom.com>,
 Eric Anholt <eric@anholt.net>, Thierry Reding <thierry.reding@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stefan,

On Sun, Jun 02, 2019 at 06:45:44PM +0200, Stefan Wahren wrote:
> Am 02.06.19 um 12:23 schrieb Sean Young:
> > If sending IR with carrier of 455kHz using the pwm-ir-tx driver, the
> > carrier ends up being 476kHz.
> >
> > A carrier of 455kHz has a period of 2198ns, but the arithmetic truncates
> > this to 2.1ns rather than 2.2ns. So, use DIV_ROUND_CLOSEST() to reduce
> > rounding errors, and we have a much more accurate carrier of 454.5kHz.
> >
> > Reported-by: Andreas Christ <andreas@christ-faesch.ch>
> > Signed-off-by: Sean Young <sean@mess.org>
> > ---
> >  drivers/pwm/pwm-bcm2835.c | 10 ++++++----
> >  1 file changed, 6 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/pwm/pwm-bcm2835.c b/drivers/pwm/pwm-bcm2835.c
> > index 5652f461d994..edb2387c49a2 100644
> > --- a/drivers/pwm/pwm-bcm2835.c
> > +++ b/drivers/pwm/pwm-bcm2835.c
> > @@ -63,14 +63,14 @@ static int bcm2835_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
> >  {
> >  	struct bcm2835_pwm *pc = to_bcm2835_pwm(chip);
> >  	unsigned long rate = clk_get_rate(pc->clk);
> > -	unsigned long scaler;
> > +	unsigned int scaler;
> according to the commit log i wouldn't expect this change. Maybe it's
> worth to mention.

Yes, you are right, that needs explaining. I am trying to avoid an
unnecessary 64 bit division. I'll roll a v2.


Sean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

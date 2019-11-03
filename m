Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F623ED615
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 23:23:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zth2R03qaZCL0doeIGAwJVmsjpoQi2F3+fpnn0ds2N4=; b=r0vvCxhiC3DnGS
	M4xLBmkhwYbo5ZokpPpV9RENRkjwGW3p4Ny3wiRfL4DosfdC6nEl6U5IMA9/5BLP+doKeDcI9kE9N
	oGnDz/FMFMwnMnbFyET64+olMJPiILjyMUMLKwBT7/49v7rV6ChXuQZObaRpreavXsN+lL3u6ossq
	Vv+LVSSolHgAIJHcU+BRmG11VgZxwoTqC9IpV33b64mQ9V1yzeRqopA0gR3owWFftrFeWmNpPM4w5
	bId3HTmovKIicHkC4oVx05x2BdDWpAkk9p5Q2oPFFzc5tAolCzwNCMq515IhDOEt6fjv860Uq86O/
	GBkiAhu0cBOkR5vo07Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iROHd-0007RD-OM; Sun, 03 Nov 2019 22:23:41 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iROHX-0007QV-Du
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 22:23:37 +0000
Received: by mail-lf1-x141.google.com with SMTP id j14so10791430lfb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 Nov 2019 14:23:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ESUhhN6edmpvHFOV1Utv000unf+voyNT/XqNjo94L3E=;
 b=QRCiTT4RtFkcbSgtjNd916P8LiP+fVE6O67kBgLv/qfB9arXpn+JSLOI9BH4ht8w5p
 KO911xAHoIUr2XcjLsIrtSJrqAIg3Qasmv8+1w5kf9IBMmZCyRQju63Wp5V55a43xrXN
 8ovnfJqkCmPQcjvSEwLq70modMTgbPR99uE3DigW7sy3fcFtk2miLcyWe1QfTA2wL+m4
 dg8noVdcjht1feN13oMlJxV2e5zNNV2q5SsIQ8N1+oERo0Zcwm0tnPK1UutkbuGvAh0v
 +BrnKqpxrWpfpHLar2RvsTp9piW4rgejaoXD1dWiwwDCLFBp2hXa7Ab6zkyeU8jcSK4a
 bz6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ESUhhN6edmpvHFOV1Utv000unf+voyNT/XqNjo94L3E=;
 b=amYQ38H0kCS4IygXyaGDmt8kIgUjyrUuniKBcWFNunpjTAAdIyfH1n/ULSjcnC8on4
 PUkZK36YNQMRx4hNvAn3pI+nkbZiIJACJrzjDrEbGSBU75HQLN2wLM/584eZtOCHV7rT
 VR+fFbxdevnmfaOFtiZxgcti2M/iXXOr6Hl9YVYaSR/AvTmrv4rNwOzLxEuVnRkuN1tQ
 TTc2t4QB7Cx4hMCtgRUpKiXfAh3rWUTf3cS8ITqCYk4W/9RmUuw91Bxfd/P8CjaaDH8L
 q/idG3LXnzIGG5a6XNpgnn9StzwGV6YlpTyiun2bNOWYz2wUEpWa+/iqeZXovs/tR0Kh
 rJ7w==
X-Gm-Message-State: APjAAAXL/8JKAF5m/7QPi4yOmjdCgFB2N+MJhSLnRg6kxkr9RuQgew3b
 +7KGqEfW+uFzrC9y/wxm5tpVGzNGjVmx5jWUNC+D8w==
X-Google-Smtp-Source: APXvYqxPSzDXNKfugYnnHKUIKKHIHEvHG3nXTxP1PlQspCYo+knQSZ/r4By3eoLa9c19qr7bRZjXcrwmJ2fir+v3Ops=
X-Received: by 2002:a19:ca13:: with SMTP id a19mr14186914lfg.133.1572819812751; 
 Sun, 03 Nov 2019 14:23:32 -0800 (PST)
MIME-Version: 1.0
References: <20191101015621.12451-1-chris.packham@alliedtelesis.co.nz>
 <20191101015621.12451-2-chris.packham@alliedtelesis.co.nz>
 <b681ed9d-a31a-e5cc-04ba-6f38a5cc745b@gmail.com>
In-Reply-To: <b681ed9d-a31a-e5cc-04ba-6f38a5cc745b@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 3 Nov 2019 23:23:21 +0100
Message-ID: <CACRpkdZ6xOmRUnNCRBAPak1Q_g9WSNYKGpLeU-ajroUbB_gSeA@mail.gmail.com>
Subject: Re: [PATCH 1/2] pinctrl: bcm: nsp: use gpiolib infrastructure for
 interrupts
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_142335_496016_885658D1 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Nov 2, 2019 at 3:55 AM Florian Fainelli <f.fainelli@gmail.com> wrote:

> > +             girq = &chip->gc.irq;
> > +             girq->chip = irqc;
> > +             /* This will let us handle the parent IRQ in the driver */
> > +             girq->parent_handler = NULL;
> > +             girq->num_parents = 0;
> > +             girq->parents = NULL;
> > +             girq->default_type = IRQ_TYPE_NONE;
> > +             girq->handler = handle_simple_irq;
>
> It might be worth creating a helper that can be called to initialize all
> relevant members to the values that indicate: let me manage the
> interrupt. This would make us more future proof with respect to
> assumptions being made in gpiolib as well as if new fields are added in
> the future. This would be a separate patch obviously.

I have some different plans for this, but first I want to pull all
struct gpiolib_irq_chip *girq setup over to the new API,
so I can get rid of the old helper functions.

First chained variants, when that is done, threaded variants,
when that is done abstract this type that is using its own
parent handler and then eventually delete the old helper
functions.

Then I can think about adding new helper functions :D

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

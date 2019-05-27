Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B84672B980
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 19:47:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CMfn0VlZDHe9G6qZo3mE74celOyBb26AVR2Z5KnqeDw=; b=Nl4hEl0Qm+spT4
	HIQFb0gcNh1KZyoIIfdhIANLln/arPnzbJUIGz1prQu+OkQH59MLhE/5X2R76KL5SLW/YBWjt6J8T
	jM3lIskvRZhvMhmYM9YLwuLPuq9Hz+ObD9M0Y6CtGLva4dkrn+J8ycZeMRL/s60sk3lAcvSRyt5ex
	CSHOjZAh2rSpZ6tPhME72YVguUoO4nGe60Q7s03fdeFonUTjLb8COjya614ZhxKZ/CTywrwMSH4SZ
	iSKkn9P1/eItjqjkFX+frBO+6JvzScdzDPRrdnHNCNxQUuDn3shJVeolPcG5uqycexh+EqRKsnl5q
	zO0uw/aInOeNFs/vjzgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVJiC-0000qq-7A; Mon, 27 May 2019 17:47:04 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVJi3-0000pu-L9; Mon, 27 May 2019 17:46:57 +0000
Received: by mail-oi1-x241.google.com with SMTP id v2so12398850oie.6;
 Mon, 27 May 2019 10:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RvWmgSpOjlIMaMZlqMhXFOz9qSbgkNwvRngL97A0kDQ=;
 b=sr5PZkAr/7xMIJI1iE3rnlUf2W//7xEl0rEv8uMQxjtApmCeIfuxKSdL2GConU+qlx
 P9vCZsz/G7nRW6fh6wnGHfcswe1ykoaXPZpMAXM4lJmzGKnyA6dHHJ15yy41O2Q8EXK1
 G+q+o9iv6qd6cYrH8i06p+Fg7y+4luf4xPg26eTOT1gSFEWOBF6Wjaf92UcGcuxHr6eL
 dg7JyncH0+v4PWErlFOWs4YwVy609jJvfk7DjwLW12TL9qjU0xy5wSQcqA/UlzLuX/ai
 ECfO4NlD85myKsx73AYmyq/4B4G8vl0wKKPVxaRGc0nrhWkVWEP4RxerxdRskW36zJLW
 yaXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RvWmgSpOjlIMaMZlqMhXFOz9qSbgkNwvRngL97A0kDQ=;
 b=P/OzJQswmHLMTaoz77q3qR5BKq2adoHqc8CDOIcL5eLUGXgfsPsyAt7Gv1dZfxputB
 P0o9ACMgx5aq2yfuAtu+wQo6gOr7lNWbwdjqj7Xid0fGXn2yVjrTMnVr1WIAgXvecMHX
 g+5r/CBdQGWt0d1uwItOieANg/x/szKUASvCFOKRfPTVHEpEjTdD09NSbGCyr+YulIlZ
 z3hA8fr3kLvErJ7bKOn2MK15Pqy/vYTtWkWn4EF98F2uaW4WfH2K9hZOFhDlzLRQypKa
 QCOq8U9rrLhfxDTZkxF0L32LSro0GPkP2f/3EApGprYBdtTgsWCcMWUkcR4gFcob7qyO
 74QQ==
X-Gm-Message-State: APjAAAU8vx0xNuyp5GREM5BQCeHwY2f069KBwz9zqJsk2IHo7pTGfxYC
 FdJ8v5X5oDACbHyEqEu0+MB/hsx4/Mgqp84i4mc=
X-Google-Smtp-Source: APXvYqzOlHtTysG/NJMjTORoX4YkIoqs/i6VO44tMBIFa71EQ6WOH2ZGotkbC3hvW9Rj4y8Ks7VrpPwwNZd83dEYYlI=
X-Received: by 2002:aca:ed0a:: with SMTP id l10mr93471oih.39.1558979214200;
 Mon, 27 May 2019 10:46:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190525181133.4875-1-martin.blumenstingl@googlemail.com>
 <20190525181133.4875-5-martin.blumenstingl@googlemail.com>
 <3b61897a-267b-fd6e-181b-a8c7e47918fb@baylibre.com>
In-Reply-To: <3b61897a-267b-fd6e-181b-a8c7e47918fb@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 27 May 2019 19:46:43 +0200
Message-ID: <CAFBinCDXNy4=6U2gsh6vK6WEtJKAdfDGPMrpPJthbp5Rru1hbg@mail.gmail.com>
Subject: Re: [PATCH 04/14] pwm: meson: change MISC_CLK_SEL_WIDTH to
 MISC_CLK_SEL_MASK
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_104655_722030_3CFC533D 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org,
 thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Mon, May 27, 2019 at 2:26 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> On 25/05/2019 20:11, Martin Blumenstingl wrote:
> > MISC_CLK_SEL_WIDTH is only used in one place where it's converted into
> > a bit-mask. Rename and change the macro to be a bit-mask so that
> > conversion is not needed anymore. No functional changes intended.
> >
> > Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> > ---
> >  drivers/pwm/pwm-meson.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/pwm/pwm-meson.c b/drivers/pwm/pwm-meson.c
> > index c62a3ac924d0..84b28ba0f903 100644
> > --- a/drivers/pwm/pwm-meson.c
> > +++ b/drivers/pwm/pwm-meson.c
> > @@ -33,7 +33,7 @@
> >  #define MISC_A_CLK_DIV_SHIFT 8
> >  #define MISC_B_CLK_SEL_SHIFT 6
> >  #define MISC_A_CLK_SEL_SHIFT 4
> > -#define MISC_CLK_SEL_WIDTH   2
> > +#define MISC_CLK_SEL_MASK    0x3
>
> NIT I would have used GENMASK here
that was my initial idea but I decided against it.
the variant I came up with was: #define MISC_CLK_SEL_MASK    GENMASK(1, 0)

however, the actual offset is either 4 or 6 (depending on the PWM channel)
and I felt that duplicating the macro would just make it more complicated
so instead I chose to be consistent with MISC_CLK_DIV_MASK

Let me know if you would like me to change it (then I prefer to update
MISC_CLK_DIV_MASK as well).


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

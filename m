Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B9AB0AA0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 10:49:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ubdsLBN1Ztijc6OLkAbsuh+BZozFlJLJS6e98lIEIY=; b=PFYmrhJrHI3b6M
	lyJ0owh54jdGLVCcWkNm4D1KQtzzDT2n2MF6LNAhmBlalMvi2Q5YnKh/isjdX3YWePw4a0TaJNrIZ
	E5E4WBtDP8B+MycCF6LcnZZUDZQJXGYXJnTDJ7ZVF3Y0TQC5DmTt7Fjcyzg+gCqV0vdFn63IolWPk
	SE9y8C5YtvG/f42DnwTBJAR6dBSTt3jRgec0LGPCJK9GpR5xfzNiVP2BZhz4hzzmsLLUnR7+lzOjc
	SV6hj64rQDmUsFqGcCiIeHi9RCHF4j50dE9E91XfkbgjhfgVH/QOAt897A11321F1gtbL62BBEn7P
	7vynIKS8iBWHKdUojBdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8KnD-0006VE-QH; Thu, 12 Sep 2019 08:49:31 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Kmu-0006Pm-OX
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 08:49:14 +0000
Received: by mail-wr1-x444.google.com with SMTP id l16so27418203wrv.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Sep 2019 01:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=e+Gp9bvg2doYl3vt8UvKYTIGNZ3niQ5XGKnO6ggp+VY=;
 b=BohMUVOwccV7eixIyuzSffx1C1R/02VJ5TADZ2b16JPGKurlRaBsjNKAHOstU0x43Q
 OULaaIo4e046DFHcBMKrwxOvZYFwrZ9hz8h5ti5bFb0Bum8I/M3ySKZymFORO9Osnfnp
 mbrMEKqEHAfB5vi8DcBXUCXMWnELXFHJd3AT6BQiA2SVjXDBYXOXWnJqdne0EPRAtdyN
 fFZcZd3TgWFwwvL7dhbDTHVixRDKKpCV2Z0RIt7/Jixclhlg/fTK5bwlNAmNMuggqOpl
 kyudZlApLfcNaxL4sc90Wlehs0dBoKAjwk1J6YuKLLId/JFNXR3+DqKA5dbncj8JTFJA
 Os2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=e+Gp9bvg2doYl3vt8UvKYTIGNZ3niQ5XGKnO6ggp+VY=;
 b=k/DmODvOLctudoHnt5+0rOU6kP3EYqtF2UQOs8JhVW5g39mtIKw2/b4DZXJS6R6vX2
 MpApMjp/aoIQAbQayPsOwmaPo5ON8BrAqiVbcEbjP/KAMbwlPHxbzcm99nJcneurypf/
 Vf9MV/eb55sbK2Z8lBDCd3p+Sfam+OwA3tq8oOY4yC9wgNCIOgkiJrF1ZlJZD0Ao0yXL
 nRHfaQahTqG3E3Mj7FoQ6e9v8PUdeuuEAeXykLILMAaATADeRWhM0duBEPsC4E/FNSU4
 2NWoUMkE1amullScF9k79HiOu+wtZqIdo+YOTXhoyMMti952S56kKpVuB5j7RmbwDLyh
 MY1A==
X-Gm-Message-State: APjAAAXQFo95MGawPSEnl8l+Gl5a0IKJkGyOAZ0PZw25V2hpQKb7RLt/
 49qlfpq9/JIT/kWfDUafihY=
X-Google-Smtp-Source: APXvYqyEDkWR4oC31C2oMu6luZi3ueVnPKImB1BJM2Lmv+TtEx9dSjvWD6SJc20F3l41IM99V0/YYQ==
X-Received: by 2002:adf:ffd1:: with SMTP id x17mr4758794wrs.139.1568278150339; 
 Thu, 12 Sep 2019 01:49:10 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id p85sm11790384wme.23.2019.09.12.01.49.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Sep 2019 01:49:09 -0700 (PDT)
Date: Thu, 12 Sep 2019 10:49:07 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Maxime Ripard <maxime.ripard@anandra.org>
Subject: Re: [PATCH 2/2] crypto: sun4i-ss: enable pm_runtime
Message-ID: <20190912084907.GA26551@Red>
References: <20190911114650.20567-1-clabbe.montjoie@gmail.com>
 <20190911114650.20567-3-clabbe.montjoie@gmail.com>
 <CAO4ZVTM99FksM71BAiraYj7eyREO1Qi=L1NFzEkNmMgBmphBww@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAO4ZVTM99FksM71BAiraYj7eyREO1Qi=L1NFzEkNmMgBmphBww@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_014912_803448_B9CFF34F 
X-CRM114-Status: GOOD (  22.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-crypto@vger.kernel.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 12, 2019 at 08:35:51AM +0200, Maxime Ripard wrote:
> Hi,
> =

> Le mer. 11 sept. 2019 =E0 13:46, Corentin Labbe
> <clabbe.montjoie@gmail.com> a =E9crit :
> >
> > This patch enables power management on the Security System.
> >
> > Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> > ---
> >  drivers/crypto/sunxi-ss/sun4i-ss-cipher.c |  5 +++
> >  drivers/crypto/sunxi-ss/sun4i-ss-core.c   | 42 ++++++++++++++++++++++-
> >  2 files changed, 46 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c b/drivers/crypto=
/sunxi-ss/sun4i-ss-cipher.c
> > index fa4b1b47822e..1fedec9e83b0 100644
> > --- a/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
> > +++ b/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
> > @@ -10,6 +10,8 @@
> >   *
> >   * You could find the datasheet in Documentation/arm/sunxi.rst
> >   */
> > +
> > +#include <linux/pm_runtime.h>
> >  #include "sun4i-ss.h"
> >
> >  static int noinline_for_stack sun4i_ss_opti_poll(struct skcipher_reque=
st *areq)
> > @@ -497,13 +499,16 @@ int sun4i_ss_cipher_init(struct crypto_tfm *tfm)
> >                 return PTR_ERR(op->fallback_tfm);
> >         }
> >
> > +       pm_runtime_get_sync(op->ss->dev);
> >         return 0;
> >  }
> >
> >  void sun4i_ss_cipher_exit(struct crypto_tfm *tfm)
> >  {
> >         struct sun4i_tfm_ctx *op =3D crypto_tfm_ctx(tfm);
> > +
> >         crypto_free_sync_skcipher(op->fallback_tfm);
> > +       pm_runtime_put_sync(op->ss->dev);
> >  }
> >
> >  /* check and set the AES key, prepare the mode to be used */
> > diff --git a/drivers/crypto/sunxi-ss/sun4i-ss-core.c b/drivers/crypto/s=
unxi-ss/sun4i-ss-core.c
> > index 2c9ff01dddfc..5e6e1a308f60 100644
> > --- a/drivers/crypto/sunxi-ss/sun4i-ss-core.c
> > +++ b/drivers/crypto/sunxi-ss/sun4i-ss-core.c
> > @@ -14,6 +14,7 @@
> >  #include <linux/module.h>
> >  #include <linux/of.h>
> >  #include <linux/platform_device.h>
> > +#include <linux/pm_runtime.h>
> >  #include <crypto/scatterwalk.h>
> >  #include <linux/scatterlist.h>
> >  #include <linux/interrupt.h>
> > @@ -258,6 +259,37 @@ static int sun4i_ss_enable(struct sun4i_ss_ctx *ss)
> >         return err;
> >  }
> >
> > +#ifdef CONFIG_PM
> > +static int sun4i_ss_pm_suspend(struct device *dev)
> > +{
> > +       struct sun4i_ss_ctx *ss =3D dev_get_drvdata(dev);
> > +
> > +       sun4i_ss_disable(ss);
> > +       return 0;
> > +}
> > +
> > +static int sun4i_ss_pm_resume(struct device *dev)
> > +{
> > +       struct sun4i_ss_ctx *ss =3D dev_get_drvdata(dev);
> > +
> > +       return sun4i_ss_enable(ss);
> > +}
> > +#endif
> > +
> > +const struct dev_pm_ops sun4i_ss_pm_ops =3D {
> > +       SET_RUNTIME_PM_OPS(sun4i_ss_pm_suspend, sun4i_ss_pm_resume, NUL=
L)
> > +};
> > +
> > +static void sun4i_ss_pm_init(struct sun4i_ss_ctx *ss)
> > +{
> > +       pm_runtime_use_autosuspend(ss->dev);
> > +       pm_runtime_set_autosuspend_delay(ss->dev, 1000);
> > +
> > +       pm_runtime_get_noresume(ss->dev);
> > +       pm_runtime_set_active(ss->dev);
> > +       pm_runtime_enable(ss->dev);
> > +}
> =

> It's not really clear to me what you're doing here? Can you explain?
> =


I set the autosuspend state and delay.

I say that the device is active and so I "get" it.
Then I enable PM.

I do like that since I use the device later in probe(), so I need to keep i=
t up.
At the end of probe() I put the device which go in suspend automaticaly aft=
er.

Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

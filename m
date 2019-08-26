Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D10B9D560
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 20:05:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3z8TpA3dfTNtxRz8amJgua3fjCgKBwaWJaTAUmtjYIQ=; b=Xk4MUuIMaM7R7A
	c1ktDGTpLh9HqkC9KKMMot0VVeD4pzXd8SYFeY5KsRCsbsAyAfU1dJQWDKXpsVNvvQMbeoHcIAS6z
	rDCxCZWy9PB5Gkz2TyZ6m8IVvApE4iN2o2Vt/lm6HH6YVVEiojW+HBfoLVJrmqjieP0n7PcipKZE+
	muBR1T/0iFSuWzu7kBJBbAOfM0VU3ZTPR9xBZajzB7Qg4+QzIBM9m7+VSO5ESZP4U/ScrhOoSCwvJ
	kvIzRNk51mtkFQPNHwARNMA8lL2PHXpzrxPjgSef4tT1CqFdUqTHOIY8aToORdmDIku2xZTzj1EfS
	uMqsE6zpDgFNhEnWZ9dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2JMI-00022k-C6; Mon, 26 Aug 2019 18:04:50 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2JLX-00021m-TA
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 18:04:05 +0000
Received: by mail-io1-xd44.google.com with SMTP id l7so39533423ioj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 11:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BrIqYBjOEoC2bEbTCnzekyDA0blqp/IM4h4nsnqYLQk=;
 b=uRBh9irELtf92IyXVnLTglOyGQ4/MJOkPqXqH/jUizR2Jrwwqfp+wGCFtXZD1pqs9S
 XGGTmvQeGAbpxH+iDO9kY4VP1gBLqEOrmWoAn+xtFp2nOQDJrueDyApHBEIm3A0CGLXm
 Xq1AWEXZ8W/Qsxv83RqAdhHcyBNQ+Hze5By1EXjaPz2xBw69iMFaVVmRVzhqM6P1K1kr
 YvP/773r9Uex2OCTeLzABxc5w7iFpHN34Yih8jlDKSIEx6zbLqw/vSUwA45ZZ6YDvzL6
 hZ8rRHbcP0DhtLlIjSLR4c9mxrgPPAOxRlmYwQPQxl1dlPii0r8QxsV6QSaWP5VMQ9zd
 tcdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BrIqYBjOEoC2bEbTCnzekyDA0blqp/IM4h4nsnqYLQk=;
 b=YqA+BNvPZE8yA62QUFLC0Map4zDp0Fts9U53EFPIaAEM/JsM/gu4CQl6pWK5s3/2mk
 sg5KWx2ecvloIMVzGN7x8PmALpNqdHKoIW/HGtFQpSavs6QNuxKf2qH9k0Uqh9CPkb4j
 8OsNU60vp1ZNiTPM51pq6rXDhTkEezGSU5nR2MQ7PHuSLyDwgxRg5TZSvNNHKiFbxMBl
 WmimvJ6Mhvr3/7IpamFjN/fpeti0eZGU/Aesy58DvEu4YlqR0yFFiGZRNP5hXnj4Mhy3
 LO0zt1SpQ+AwhluPhkjR8M4pWNSLmAFOBPsdV/1okzzaSLtj4QOgDBgPqqrzKd4Jei3Y
 +XEg==
X-Gm-Message-State: APjAAAWCr4iF4/cG+Qa3jwKRCr4MD532CIvqSL8/AunjVLZ7yzUJ1K3e
 y751TAiT1vO87uk2F+paijaCxDkE0W4aTRUORUI=
X-Google-Smtp-Source: APXvYqwduCOXAxDpvIg+uSvC8pVPEHkDcYIa7NUf4UkUZ1qwyIlKwOW6cVVfOJAOWE4Xk9NaAauKgSCdZcYU18uCHVc=
X-Received: by 2002:a5e:8a48:: with SMTP id o8mr9330137iom.287.1566842638954; 
 Mon, 26 Aug 2019 11:03:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190820031952.14804-1-andrew.smirnov@gmail.com>
 <20190824191148.GD16308@X250.getinternet.no>
In-Reply-To: <20190824191148.GD16308@X250.getinternet.no>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 26 Aug 2019 11:03:47 -0700
Message-ID: <CAHQ1cqGy_Cyw2rdC9hGvvr+2ke+KGy2ZExNfeJL9MW5oH9efTQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: vf610-zii-dev-rev-b: Drop redundant I2C
 properties
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_110403_944451_C390EB23 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Fabio Estevam <festevam@gmail.com>, Chris Healy <cphealy@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Aug 24, 2019 at 12:12 PM Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Mon, Aug 19, 2019 at 08:19:52PM -0700, Andrey Smirnov wrote:
> > Drop redundant I2C properties that are already specified in
> > vf610-zii-dev.dtsi
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > Cc: Shawn Guo <shawnguo@kernel.org>
> > Cc: Chris Healy <cphealy@gmail.com>
> > Cc: Fabio Estevam <festevam@gmail.com>
> > Cc: linux-arm-kernel@lists.infradead.org
> > Cc: linux-kernel@vger.kernel.org
> > ---
> >  arch/arm/boot/dts/vf610-zii-dev-rev-b.dts | 10 ----------
> >  1 file changed, 10 deletions(-)
> >
> > diff --git a/arch/arm/boot/dts/vf610-zii-dev-rev-b.dts b/arch/arm/boot/dts/vf610-zii-dev-rev-b.dts
> > index 48086c5e8549..e500911ce0a5 100644
> > --- a/arch/arm/boot/dts/vf610-zii-dev-rev-b.dts
> > +++ b/arch/arm/boot/dts/vf610-zii-dev-rev-b.dts
> > @@ -323,11 +323,6 @@
> >  };
> >
> >  &i2c0 {
> > -     clock-frequency = <100000>;
> > -     pinctrl-names = "default";
> > -     pinctrl-0 = <&pinctrl_i2c0>;
>
> pinctrl for i2c0 is not same as what vf610-zii-dev.dtsi has.

The only difference I can see is in pinctrl-names so I am assuming
that's what you mean. Not configuring I2C recovery on Rev B board was
not intentional. I'll update commit log in v2.

Thanks,
Andrey Smirnov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

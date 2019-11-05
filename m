Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF20EFABC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 11:18:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ggJ/AI04o7gxBp3kRbeN6h7hJkw4/zaBWT+1OC4zvB0=; b=Mw5978x4xxAlEV
	H+hCv44XsK28YgXm8TWULqI3LMAP1D6iYk8vJFEag0apzub7zXxjGXEdW7L6+a9XFe7DZTiLtTPUI
	klYp5jHuVHnW86WshQZ8F5xyemnsVlLy8FWRsFiFamJ2UadZBcE8jyHONo8b7+n3GbYnai1zE5JQA
	tsoxJ1yioLSmByMOEzHX63hBXE4Rh1zWJxlcUSyOIeKcxoNGCNlAisYIKtTzhgdSi7VeH06w3jOb8
	cZs9/mizTTAT7QQzR+BVLMnhX+4ksnDI0nWscBiDwltK3FDd5PtY+pJl4VQD7tmyta85gNerL+Dh2
	3dDonWz0O5jr8PmEEaeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRvuY-00066C-3I; Tue, 05 Nov 2019 10:18:06 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRvuL-00065A-61
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 10:17:54 +0000
Received: by mail-wm1-x342.google.com with SMTP id c22so19455421wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 02:17:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=fNwu5Brajivr2NZ+53CyrBT2A5quV+LusyMm1pW2iI4=;
 b=Svr0IOsnkV9uVg/wKUTFvPy0qCkSTYOZs+R3aU79Dp+7ujp/ZXBprGDTPc0rLHfI7s
 VXryGU7kIKqHDwe5tREK11WYlbZq4eWm3Kc2rtO7mC+OpAWnx4dlQKjg6NEfCRyLa5ea
 bLew8FfugD4c6fjaiQY+vFWl9Z1poGasldw4clK9AQEJxMgQ4KxSTmV5PKOdZYCmwfPV
 9i1t3A/3UK5mO6Trk1Skr6MyslHPEnuzjTWerWmFz20fGmbsaoe1u5HC2DI4sPp8xukM
 yfMq8tdIjgrLh0cCpwnPQRm+X9bEDFydYxFRKXammO4Kq3Kw0D6cJhX5XpaNlE4VInNV
 itfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fNwu5Brajivr2NZ+53CyrBT2A5quV+LusyMm1pW2iI4=;
 b=nTvseREwgCYOWTv1LcEZUgwbgxtt27UkkqTCTolf02/S6ACP5eIHDdgZ1LQZYv2Aa5
 RSUpQjlpSXZTLMlgkwmKZUbFZotMxr+TayulXrSgoCcysX86A+p165vLCiDrJmwZXsgZ
 CaJeX3a+c3iCSgHC1BtH8VIznKg7Ca7HE15nRYcuSKHsmNvaJs2RRZwDhBVLGbolHT8Z
 Wee7ZQd0b+F2NEzPtx0RYZFfhhNOq8WLgspWTWf/yizgLZNEdth7AjIBuT9XhpRRRdEr
 PYnxWO8QSaG945FDSSpwxIx4+NhY1/gOIXHKzHzpz6mblU7M8x8U6lUueeYd0wvrRiGw
 o0Ig==
X-Gm-Message-State: APjAAAUnYDL+s10r8HfTWf2/zUE0X5rFJ4JleGimEUVoo3cPvXk7KCOj
 fTI8mlHt4g6KFDepwM9RWLDPTtDz6XxIZA==
X-Google-Smtp-Source: APXvYqwco7NI1yNgZpp2/qpqSq4V+HjXy7jIUynHKwu8FbE4cdXYH516yi26h8p96gVT/T4eKt2BBg==
X-Received: by 2002:a7b:c5c9:: with SMTP id n9mr3623783wmk.94.1572949066778;
 Tue, 05 Nov 2019 02:17:46 -0800 (PST)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id d2sm25272593wmd.2.2019.11.05.02.17.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 02:17:46 -0800 (PST)
Date: Tue, 5 Nov 2019 10:17:44 +0000
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 38/46] video: backlight: tosa: use gpio lookup table
Message-ID: <20191105101744.kzdpopq25slbfuue@holly.lan>
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-38-arnd@arndb.de>
 <CACRpkdajkSh6Bbvpfycm83j1GuCm+pTfw9fQS53JEfG2i07MKg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdajkSh6Bbvpfycm83j1GuCm+pTfw9fQS53JEfG2i07MKg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_021753_237369_D2EBCF6C 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linux Fbdev development list <linux-fbdev@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Lee Jones <lee.jones@linaro.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Jingoo Han <jingoohan1@gmail.com>, Robert Jarzmik <robert.jarzmik@free.fr>,
 Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 11:04:44AM +0100, Linus Walleij wrote:
> On Fri, Oct 18, 2019 at 5:43 PM Arnd Bergmann <arnd@arndb.de> wrote:
> 
> > The driver should not require a machine specific header. Change
> > it to pass the gpio line through a lookup table, and move the
> > timing generator definitions into the drivers itself.
> >
> > Cc: Lee Jones <lee.jones@linaro.org>
> > Cc: Daniel Thompson <daniel.thompson@linaro.org>
> > Cc: Jingoo Han <jingoohan1@gmail.com>
> > Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
> > Cc: dri-devel@lists.freedesktop.org
> > Cc: linux-fbdev@vger.kernel.org
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> >
> > ---
> > I'm not overly confident that I got the correct device names
> > for the lookup table, it would be good if someone could
> > double-check.
> 
> You're anyway doing more than required for the people who
> may or may not be using this platform. Brokenness can surely
> be fixed later, it's not like we are taking down the entire Amazon
> cloud or something.
> 
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Same here. I read, I did't see anything wrong but I can't test.

Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>


Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

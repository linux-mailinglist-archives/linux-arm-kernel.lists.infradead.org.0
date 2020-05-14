Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 503AE1D322D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 16:08:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7zLesntDIs7weLds9+Qr7uU7n129Hjs0sMozViLugWA=; b=Rro4hJK8qtMBnB
	nuPZfFD2DJPS6ls46b0xJpq63DNQcyATKyDiv3tXuC1V7m8GsqFHM+j07jY7XkHI8RWaZwllSYgUm
	v8VePMT8gfCvFtdaLO2pEcZrfITRvHY8OUvGwUw1TesDgVb6eBBJoalKGrdmnbgSRNvGU1UNlWQk1
	wU8HVoTfh+bZSJpI3c7wGEW8oqyZQu3XaavIlZEL5cQfhP4cgIXED1CTvCmmwsaPqspdjG5hibKtD
	9MbIN9I4I3OaQWa88njXC0q9d9q47OTcPsuc3lMHB4pJOFGzm4m9Sus3Fxsxj1xduqYT4G9xg53QI
	GKlymsz4xVs/844fG36Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZEXA-0004zK-23; Thu, 14 May 2020 14:08:24 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZEWz-0004yw-N8
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 14:08:15 +0000
Received: by mail-lj1-x244.google.com with SMTP id f18so3624512lja.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 07:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4tjpLfreP4k0pSGmLfKu7J4qVyl2PfcgR+DBUFuyQfI=;
 b=Dj7/g773oDlRsTiNUR7xo2qlLm/wu1orsMurVYbTiR6KmugblKgadVSe7mPERK4aCL
 vEPNEYTpo0FsOvkLTFcAR67KlJyF7Lm0tYMvWEFjNfuewnDqxPfak/mLCAwyBwyRj2ir
 q0by15fYjqzhJnUNE1ONVJGr3vLUxaVTcB05C/nT5aCMA95AP0XrrQXYs66hWza3MVLf
 R+msddyOYrqaHHXoL1h2Zg7FvdZ9e0msvkVGT4lgti3NVlNIlsRBi9Wq6iHo7+nPlyp+
 J4SOOLifvlUKFSIzHAfmGa1qomnjT8z0ZSZ1URkY4VQZLOT1r8zjI6FEv5Gh00Bgxe6d
 cS2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4tjpLfreP4k0pSGmLfKu7J4qVyl2PfcgR+DBUFuyQfI=;
 b=rl+YneRyJO5doVYLyeID4pURXhzgFf76H5FCUQAwVNuoQ2NO6hq3p8dPfhTLGg4l0X
 fDRyFxs3y2jbSi+oWfUTgm6HoC09vulL60KQxgfrDTzwNe5hqu3BwF2UENmeXyDi1e9s
 Qrhi54GLXfYvx81akaBPvJnwZAFWjIcFqbDi1r1MlHhhUtzfIWVnu2IzK6MPNmfPtZyi
 FfOKUfZDYkjci8ULSURbkekwDvAwEnZAKgkfNeQyqivBHDHhlsTd8dR8isJnZd/XOeRV
 G96iyOXMA27mllnIJ+wCzxzJs0qbUTaLGp2fC9Qy8RsStpiWtvwfkL0v9+2ymz8pmkMe
 IvQg==
X-Gm-Message-State: AOAM532SsY5YCoeKzDZFvgjsO4LsJGNoFnYQA35CEQ0NAwIMEn+AMSqU
 WRUtJmn9dCf5otWaixoqy/dQShjRZ96fxjstq+I0nA==
X-Google-Smtp-Source: ABdhPJx5t1yZM5yB0Se02KNKlQ3Kf5olZkwfnoQ7/EcJOQjcx6eZpQDoXhQSKSv4wdy91TSKQPnH1L4MsQ9yfH5F0tc=
X-Received: by 2002:a2e:531e:: with SMTP id h30mr2030382ljb.168.1589465290360; 
 Thu, 14 May 2020 07:08:10 -0700 (PDT)
MIME-Version: 1.0
References: <1589267017-17294-1-git-send-email-dillon.minfei@gmail.com>
 <1589267017-17294-6-git-send-email-dillon.minfei@gmail.com>
 <CACRpkdbZoMDC-D12CByKJUZbu4shqixC=QrKwJUd8x=nyK7seQ@mail.gmail.com>
 <CAL9mu0LVsePqifEC+-FR+NxvuZT3UGpU86KhzaTqb7w_Px0z2g@mail.gmail.com>
In-Reply-To: <CAL9mu0LVsePqifEC+-FR+NxvuZT3UGpU86KhzaTqb7w_Px0z2g@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 14 May 2020 16:07:57 +0200
Message-ID: <CACRpkdbcD7i+kNoJ9YP5XXTtLi12=yzW5OBNzet5oRdwPYz=dA@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] drm/panel: Add ilitek ili9341 driver
To: dillon min <dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_070813_760478_951FD2A2 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Alexandre TORGUE <alexandre.torgue@st.com>,
 Dave Airlie <airlied@linux.ie>, Michael Turquette <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 linux-clk <linux-clk@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sam Ravnborg <sam@ravnborg.org>, linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 12:22 PM dillon min <dillon.minfei@gmail.com> wrote:

> > > +       /* Gamma */
> > > +       mipi_dbi_command(dbi, ILI9341_3GAMMA_EN, 0x00);
> > > +       mipi_dbi_command(dbi, MIPI_DCS_SET_GAMMA_CURVE, 0x01);
> > > +       mipi_dbi_command(dbi, ILI9341_PGAMMA,
> > > +                        0x0f, 0x31, 0x2b, 0x0c, 0x0e, 0x08, 0x4e, 0xf1,
> > > +                        0x37, 0x07, 0x10, 0x03, 0x0e, 0x09, 0x00);
> > > +       mipi_dbi_command(dbi, ILI9341_NGAMMA,
> > > +                        0x00, 0x0e, 0x14, 0x03, 0x11, 0x07, 0x31, 0xc1,
> > > +                        0x48, 0x08, 0x0f, 0x0c, 0x31, 0x36, 0x0f);
> >
> > It seems to be copies of the stuff above, but why is there a different
> > gamma if you use DBI?

> for dbi interface, currently i just copy the code from tiny/ili9341.c.
> as so many boards use this driver now, like raspberry pi, etc
> i'm afraid it's will not work after modification. so, just leave the
> original code there.

OK if you move it to ili9341_config it will be clear which panels
need this gamma and which panels need another gamma.

I think there should be one ili9341_config for the new st,*
variant and one for the old DBI variant.

> anther question:
> is there any panel driver have dbi & dpi or dpi & dsi supported? which
> i mean support
> two different panel interface in one driver.
> thanks

Usually you split the driver in three files becuase a driver can
only list one initcall, and also it makes it modularized.

There is nothing in-tree but look at my branch here:
https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-nomadik.git/log/?h=ux500-skomer-v5.7-rc1

You see how I split up the s6e63m0 driver in one SPI part
and one DSI part:
https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-nomadik.git/commit/?h=ux500-skomer-v5.7-rc1&id=6c0e1fb5df5fa8fa857dee65f6c0f54d06d158a7
https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-nomadik.git/commit/?h=ux500-skomer-v5.7-rc1&id=cfbf562cc709b53b62f5fbc7fedf176ffa17b088

The overall idea should work the same with DBI.

Yours,
Linus Walleij

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

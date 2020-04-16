Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6E21AD0F0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 22:15:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a9kGN5bC1XNU3RfIAex4eKf5VJghBMyRT1k2s65jQWY=; b=frzcK5RiL4dtqI
	LS0trF7lWDFLb6QXD8ltddFyIH8P06NlbW324WvH1yoZ8y002qV5aPBAIpOLqvTwUIq//qMJPvWWC
	k6DV4tlWtqxiiTGO8TUrM3l5S6o74OSjp+MT8jqdSggaWZjdjTt67Jr/UusM91HmA7zlQjSZ1Rfk4
	e/36FOaxvJwua0XFdklJ03O8ldScvzSIz5glzKRi9OVZcSuRSSMczVdqFe6RhSfAcItsN/EZzN6sv
	scM94zz19uXoCnyyIiJ/ti/1lZ9Aolfgk1g5TqE5fMH60Ezxqe/meea3RoVSgB6mhN5PQS0cH+x/c
	Kx5BeXAenLUfg5aF38UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPAvG-0005eE-F2; Thu, 16 Apr 2020 20:15:42 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPAv5-0005dr-Rw; Thu, 16 Apr 2020 20:15:33 +0000
Received: by mail-qv1-xf44.google.com with SMTP id fb4so2737585qvb.7;
 Thu, 16 Apr 2020 13:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RrhoCocMui3bsFc5qkdYNErfeCVARryDRP7TYadbG5M=;
 b=QfKW6F7xCXl6+vxdlzAiOL5ivPMy1SHP4U5CM8CVeegJchb5+KDPwsbTufj449g+u4
 SD8E5bdY6BjaDM0KbK7iKkgwtLkedOn6so4ibg1BTWRdPCngH3jq4GS1rAXU0x3tqAW+
 +Z+52kZuoEnBLuNVBNWfPaISsumvknew1jf03TvmuKfwG9QZs3ABAS2cvd1he0XhnLDQ
 aeKzpcLxXOlZl4GkR6FTBIMSIghnearpfUmTipNkoasRCwGXVJ76zE+VYDzzcJFVV3tu
 IXG/BpW9slI84n6+qwgUnA2Ga9rgXPyqvF4yPDwBPGswDWoEGlWhip+xHunJQ8F1C6C2
 YMLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RrhoCocMui3bsFc5qkdYNErfeCVARryDRP7TYadbG5M=;
 b=BTZsW3JODTiM0ZdzfvJMZkb+0e0S9ep/Hfpa/Hbphiwd7Iaan+J5OOpFdZkrHvldLs
 0jmHCz+mloofFAIN+Y1ybvcmTsUGVsk9tX9pxhoGcUyJpPeHfJz8RTpzne7rJ+jdugp/
 1OKNRCrZ7O8dIY6M0a0yTKYpm4P/7CPPPawGIW7wtL1dKU4JIdwv2sNs76miZPaIu3nj
 bI6ntE/CWoVmQrIwKlH90YlWYKJ/RIhUMmFeejO+DLVu40IYyVbBmJW3eEHfkgJnsHW6
 ftM0P5ujZlmfPF1kmRJ+y1FfoW85svyr245xmaZLGV7HBD/DM6a1rTvwFFCWWmfxkJEc
 fYJg==
X-Gm-Message-State: AGi0Puab0mt6orxsrI/yi+LFNMr6Yln1Z/c36cNxX21Wsg4ukTAtlsQc
 FkQlfR8cpF3XLZWdsX5DsYvD+FscNkdB67MU8jc=
X-Google-Smtp-Source: APiQypLEw9l7W2hSliB15jHFogvAHufSRGn0ZYH76LQ8VoeRoID9myxCgGr4Pn9PvD87gHrPUOj8sgZxasNifp8qNh4=
X-Received: by 2002:a0c:f748:: with SMTP id e8mr11834286qvo.237.1587068130311; 
 Thu, 16 Apr 2020 13:15:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200414151955.311949-1-adrian.ratiu@collabora.com>
 <20200414151955.311949-2-adrian.ratiu@collabora.com>
 <CAFqH_52eKB4jtmn5e4HQubv8ijOPqDqncp1dRGahhU3NOorJMQ@mail.gmail.com>
 <87lfmvjmt5.fsf@collabora.com>
In-Reply-To: <87lfmvjmt5.fsf@collabora.com>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Thu, 16 Apr 2020 22:15:19 +0200
Message-ID: <CAFqH_513KB+En_xbpXSBG6Q38kYxWCgw0KO3NVxCb6fqHDaKBA@mail.gmail.com>
Subject: Re: [PATCH v6 1/8] drm: bridge: dw_mipi_dsi: add initial regmap
 infrastructure
To: Adrian Ratiu <adrian.ratiu@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_131531_932090_BA61220C 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eballetbo[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Adrian Pop <pop.adrian61@gmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Adrian,

[snip]

> >>
> >> +static void dw_mipi_dsi_get_hw_version(struct dw_mipi_dsi
> >> *dsi) +{ +       regmap_read(dsi->regs, DSI_VERSION,
> >> &dsi->hw_version); +       dsi->hw_version &= VERSION; +
> >> if (!dsi->hw_version) +               dev_err(dsi->dev, "Failed
> >> to read DSI hw version register\n");
> >
> > Is this an error that should be ignored? If you can't get the HW
> > version, probably, there is something wrong with your hardware
> > so, don't you need to return an error?
> >
>
> After thinking a bit more about it, that error should be a
> warning.
>
> I added it because in some cases (for eg. if the peripheral clock
> is disabled) the reads can return 0 which is obviously an invalid
> version and the bridge will error in the next step when not
> finding a layout.
>

If you'll error anyway, why wait? IIUC at this point the clock *must*
be enabled, and if not, something is wrong with the driver, I don't
see any advantage on delay the error. do you have a use case where
this is called and peripheral clock disabled?

> So I'll make this a warning in v7 and explicitely mention that
> reads version == 0 can be caused by a disabled pclk.
>

-- Enric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

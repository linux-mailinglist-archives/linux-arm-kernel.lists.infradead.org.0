Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 318A6EB120
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 14:24:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JXp7fkjzUSiqDwFx8v0YJdJo4goxWZ/0mor9b7Mo5kw=; b=lfWYhUljmMIrNB
	Zp/Xfr2Rf4MITm+ivx1eu+yMgDkVnRT9+Tfsnmv3Y8/mrgmQZPsB6bKNPQWiDboyV+E6MuvKSEuJg
	Vds2IMsoSQfhIPGjpbSdhFsTcUda2Cr4ZXUwxpUT5KwlCRYrtNphvbbFxCNGbkb+5T7htAEElXl5L
	Jy3u8JDPGRUCMxmX0ODntcG1C47ZPPtI1UFFPF45vMvGoEgXUBELw0v3Pmi4pZHl29kcCvj4Nh/37
	GfifCWLn0geyrcL+F+F9bVuklQH7nd2fpoeceyXy4h1LyrGVfC+ehKneK8qlliHOrV4xSfFXLuDvy
	X3Meg9fbSpkIAIdtLolw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQAR6-0005ol-GV; Thu, 31 Oct 2019 13:24:24 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQAQk-0005ZY-DV
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 13:24:04 +0000
Received: by mail-pf1-x441.google.com with SMTP id 3so4364817pfb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 06:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3/3zefGdd/m7PrcI6IIG3Bg/D+mngne/UflLyB/7dd8=;
 b=bRmgPup583Mc6OobDi/6C5sQsjDtV2HyjRVNLtJtqZ4S0SRGxQYqnKcIiBTJfjxTde
 9RNI0VlfO0aYbT0P/KtvSXja9GmpA9OkorPOD2UvwTIL9dLdSl8PWSwgFwFl43VhD8DY
 XqZZha0G9zgo79ITCjc5VL1KOtqkBFYVLgMLsio+vdnggwYRyGzPcgdgRnQWbKARadTc
 WGKuTK5tDnFNP8vhICOtWb7mqYAphf4pt6Zc29T+O7U+QjcPSezoCqxWSzSZoVE9Joy9
 OAE8B7zHEYbTP3ruUpx7UNfkqsIPfBkp/H99wgigHfXjsx9i25ot7RLsQ1uExSmKPSLY
 +7rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3/3zefGdd/m7PrcI6IIG3Bg/D+mngne/UflLyB/7dd8=;
 b=fi6eWt1QuzXp8XDqwJKq86EHAgANKa9eUPy9JqUR0l/NF7iB6AHO1MVg86+qtg824H
 QcTviUfrleExVkpxQ5IFaWX72Noo7+ck2hFc6lXb4CH1WIyZCkm0yKJrjDzSaxPeBFaT
 BlKcC6n4rW5nOMTPmjJpLe3FX1G3j7kI//fP7wSeSnInAPM6JiM/nZhi3ZFtUTS3zciw
 xe6N4GEHo3is0NIsKTXMonyXBjIE3Hxg/XMJLx0fDqRgNMaglAe6TBbayrtf0jEHSnU7
 hY9xiGcSEH3iunsVUO9Mq4DSU1k2Q/y7g2fUrUi4Ttadui5UtnpXjQPoAi2OepAGGbO7
 XGgA==
X-Gm-Message-State: APjAAAUEGXO0Vr+cyocBhgbGcytMI4hw9j1etNHOk4uxLavQAeX+kJWo
 3/7F/v2LNUSRuq974Iox125sdyQ+lw==
X-Google-Smtp-Source: APXvYqyPg398pV24unnlRJA8FSF5mvJIArjEkUPaba1ia8tYVRPfcaewJy2LErl1WsFc3V1vvL88Nw==
X-Received: by 2002:a17:90a:eac8:: with SMTP id
 ev8mr7184114pjb.99.1572528241163; 
 Thu, 31 Oct 2019 06:24:01 -0700 (PDT)
Received: from mani ([103.59.133.81])
 by smtp.gmail.com with ESMTPSA id q11sm3173306pgq.71.2019.10.31.06.23.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 31 Oct 2019 06:24:00 -0700 (PDT)
Date: Thu, 31 Oct 2019 18:53:52 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v4 0/2] Add IMX296 CMOS image sensor support
Message-ID: <20191031132352.GA24273@mani>
References: <20191030094902.32582-1-manivannan.sadhasivam@linaro.org>
 <20191031131644.GA8917@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031131644.GA8917@pendragon.ideasonboard.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_062402_497963_CCE72B0E 
X-CRM114-Status: GOOD (  22.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 robh+dt@kernel.org, sakari.ailus@iki.fi, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurent,
On Thu, Oct 31, 2019 at 03:16:44PM +0200, Laurent Pinchart wrote:
> Hi Mani,
> 
> Thank you for the patches.
> 
> On Wed, Oct 30, 2019 at 03:19:00PM +0530, Manivannan Sadhasivam wrote:
> > Hello,
> > 
> > This patchset adds support for IMX296 CMOS image sensor from Sony.
> > Sensor can be programmed through I2C and 4-wire interface but the
> > current driver only supports I2C interface. The sensor is
> > capable of outputting frames in CSI2 format (1 Lane). In the case
> > of sensor resolution, driver only supports 1440x1088 at 30 FPS.
> > 
> > The driver has been validated using Framos IMX296 module interfaced to
> > 96Boards Dragonboard410c.
> 
> I've just been made aware of your work. I also worked on an IMX296
> sensor driver in parallel, which I will post to the list. My driver
> doesn't hardcode the resolution but computes register values at runtime,
> so I wonder if it could be a better option. I'll post it now.
> 

I'm fine with it. The reason the driver is simple in the first place is, that's
how my usual workflow is. Start small and build it big ;-)

Anyway, I'm happy if your driver gets in.

Thanks,
Mani

> > Changes in v4:
> > 
> > * Fixed issues related to gain settings and few misc cleanups in driver
> > * Documented port node and removed maxItems, default prop from dt binding
> >   as per the review
> > 
> > Changes in v3:
> > 
> > * Fixed the reference to video-interfaces.txt in binding.
> > 
> > Changes in v2:
> > 
> > * Switched to YAML binding
> > 
> > Manivannan Sadhasivam (2):
> >   dt-bindings: media: i2c: Add IMX296 CMOS sensor binding
> >   media: i2c: Add IMX296 CMOS image sensor driver
> > 
> >  .../devicetree/bindings/media/i2c/imx296.yaml |  94 +++
> >  MAINTAINERS                                   |   8 +
> >  drivers/media/i2c/Kconfig                     |  11 +
> >  drivers/media/i2c/Makefile                    |   1 +
> >  drivers/media/i2c/imx296.c                    | 715 ++++++++++++++++++
> >  5 files changed, 829 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/i2c/imx296.yaml
> >  create mode 100644 drivers/media/i2c/imx296.c
> 
> -- 
> Regards,
> 
> Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

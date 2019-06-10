Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5333B585
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 14:58:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QEOJ8yFApQQyifKF5uyudfQgMTXZ38Nb8YWfUOg+sn4=; b=l9og3eRurrxuYP
	KuHq3CG9JIFY9cljVBgwD/Js6xS5KyQzRI7bLXpuImq3c/JWp8cW7zvLtfGFkz4F1YQKBcK+yA8L2
	q5k9wQcigZWt+BaecrHqHfSodx7zPawf2mIm48prWLatZCWLCB475mJaAcbowXHj0LkBeIQARofJC
	Nq5pLJqtsr39aLMVS48KEbgyBt/i9mhYdFtVoLaU21/fbDIIXJVQgfMwsIy0GBKkk5blurfFGBo6J
	MU+aPzI2GZmndZIVaI9Qh2Ap1nfbbfyq9VDegEdjOG5KsxH8+otzcSaU7kq5wA0nlGAYbuiH5ikEj
	jnsED2HBJQS4PNmxvKXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJst-0005F1-HS; Mon, 10 Jun 2019 12:58:47 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haJse-0005D3-AZ
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 12:58:33 +0000
Received: by mail-lf1-x144.google.com with SMTP id z15so3864051lfh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 05:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7DLFQ8by/jV1+O/LDvQ3huJEjoQ4sVNIYrRFls+hbxg=;
 b=kJwSbhswbKbQHzM85JPdk5WWpRJM3BNteN454cZjnKRT4+2cK1IwcgVbguNeugjWKU
 anfYSptxIdmrRV7MDJsWRwyVls6QGDNJe5RT+rmXTGCG/V7I4ey08t14jgw3CqDZdqaM
 4iETn+6dLcyFpjEoplS3FYXNzJi3sRorfA74TrLC+x6NxDVEIZqzxw7UcdmfBUQRlhlD
 XI6GJjZNM0hgCsW6GDaj6cyDatbRJLDB/QZwR6Hjgxqcihk9ghBmHeWACTK2zvqac68v
 dsnJZUC75L3rxuEyKrjXMpty88ykkZ7ebW3xpLMPpt/RQC6Pk3NpgulvKjx1FFOGfJXq
 0hQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7DLFQ8by/jV1+O/LDvQ3huJEjoQ4sVNIYrRFls+hbxg=;
 b=VuSNawuwVEUPNIJ1Tno0CFsXAwqtTju+g2rFVvED2aGAbBM7GIts6gYPIRFWFN5KqU
 DBQgISWRTqdyAEtJ8ktBomFZviiuu+M6WTcz0njPK0drtKLiOFZ/W4bgvPj+UnQAKj7O
 U9RxLRI1KLR4CgPSbSnwXDiho0QXdAW2SQFTjKPfZP/57uRRH6cRB9xpLBKGNWF89QWi
 77+9PPirerMRqguHIAw9mJudQ5v6eTdsuip/rwh5ogWgk1ckZqPhe32PV/VW5nvindI1
 Fge0sp3h71y9HzjHbqcEPmfI1Ch5T8y1m864/GA4Q7cNWbVDbw7dwH7yrlQk8m+ArBdS
 VhEA==
X-Gm-Message-State: APjAAAXwmU8UabL7X9QPGj4xGyZwDjAhVcETrItJcX5wRkMi8MoxcnCf
 ud9Rqm0LVMGBUTIR+RU6Sh4IfZqpeKG/uT6W9zCZnrY0NUU=
X-Google-Smtp-Source: APXvYqw+d2TzVaMlkIN2DtQbw9EMUt0fHjzFymluDcPEIw5oOSKylqjj5JhidkPvvSMbBAUtXjailq7IiV0LAj261QA=
X-Received: by 2002:ac2:4d17:: with SMTP id r23mr28592327lfi.130.1560171510009; 
 Mon, 10 Jun 2019 05:58:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190606094657.23612-1-anders.roxell@linaro.org>
 <20190606071052.412a766d@coco.lan>
In-Reply-To: <20190606071052.412a766d@coco.lan>
From: Anders Roxell <anders.roxell@linaro.org>
Date: Mon, 10 Jun 2019 14:58:18 +0200
Message-ID: <CADYN=9K0k30U5Uov3RHuSQAe2hfdVCWayWHmVdzQ9umD8Mpi-A@mail.gmail.com>
Subject: Re: [PATCH 0/8] fix warnings for same module names
To: Mauro Carvalho Chehab <mchehab@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_055832_382909_AAFEA84F 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: andrew@lunn.ch, linux-fbdev@vger.kernel.org,
 David Airlie <airlied@linux.ie>, stefan@agner.ch,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, a.hajda@samsung.com,
 Lee Jones <lee.jones@linaro.org>, marex@denx.de, f.fainelli@gmail.com,
 vivien.didelot@gmail.com, linux-media@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, b.zolnierkie@samsung.com,
 s.hauer@pengutronix.de, Mark Brown <broonie@kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Networking <netdev@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 p.zabel@pengutronix.de, shawnguo@kernel.org,
 David Miller <davem@davemloft.net>, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 6 Jun 2019 at 12:11, Mauro Carvalho Chehab <mchehab@kernel.org> wrote:
>
> Em Thu,  6 Jun 2019 11:46:57 +0200
> Anders Roxell <anders.roxell@linaro.org> escreveu:
>
> > Hi,
> >
> > This patch set addresses warnings that module names are named the
> > same, this may lead to a problem that wrong module gets loaded or if one
> > of the two same-name modules exports a symbol, this can confuse the
> > dependency resolution. and the build may fail.
> >
> >
> > Patch "drivers: net: dsa: realtek: fix warning same module names" and
> > "drivers: net: phy: realtek: fix warning same module names" resolves the
> > name clatch realtek.ko.
> >
> > warning: same module names found:
> >   drivers/net/phy/realtek.ko
> >   drivers/net/dsa/realtek.ko
> >
> >
> > Patch  "drivers: (video|gpu): fix warning same module names" resolves
> > the name clatch mxsfb.ko.
> >
> > warning: same module names found:
> >   drivers/video/fbdev/mxsfb.ko
> >   drivers/gpu/drm/mxsfb/mxsfb.ko
> >
> > Patch "drivers: media: i2c: fix warning same module names" resolves the
> > name clatch adv7511.ko however, it seams to refer to the same device
> > name in i2c_device_id, does anyone have any guidance how that should be
> > solved?
> >
> > warning: same module names found:
> >   drivers/gpu/drm/bridge/adv7511/adv7511.ko
> >   drivers/media/i2c/adv7511.ko
> >
> >
> > Patch "drivers: media: coda: fix warning same module names" resolves the
> > name clatch coda.ko.
> >
> > warning: same module names found:
> >   fs/coda/coda.ko
> >   drivers/media/platform/coda/coda.ko
>
> Media change look ok, and probably the other patches too, but the
> problem here is: who will apply it and when.
>
> The way you grouped the changes makes harder for subsystem maintainers
> to pick, as the same patch touches multiple subsystems.
>
> On the other hand, if this gets picked by someone else, it has the
> potential to cause conflicts between linux-next and the maintainer's
> tree.
>
> So, the best would be if you re-arrange this series to submit one
> patch per subsystem.

I will send it per subsystem.

Cheers,
Anders

>
>
> >
> >
> > Patch "drivers: net: phy: fix warning same module names" resolves the
> > name clatch asix.ko.
> >
> > warning: same module names found:
> >   drivers/net/phy/asix.ko
> >   drivers/net/usb/asix.ko
> >
> > Patch "drivers: mfd: 88pm800: fix warning same module names" and
> > "drivers: regulator: 88pm800: fix warning same module names" resolves
> > the name clatch 88pm800.ko.
> >
> > warning: same module names found:
> >   drivers/regulator/88pm800.ko
> >   drivers/mfd/88pm800.ko
> >
> >
> > Cheers,
> > Anders
> >
> > Anders Roxell (8):
> >   drivers: net: dsa: realtek: fix warning same module names
> >   drivers: net: phy: realtek: fix warning same module names
> >   drivers: (video|gpu): fix warning same module names
> >   drivers: media: i2c: fix warning same module names
> >   drivers: media: coda: fix warning same module names
> >   drivers: net: phy: fix warning same module names
> >   drivers: mfd: 88pm800: fix warning same module names
> >   drivers: regulator: 88pm800: fix warning same module names
> >
> >  drivers/gpu/drm/bridge/adv7511/Makefile | 10 +++++-----
> >  drivers/gpu/drm/mxsfb/Makefile          |  4 ++--
> >  drivers/media/i2c/Makefile              |  3 ++-
> >  drivers/media/platform/coda/Makefile    |  4 ++--
> >  drivers/mfd/Makefile                    |  7 +++++--
> >  drivers/net/dsa/Makefile                |  4 ++--
> >  drivers/net/phy/Makefile                |  6 ++++--
> >  drivers/regulator/Makefile              |  3 ++-
> >  drivers/video/fbdev/Makefile            |  3 ++-
> >  9 files changed, 26 insertions(+), 18 deletions(-)
> >
>
>
>
> Thanks,
> Mauro

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

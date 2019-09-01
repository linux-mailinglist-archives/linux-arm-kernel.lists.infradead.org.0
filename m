Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B63A49AB
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 15:57:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tDL69ZXsl/D4WXpe5NEGLs3N+Wlr2xZwL7GQWWA/ht8=; b=JxWhXvDESHmpzG
	ppn5g3U2fX5zQFVraqhso8JJfOp/NXN68DPM8J5R4He+ikl1pxwJxp+RHgP3bLFaLUXYyEDjPvsV3
	FPO9T4ATtX9R8fv1Mv0srrsCM4sXpjAeLP39dA3Z9tK70I1wQtJapNxb5ju4hRcUqglmTX4RPrZ8u
	ELbAqfhYt9rYFuFSYiq2TK/ikURw3h8Mn237X52Qf2z7tx9wcIwjGI8VRLG49/h5xA6Q2qEY6jaGK
	1BWFSyRgzVVcIiTae12hjtR7myUfa1OtikQbUbk7wxEW4d0y6SHR0kTHsVCUWj01G4dAiokut1a0K
	aSN38Q/ioCYvECw2n94Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4QLx-0006BA-OX; Sun, 01 Sep 2019 13:57:13 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4QLn-0006AM-N7; Sun, 01 Sep 2019 13:57:05 +0000
Received: by mail-io1-xd42.google.com with SMTP id p12so24173122iog.5;
 Sun, 01 Sep 2019 06:57:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DlZdrf9Irxs4fo8S+BI75RsfTncmV298kgaHuNHnRpA=;
 b=SJ2HR+ZX4CCLpMwYVrMm4tC48zXsqIaDeOJpgI3Pu3aF57K2+/GDf7STWkbYhRe2jR
 7G6ODjRtP47aLxPmSBBqyyqGzi3KCb2cqBA399LgCItWnhLzUke/Y463BhS5rQjdJQTK
 1BkGi60BKBY0TjPWuG0De2lTR4hD+X4qFbNhpF9j+6ldhAF1FEkBqt5Oy8zEpeW1sj6g
 t3yKMcSIaRw2WJb4SzaAwvl8LSCsOy0JEyEOFMJYk4CAt+qCWeDjeABNCA6XWck+s3i4
 L+VsTBC+P8E3bxrBz+29duUA/AtUC8ML5kSvPq7G7g0DIxZN8tFz+7M4fUgzRKVWscmj
 GAsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DlZdrf9Irxs4fo8S+BI75RsfTncmV298kgaHuNHnRpA=;
 b=iObKkhUmQK7C8+7SrFUFKN13y/wSPPeT7uVERNqh46CNlpOD6PfBpKwTmFoZ5+xT7R
 SKDBm6eZIm/wcxtduMPHVLGazpK4hKCpFuGHr+gSQK9uNsn+G3aa6hNF1RSyOssuzvph
 wI0LbhCNhad6cRrU0i+LLguZx3bsAXD+70IqTCiqfvFLP+GgCTHREzo1AvOEdHv+tHJq
 hNOB2oFnJkJ+LhUFlQrvx1Ic3NLkrqDV98lxI/fVsKR+eLXZEYY0YNdbUsDm3CdISH5i
 dO5kT61vhr+HvFUfsJ2TTiVGp/TxNAmuUtYscAD+OrVJclC0CDpeacBohxexbBZkbctI
 OzzA==
X-Gm-Message-State: APjAAAUv/Ov3xLmKginG7e/I91wR2lHunZN4TYHB0L+nBGCMVpQQlNdx
 Jq8T0DWT2uJriRMTsyigzy1JEkwHRjdHwx2UUCYkGw==
X-Google-Smtp-Source: APXvYqxYOm/Hc/RFqCzlkxBEZ30dho7qz2hnto+SyaO5xK9jP5vx8O05CRf6dpJlVvYT87HcbjJnLhCQXciWgSqFGEw=
X-Received: by 2002:a6b:c810:: with SMTP id y16mr5973464iof.75.1567346220862; 
 Sun, 01 Sep 2019 06:57:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190828202723.1145-1-linux.amoon@gmail.com>
 <20190828202723.1145-3-linux.amoon@gmail.com>
 <CAFBinCBA-sQcshd9iAVn=ZDBKkDN3OgJs-WjKEhVLw===b0AdQ@mail.gmail.com>
In-Reply-To: <CAFBinCBA-sQcshd9iAVn=ZDBKkDN3OgJs-WjKEhVLw===b0AdQ@mail.gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sun, 1 Sep 2019 19:26:47 +0530
Message-ID: <CANAwSgTXWgcyzsU1Y6Msc4hyuRh7QPoXe9WsV5uqNc=c9_z2TA@mail.gmail.com>
Subject: Re: [PATCHv1 2/3] arm64: dts: meson: odroid-c2: Add missing regulator
 linked to VDDIO_AO3V3 regulator
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_065703_756883_C538ABCA 
X-CRM114-Status: GOOD (  19.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-amlogic@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Martin,

Thanks of your review comments.

On Sun, 1 Sep 2019 at 17:11, Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> On Wed, Aug 28, 2019 at 10:27 PM Anand Moon <linux.amoon@gmail.com> wrote:
> >
> > As per shematics TFLASH_VDD, TF_IO, VCC3V3 fixed regulator output which
> typo: "schematics"
>
Ok
> > is supplied by VDDIO_AO3V3.
> please add a short sentence to the description (since you probably
> have to re-send a v2) like:
> "While here, move the comment name with the signal name in the
> schematics above the gpio property to make it consistent with other
> regulators"
>

Ok I will append this in next version.

> > Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> > Cc: Jerome Brunet <jbrunet@baylibre.com>
> > Cc: Neil Armstrong <narmstrong@baylibre.com>
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> with the patch rebased (see below) and the two issues from above addressed:
> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
>
> > ---
> >  arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts | 13 ++++++++++---
> >  1 file changed, 10 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
> > index 98e742bf44c1..a078a1ee5004 100644
> > --- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
> > +++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
> > @@ -67,17 +67,19 @@
> >         };
> >
> >         tflash_vdd: regulator-tflash_vdd {
> > -               /*
> > -                * signal name from schematics: TFLASH_VDD_EN
> > -                */
> >                 compatible = "regulator-fixed";
> >
> >                 regulator-name = "TFLASH_VDD";
> >                 regulator-min-microvolt = <3300000>;
> >                 regulator-max-microvolt = <3300000>;
> >
> > +               /*
> > +                * signal name from schematics: TFLASH_VDD_EN
> > +                */
> >                 gpio = <&gpio GPIOY_12 GPIO_ACTIVE_HIGH>;
> >                 enable-active-high;
> > +               /* U16 RT9179GB */
> > +               vin-supply = <&vddio_ao3v3>;
> >         };
> >
> >         tf_io: gpio-regulator-tf_io {
> > @@ -95,6 +97,8 @@
> >
> >                 states = <3300000 0
> >                           1800000 1>;
> > +               /* U12/U13 RT9179GB */
> > +               vin-supply = <&vddio_ao3v3>;
> >         };
> thank you for the patch but I think it won't apply on top of Neil's
> "arm64: dts: meson: fix boards regulators states format" (which was
> applied just after you sent this series)
>

>
> Martin

Ok will re-base these changes on linux-next next time.

Best Regards
-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

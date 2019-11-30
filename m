Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D40BD10DFAA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 Nov 2019 23:50:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1geYsRh2D6ZNN7tkXw2ypm6gwGW2DWO+VjamdOTgWoU=; b=tHjhC0BQengbZ/
	QpsdnZ8NFH8ziyHL9BMUsEQ46o0ShNF5dvf5ZdBDq0DHGvtrLVKW7d/Az2FrtoiUlumg0TY/PAj1Y
	rKHhlKKIVtzGcqvCaZfw6d/jcBAsH7tLkXSPaBAkyrlrAQ+de8EsekErGTLj+EymdfkmrOg6Fw63L
	3PyW3xeZDerKa5Lw8BaGY/HeKJaBM3+Q6+dLZgZrPX+l30m9AMeCwPJJvh0Ai+pej3NZBAI6+I80I
	WvTR4SkUUkYCyHNwXoOVpgmnrfrgjdYqgL5iyasmpmGOqPM5CvSIWyjdkVQ9JLfMKpVwEbgNTMi7r
	OBME3Nqgh372lKiNRk4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibBZF-0004pH-QQ; Sat, 30 Nov 2019 22:50:21 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibBZ7-0004o8-Iq
 for linux-arm-kernel@lists.infradead.org; Sat, 30 Nov 2019 22:50:14 +0000
Received: by mail-io1-xd43.google.com with SMTP id v18so5156038iol.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 30 Nov 2019 14:50:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aSm4m1BOCZlWJCq+mZdak/muf8CTMd2nru46ETkG3PE=;
 b=sUIEvkwxjGipfViu4Qtq1qVaUr0TxcZhsiLEzUXr15FnsUoaakNu2cuQyav66wlCVB
 1qKWWbdpUjpUuFQRk37jLudwTy1OaJsadey7XH41fDkawO2cxN/g2nI7kHvmdIbthwUF
 zfe2X36M/asGIQbEj6ZcLmqrjh7uqiSRGY5/MN21gn5y2/Qr9eo2K/h5QFLVPLePFWbX
 A9J6t86T+mng8f0gxzRmOy1C1xtJHaRSokEkSHD2GCjXBSPkc6vcUe9EgLiFC2xLHt3e
 z46u/W9g4Po5VIurkkIjs7w8NZNKkJX8A1mkAgrguT5eM0Z83tY5so/gVFQZeCF4AI3v
 0Vqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aSm4m1BOCZlWJCq+mZdak/muf8CTMd2nru46ETkG3PE=;
 b=TnAg9p6t0T50ASnSIEEIy5eW4ZXiPCyfGanHUdvXvzYL35DchVFw0oLjL1UaDFWAUQ
 uhbycQOUWYxQJUV7YwiFP2m4tHcvfM+OSRC4qQLr07UTQON29OWRVawJAOBsp6z0Og66
 akSm8wzzWxhvnsIAJBDuW29HF/0VeU855dBLdYRsyYG2AwItHq+HnHC4m9/RSrflclHP
 xYyiRVB0cLG1LcaOW5PJt44668raWloCbXOeKg7+SxeR46S9I3j4okSn/r18bhPlLMca
 Wluh2CglHXlugtmDm/92TrjxFyKPsdwHNAyH+2J5PtQkOaO+FoAp1SALw3Mlpx9+NGzr
 svbA==
X-Gm-Message-State: APjAAAU6lE/Jl7nS/El4oiOUKxvGxATVLaKRDDJDccGf8s8yfk+bEhIG
 TK5n/I++brLPZgjuTM4ljaPiMPLO/wiHCCjObfE=
X-Google-Smtp-Source: APXvYqx9lxZ5l9irYpZzmpvtKFaAsoENmY6LFc6Y9ijpfal2ed8gNzhMRy9KR7bxZfhQZ3AoZPaQy5+d8qSSxHgrvBA=
X-Received: by 2002:a02:5208:: with SMTP id d8mr9965664jab.55.1575154209616;
 Sat, 30 Nov 2019 14:50:09 -0800 (PST)
MIME-Version: 1.0
References: <20191129234108.12732-1-aford173@gmail.com>
 <20191129234108.12732-2-aford173@gmail.com>
 <CAOMZO5AyLBrsxr5rqkWgf44X0CQdqHcdaCLRaWLC25b18bF+xw@mail.gmail.com>
 <CAOMZO5ALQQxoWFC9J5ZwT6DtsuVg-FaWCcGbcPK=psokWWRF8Q@mail.gmail.com>
In-Reply-To: <CAOMZO5ALQQxoWFC9J5ZwT6DtsuVg-FaWCcGbcPK=psokWWRF8Q@mail.gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Sat, 30 Nov 2019 16:49:58 -0600
Message-ID: <CAHCN7x+zJt3i=Yw=2HjdtQa-rR4yMMvCMf319+wgMW0XQ=nF4g@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: Add GPC Support
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_145013_650721_E7B0E547 
X-CRM114-Status: GOOD (  14.87  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Nov 30, 2019 at 4:30 PM Fabio Estevam <festevam@gmail.com> wrote:
>
> On Sat, Nov 30, 2019 at 7:25 PM Fabio Estevam <festevam@gmail.com> wrote:
> >
> > Hi Adam,
> >
> > On Fri, Nov 29, 2019 at 8:41 PM Adam Ford <aford173@gmail.com> wrote:
> >
> > > +
> > > +                       gpc: gpc@303a0000 {
> > > +                               compatible = "fsl,imx8mm-gpc";
> >
> > You could do like this instead:
> >
> > compatible = "fsl,imx8mm-gpc", "fsl,imx8mq-gpc";
> >
> > and then you don't need patch 1/2.

I like that idea.

> >
> > Also, "fsl,imx8mm-gpc" needs to be documented.

I held off intentionally because of all the txt->yaml conversion, I
didn't want to get stuck in the middle of that.

Would an tweak to the txt file be accepted?

If not, should I just use the "fsl,imx8mq-gpc" and leave it alone?

>
> One more thing: when you add a v2, please specify the SoC name in the
> subject line:
>
> arm64: dts: imx8mm: Add GPC Support

Good catch.  Sorry about that.


adam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

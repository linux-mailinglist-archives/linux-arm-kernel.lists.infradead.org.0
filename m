Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA0E2B94C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 19:06:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vanSnnn9cP7Gn8oRihzqaJ0nf+StIniOK88/GaVO1LU=; b=YQ9zgy60ITsDe6
	EqFVNI55DQ9FOhOrGTrIzv0pkfp9VK5RVTRyvm83CxtoKE8UCLmeF3jpy35qGDoJORjMYobZ2I729
	ynJ9MXu9G9lvd5rP330tslVgZsSXMa9a/SCgxxxHXb19Nsph5Cpzi8sCg7FBICMpdz+/7Jb0pPHsl
	rROc8Nbxa/0kVDkEGtv9MAke9KiiXbW65m0y62kZBj7QQZ6HYwgQSUbFWkkgiKdlqr2keqo+aLxug
	ES8nQGCbnzRXh/wqE8q5R9zFL3jKMglEEmvd1otpZgJiFbmosnw15fgi3mfuO+B6OMrJd4FIylvAw
	ppm6THJYQa33u4ckAATA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVJ4l-0003TE-FS; Mon, 27 May 2019 17:06:19 +0000
Received: from mail-it1-x12e.google.com ([2607:f8b0:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVJ4e-0003So-Gh
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 17:06:14 +0000
Received: by mail-it1-x12e.google.com with SMTP id g23so464426iti.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 10:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lYdSAXQyUGqWv3pohgAO1eFm6eyshOKb53ItjgPF5ks=;
 b=auQi4t0KIQSLbWB4Z3/yAh/KnB2pb4oKcMg6M1Gx1YaDHD7uLgx7WwJJ1FhdYG/1Xs
 8aN2djj//562uqI31UcrGRs0JFEOEO+OHJ9ampjWGDdibkvrHhItQw+d5E709vTiMsTu
 v+sVL+sb446cuOdU5LyXilMav80v7qcS2MR+j5gBSZGD4CtXN6jIdcw7o+hP2q7xQrde
 sX/BWJ4Up6ThjiJsRMNbuYwJxeGve8ISi5Nmy9y+kmxHYeYEAe58c/dC+NZci2N2ge45
 nTViFEk+JUHsP9dySfcj05/Vv3vwWqdP954c1a9NOjxLJRnR0K7eUiIx3yap+0rlY0U0
 dQZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lYdSAXQyUGqWv3pohgAO1eFm6eyshOKb53ItjgPF5ks=;
 b=NynEDFKvn0MxsKQdHfLuSANeiX8wixfsFZy4Q42c9gPSBE5LsjdJ9U8SExuWBfIuot
 +sff7BjjrAUuuSQ3kO3L8Jy+5R/we6S02S/un7NQ128i3GUCVBwVRMxwnHc7yJLhUJjn
 NAeLZt4hrJwH7qTCANVu3VifFXlTzbhzhMLjzhwyXzhQrhEIIUsEZEfwSBm3hosch1JW
 831X3gGfgTMNElRRH7l8M1dqa496QixZ2FhX2ixEzn4ZnIYm/Pz/6nMHQhjTlbSbjL4q
 kmnFlNlpJFNUi11R1926BrGrflaGz0epPR+oZn/4FQz1poo47u9JctndUtIb3uECb9Df
 RaDw==
X-Gm-Message-State: APjAAAV2DxliAkJGbgZMSu6Xk4Sp45KHmHEVa6TOnH6rpTlrJ4Ig6z4M
 nuZ3ZZ+/kww9E0dFu3y5IUH0u6p9LhwF1DdMYW8WPg==
X-Google-Smtp-Source: APXvYqx24INfS3Cbe2Q1kuDvtcJ5neaDCp4EEGgGyfoDi+v9IFHULEO+fuC2Az+0KijNKVNAtmXVzkXsG7Sfwe8ofyw=
X-Received: by 2002:a02:b47:: with SMTP id 68mr34356990jad.66.1558976770940;
 Mon, 27 May 2019 10:06:10 -0700 (PDT)
MIME-Version: 1.0
References: <20180713171151.24699-1-pbrobinson@gmail.com>
 <CAOMZO5B+1atjr3Ur7EGMJSEbqT8zqWdKZWNHrkyCGvgGM4nJFg@mail.gmail.com>
 <CALeDE9N5AnQba5LirHegWgz2_3Rr6cCT_ttTUtg38OdvdegpFA@mail.gmail.com>
 <CAOMZO5BDEnFU__1iSuVpmRKx4SK5F+WFNho-ujTSCobQy-vzSw@mail.gmail.com>
In-Reply-To: <CAOMZO5BDEnFU__1iSuVpmRKx4SK5F+WFNho-ujTSCobQy-vzSw@mail.gmail.com>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Mon, 27 May 2019 18:05:59 +0100
Message-ID: <CALeDE9OKkeMnM2paDmDRK0j5=ESujEk6M_n33PMYUy2WrBf5Ow@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6sx-udoo-neo: enable i2c-2 and i2c-4 for
 onboard sensors
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_100612_575485_C336761D 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pbrobinson[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:12e listed in]
 [list.dnswl.org]
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabio,

> > Enabling it to turn around and then disable it again seemed counter
>
> Other option would be to put i2c4 with status = "disabled" in the common file
> and enable i2c4 on the two dts files that suport it.

I've (finally) revisited this again and also got bluetooth working,
will send a new series out shortly.

Peter

> > intuitive to me hence the way I did, the WiFi in done that way even
> > though it's not on all boards and I would imagine it would cause
> > errors on the devices where there isn't wifi although I don't have
> > those model(s) to verify.
>
> If the Wifi is not present, then it will not be probed, so it would
> not cause problems.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0598C1B97DD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 08:59:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xOzkgyXDo7nXX++IxrwmT3gD1l2CWIrcR5tjBMPT6Tc=; b=j3KZlc8cO+/w9X
	rFn8ncc7Wl7nmtzR369hd9+xQ1sSaX1NE/e+qKulaiPcFK4fV2ZtGGqks2T/Ip7Sl6usRX2h0qaqM
	naBemIpZspAeppsJc85Kl1DD9/oIjor7tFUWjbUuvrY88znl/6Ld/LVW2nUb2P+WSyEem0Y4BtVgj
	qx+1djAhmCaKsg/3ElxkelvjUKEBb10tPzN0YntQJdjlmYz7dYm7oKR9ihRA7+iJouLEWR/aVPOR4
	mKxh0/jnpvxSFXnF9QmCQU7XXcGM+nDHIjW6QD1P6uSs1NlUiM4DPSRMdHRkaxA3UNUzXSViDtu9z
	g8X0ESNbpnAJvLqtt3pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSxjf-0008SO-GY; Mon, 27 Apr 2020 06:59:23 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSxjX-0008RQ-AW
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 06:59:16 +0000
Received: by mail-ua1-x943.google.com with SMTP id f5so6299263ual.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 23:59:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=p75ZI/P1vAKdvQGL/dkDYNcJX48p538uaKviA/7sw78=;
 b=R/yZNbJ/FXJTeWHoBM/VGrSujsjvdbo2k6YfYwGCyStA4w4Vu+3r6pSliy3CmjHCY9
 SfTABC9U26Iuir75W2uhDMbjYrKuCe5gUJz+hjZT/9SPfNH7Wq+s6evzjQF/O4AlxycF
 7sWy9vdMYVW9+yX3/Mj1hq8Cq3GpFlBCf+O/f2/OrfpFFZM2dIPGtKvQdDFpzz+h3cRb
 YxUtXuByeXDj0ep4IIuVfFOTzrd8fJuc5IhLadjFSz8WuRsGOpPAvfFz5aPQ12iGPdpR
 +6r3h9+BxdYKM75iYz3wwyH0hWBh//y4y7f8slVNxEbN4lNLXnntUxChGWyVjmNjp1tw
 oeLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=p75ZI/P1vAKdvQGL/dkDYNcJX48p538uaKviA/7sw78=;
 b=MmmCTPiaQdGnIYHMR3uoZcn6NnILvLGLE/dlv7E+gzL3dOBjECnB2DZymuwDcm36+R
 LSOmhEOXTO+FfIdyZ+5kkr7GSmT2eYmnTcFFkZkEEK3NRgo1OfH4mbXwyANaxK4eSPFm
 qHbA4tqqL1eFEQpzNsIagpVwJcQ0QzPtXZ8RCkw41U+hNvqc9IgmwQHidoyQxgAOXLj9
 0vZSbrOyhPfk+yqHVMZvqtbwbtIAtjUOUitWCz/87SVYVmM6xue8++olW0XfG986wGcp
 QwM2y9BogoL64Zv5jvM9gdY9Rbjp4jmZSlJxAyelzlL2EZaDJoEYhVhl6p0Ket/z6vYw
 eH1A==
X-Gm-Message-State: AGi0PuawBbigLZB7FR4Wf+4jmyCkQhGWl9IdSEKplGYddM1c4RGtcPzA
 M5QgAZVYuONsEylhTde9RLhDT+hnbwEKv5P1v0tNwg==
X-Google-Smtp-Source: APiQypLgdu94xf46n59WAXNWbtQ/etKr47I9IXWtRxhdXwH7gOWdeXqlB5oxfaZVEhk0xe+ABAYpaedqjH2ouRHKL5s=
X-Received: by 2002:a67:11c4:: with SMTP id 187mr15068680vsr.34.1587970753925; 
 Sun, 26 Apr 2020 23:59:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200328003249.1248978-1-martin.blumenstingl@googlemail.com>
 <CAFBinCDCv-zNf1FX+8FHMxcNdJ_69yog+O_=QPz3Fzryg3ynAw@mail.gmail.com>
In-Reply-To: <CAFBinCDCv-zNf1FX+8FHMxcNdJ_69yog+O_=QPz3Fzryg3ynAw@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 27 Apr 2020 08:58:37 +0200
Message-ID: <CAPDyKFqNgS4JGRqMDeMgguAHd11W_OpzxyKDjaWoTUXUdc6fwg@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] Amlogic 32-bit Meson SoC SDHC MMC controller driver
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_235915_377102_AD174EED 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 yinxin_1989@aliyun.com, Rob Herring <robh+dt@kernel.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, lnykww@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 25 Apr 2020 at 22:27, Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> Hi Ulf,
>
> On Sat, Mar 28, 2020 at 1:33 AM Martin Blumenstingl
> <martin.blumenstingl@googlemail.com> wrote:
> [...]
> > Martin Blumenstingl (3):
> >   dt-bindings: mmc: Document the Amlogic Meson SDHC MMC host controller
> >   clk: meson: add a driver for the Meson8/8b/8m2 SDHC clock controller
> >   mmc: host: meson-mx-sdhc: new driver for the Amlogic Meson SDHC host
> I have Rob's reviewed-by for the dt-bindings patch and three
> tested-by's for the MMC driver in patch #3 (which means that patch #2
> was implicitly tested as well)
> I tried to answer all your previous questions where possible, but for
> some of your questions I simply don't have an answer.
>
> is there anything from your side which is holding this driver back
> from being merged?

Apologize for the delay. I will have a look asap.

>
> +Cc Jerome, because he is the maintainer of the Amlogic clock
> controller drivers - where this series adds another one, so we need to
> coordinate where patches go.

It seems like you may need to resend the series so the clock
maintainers (Stephen and Jerome) can get a look as well.

Perhaps it's better if the series is queued together - and can help to
do that, but then I need acks from Stephen/Jerome for the clock patch.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A42AF1B2304
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 11:39:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P4rFPIX1M9FsrTGwzAdNPxrELEqSe9eFpicegZx3STs=; b=Fu6E4mIwCtIc7z
	/36gKfXHPXWuB7As9yKGU0AU0AOeCMqqjcU0YqmjYaD3SICXtUUTSy94FSX/G5bR1HUTYKue2dwW6
	IcYbqVxok0jfqPKr5lepQdTsbrQ1zzj7ppCged10QYDIvSVDossNzoF3YiGFNrhMasly6dn/lokue
	ZUpargxWG90UiMka+MEa3cXFISbWT7WWtLhAj34vwWMXpCaT+t9f1UjcMXHVCYuEWAf734Yuqs2vq
	85VeOqrXVx0ULTDeFCXxSDfjnvLKoHbZUU83F17NBsGH0W2dsPBTJjQV5z8C8u+bs/rdOfbtgzYTE
	lonH1WblrJ50biBgR1rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQpNM-0002yt-3S; Tue, 21 Apr 2020 09:39:32 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQpNE-0002yF-1m
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 09:39:25 +0000
Received: by mail-vk1-xa43.google.com with SMTP id j188so3429167vkc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 02:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=J6xX4UX3gD4CgRlcECeL2t8r4Bb9qOAjl08Y9GivdCk=;
 b=wNADBHYfBqrmYLagYMXhvkFyUT8BxHFDmwzkIw/FRVt1EftHXgipIT5yJYjq9ocehu
 GrZB6OVK67pjdwBAL3ZpBnNYXCYFWesoXkeoHo0e+Ys2ree61WWYf4q1s6aM2pRu8zzE
 AejCt13Zo1guyVsMD5GmA9rvmocxaeUAi4sNkPEfOLyZk1Y2qbJjkD6tKDgzsKIF5CWZ
 bLLAKSp0UWZJvyvTPaV6DLqfwXjGE7lCNhM1KyduORgSrcceVXJfhY1vVq4+4BSaq4zN
 YVaXK4yTyH5sWOKbHxJKYqWhedO0PsZU5jTNO2D9GxGo88EZ/BqFQXR4VHF3pC6Bn3an
 zNPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=J6xX4UX3gD4CgRlcECeL2t8r4Bb9qOAjl08Y9GivdCk=;
 b=WLQdMDR4DjUocnXAYhgBaFEz+agdKAwker2lFeuCSMVTI2ysazoou8PuuUHBeREiKE
 qw8gPoip3V73vPhJAssN6S2q1vCffc/0Mux4Ir8Wu0dDIHejf2umzY9TnPPgW5NXjvQ0
 oAMUYZVeGFQr8+tfM5aOQr+gUKlS1Y0oeVlk3i9aNHoOkfeZjpjvMWTyL+2U2ErLQiaj
 IxT4F/OhW6ue0rimTe8iUFsYRI6gp2E0JoSvCYFyk+swakkPI1k+kvYojps38u/7Ql9d
 CV0IQ8toXVBlHssEfA69hwThnIf1bLEysojGdpEsTuaMe8FPLOi9cq5rnrjOP8LiyFGE
 sYFA==
X-Gm-Message-State: AGi0PuYuZVWSOUhyjl01lTVOQSHxG7sW2ucUh/k7AlVtlx7TSmy1Y363
 wMHvHjv8CzKw+oLlO/JcE40x1IAlsVyy4o5iF2Vv1Q==
X-Google-Smtp-Source: APiQypLnPZE96uN80G6KHYHQ5XnaUSopJzzVTgfYzGF7mgcTRi/zaOA8wN0KNmuIrTuTzZyPCglj01kkbBVX93uXS2o=
X-Received: by 2002:a1f:31cf:: with SMTP id x198mr4295427vkx.101.1587461963161; 
 Tue, 21 Apr 2020 02:39:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200420161831.5043-1-ludovic.barre@st.com>
 <CAPDyKFqC3fdnQ9CMYhS-=5MiCET=r5Az2S5oFoA2v1gdDeGO3w@mail.gmail.com>
In-Reply-To: <CAPDyKFqC3fdnQ9CMYhS-=5MiCET=r5Az2S5oFoA2v1gdDeGO3w@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 21 Apr 2020 11:38:47 +0200
Message-ID: <CAPDyKFrHcoVd=GKPB70gOFE8STOnTJrJbcZzE_DEgFWh1Vhszg@mail.gmail.com>
Subject: Re: [PATCH] mmc: mmci_sdmmc: fix power on issue due to pwr_reg
 initialization
To: Ludovic Barre <ludovic.barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_023924_100817_595A105F 
X-CRM114-Status: GOOD (  19.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: DTML <devicetree@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Srini Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 21 Apr 2020 at 11:25, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Mon, 20 Apr 2020 at 18:18, Ludovic Barre <ludovic.barre@st.com> wrote:
> >
> > This patch fix a power-on issue, and avoid to retry the power sequence.
> >
> > In power off sequence: sdmmc must set pwr_reg in "power-cycle" state
> > (value 0x2), to prevent the card from being supplied through the signal
> > lines (all the lines are driven low).
> >
> > In power on sequence: when the power is stable, sdmmc must set pwr_reg
> > in "power-off" state (value 0x0) to drive all signal to high before to
> > set "power-on".
>
> Just a question to gain further understanding.
>
> Let's assume that the controller is a power-on state, because it's
> been initialized by the boot loader. When the mmc core then starts the
> power-on sequence (not doing a power-off first), would $subject patch
> then cause the
> MMCIPOWER to remain as is, or is it going to be overwritten?
>
> I am a little worried that we may start to rely on boot loader
> conditions, which isn't really what we want either...
>
> >
> > To avoid writing the same value to the power register several times, this
> > register is cached by the pwr_reg variable. At probe pwr_reg is initialized
> > to 0 by kzalloc of mmc_alloc_host.
> >
> > Like pwr_reg value is 0 at probing, the power on sequence fail because
> > the "power-off" state is not writes (value 0x0) and the lines
> > remain drive to low.
> >
> > This patch initializes "pwr_reg" variable with power register value.
> > This it done in sdmmc variant init to not disturb default mmci behavior.
> >
> > Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
>
> Besides the comment, the code and the approach seems reasonable to me.

Another related question. I just realized why you probably haven't set
.pwrreg_nopower for the variant_stm32_sdmmc and variant_stm32_sdmmcv2.

I guess it's because you need a slightly different way to restore the
context of MMCIPOWER register at ->runtime_resume(), rather than just
re-writing it with the saved register values. Is this something that
you are looking into as well?

[...]

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

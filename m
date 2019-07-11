Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AC465458
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 12:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GDu3Xx/h1Vd1A7D/LvuzHKNNtqD8JQVneYNyCxfibMc=; b=a2pwNsejtGZ4Z3
	uOy2tIt0kxGRRtoygeHTN8cHT5jhehZ8Izt7nkDZwFZde0Ekq2Dk3LtzHMwfTnDeJnnEb1L93neSZ
	1kQTW4/2zTC5xD0tz1WvSvRsiFdErnuSwEXYh9+oUvW/NCjSiyZYeaWs3GNPhy6orUaK+oahLATeR
	ZNfTZrcetEemo1wa3sXxCiPGQueB9Tnr20LJyCw1DgQsK4g9p69SWuAooOSHlZ4iKwJEVAguY9CKO
	bbl6y5AccB82bhPDBHenxv0N6nmEEKnQUGiDrAwOugJM+6crMYctI6TcqbByRey2uqBGqgNXlOjlM
	mq7zdSBxy8h7V4vO7Fbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlW1K-0004Ng-FS; Thu, 11 Jul 2019 10:09:46 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlW16-0004MD-Jm
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 10:09:34 +0000
Received: by mail-wr1-x442.google.com with SMTP id y4so5645121wrm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 03:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PE3ATibgQJk81OKmbhO7EWb879db6yKZ7K39bmfgNiE=;
 b=i+63J3KioY+pHzWSDbGYBjNsJaK1pG9cNumNv8Zepcf9tZ08M1Zs71SPffN4Q+FW/X
 lmMhI57wRRWO5QM0C0PWWi+vwfK00ILL1a/mCp22N+tFUPJ3cfpYfftEhceZ0EGyg6cR
 1vEtZpTr14ee+0I6HUPi+knYAUFww4CraX8rlkgly71ReTb0+sIlEyWQ9AHcnepTTp9z
 0VtkCgDun00T5jwOrotGkKZSvBkzGEjeW1hrZpVjKsRvtc7N+VrMr6Sl5hFErNxnlVy9
 DRx1jWIGaQu80efVI+vRiJmMmQFBDc7h4NODSEYipAJxLb/j9LCAuo6LnUI6iGCsCyai
 So/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PE3ATibgQJk81OKmbhO7EWb879db6yKZ7K39bmfgNiE=;
 b=O3FhlPKSQHORZnIPUvOZ550Q1pHUDrZKFV8GalEie2aybJ9Ysf5CGukYMA1ebVpLS7
 wTfP9m1cEyiddFr7wlhlRcXZgl3imVrDO2qAleVLfkiMr4s/Hbm2t3nZ5H6qtk7qTfPw
 gjJyzwqPieRQnFzC5EVm67zRIl8rbsM/5NHJ2239yy1eZYWpG/OByV3CZW+PakXH7bAM
 JQh1CnC936gXM06FJSGnO3Y3CS4CoUdzmtBz4o9V+SJC8+yVgN5fx6EubNLLdCoaRaAE
 FphHYQwSn+EtDTz6zQzI/E0r22Wok2gLRYSZz13pj3gcu3vK0iy7/DJXGM4dPglBczvn
 Iywg==
X-Gm-Message-State: APjAAAWokA1m2fy+XHT8qnuSal9BH06A1NlBOBT6nNSQayxyeA0gvetJ
 freriSKOv65tRnITcH3j7iRRNEj5qsw7RhD8Nng=
X-Google-Smtp-Source: APXvYqyEj9eFm1y+IpLtv431dxcLyER5Q4h0ADyC4J15pgcfJlc6y1GcGPSysmGWhMoH78RNfRpVx6idEB1RY6eDUIc=
X-Received: by 2002:adf:c70e:: with SMTP id k14mr4353852wrg.201.1562839768794; 
 Thu, 11 Jul 2019 03:09:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190619074000.30852-1-oliver.graute@gmail.com>
 <20190711082039.zze4t22rvlgdxzow@fsr-ub1664-175>
 <20190711085725.GA1385@optiplex>
In-Reply-To: <20190711085725.GA1385@optiplex>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Thu, 11 Jul 2019 13:09:17 +0300
Message-ID: <CAEnQRZBmcRLZKKAj5Nr9=SZTrbr3u-KdvRzg3StY=sY+06psdQ@mail.gmail.com>
Subject: Re: [PATCHv2] clk: add imx8 clk defines
To: Oliver Graute <oliver.graute@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_030932_672269_21DC73CA 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Abel Vesa <abel.vesa@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 11, 2019 at 12:19 PM Oliver Graute <oliver.graute@gmail.com> wrote:
>
> On 11/07/19, Abel Vesa wrote:
> > On 19-06-19 09:39:52, Oliver Graute wrote:
> > > From: Oliver Graute <oliver.graute@kococonnector.com>
> > >
> > > added header defines for imx8qm clock
> > >
> > > Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>
> >
> > Again, this seems to be taken from some vendor tree, so please keep the
> > original author.
>
> yes the header defines is from NXP vendor tree. One of orginal authors is
>
> Author: Anson Huang <Anson.Huang@nxp.com>
> Date:   Thu Jan 19 03:53:31 2017 +0800
>     MLK-13911-3 ARM64: dts: imx8qm: add dtsi
>     Add i.MX8QM dtsi support.
>     https://github.com/ADVANTECH-Corp/linux-imx6.git
>
> Whats is the right way to attribute him?

git commit --amend author="Anson Huang <Anson.Huang@nxp.com>"

Also, modify commit body and add
Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Then add your Signed-off-by.

thanks,
Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

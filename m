Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7AE778020
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 17:24:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VPnydan3JjkGTynE2oOrhV1T7dHmDXRElrMo9Fr1pp8=; b=MrL++RNIDUnAVZ
	c1ZukIkiibUuJLdk1ZoQe/Al/4cH7KFyYyvKu9vgAyvmLzaHArFONA7rVZ0kpam8Awp68vd69xAp3
	quHOIcwDy8+VUKBT3o+YMn6QyNlv/ejqtPH0Bk90CpcVP7qrPxV6yo6jojf/OHAFWkjaMVoAyHC7S
	NcHu/h8AyJh8CYo0gOP8vMY32FWM7uaig9eg+Dip7xmlgcyCinMi6GXvmD/EPkCsM+qx9ou0M4tAj
	6HrZmNhsnJskkjBmTMwUk1G4/7vO52GR4Xs6RO7NCwwtddV4CK85otEx1LeVgfqC6agh8JiSsCOID
	A8WQez8mS2/goDh5uaLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrl2I-000778-CK; Sun, 28 Jul 2019 15:24:34 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrl22-00076n-E3
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 15:24:19 +0000
Received: by mail-wm1-x343.google.com with SMTP id h19so41277963wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 08:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HtRVmybXb1C2x1A/QbBumlyEcgeYu6CTnhrpwjpKg90=;
 b=Muda7dGbveNH73T9XmXzmaPZ3E+lp1CgdTK6jTTybXWpC2RQd+j5YCcCbzH40Qjf+Q
 DOM7gMaS6ZjkJlSAv/cj/9ZY80u2z9PjUnshpErTukYv7xmPF78sYaqCQz8Y/EONv/VC
 VJ1wSLVGlYoTStTq0zv14zdv+Vh55Qxiq9hiRbhbgaEtUM18oO04wUvNLndFyMqx32az
 wNVVSWafOWpDhrfpzqdQiAK0WjpBAZW4gcY5rRnz8vcMiPRr0kkfc90mGls5HVcaAOuc
 7Rzub5mT7hIEOr/eOd6bm84Spo8UOpbC4934HpLVVlQk6a/TVNu5RHm0OGOPGwKoWhix
 5uXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HtRVmybXb1C2x1A/QbBumlyEcgeYu6CTnhrpwjpKg90=;
 b=TSGdntz5cNFWFCEVIesv/WRxnyM1KXq1ra9rfBEUPtim0PQEEy84Vik6q4JtU0W/Dg
 K+lqGkIO56rlz9IGLJXDfgyou7+os4MniC1NWNV6wMxP7x+XxF9oX9AGFTDH1H1KfBKu
 qDglGZ1Hk/R6Oo/bx8dedsflhQW4MI7gGyGWyarCsHZ5HRoF97ZuLUM9wFT2QwEFsr9N
 h4X+BDws6jJu2Yck1GGBxs4zonktT0MGS0s8+F0kEHmqoWlgQdaIIrMemhFw2Aa+gRXF
 NvXYNZj0SlLkwuoJ4Tr5hsKrbbZdDvrKH1pQSYHHYOFLRPjj0PDjZZXo5qgYY+UhiLW9
 u+lg==
X-Gm-Message-State: APjAAAUdbEwpaGk7ZeOeK5OZQ3LqYSLFU1RQao1lI3HlMMF/WaefcQDM
 pJnxZ1P9yrAd8Fcw0VyPHSNcBjl847R0RJ187fk=
X-Google-Smtp-Source: APXvYqwVL8oWViukuPqmsa31Rg2hE8bmHJXDbuuSpxO+52WwcONISLQsSSg2nN1hGJtGrbA0wGzK79tZ7dQXW02hVlY=
X-Received: by 2002:a1c:c188:: with SMTP id r130mr90251544wmf.73.1564327456436; 
 Sun, 28 Jul 2019 08:24:16 -0700 (PDT)
MIME-Version: 1.0
References: <1562155311-24696-1-git-send-email-abel.vesa@nxp.com>
 <CAEnQRZBK7EYVhbGpFeC79HxU=h0OcXU_SSeaMWbp+Qk=rf=14g@mail.gmail.com>
In-Reply-To: <CAEnQRZBK7EYVhbGpFeC79HxU=h0OcXU_SSeaMWbp+Qk=rf=14g@mail.gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Sun, 28 Jul 2019 18:24:05 +0300
Message-ID: <CAEnQRZDrTZ-KFs0fCYorpiRHJFud9twoe-B4fRjekd6DJiODhw@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: imx8mq: Init rates and parents configs for
 clocks
To: Abel Vesa <abel.vesa@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_082418_472995_DED8DD15 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Devicetree List <devicetree@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 3, 2019 at 4:05 PM Daniel Baluta <daniel.baluta@gmail.com> wrote:
>
> On Wed, Jul 3, 2019 at 3:03 PM Abel Vesa <abel.vesa@nxp.com> wrote:
> >
> > Add the initial configuration for clocks that need default parent and rate
> > setting. This is based on the vendor tree clock provider parents and rates
> > configuration except this is doing the setup in dts rather then using clock
> > consumer API in a clock provider driver.
> >
> > Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
>
> For audio related clock:
> Acked-by: Daniel Baluta <daniel.baluta@nxp.com>

Shawn,

Please ignore this patch. I've added some improvements.

New patch is:
[PATCH v4] arm64: dts: imx8mq: Init rates and parents configs for clocks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

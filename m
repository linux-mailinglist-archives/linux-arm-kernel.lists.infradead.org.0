Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6251B3AF2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 11:15:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5LWo8DCbVn17htevRkMztGaQDvZz/JS70kudza+e7+M=; b=RUxZ8Oz6umGXjH
	Mx+nkL4khQOa9aqm7gP6KBW2sSoboDYnUNmTOLdE5ayCV26DmwASytANJe6TxbpU3A3GMRsNsm/WK
	pfHU6xKfmwBLWw9qvVhrQaCnfamcKAzu00sLZGqJ7qPFFSWpTff7gh/bMv199QBuYmC4p4Mb8jYmt
	z+dsXZ5ZRT9mt5tJOG8/JMxjdcYk8TmFBqeurC9KWHxy2wX5rUxCYnbXCScXsBt155Mxam40v+1bu
	lMZE16bTCa1Yw3/JA4Ek/9NdpNx+mHoSGlrYEeixru1p6aNRcs0FeTrMYF/sw6/Rivk80CxCf7COJ
	gz8vur8+wRQ+Y6yxJ/IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRBTA-0006QA-TL; Wed, 22 Apr 2020 09:15:00 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRBT1-0006Nn-DK
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 09:14:52 +0000
Received: by mail-il1-x143.google.com with SMTP id q10so1178055ile.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 02:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oaJM9sd2m84/FAwe9eHXBdDTeN4F6hldhFPypOmqL3Q=;
 b=jGQfkGihgBMNImvVI1vDjbTMJYi4SZvE6tNyfOBPfYZn3bEQovCvH1li4tFOnBg7fN
 r1llf1CFsb7aH6vcC+/NKP4yVp6s2e4I7u5HGLZsPcFatNeJRVdxva6/3QL4W8WqQfC2
 qmBqysSH7tFf9sqMVyiQ+y5qd/aqh5np9llWiSlUKC/jJxTZC+Qd6fSeDpd5Vjuf7IZw
 ifICZdXQnAY5SLCt3lppPQP39RgdI/MZCu3yisTVdM7A4ZqG/+XZQuVehH4mksjkJI6q
 zq5X7UtSuhSV9Zhx8iLy5BXRRGBvbbMOg64ZmIOlg5dwZVl1tUtGySS+NQukSvEvCaLd
 5MIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oaJM9sd2m84/FAwe9eHXBdDTeN4F6hldhFPypOmqL3Q=;
 b=LWrSFXwBbZTVupNwnETlBCSpp8/K5WTfmPKnYJVlsaxI12UplyvX6spO/ELj+iHFOr
 Lwy1oA4m9Xo1VM9YRU4Fo8YPRFnUseOZXtRK5kiYadl4s5kkCHOUtRH2pI6BuceNa424
 p2tiP3JJb5LtX/fBaWzIZdspWJTakHFUo8I8lO6Ah4Li8JT6t3x6afeJVfyie3d8WBHE
 IyLLbTlY+DfUKTqfLm4bgMIUUwGdZDRoJxUbgB7VIa5zajyIW8O/gX9RTm/51vtDUYQp
 kwfKTxCAxWAdIN8JYUK5PAJ+PGcOBqZRRM0z9HhpFf7AUwWzYxVyYvevtTHn9CLNLzA6
 jmIw==
X-Gm-Message-State: AGi0PuYpFzTjodll59oGyeUKOPGKoiz08tSkJh4XGoWXYrR5Qz80BhxS
 1wdbr7SZssDirzdCiECQVx0hFw2G7AE4U/Nh0F8=
X-Google-Smtp-Source: APiQypLDScpVfwL23HgjzpuY5CTZczukDxHa953XA1W3RlAHDModV6xcrO7EPTKgCdpI82cL6pUD8bhum7pmZHLY2zA=
X-Received: by 2002:a05:6e02:111:: with SMTP id
 t17mr13850416ilm.59.1587546888224; 
 Wed, 22 Apr 2020 02:14:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200422041502.7497-1-samuel@sholland.org>
In-Reply-To: <20200422041502.7497-1-samuel@sholland.org>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Wed, 22 Apr 2020 11:14:36 +0200
Message-ID: <CAJiuCceWffc7O+MMK4wiGJEQ-m-4misCpq8w35_esdHVkwkkfA@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH] arm64: dts: allwinner: a64: Disable SPDIF
 by default
To: Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_021451_447775_7AB3BA3A 
X-CRM114-Status: GOOD (  21.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Samuel,

On Wed, 22 Apr 2020 at 06:11, Samuel Holland <samuel@sholland.org> wrote:
>
> As of v5.7-rc2, Linux now prints the following message at boot:
>
>   [   33.848525] platform sound_spdif: deferred probe pending
>
> This is because &sound_spdif is waiting on its DAI link component
> &spdif to probe, but &spdif is disabled in the DTS. Disable the
> audio card as well to match.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> index 6f8c30d89b9b..6c233ff031c6 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> @@ -169,6 +169,7 @@ link0_codec: codec {
>         sound_spdif {
>                 compatible = "simple-audio-card";
>                 simple-audio-card,name = "On-board SPDIF";
> +               status = "disabled";
>
>                 simple-audio-card,cpu {
>                         sound-dai = <&spdif>;

This "On-board SPDIF" node is board specific and should be moved to
each board instead of be disabled here.

Maybe drop the node, and people who need it whould reintroduce it properly?

Regards,
Clement


> --
> 2.24.1
>
> --
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20200422041502.7497-1-samuel%40sholland.org.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECE29E23B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 10:20:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PW+9j/n0IGffhCzzJwGgo3xeZmPDvgMZgjz6MIzQ1K8=; b=L/KKE+JMHPu2sK
	wmr82yq1B8Wzab1VC9q/au5lwBcQP9fE4+mKEs2mkiMXWE+T0xcjTS9d4bIlJ/Cpm3mIRxjw1Deln
	4h2EnCvXlWFlaUazQ89fx8iSR/il4szF5jvkuApKzV0Cf54V2JeMLr65xB12QKeCFgGPqYR6YsiJf
	n3/6zNd2ymnLJM6QkdBM85gcQRpoNfCs1v9DbUTfWvCVw2KKfSzTv1YInCaPtW00i/mtgUsLbPSbg
	BH+T0AoOQsmySXt3usxrHuyb/CKHIBBsMPXIfdhLttshxJwlqND6TNWNGquuW1aQuVMahlriabeBP
	yLg1rU16pG8gMww7nfOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Wig-0000Qg-M1; Tue, 27 Aug 2019 08:20:50 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2WiU-0000QJ-Hr
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 08:20:40 +0000
Received: by mail-ed1-f66.google.com with SMTP id r12so30246165edo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 01:20:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qY2Ghx+cvhqn0reVmcdYz/Ra4oEaXlOnSP3k2TEC06I=;
 b=geXGDKSsY1wH9CBTXa6MhAQn76oiTxl+WV+Z6+8RnYQSd0vLUdua3POszqilrw6BDM
 018XlTIXnshpk78fftaxo5edNhTAFgZVV7txuQm9ePu+r8MQeHqxdWo/RFxweWiMeldt
 pCwhMqotajsLFkq0BgxLafJe1ba2KkWbUDGlLm3gXhb0pcwS5UALCN3P1heFk9UwpVWq
 UrGFW+/wiUCh34kNadDbeyLwmLOtI9QgrDyr7hi96S5u8Kpb8yosnTujfGbggOxW5yct
 Q+qMaGCAOEk3gtumdGe6ypsjti17Wpg8lZQMLK37opMoenDdfSVHqQGLkjoNnsU5WeQC
 TWOA==
X-Gm-Message-State: APjAAAWxtckgQuSsvsziIXPEB/E01wP/cG1ZWNyhdLcXVF55q+FvUghc
 A+grgsa7nYdSMiBNmyyJ9000lEnl/yg=
X-Google-Smtp-Source: APXvYqxSfH9DCHB6ujnC8ut7Qq8gr2dkvu9qnFG7ZWDR0WPvLbjCa3egWfu0liTwEnAJ1GZFopInKw==
X-Received: by 2002:a50:ec18:: with SMTP id g24mr22653305edr.259.1566894036583; 
 Tue, 27 Aug 2019 01:20:36 -0700 (PDT)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com.
 [209.85.128.44])
 by smtp.gmail.com with ESMTPSA id s11sm947006edm.43.2019.08.27.01.20.35
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 27 Aug 2019 01:20:36 -0700 (PDT)
Received: by mail-wm1-f44.google.com with SMTP id v15so2093859wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 01:20:35 -0700 (PDT)
X-Received: by 2002:a1c:4c06:: with SMTP id z6mr26175657wmf.47.1566894035615; 
 Tue, 27 Aug 2019 01:20:35 -0700 (PDT)
MIME-Version: 1.0
References: <cover.e08aa7e33afe117e1fa8f017119d465d47c98016.1566242458.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <cover.e08aa7e33afe117e1fa8f017119d465d47c98016.1566242458.git-series.maxime.ripard@bootlin.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 27 Aug 2019 16:20:24 +0800
X-Gmail-Original-Message-ID: <CAGb2v64xOcs3Vi5k3yUwMiUrzZMuJ5vZ3kxp9w1=CQDrkn3cgA@mail.gmail.com>
Message-ID: <CAGb2v64xOcs3Vi5k3yUwMiUrzZMuJ5vZ3kxp9w1=CQDrkn3cgA@mail.gmail.com>
Subject: Re: [PATCH 00/21] ASoC: sun4i-i2s: Number of fixes and TDM Support
To: Maxime Ripard <mripard@kernel.org>, Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_012038_593948_A9BFC93B 
X-CRM114-Status: GOOD (  17.82  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Code Kipper <codekipper@gmail.com>,
 Linux-ALSA <alsa-devel@alsa-project.org>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi everyone,

On Tue, Aug 20, 2019 at 3:25 AM Maxime Ripard <mripard@kernel.org> wrote:
>
> From: Maxime Ripard <maxime.ripard@bootlin.com>
>
> Hi,
>
> This series aims at fixing a number of issues in the current i2s driver,
> mostly related to the i2s master support and the A83t support. It also uses
> that occasion to cleanup a few things and simplify the driver. Finally, it
> builds on those fixes and cleanups to introduce TDM and DSP formats support.
>
> Let me know what you think,
> Maxime
>
> Marcus Cooper (1):
>   ASoC: sun4i-i2s: Fix the MCLK and BCLK dividers on newer SoCs
>
> Maxime Ripard (20):
>   ASoC: sun4i-i2s: Register regmap and PCM before our component
>   ASoC: sun4i-i2s: Switch to devm for PCM register
>   ASoC: sun4i-i2s: Replace call to params_channels by local variable
>   ASoC: sun4i-i2s: Move the channel configuration to a callback
>   ASoC: sun4i-i2s: Move the format configuration to a callback
>   ASoC: sun4i-i2s: Rework MCLK divider calculation
>   ASoC: sun4i-i2s: Don't use the oversample to calculate BCLK
>   ASoC: sun4i-i2s: Use module clock as BCLK parent on newer SoCs
>   ASoC: sun4i-i2s: RX and TX counter registers are swapped
>   ASoC: sun4i-i2s: Use the actual format width instead of an hardcoded one
>   ASoC: sun4i-i2s: Fix LRCK and BCLK polarity offsets on newer SoCs
>   ASoC: sun4i-i2s: Fix the LRCK polarity
>   ASoC: sun4i-i2s: Fix WSS and SR fields for the A83t
>   ASoC: sun4i-i2s: Fix MCLK Enable bit offset on A83t
>   ASoC: sun4i-i2s: Fix the LRCK period on A83t
>   ASoC: sun4i-i2s: Remove duplicated quirks structure

Unfortunately the patches that "fix" support on the A83T actually break it.
The confusion stems from the user manual not actually documenting the I2S
controller. Instead it documents the TDM controller, which is very similar
or the same as the I2S controller in the H3. The I2S controller that we
actually support in this driver is not the TDM controller, but three other
I2S controllers that are only mentioned in the memory map. Support for this
was done by referencing the BSP kernel, which has separate driver instances
for each controller instance, both I2S and TDM.

Now to remedy this I could send reverts for all the "A83t" patches, and
fixes for all the others that affect the A83t quirks. However the fixes
tags existing in the tree would be wrong and confusing. That might be a
pain for the stable kernel maintainers.

Any suggestions on how to proceed?

Regards
ChenYu

>   ASoC: sun4i-i2s: Pass the channels number as an argument
>   ASoC: sun4i-i2s: Support more channels
>   ASoC: sun4i-i2s: Add support for TDM slots
>   ASoC: sun4i-i2s: Add support for DSP formats
>
>  sound/soc/sunxi/sun4i-i2s.c | 660 ++++++++++++++++++++-----------------
>  1 file changed, 372 insertions(+), 288 deletions(-)
>
> base-commit: d45331b00ddb179e291766617259261c112db872
> --
> git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

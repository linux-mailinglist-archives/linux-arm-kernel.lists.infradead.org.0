Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A0396702
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 18:59:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rayjGFzzNYiqQVs3n/utHjH6g4Hw7ew8kkFs0/qVKKE=; b=RPu04R2B7J1JSS
	k5QM/w6HinksLdVE/xFpiKZOP5fEU7IwRj3fndIyKCcjl0uykKgO+Hxy5tcM/9ek18ptCGVKNMqfN
	P/SwJir/oxhhRHjTJC5KI67vJa8WxhtZS85FcVpv6CyB7ETHN3zTGVLv/wuoY4tz9IOWh6O6RLjDh
	0zv0Bvb7hJeJ5wjwn8YVPLjiTT7liec2XVoWUxPHx1DJw81J1A6xWC2JoJL/pWy1/+ibW9BQsVQXE
	rsVIFH8z2hcYebvQuBOyziOCQ1OgzCG70NK9K+Yf6XLvEwm26rogvt9M0Iv+PSbgn5hj3GdB/H5qZ
	g054Jx3Urf07MX4WD3qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i07U8-00025O-K4; Tue, 20 Aug 2019 16:59:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i07U0-000254-ND
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 16:59:45 +0000
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
 [209.85.160.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4F3812332A
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 16:59:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566320384;
 bh=L7h/XqDISyn5yvXuXcHP6xKVJUvZ9mGZbH2dVM9Kvlk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=PiO5eRHnS1A+gmOTGiQevuK6aC0wGaeU58KOfQFnrX+U14IR8LbZyu8AYtvn3W88e
 Z30kxZ9I7AJw9JOfwOiy1M5sF1lhgl5wF6mjJAq5tFnzxTl7SWO8FkoykrrOql608f
 vFC31S2IDYAwRNwkZsiToMNayGzudHQk/3hGPwlM=
Received: by mail-qt1-f174.google.com with SMTP id z4so6845834qtc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 09:59:44 -0700 (PDT)
X-Gm-Message-State: APjAAAWLdWRP0j4+NuDfDgCD8jHv2e9eMJ8Vtu5DOaWJ3I4R6xbwvrH2
 KMqabwtU6ftyoLpTr9BI25WWS59O30UzZQGZ0w==
X-Google-Smtp-Source: APXvYqwnHzjzAYM1xrZcnV9c1IC181pdYRyQzGboJkXby4DXCfCxM8cRlMfws27ylf+AmUmWlPw2ALiMRnzjFRwdcns=
X-Received: by 2002:ac8:386f:: with SMTP id r44mr27739887qtb.300.1566320383501; 
 Tue, 20 Aug 2019 09:59:43 -0700 (PDT)
MIME-Version: 1.0
References: <1566315318-30320-1-git-send-email-krzk@kernel.org>
 <1566315318-30320-3-git-send-email-krzk@kernel.org>
In-Reply-To: <1566315318-30320-3-git-send-email-krzk@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 20 Aug 2019 11:59:32 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJLSZ50tdFcdPFc2ifcDoFZFuw=SoKsunzjtAhZ-11fBg@mail.gmail.com>
Message-ID: <CAL_JsqJLSZ50tdFcdPFc2ifcDoFZFuw=SoKsunzjtAhZ-11fBg@mail.gmail.com>
Subject: Re: [PATCH v6 3/4] dt-bindings: arm: fsl: Add Kontron i.MX6UL N6310
 compatibles
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_095944_775248_DA912FEF 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 10:35 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> Add the compatibles for Kontron i.MX6UL N6310 SoM and boards.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>
> ---
>
> Changes since v5:
> New patch
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 7294ac36f4c0..d07b3c06d7cf 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -161,6 +161,9 @@ properties:
>          items:
>            - enum:
>                - fsl,imx6ul-14x14-evk      # i.MX6 UltraLite 14x14 EVK Board
> +              - kontron,imx6ul-n6310-som  # Kontron N6310 SOM
> +              - kontron,imx6ul-n6310-s    # Kontron N6310 S Board
> +              - kontron,imx6ul-n6310-s-43 # Kontron N6310 S 43 Board

This doesn't match what is in your dts files. Run 'make dtbs_check' and see.

>            - const: fsl,imx6ul
>
>        - description: i.MX6ULL based Boards
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

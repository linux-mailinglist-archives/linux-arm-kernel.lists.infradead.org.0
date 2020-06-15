Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C341F9047
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 09:48:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sTdwLF1iD+QyRDtRc/nndKxrNZ2kSaBwjbBXysAslMQ=; b=gVoAAMXCZIreON
	8yaICgCCrg9CMWpzODAoDX6MD29SRsJ19gYeBrasBh3+dMmmKkpz6di2XY4jk4P+OetXqyrasX80E
	mqCuHlZeHqpyVLYmXn9YEZZtN64o0ya9BG8BJzutaX+2iWNL+SFAtsJsFkCee9NmdVOSFFbcgXdUH
	jFENGUlbg2mqozTgYJWr61IcVxqJWduHpYIlHly79sFumRn6XykTPORaMHyNd22L5u81sabMreoyg
	Fh1Ryy9LJ1wH26mCzOPYfsmNFkmQOG46Jbll8FB7j0HdNKe4f5ylsaj75uhJCReVgwadITJX+7LYI
	Hl3Uy0M2+LolaxmEG1yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkjr1-0006VT-VZ; Mon, 15 Jun 2020 07:48:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkjqt-0006UO-Su
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 07:48:21 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jkjqg-0006Gk-PF; Mon, 15 Jun 2020 09:48:06 +0200
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jkjqe-000242-Ti; Mon, 15 Jun 2020 09:48:04 +0200
Message-ID: <c544bcb8ea20dadcea68e22d33c160a713c7fe02.camel@pengutronix.de>
Subject: Re: [PATCH 14/29] dt: Fix broken references to renamed docs
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Linux Doc Mailing
 List <linux-doc@vger.kernel.org>
Date: Mon, 15 Jun 2020 09:48:04 +0200
In-Reply-To: <6866c0d6d10ce36bb151c2d3752a20eb5122c532.1592203542.git.mchehab+huawei@kernel.org>
References: <cover.1592203542.git.mchehab+huawei@kernel.org>
 <6866c0d6d10ce36bb151c2d3752a20eb5122c532.1592203542.git.mchehab+huawei@kernel.org>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_004819_931858_05FD2E5C 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jonathan Corbet <corbet@lwn.net>, David Airlie <airlied@linux.ie>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Brown <broonie@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
 Andy Gross <agross@kernel.org>, linux-spi@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2020-06-15 at 08:46 +0200, Mauro Carvalho Chehab wrote:
> Some files got renamed. Those were all fixed automatically by
> 
> 	./scripts/documentation-file-ref-check --fix
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt   | 2 +-
>  Documentation/devicetree/bindings/display/imx/fsl-imx-drm.txt | 4 ++--
>  Documentation/devicetree/bindings/display/imx/ldb.txt         | 4 ++--
>  Documentation/devicetree/bindings/spi/qcom,spi-geni-qcom.txt  | 2 +-
>  MAINTAINERS                                                   | 4 ++--
>  5 files changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> index 715047444391..10b8459e49f8 100644
> --- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> @@ -47,7 +47,7 @@ Required properties:
>  			  &lsio_mu1 1 2
>  			  &lsio_mu1 1 3
>  			  &lsio_mu1 3 3>;
> -		See Documentation/devicetree/bindings/mailbox/fsl,mu.txt
> +		See Documentation/devicetree/bindings/mailbox/fsl,mu.yaml
>  		for detailed mailbox binding.
>  
>  Note: Each mu which supports general interrupt should have an alias correctly
> diff --git a/Documentation/devicetree/bindings/display/imx/fsl-imx-drm.txt b/Documentation/devicetree/bindings/display/imx/fsl-imx-drm.txt
> index 5bf77f6dd19d..5a99490c17b9 100644
> --- a/Documentation/devicetree/bindings/display/imx/fsl-imx-drm.txt
> +++ b/Documentation/devicetree/bindings/display/imx/fsl-imx-drm.txt
> @@ -68,7 +68,7 @@ Required properties:
>    datasheet
>  - clocks : phandle to the PRE axi clock input, as described
>    in Documentation/devicetree/bindings/clock/clock-bindings.txt and
> -  Documentation/devicetree/bindings/clock/imx6q-clock.txt.
> +  Documentation/devicetree/bindings/clock/imx6q-clock.yaml.
>  - clock-names: should be "axi"
>  - interrupts: should contain the PRE interrupt
>  - fsl,iram: phandle pointing to the mmio-sram device node, that should be
> @@ -94,7 +94,7 @@ Required properties:
>    datasheet
>  - clocks : phandles to the PRG ipg and axi clock inputs, as described
>    in Documentation/devicetree/bindings/clock/clock-bindings.txt and
> -  Documentation/devicetree/bindings/clock/imx6q-clock.txt.
> +  Documentation/devicetree/bindings/clock/imx6q-clock.yaml.
>  - clock-names: should be "ipg" and "axi"
>  - fsl,pres: phandles to the PRE units attached to this PRG, with the fixed
>    PRE as the first entry and the muxable PREs following.
> diff --git a/Documentation/devicetree/bindings/display/imx/ldb.txt b/Documentation/devicetree/bindings/display/imx/ldb.txt
> index 38c637fa39dd..8e6e7d797943 100644
> --- a/Documentation/devicetree/bindings/display/imx/ldb.txt
> +++ b/Documentation/devicetree/bindings/display/imx/ldb.txt
> @@ -30,8 +30,8 @@ Required properties:
>                  "di2_sel" - IPU2 DI0 mux
>                  "di3_sel" - IPU2 DI1 mux
>          The needed clock numbers for each are documented in
> -        Documentation/devicetree/bindings/clock/imx5-clock.txt, and in
> -        Documentation/devicetree/bindings/clock/imx6q-clock.txt.
> +        Documentation/devicetree/bindings/clock/imx5-clock.yaml, and in
> +        Documentation/devicetree/bindings/clock/imx6q-clock.yaml.
>  
>  Optional properties:
>   - pinctrl-names : should be "default" on i.MX53, not used on i.MX6q

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E83EB4BAE3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 16:12:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ku9sVQauURTcRBIBOtv3trr6AQi/qh2HM3Ux45EN418=; b=H9Wug9k80YLMQF
	GfUdX/h14ZYBAEpbTa0VRsof65PblSY2fXFTHWspvIravTqTDhj3C2DPN90DcR6R3rvvs0OyPbaVd
	zG1jAYcPo+CQqQ5Q9ZLH6Sn5VuDRAejJIoJLy9m6EKdzMwR9CjZStu8MwcgviMOXniui43jfNa7H3
	InhkdYXFYR2PBHjbab78ESK2pynLisFFLPOiSMw/yO0d/5aQD4FWBCdr/cUuovV06UKkcvKtgUlba
	kRfaMj7sdUoZB/nN6ICr9Y+jHOvs2m1rjkm6MesH0Tu6N0irEhQ6BH0sXlprJ3D0s8aiUsWvzeHrn
	ihYFizKPu8+xH2LUs0lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdbKA-0000WU-En; Wed, 19 Jun 2019 14:12:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdbK2-0000WB-Eo
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 14:12:23 +0000
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 136B02182B
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 14:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560953542;
 bh=LFjHq6ftsF8ixON43fD3Q6Ndtpt2rar3Y+/uG+MLXjw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=prEsNKmyAvAq7H0E/JU6DGY/fpy4Y2cDr8VFkyP0FxHF4wONETOFKBqM0n7WkBUfm
 j52OugjC0IgrqAnsfY6ZBep9HodrOSCoRjJZixWjWyXd0qw8a1RksAOO01lwa+FqSs
 q4uKK+ubteTIwOfjnQvUas0PoXRu5TyEwwd9xWFA=
Received: by mail-qt1-f170.google.com with SMTP id j19so19994073qtr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 07:12:22 -0700 (PDT)
X-Gm-Message-State: APjAAAUgYvM7NPGOs+L1K266ypn6CGjEFbNk+oP91bwHykcBCKhXNM7Y
 CdVLqeWnb/CJwRxuF5H7DTOU2wERuukVAKlZJQ==
X-Google-Smtp-Source: APXvYqx7bOz4FzfPsClBOol4RpULcypOHhAO+WI7MhBrQEIGcxX/3pwVQ40KBd7vbLC3LPe64QmnNa+B23EWoR33xWw=
X-Received: by 2002:ac8:368a:: with SMTP id a10mr23661785qtc.143.1560953541290; 
 Wed, 19 Jun 2019 07:12:21 -0700 (PDT)
MIME-Version: 1.0
References: <27aeb33cf5b896900d5d11bd6957eda268014f0c.1560937626.git-series.maxime.ripard@bootlin.com>
 <60569c4326437aeb1c13b3da4d00bcf6202e9e6b.1560937626.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <60569c4326437aeb1c13b3da4d00bcf6202e9e6b.1560937626.git-series.maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 19 Jun 2019 08:12:09 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+D_=3V26Yj-EH4nJ0Hsx7-+73Q8iGD+s40iRz-EpS=kQ@mail.gmail.com>
Message-ID: <CAL_Jsq+D_=3V26Yj-EH4nJ0Hsx7-+73Q8iGD+s40iRz-EpS=kQ@mail.gmail.com>
Subject: Re: [PATCH v3 08/16] dt-bindings: net: stmmac: Convert the binding to
 a schemas
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_071222_517407_BE1232EF 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Andrew Lunn <andrew@lunn.ch>,
 =?UTF-8?Q?Antoine_T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev <netdev@vger.kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 3:48 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Switch the STMMAC / Synopsys DesignWare MAC controller binding to a YAML
> schema to enable the DT validation.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v2:
>   - Switch to phy-connection-type instead of phy-mode
>   - Fix the snps,*pbl properties type
>
> Changes from v1:
>   - Restrict snps,tso to only a couple of compatibles
>   - Use an enum for the compatibles
>   - Add a custom select statement with the compatibles of all the generic
>     compatibles, including the deprecated ones. Remove the deprecated ones
>     from the valid compatible values to issue a warning when used.
> ---
>  Documentation/devicetree/bindings/net/snps,dwmac.yaml | 389 +++++++++++-
>  Documentation/devicetree/bindings/net/stmmac.txt      | 179 +-----
>  2 files changed, 390 insertions(+), 178 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/net/snps,dwmac.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

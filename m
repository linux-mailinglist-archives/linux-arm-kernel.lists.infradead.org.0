Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D82D04BB2B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 16:19:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lqp3yDUT97ATp/lF5D74S+m+wuaggO8yrzrBVlFKsQI=; b=S1xm8oaWPTJ6ma
	xtL3ef9d4MhuvF17ZMdUWhkmRXITyI91ytAsHpdwEI6Mmog3BZOpY9z8Nj2PnS376Iwv7Ce1Iexax
	m3+YP7Um95twMmol38RA53d+qoWa8VXr26i18b9rla7ClVSTDOFxGybK4DPRIXZVmNhqZTbeVBr1J
	A2wVpAvGb8LRfJhoyRij/7Uzt7xRiiHb8HIoK4/u9t+kMaER1zF7NGZO2/61XmJ2Fe5kxXdhIy6Tu
	TTh/M0V85tp4rdS9JxUCppPcREokNsFTlTXO1TZltTuwzx8u6xAMezwXW+3XPjVBuma+uMSAkQMl0
	HMb+rV6nWiyYDmmur4gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdbR1-0004S7-G0; Wed, 19 Jun 2019 14:19:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdbQq-0004RX-4C
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 14:19:25 +0000
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
 [209.85.222.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BD6C92183F
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 14:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560953963;
 bh=n8TEMp5NfQkh8hO6ix5AyOImy509Oc/VLYfShgqtBWw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=TQQzzcQOVDYujYjhiqpIrjGpja5ysim7xreIt+TN34F1ZsHgv6nHPk3OxP8icYFAD
 /4yV+c0m9zEmrqiyzOdAUMc8E7d/L6CCS4/dHHDBrcQ9Hyseb+KJGWqm294Lm1AlYO
 Zk7JA9zUGhIitAcrZj+D9Vw2m2VCiTZf1p9uTW7A=
Received: by mail-qk1-f173.google.com with SMTP id l128so11013944qke.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 07:19:23 -0700 (PDT)
X-Gm-Message-State: APjAAAWkZ/Rj7CP0jaosh1FoX1IjsIfXPkDikQ3bq+muuWCmh7tuaqGP
 YQAqTiZRGr9ty18tyMmSmBURrO69yyEQd6nAhw==
X-Google-Smtp-Source: APXvYqz30or7ej65/SsSJs4x/X0k8P1S6woBKs9hS49G7m6m1H5U7iWLwPFZp3nxyKc4KLu6ce8JHx53OeFWyc6rypc=
X-Received: by 2002:a05:620a:13d1:: with SMTP id
 g17mr45012878qkl.121.1560953963047; 
 Wed, 19 Jun 2019 07:19:23 -0700 (PDT)
MIME-Version: 1.0
References: <27aeb33cf5b896900d5d11bd6957eda268014f0c.1560937626.git-series.maxime.ripard@bootlin.com>
 <36bc43471d12502b3b49169ca16cf1f5de415f95.1560937626.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <36bc43471d12502b3b49169ca16cf1f5de415f95.1560937626.git-series.maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 19 Jun 2019 08:19:11 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+thwOWdfu8Wa2=VeHNHbcUDtAzYEisntY=txnKriG2BA@mail.gmail.com>
Message-ID: <CAL_Jsq+thwOWdfu8Wa2=VeHNHbcUDtAzYEisntY=txnKriG2BA@mail.gmail.com>
Subject: Re: [PATCH v3 07/16] dt-bindings: net: sun4i-mdio: Convert the
 binding to a schemas
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_071924_183938_E7287C52 
X-CRM114-Status: GOOD (  14.75  )
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
> Switch our Allwinner A10 MDIO controller binding to a YAML schema to enable
> the DT validation.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v2:
>   - Add the generic MDIO YAML schema
>
> Changes from v1:
>   - Add a select statement with the deprecated compatible, and remove it
>     from the valid compatibles
> ---
>  Documentation/devicetree/bindings/net/allwinner,sun4i-a10-mdio.yaml | 70 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  Documentation/devicetree/bindings/net/allwinner,sun4i-mdio.txt      | 27 ---------------------------
>  2 files changed, 70 insertions(+), 27 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/net/allwinner,sun4i-a10-mdio.yaml
>  delete mode 100644 Documentation/devicetree/bindings/net/allwinner,sun4i-mdio.txt

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1FB54BAD5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 16:10:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jFm/cvNn/px3BSoZBe1SEGG7x/ijbYOAqQkUFEEJ+XI=; b=HzeMeLMKfTZL00
	sy1QYYv0rmZcgtZTTwP7VKG1Zi2VQIypp4GD7a08AWSeYeO/9jKLSobhSXOpAr2oSp09A+W5N2muy
	E+nFCnm4MPqDQRjxM5ED5M+DjslCUNhtQg6SOlb+cSoD44GrdomsVfluYvSHXmKeojet7omgtLn9U
	LO+diBOondbMHpx4+qICL3F3FsGa2quM/gs4UsUI488dzj/XJFw0vzlp4NeOwU+d2mOjAInFR114r
	EITFuREM1B/6tqenAFc4Ospf+XjkCIf3Yw1TCH6dRgYH88OUzG62ER/1YuOfyDA8qfzEepCx4RkZ2
	4eRcdHhP1dD8uj80fk5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdbIK-00084K-MQ; Wed, 19 Jun 2019 14:10:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdbIA-00083g-91
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 14:10:27 +0000
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
 [209.85.222.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B6B621874
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 14:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560953425;
 bh=eAkETR1airFEdkrvmqxKAnHpAPALZYjF/U5gjIALrUM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=UuVQ+dfW0se8BadL24kxy8KpYt7nswO2DeKP9VFDc4smOqGT+DUiRX0yB2SodJEw6
 CeSGRrMV5AncEhb1NwIH0SZMxo3PI6/ZbYRrgYvx+eCJzBIBd/BfQAnhOGveFtLUgY
 NJcF4UvAjiAAShvHlsvcpVNeAgNYZa70+fg9sNY8=
Received: by mail-qk1-f169.google.com with SMTP id c70so10954320qkg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 07:10:25 -0700 (PDT)
X-Gm-Message-State: APjAAAV/4oMACltSYcVxlp0PtfgB+Xz6WAvtaGDat8MS5JVUVz1EEM+z
 1DBgFMbEBDLa4MsT7wYGdfECkGmL4168uPQbsA==
X-Google-Smtp-Source: APXvYqw9X46Mgu2RprjLazOYn0ITq1U9dAZj6F7rqFtXuTxJ4ZNpg2PAEqixE+a2M0Jx4daY2/u8dIsGscF4zKKrR5U=
X-Received: by 2002:a37:a6c9:: with SMTP id
 p192mr102502666qke.184.1560953424738; 
 Wed, 19 Jun 2019 07:10:24 -0700 (PDT)
MIME-Version: 1.0
References: <27aeb33cf5b896900d5d11bd6957eda268014f0c.1560937626.git-series.maxime.ripard@bootlin.com>
 <a9c556114ab21793d100f31361da01a579bae84e.1560937626.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <a9c556114ab21793d100f31361da01a579bae84e.1560937626.git-series.maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 19 Jun 2019 08:10:13 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLyByqjpdSoebU7xboupmnbZb5q3D2L_oQt_sigBQeMnQ@mail.gmail.com>
Message-ID: <CAL_JsqLyByqjpdSoebU7xboupmnbZb5q3D2L_oQt_sigBQeMnQ@mail.gmail.com>
Subject: Re: [PATCH v3 10/16] dt-bindings: net: sun8i-emac: Convert the
 binding to a schemas
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_071026_340592_167922D2 
X-CRM114-Status: GOOD (  15.44  )
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
> Switch our Allwinner H3 EMAC controller binding to a YAML schema to enable
> the DT validation. Since that controller is based on a Synopsys IP, let's
> add the validation to that schemas with a bunch of conditionals.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v2:
>   - Switch to phy-connection-type instead of phy-mode
>   - Change the delay enum to using multipleOf
>
> Changes from v1:
>   - Add specific binding document
> ---
>  Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml | 321 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
>  Documentation/devicetree/bindings/net/dwmac-sun8i.txt                | 201 +---------------------------------------------
>  Documentation/devicetree/bindings/net/snps,dwmac.yaml                |  15 +++-
>  3 files changed, 336 insertions(+), 201 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml
>  delete mode 100644 Documentation/devicetree/bindings/net/dwmac-sun8i.txt

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

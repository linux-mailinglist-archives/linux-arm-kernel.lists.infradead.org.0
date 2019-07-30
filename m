Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0424879FA2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 05:51:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dEXyxH8FLvXN5B4hgkS5elr/iKkPFpSKdIxOBm69imE=; b=PjwzTwWy01Tzq1
	lsTT5DR6iMvegalE1oH2IAHNghH8Cu/MfcaNLrHNyeTRGLO+ngUKCM4dVuOKIWr0yZLLWqYhAEN9+
	+VQKN8mUoIxbie5+LIXok68qhUtaH7eWUBerlU71eSIan8onrKdEnWEkzjj6+E5gUWBYeHQ/1pPm5
	HgXDUoHeGEtWSGOJjtT8Xfi+aravwS4kOF6JxPcFjcyF8ubja9WdHsmVybMHZNxmmczIXL8ruFigt
	B89UDOvHVoatNmnBxHkMGoMmy43ibxJz3DubwCemaMNSMi+6Ts1XBipaBDUKj/eygjj+H9pF+QjHV
	29K4+NmAzMxghL3n9WJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsJAf-0002n7-R9; Tue, 30 Jul 2019 03:51:29 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsJAU-0002mb-UW
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 03:51:20 +0000
Received: by mail-ed1-f67.google.com with SMTP id d4so61285887edr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 20:51:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ISIVHu+AuwTJR7JUopUzw4hbupo9+MlQhSrhmHZcakc=;
 b=aMpz2/5o/uTaFU9ejCcW3d9Of3jA6VdfIs72qxURTrpBRslavUoCmjSJjLI35GKQBY
 4bSU70rq1KIlwodTnigtYdArzIcGXnW8eb95vdmYsXcVV6yH0mdPTAjYl0zLv80uJFV0
 wQZ4WV29/iL+sf82ryduvRNjPsimJO8aYeaLXX2Ddru5YS0d+MgNYcaifdB/VAcO+utz
 bG7ab1q/NWvEW86vIvCbjdhw1R3bmyMcJ/CIEIOF9SxMbI3n+R3qAi6xKtFTKkZt/IX1
 JWrgh93/Ti1Yy0k6cYIGNRTh+Dqt9xgpVuUKuNDMO6AW3m7WS9uGe6jHeyWln1bZRcOu
 UxMQ==
X-Gm-Message-State: APjAAAVeEYr2yToRLbY/ekwZYYXODiwxPlXBBML1ZOc4faCHZAVCwze/
 mE4NK/Fu/FapfggOlZpM6Inos0xHLqI=
X-Google-Smtp-Source: APXvYqwRNLQN0TqKVnWbbLes0lQeniYadv9yxECdfOrbWwvSLGLOA6hS1gC2rgqFMsvefkQWrJiNvA==
X-Received: by 2002:a50:ba28:: with SMTP id g37mr99355575edc.109.1564458676491; 
 Mon, 29 Jul 2019 20:51:16 -0700 (PDT)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com.
 [209.85.221.48])
 by smtp.gmail.com with ESMTPSA id o21sm15732353edt.26.2019.07.29.20.51.15
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Jul 2019 20:51:16 -0700 (PDT)
Received: by mail-wr1-f48.google.com with SMTP id p17so64049801wrf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 20:51:15 -0700 (PDT)
X-Received: by 2002:adf:e941:: with SMTP id m1mr37011261wrn.279.1564458675544; 
 Mon, 29 Jul 2019 20:51:15 -0700 (PDT)
MIME-Version: 1.0
References: <cover.e80da8845680a45c2e07d5f17280fdba84555b8a.1561649505.git-series.maxime.ripard@bootlin.com>
 <a1a33392c64c71099021fb49cc811a30790d40a8.1561649505.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <a1a33392c64c71099021fb49cc811a30790d40a8.1561649505.git-series.maxime.ripard@bootlin.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 30 Jul 2019 11:51:02 +0800
X-Gmail-Original-Message-ID: <CAGb2v67u3pvS1veHTHVPySK1YGJYwGzPF7-iziefsbWRNZNyrg@mail.gmail.com>
Message-ID: <CAGb2v67u3pvS1veHTHVPySK1YGJYwGzPF7-iziefsbWRNZNyrg@mail.gmail.com>
Subject: Re: [PATCH v4 13/13] ARM: dts: sunxi: Switch from phy to phy-handle
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_205118_984510_49EE89F3 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Andrew Lunn <andrew@lunn.ch>,
 =?UTF-8?Q?Antoine_T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev <netdev@vger.kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 11:32 PM Maxime Ripard
<maxime.ripard@bootlin.com> wrote:
>
> The phy device tree property has been deprecated in favor of phy-handle,
> let's replace it.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

This patch breaks Ethernet on all my dwmac-sunxi, i.e. old GMAC, boards, with
the following error messages:

    sun7i-dwmac 1c50000.ethernet eth0: no phy at addr -1
    sun7i-dwmac 1c50000.ethernet eth0: stmmac_open: Cannot attach to
PHY (error: -19)

Reverting this patch fixes it.

It also breaks the A10/A10s, but that's probably because the sun4i-emac
driver doesn't recognize the "phy-handle" property.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

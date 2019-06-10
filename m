Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7413BC61
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 21:03:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P4DL1424tXiv78wDjJJF3DiaDv/iD5vqKNdblU8cg0M=; b=X5la2Fl67ixk3q
	9AIfN/Wh1ZdQIxq/oxijcXAcTWY1mJlkZ5UCdAPS6rsPEOVp5pPR9DJGPm6F0AY+jxX4A3orMOPj8
	74qsAAo5s2gNrCwNHdCp7hSX5yVDr324gLXp5ei8aNCT1k+dl3S4js3cUJ4fhrVe3xoQW63ZmHkf9
	+pq2Wfni+0sAN48AFLpNmJGMeXLWKpsbHht1MjvI/I83S+sioKeIbZDolF03spJoj6/X0Y2j34ahk
	SmqsfcmZ4ZNrdE/yEQfk2oHj2zD5ZIHEaYlMWyNa5+oeeGm9HKFMl/QBE8sqfB71c8iRkgjcq3qv7
	DNZ9DYbyaOCcJKOiSB+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haPZe-0000RT-97; Mon, 10 Jun 2019 19:03:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haPZN-0000Qu-VR
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 19:03:03 +0000
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8FB6720862
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 19:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560193381;
 bh=NblxIERz+Cyc8pebQ/YTyK3Qt134gIJ9b11F5HCfcSw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=PgJJh642AWLqqi0z4cBc8Uz8AaKinC3+7XqnMIaw+qbjRmFeUnOF9pmKTHsL4eTK+
 00D2dCkgrqb7KkPk9lllmW1lWRxp2XPZ1jf4C905eYEKe+RTNiHPksmJInX6DeFguH
 ajEfOhWUGO9IuJjJNba0/6WgzIHh7EeZvR62u+8s=
Received: by mail-qt1-f182.google.com with SMTP id d23so11705240qto.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 12:03:01 -0700 (PDT)
X-Gm-Message-State: APjAAAUzYaKY4fAdUAH07HvpIxqYu+6Yhdq7l/M2W+c9eqMO1skvqk0R
 ONg9V0GkparGN2cM+3PIzq9Ie0MgM5BMPHH+6g==
X-Google-Smtp-Source: APXvYqy9lwcAc459jdixSn0EhQcrOn2ydIJGUumtuZb7Ajh2SHHffvWIy0UNqYr9ntVCWt/AeFq56dTqVeVGcjluGpQ=
X-Received: by 2002:aed:3b33:: with SMTP id p48mr53898280qte.143.1560193380845; 
 Mon, 10 Jun 2019 12:03:00 -0700 (PDT)
MIME-Version: 1.0
References: <91618c7e9a5497462afa74c6d8a947f709f54331.1560158667.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <91618c7e9a5497462afa74c6d8a947f709f54331.1560158667.git-series.maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 10 Jun 2019 13:02:49 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+8_+OPVO14xu1yZU8q1Nux70TjP42j6SiBo9KdHL-4qQ@mail.gmail.com>
Message-ID: <CAL_Jsq+8_+OPVO14xu1yZU8q1Nux70TjP42j6SiBo9KdHL-4qQ@mail.gmail.com>
Subject: Re: [PATCH v2 01/11] dt-bindings: net: Add YAML schemas for the
 generic Ethernet options
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_120302_028954_8D5418B0 
X-CRM114-Status: GOOD (  14.41  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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

On Mon, Jun 10, 2019 at 3:26 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The Ethernet controllers have a good number of generic options that can be
> needed in a device tree. Add a YAML schemas for those.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v1:
>   - Use an enum for phy-connection-types
>   - Validate the items for the fixed-link array
>   - Set the number of valid items for link-gpios to 1
>   - Removed deprecated properties (phy-mode, phy, phy-device)
> ---
>  Documentation/devicetree/bindings/net/ethernet-controller.yaml | 194 +++++++-
>  Documentation/devicetree/bindings/net/ethernet.txt             |  69 +--
>  Documentation/devicetree/bindings/net/fixed-link.txt           |  55 +--
>  3 files changed, 196 insertions(+), 122 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/net/ethernet-controller.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

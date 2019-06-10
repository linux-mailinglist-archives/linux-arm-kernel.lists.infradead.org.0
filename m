Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF02F3BC6F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 21:06:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CpzvYd4pP01Ewi1zC+h1luWlMUiUQrqQMSw+JB3dc1s=; b=XeANN5dKOxZdTW
	XQxi591Gs9pTtBZkdp5PdZB4Wa+v51unXMbCtibIE+QZ24JX3JY4F3L8dPGNAL3gR55CdCxdTCTcO
	VJE6FgtNpjM4hlPi8iOWKHKYdUQcF1vbCuXt+1A4/5B9xy4DtR4OeWSIdP80+Kd+ZDvunX0TdR5bk
	aLW8jYwjGpq3MfKVHrrA7KE3jmHBb41UNYlWbhDNpKQGhR5GTFTgRiZoHzJ/xpIDkOpEHRVuWvo6b
	hEIvZrPpBmiyCsFMFVVf7abovW/2JrxFn9IXe7L3iCI+V9HYX5Ukpk8/r8yjss4SJCgmqTCYd3pl3
	qaxIxYt3WZlVJ1ry9vWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haPcb-0002bw-DH; Mon, 10 Jun 2019 19:06:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haPcO-0002bU-4M
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 19:06:09 +0000
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
 [209.85.222.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B07ED212F5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 19:06:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560193567;
 bh=lFanuHHBuVtWmR4kNCQeWkLeEoh91z4m5hAe5ZQ4DbU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=malhWk+aXGmFn7xlbapoaYjAsgdVnmFbzkgSvGw0kc+GIQJrOplOwNsMHPji8gIzL
 dSSjOwoaDHOK2hUN7pN5pqmYOIZ8ZTayZAst9xcPOz2gJ41J9s7/ZObABpcRBXNTXP
 Fauk2eleAbfyMWXdGZn0KuOXVaNS0khxSXsxHViQ=
Received: by mail-qk1-f170.google.com with SMTP id d15so6130830qkl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 12:06:07 -0700 (PDT)
X-Gm-Message-State: APjAAAXj4Yge2Zss8nnJ2NviqsHzsKngjQEHeLcvPY9a1R13E69m4csQ
 78Hn2GkLM7bN1ky7VUwUalylg0dFNTPCKDLyuQ==
X-Google-Smtp-Source: APXvYqyqk00u+A1I2mS4USQPJYej70C5KhglxD5XOZevDO5oC+8Y4Q68pL8HBKtqIMa/xiZnnWfM+2EIi1Wpb/mCRBA=
X-Received: by 2002:ae9:f801:: with SMTP id x1mr14400814qkh.151.1560193567005; 
 Mon, 10 Jun 2019 12:06:07 -0700 (PDT)
MIME-Version: 1.0
References: <91618c7e9a5497462afa74c6d8a947f709f54331.1560158667.git-series.maxime.ripard@bootlin.com>
 <19f160b6edf5a11171cea249305b7458c96a7187.1560158667.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <19f160b6edf5a11171cea249305b7458c96a7187.1560158667.git-series.maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 10 Jun 2019 13:05:55 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJtzBwx57_EHwCrSpiFwve8ec2osK0ZXc_cMzD+5dW7FQ@mail.gmail.com>
Message-ID: <CAL_JsqJtzBwx57_EHwCrSpiFwve8ec2osK0ZXc_cMzD+5dW7FQ@mail.gmail.com>
Subject: Re: [PATCH v2 04/11] dt-bindings: net: phy: The interrupt property is
 not mandatory
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_120608_185523_A938A065 
X-CRM114-Status: GOOD (  12.36  )
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
> Unlike what was initially claimed in the PHY binding, the interrupt
> property of a PHY can be omitted, and the OS will turn to polling instead.
>
> Document that.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/net/ethernet-phy.yaml | 1 -
>  1 file changed, 1 deletion(-)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

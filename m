Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED091BB95
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 19:13:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=anMLyqo/oCWxX41vchRLtd2lSFeM7g2p5fsPH1GI1Qc=; b=RVz76VwXNKcvPw
	MrvsnXcFUq0jZ/U9hK9Ao30KDgHWD6D5ZhZYL08X+rn9CeSkaT+uKuGO4am6h7Ey1h/ldbMtHHInr
	AHbrbVjrGAQ7qhwwl8IBk4V3enZMk0KkQkCmewgJVcZ6sqetB8BnI8W89EFu/nd0m/5PB4td96bL0
	H1oVvW7Ki4z6NesOXm2ZPOMg0w8ayIyLjSjUfB3Ixc15IqkPdxAX47Cp4UZOD08cVeipoLpZvczsl
	2n+cCqVQBRaOgsgqqvy2ZnHdL79FM1zHLCgB5JC8LeAzvjPKIFyTj3dVr0aPLuBx3QbdEzwtsKVY2
	IAwM4zAaKwvp4f5X6xvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQEVN-0007Sw-Dy; Mon, 13 May 2019 17:12:49 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQEVH-0007SR-CP
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 17:12:44 +0000
Received: by mail-oi1-f195.google.com with SMTP id f4so2580374oib.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 10:12:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7aH9jvyj8udQuEfouTqfiJHkI2TFZzZb0Nr6TJxC7VU=;
 b=FKacvo4LE6dESuz5k9qIRgkyZAAHtuiW3qFDB62/gK1FnuiIL8If4B3bMFXZYqFQ/j
 MZtQBYyM6x+XTszBkOVXWKsRwOazf/2e/TKyQNJwtgwdgPqFYjUrbsITNHvaBO/CSqI2
 MFooSDreBUZsQ6bTHDD/VT2In9TWGmxBEWgWwtA3BB2SI1jXI6Wy00rixoJUQnVAeiyl
 Fytf8061QOt1TYekSdiS1Gu5azjKJ1jD6ClClItl5ZHzie5zmj4rOPWPgCPKJEa/JLil
 DERkBJY9ARyzjvcltxD09vXIeStW6xXkUVgLiU59VfcC3vlWId9lZGLhI4pnSmAMvYa0
 GOaA==
X-Gm-Message-State: APjAAAXyNkj9XwDoP9eGrkz6I0mAWBiuOGQJcCkXtD8IsyrLR82Q86Gr
 xy15BSZPW3QQDaEkmWR8Gg==
X-Google-Smtp-Source: APXvYqzx0hbsH195gGOUH61bHHIWmSjYVkgvwfe3nu0ASG3GjUxd0M0QZ3R4ZRdXoB8EiRT+xFWECA==
X-Received: by 2002:aca:b5c3:: with SMTP id e186mr136171oif.134.1557767562137; 
 Mon, 13 May 2019 10:12:42 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h3sm5249765otl.32.2019.05.13.10.12.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 10:12:41 -0700 (PDT)
Date: Mon, 13 May 2019 12:12:40 -0500
From: Rob Herring <robh@kernel.org>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH RESEND V4 1/3] dt-bindings: watchdog: move i.MX system
 controller watchdog binding to SCU
Message-ID: <20190513171240.GA15603@bogus>
References: <1557655528-12816-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557655528-12816-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_101243_422056_6327EA2C 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Peng Fan <peng.fan@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux@roeck-us.net" <linux@roeck-us.net>, dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 12, 2019 at 10:10:30AM +0000, Anson Huang wrote:
> i.MX system controller watchdog depends on SCU driver to support
> interrupt function, so it needs to be subnode of SCU node in DT,
> binding doc should be moved to fsl,scu.txt as well.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> No change, just resend patch with correct encoding.

Quoted-printable isn't really correct either. It should be 7-bit or 
8-bit if UTF-8.

> ---
>  .../devicetree/bindings/arm/freescale/fsl,scu.txt  | 15 ++++++++++++++
>  .../bindings/watchdog/fsl-imx-sc-wdt.txt           | 24 ----------------------
>  2 files changed, 15 insertions(+), 24 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/fsl-imx-sc-wdt.txt

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

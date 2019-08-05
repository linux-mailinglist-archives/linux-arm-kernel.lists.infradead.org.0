Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F87D8201F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 17:28:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tIp5ajEdFqbc9kpq/bT7zNXzIk3OWBGx0+lwpZ4yd3k=; b=Ktw0dcUbM2PKl2
	+xPJGK7UFyXJIdGyVJP+nPELL88UTwGOiBgBKXzsuCmrsiPT/3YyiDL4yfYIlyKQrsfOPCzvcFPQ6
	NSkRE3bXH6CXmc46DmcB6WlXEIXkcEs8H8zYEAE/utH+8rlV+JrZ1YRW8JSArTJ3izh6gZzWHWhMQ
	dMdydqSbaQQBW1VX+qWninNqSEICzz2mok0e09deLQBZXM2xeTSNJz8s+6gjwkTh8STps1fwt8SUa
	hX3+f+8DLN/FSzNMgPgA903Ij9Jws3HunDT8vSPY1ohlGbi7d7dYy0zhE8w3pDZqGJuUhU/IaKcFv
	x1SEM9biMeN6EAVyn1Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hueuS-0006xY-T5; Mon, 05 Aug 2019 15:28:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hueuL-0006xE-1k
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 15:28:22 +0000
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F39BE21743
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  5 Aug 2019 15:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565018900;
 bh=JyLT5/gBpzIk1rH7isrqNLBn5A/UpJtzoI2uZTecU7A=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=RFtcy4/Zr2lmLLd0LFtqbFK5BY8jwem5PK2/BDHaRth85BpGkm/3v0W2yZG3mAi8D
 t4gw/sfgHmEyb2bj29vlc4KC3uzEnmUrykIXkxCXiljCQSj3xgpypqZi8GdO8JshLq
 r7PwQE+TWDISIvHn74XfGvIMMhIEZ60ONvYmFNlI=
Received: by mail-qt1-f179.google.com with SMTP id n11so81292827qtl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 08:28:19 -0700 (PDT)
X-Gm-Message-State: APjAAAX6hxdLYmaaTyHGzBmjOjS8lnZnff2fx/oz8WYytjeoKSNhGsnf
 cXbS4ODHR4Ya1PBKDysKYmI6OOmkP3eMuVNdBg==
X-Google-Smtp-Source: APXvYqxXjw8XmBwL0enSNum1gkTWI7+BHw8p9CU0a90E4HCQu+3gGOHuO4zbgNYgnUYEtPMCmobpQW6y2Rv+IULc0q0=
X-Received: by 2002:aed:3fb0:: with SMTP id
 s45mr109113018qth.136.1565018899101; 
 Mon, 05 Aug 2019 08:28:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190805085847.25554-1-linus.walleij@linaro.org>
 <20190805085847.25554-3-linus.walleij@linaro.org>
In-Reply-To: <20190805085847.25554-3-linus.walleij@linaro.org>
From: Rob Herring <robh@kernel.org>
Date: Mon, 5 Aug 2019 09:28:07 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL=9fN=8ANmKP6-rSuK=r=yQCf92VQP16b=xwzne6Ea_A@mail.gmail.com>
Message-ID: <CAL_JsqL=9fN=8ANmKP6-rSuK=r=yQCf92VQP16b=xwzne6Ea_A@mail.gmail.com>
Subject: Re: [PATCH 2/4 v2] drm/panel: simple: Add TI nspire panel bindings
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_082821_135849_3E27845D 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Fabian Vogt <fabian@ritter-vogt.de>, Daniel Tang <dt.tangr@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 5, 2019 at 2:59 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> Add bindings for the TI NSPIRE simple display panels.
>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChangeLog v1->v2:
> - New patch as bindings are required
> - Let's use YAML
> ---
>  .../bindings/display/panel/ti,nspire.yaml     | 36 +++++++++++++++++++
>  1 file changed, 36 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/ti,nspire.yaml
>
> diff --git a/Documentation/devicetree/bindings/display/panel/ti,nspire.yaml b/Documentation/devicetree/bindings/display/panel/ti,nspire.yaml
> new file mode 100644
> index 000000000000..fa81602a922a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/ti,nspire.yaml
> @@ -0,0 +1,36 @@
> +# SPDX-License-Identifier: (GPL-2.0+ OR X11)

I think you want MIT rather than X11. However, the preference on new
bindings is (GPL-2.0-only OR BSD-2-Clause).

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/ti,nspire.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments NSPIRE Display Panels
> +
> +maintainers:
> +  - Linus Walleij <linus.walleij@linaro.org>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:

You can drop this. Just 'enum' is sufficient.

> +          - enum:
> +              - ti,nspire-cx-lcd-panel
> +              - ti,nspire-classic-lcd-panel
> +
> +required:
> +  - compatible
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    panel {
> +        compatible = "ti,nspire-cx-lcd-panel";
> +        ports {
> +           port {

You need to capture that there's a single port in the schema. There's
not really a lot of examples for this yet, but you should add:

allOf:
  - $ref: panel-common.yaml#

With a single port, you can drop 'ports' or you can keep it. If you do
the latter, then you need to define 'ports' and then 'port' in your
schema. The common schema is only sufficient if you have a single
'port' node otherwise you need to define what's under 'ports'.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

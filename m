Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB0A965A4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 17:55:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fk+jLVRma/6PEUekbO7fB7iJKJ9GpaSJnrKRisA3GPE=; b=vEGahxoZrFT2UIX31CLDrnPFs
	HiVANJcoEC/GwBzbQLX2ehbdvdcpeHpELfuDtddH4z89F2LFm9vaVC7uDW5o+E44ZGzqYx3zAU8mF
	X22cUNLXJWmu67yqSapCyjiSsuQMYELBDgvvXXfow5IgH0Mg3kRCQtgoKFWgnOdAtU87AIpcqnQdP
	wcqXkM13rDVvvewSzTIVdpSbWb0ZX0igRJbnTixxXhukx6LsraiJn5qce5ykxxd4lLsfyIMAS6/Fe
	GLnOHGk5kMgD/e0JRkL48KvtDKtV3ohXBBThAFghQJaot+EE98spAnMMQklqTRYCmDTGLWU6/21Pa
	zdekWeQ0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i06Ta-0005RQ-Ip; Tue, 20 Aug 2019 15:55:14 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i06TI-00055y-6g
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 15:55:02 +0000
Received: by mail-pf1-x441.google.com with SMTP id b24so3648206pfp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 08:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=oKRxdUPEqx182AGsFYC1FZNnJTIkLhG2zitRB8VXskY=;
 b=EF96vaXIKSJqXkEQ+iKjKVxtUoKoMAu+x4HM+r2PftVEkhJ0IX1sPAboufpFgvzhvZ
 Lx+vxJ3MlNqgsYplkTfIzRKqr0YW321a3A0bPHWCbwPxhqjZ14R6LD2Dlgg3FZ2J9C+G
 45dyKwseoRQuhJZQSMtqwyCqJJYy7LzKCPsci7rrVprv5SaUNrQ+UXGwHFAFXU0kccLM
 mOX2CuMyDgvMoOrd6bEvJ6U+leMuAbd4VHTc7rXLqx9xa8TmMuH64nxeg8BBtUVO/DIt
 xd+ghgEDijtJYXvCeTA87FYY9I6VjXFELZ1fVrRib1vmJB9IiNbpemnww78rxMPJThMm
 vY8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=oKRxdUPEqx182AGsFYC1FZNnJTIkLhG2zitRB8VXskY=;
 b=X5yKoHtJX85wahi6QBZeEZWmaMiWrLvofc0rd8V465cnn6AmnTiP1GdPc3gCfV7H1X
 Sm5rPar2Jd/8Sm/aR5fkusFEjLZoKP9bcA3OwahCkCcCFxawTJUYsEdobVM/rrztB++X
 7JUCrrVN3yfMbf4HTagWQBj1x2FcKKKz1qgaBpTuTbhS4ccXwh6l9HD6sj8YjuYYpe2P
 +7dlOyBqIZ80hyH6QtYIKeMEQXVmjjQF6zmdN5RI0/CqRw0/dIrF9eMxQLmXuwuFwu5K
 4HifHQs83pg6V85Vpunm29InVpWOIx4Jnnuko7N7iWwEXhGpKplc4kv4VKNizaUEK2Z9
 MFwg==
X-Gm-Message-State: APjAAAWtkxnFQfVELbkkmvbWaIhg5cN/uii6EI+NtAE1h7RdxKrFIRa2
 yC0e8vRl7FeoYJo2CpSTkMU=
X-Google-Smtp-Source: APXvYqwT6p/B3nVNF9dkl92avzPLIXO+NgzJ9fT0X+D8I222afrN3om41gfv7AR8PrYHKtWYHCgUwQ==
X-Received: by 2002:a63:31c1:: with SMTP id
 x184mr26182258pgx.128.1566316495255; 
 Tue, 20 Aug 2019 08:54:55 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 e7sm21147062pfn.72.2019.08.20.08.54.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 20 Aug 2019 08:54:54 -0700 (PDT)
Subject: Re: [PATCH v2 1/6] dt-bindings: watchdog: Add YAML schemas for the
 generic watchdog bindings
To: Maxime Ripard <mripard@kernel.org>, wim@linux-watchdog.org
References: <20190819182039.24892-1-mripard@kernel.org>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <ada53037-898f-7b8c-8a96-b80414563fa7@roeck-us.net>
Date: Tue, 20 Aug 2019 08:54:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190819182039.24892-1-mripard@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_085501_024951_23978DB6 
X-CRM114-Status: GOOD (  21.62  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/19/19 11:20 AM, Maxime Ripard wrote:
> From: Maxime Ripard <maxime.ripard@bootlin.com>
> 
> The watchdogs have a bunch of generic properties that are needed in a
> device tree. Add a YAML schemas for those.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

What is the target subsystem for this series ? You didn't copy the watchdog
mailing list, so I assume it won't be the watchdog subsystem.

Thanks,
Guenter

> 
> ---
> 
> Changes from v1:
>    - New patch
> ---
>   .../bindings/watchdog/watchdog.yaml           | 26 +++++++++++++++++++
>   1 file changed, 26 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/watchdog/watchdog.yaml
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/watchdog.yaml b/Documentation/devicetree/bindings/watchdog/watchdog.yaml
> new file mode 100644
> index 000000000000..187bf6cb62bf
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/watchdog.yaml
> @@ -0,0 +1,26 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/watchdog/watchdog.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Watchdog Generic Bindings
> +
> +maintainers:
> +  - Guenter Roeck <linux@roeck-us.net>
> +  - Wim Van Sebroeck <wim@linux-watchdog.org>
> +
> +description: |
> +  This document describes generic bindings which can be used to
> +  describe watchdog devices in a device tree.
> +
> +properties:
> +  $nodename:
> +    pattern: "^watchdog(@.*|-[0-9a-f])?$"
> +
> +  timeout-sec:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Contains the watchdog timeout in seconds.
> +
> +...
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

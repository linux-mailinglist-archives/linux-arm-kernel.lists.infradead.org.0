Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C12F0872
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:33:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z+i66LyUk7vY5jLcorh/cxh81MLT+TWt3jr0gA+CXuo=; b=Pa48AZb6knuL7r
	HTshSXdoFxDE2c2SiorIpUQrpOZkiIQprQMC3INv/cS/ICSjYbqu+H/VRhcjLQsTtCem6w+0+Ds/m
	ubBl0h7Kc3sL5FCrOQmPIxlc/ZCmnpDhBXANyzLA/SqlVVfmiRxPcXdNUx6zVYItk1Bb/anOkE8hv
	71ajBjuv5eLFzZUoO81TXjn/r2Vo8qZ8zvimGkD5LL656uVchy81QeBLiHJOReN/tQBbJykqlVSg8
	cX47mMX2g/hWENXJTLPyXVohnfEOBWHYSeboQe68r7uUb4i7BHSVIPjcinfw99mWXhxh/+Ykd15Co
	9nT+DbGmxI5QaLb+fKoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS6SB-0003Af-EJ; Tue, 05 Nov 2019 21:33:31 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS6S2-00039y-Gx
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 21:33:23 +0000
Received: by mail-ot1-f65.google.com with SMTP id t4so7505286otr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 13:33:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=zsmPSGfU4VIabCEcquyi1hsnRpNdKZ9P9UXPGbIVCSk=;
 b=iaUU802PU1RtYhZN63c2HnTn/9FEpW/pAMC/ONz7UF/4Khc1W9IsBEUD6xTH2nUrFB
 NLo3tuHBd38SUr0SW5Tb6+iJPabMcRnA8srXsnyNp+zxEACpRikP4TAJaHJhyYSgWULF
 3e4zckNlRrCmI+P+2aoXMU7VHZm3MajpOAltJaxXoXLJ2m+xirg/pokQFBS332zZfBS1
 tfTdCROMdJRBudzkljdnFHibzDFK+g1C/surz7dVr1ITWUjf3H+h6Q/vq8wujCH4MVLP
 WW38n9PxegpN9e2hlMXhe72Z9jg0xtMSgWcr+IXzVDkuoNLLBzVWpg9AN0ZdHY+sLDdR
 UvwQ==
X-Gm-Message-State: APjAAAVd+il2OZOifxSl638dnmcijA9KUu/aJdkdC4YIifv+VDEWe2y+
 lr1szK2SC1qzwAuZ0cofXw==
X-Google-Smtp-Source: APXvYqyuA6gQZu8HaSbrJ5/20jXgGV+3XUqpkaSV9Wbbgx/bbOF724lg2zbaq9jCmndj046bD68/WQ==
X-Received: by 2002:a9d:7441:: with SMTP id p1mr9387956otk.87.1572989601214;
 Tue, 05 Nov 2019 13:33:21 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q3sm238414oti.49.2019.11.05.13.33.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 13:33:20 -0800 (PST)
Date: Tue, 5 Nov 2019 15:33:19 -0600
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 1/7] dt-bindings: pwm: allwinner: Add H6 PWM description
Message-ID: <20191105213319.GA30538@bogus>
References: <20191105131456.32400-1-peron.clem@gmail.com>
 <20191105131456.32400-2-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191105131456.32400-2-peron.clem@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_133322_565578_2F005FF0 
X-CRM114-Status: GOOD (  18.54  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 'Uwe =?iso-8859-1?Q?Kleine-K=F6nig'?= <u.kleine-koenig@pengutronix.de>,
 Philipp Zabel <pza@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 02:14:50PM +0100, Cl=E9ment P=E9ron wrote:
> From: Jernej Skrabec <jernej.skrabec@siol.net>
> =

> H6 PWM block is basically the same as A20 PWM, except that it also has
> bus clock and reset line which needs to be handled accordingly.
> =

> Expand Allwinner PWM binding with H6 PWM specifics.
> =

> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  .../bindings/pwm/allwinner,sun4i-a10-pwm.yaml | 47 +++++++++++++++++++
>  1 file changed, 47 insertions(+)
> =

> diff --git a/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pw=
m.yaml b/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
> index 0ac52f83a58c..9fc32c1d94b4 100644
> --- a/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
> +++ b/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
> @@ -30,13 +30,50 @@ properties:
>        - items:
>            - const: allwinner,sun50i-h5-pwm
>            - const: allwinner,sun5i-a13-pwm
> +      - const: allwinner,sun50i-h6-pwm
>  =

>    reg:
>      maxItems: 1
>  =

>    clocks:
> +    minItems: 1
> +    maxItems: 2
> +    items:
> +      - description: Bus Clock
> +      - description: Module Clock

The order here doesn't match the if/then or the example.

> +
> +  # Even though it only applies to subschemas under the conditionals,
> +  # not listing them here will trigger a warning because of the
> +  # additionalsProperties set to false.
> +  clock-names: true

blank line here.

> +  resets:
>      maxItems: 1
>  =

> +  if:
> +    properties:
> +      compatible:
> +        contains:
> +          const: allwinner,sun50i-h6-pwm
> +
> +  then:
> +    properties:
> +      clocks:
> +        minItems: 2
> +
> +      clock-names:
> +        items:
> +          - const: mod
> +          - const: bus
> +
> +    required:
> +      - clock-names
> +      - resets
> +
> +  else:
> +    properties:
> +      clocks:
> +        maxItems: 1
> +
>  required:
>    - "#pwm-cells"
>    - compatible
> @@ -54,4 +91,14 @@ examples:
>          #pwm-cells =3D <3>;
>      };
>  =

> +  - |
> +    pwm@300a000 {
> +      compatible =3D "allwinner,sun50i-h6-pwm";
> +      reg =3D <0x0300a000 0x400>;
> +      clocks =3D <&osc24M>, <&ccu CLK_BUS_PWM>;
> +      clock-names =3D "mod", "bus";
> +      resets =3D <&ccu RST_BUS_PWM>;
> +      #pwm-cells =3D <3>;
> +    };
> +
>  ...
> -- =

> 2.20.1
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

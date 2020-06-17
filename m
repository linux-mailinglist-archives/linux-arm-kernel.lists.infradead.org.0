Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3061F1FD31B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 19:05:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f1+fRynToqLicVKCpzAno3ANY7gHfjNwNVTg3twVtJE=; b=m214crDSy+Nv4h
	O5JdRltI/eENUcfJmoAHZ1MTRh8A87PQfOptz8lfpRD2zLa3vtqKW5ay+6Qp3PVxt77yxyGL5smxo
	NEFh6UzPSF+jzbYeJ9XAt4Wjq6sc1SXMtJXF3yfqvuhPDVB3OE4bqowP5XtHsF/MVvc8Oo665XlRb
	NLKbqGcsH0j5SfLf9sbeWOov8A1CW9zrhtOoDQf2jUCqS1omjQG0v1FYrlpZ2PKaKRJABiPy7F/c4
	PECgUrvPmqUbLPRCD6QRvc3INJ9p1dnO3KCyhbxB1Ka9OeIi0o7r5TK1qox4U90nyPBCKi8Gyhb9v
	yA+MH6KacqAHwjIxPzqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlbVM-0003Pc-Hc; Wed, 17 Jun 2020 17:05:40 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlbV0-0003Ee-7t
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 17:05:19 +0000
Received: by mail-io1-f65.google.com with SMTP id r2so3649719ioo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 10:05:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=HPxsEuG2Ekjg7Hds/kVbwy4+RHNKxxhI4PPschCmgkM=;
 b=d2xqFiZ750EvuK6wZTiSC6+OWbYww8ACtAuYDr3gAIlacFH1+o5jxd97zE2EdjKri5
 B7LLRqvO/8WCeQUU3W/imUeuQUSe1AfL9QDwcYfh0IBY7fvyIXhBk57U9lpxogoWmLhp
 xn/Zg7Q1mEYVVCosNMr6sYtyWKFrw9iGZ1r4Tt2FHmBXSpZDH7ww87WrTgBqOlQM2axW
 f5fpkTXKVifI+BnTXCF6eRlAozfMCo77F4MXdEYeLrovjBiGFrOxJIVs8dYYIps83djX
 ec7dQsjc1gSLwDO0pmKpDLAaLOWhc8Ah5zFbEVTlOryF8hBBfdxcUn8QCpqPTZ3Wbm/7
 gaRA==
X-Gm-Message-State: AOAM530oEJ0pvK6EFUIWKFDT+Hden4IJVEduDEaL0pFK1iU5YDcROMhz
 PWkiXCIdikNg3yyzuTIvjQ==
X-Google-Smtp-Source: ABdhPJxOueUOpkABb/OhgZnN7xdWgVuzrEQS51Ltu7wGIP6FvZw5VBXvVUAcxQRRSAHmmWE6Fgb+Kw==
X-Received: by 2002:a02:1c4a:: with SMTP id c71mr229254jac.142.1592413517160; 
 Wed, 17 Jun 2020 10:05:17 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id d71sm130223ill.9.2020.06.17.10.05.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 10:05:16 -0700 (PDT)
Received: (nullmailer pid 2311373 invoked by uid 1000);
 Wed, 17 Jun 2020 17:05:15 -0000
Date: Wed, 17 Jun 2020 11:05:15 -0600
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?=C1lvaro_Fern=E1ndez?= Rojas <noltari@gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: add bcm63xx-usbh bindings
Message-ID: <20200617170515.GA2310896@bogus>
References: <20200616181802.3498745-1-noltari@gmail.com>
 <20200616181802.3498745-2-noltari@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616181802.3498745-2-noltari@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_100518_292419_863BCD5F 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com,
 gregkh@linuxfoundation.org, alcooperx@gmail.com, linux-kernel@vger.kernel.org,
 krzk@kernel.org, kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 simon@fire.lp0.eu, jonas.gorski@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 16 Jun 2020 20:18:01 +0200, =C1lvaro Fern=E1ndez Rojas wrote:
> Document BCM63xx USBH PHY bindings.
> =

> Signed-off-by: =C1lvaro Fern=E1ndez Rojas <noltari@gmail.com>
> ---
>  v2: phy-cells changed to 1.
> =

>  .../bindings/phy/brcm,bcm63xx-usbh-phy.yaml   | 72 +++++++++++++++++++
>  1 file changed, 72 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/brcm,bcm63xx-us=
bh-phy.yaml
> =



My bot found errors running 'make dt_binding_check' on your patch:

Error: Documentation/devicetree/bindings/phy/brcm,bcm63xx-usbh-phy.example.=
dts:22.33-34 syntax error
FATAL ERROR: Unable to parse input tree
scripts/Makefile.lib:315: recipe for target 'Documentation/devicetree/bindi=
ngs/phy/brcm,bcm63xx-usbh-phy.example.dt.yaml' failed
make[1]: *** [Documentation/devicetree/bindings/phy/brcm,bcm63xx-usbh-phy.e=
xample.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
Makefile:1347: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2


See https://patchwork.ozlabs.org/patch/1310646

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --u=
pgrade

Please check and re-submit.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E4A1FD30C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 19:01:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gdtE05xLcVyJZt8BiN47HwujZTYnO6gCTHkKqiN6v60=; b=EDqhVqp3des8Uk
	NGXqiBhmOkCstbw+Ii8vkrAQr1B4Oitcxgf43CBbZzJJGAH6uqTmLFVa1cA29wtWMthWm9VAAsV9a
	Uj58qpveottEZPeBS1b8Hz5qQTF3necL85H82utlBKfhM+CAo8lSKsfD6YMCk5PXbv3sB1Zsd+TSU
	yrwXdUJus11K9yzmkPzg1sq//2G59xqQEX2LCnqQPyzjWpfyWspxtCzOnSuD/l3ZL8+ALxq+u9hNH
	w4YOJMQx8gtQPsPZWVgbae7uRuPAP7jSZt+p8fax0h4ufOMvITrdH/G/cnaxxX6aZ4LTDfSUtyLgf
	ihaVFTK8CAQFMzLgkf2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlbQu-000092-HC; Wed, 17 Jun 2020 17:01:04 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlbQj-00008I-Gi
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 17:00:55 +0000
Received: by mail-il1-f196.google.com with SMTP id b5so2900423iln.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 10:00:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=iHARdombLlcAcKc9BvTzg31LsiHLp+VSmuiTEXi8TqE=;
 b=U/+bTxUcQ5PM/7ERZvqqv4yK4MYmwOdO67Z1drOyXUqF61Cv3NbFnMcCrKfl5JFu28
 626LOSmtyWHqMCW29BSyr/12w2x0kicBjHBp4dxPCo3HP8nmn7pBgGOP6VVoIGQaxiW0
 AagGJ9geuqycMHlcKo/RdSJUiWvHyXhN2N88PBK4/QtrmVX7iFwpTvDIIqlEnL9DHJmT
 3fb+qmqgS598tgeIvTHXddDqJ1/PLuF7zLSATf6SOjRicOcgAjpDFJVxf6f0zF/MFev+
 nkXECbcufofTQ3msySr2AnDWIMwqXot/MPaiwdR6KorHiar7JEsZVUJF4HFr867OW35z
 YPJQ==
X-Gm-Message-State: AOAM530+suakOseIMWCE8wMHaHcPpd6n4NikbcoLqiWY07MWNeOfAVHa
 MaKA37oGUIRb0kTUQPiNGw==
X-Google-Smtp-Source: ABdhPJwtWwzz4EpNf5TPGNmFr6G7s6TFe37pZYgCZV+kvAqL/KT9PQQ5xQQKPUaApsS1CUlGt7VQXA==
X-Received: by 2002:a92:c941:: with SMTP id i1mr8652392ilq.94.1592413252645;
 Wed, 17 Jun 2020 10:00:52 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id s71sm113785ili.44.2020.06.17.10.00.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 10:00:51 -0700 (PDT)
Received: (nullmailer pid 2304140 invoked by uid 1000);
 Wed, 17 Jun 2020 17:00:49 -0000
Date: Wed, 17 Jun 2020 11:00:49 -0600
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?=C1lvaro_Fern=E1ndez?= Rojas <noltari@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: add bcm63xx-usbh bindings
Message-ID: <20200617170049.GA2303867@bogus>
References: <20200616083408.3426435-1-noltari@gmail.com>
 <20200616083408.3426435-2-noltari@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616083408.3426435-2-noltari@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_100053_550867_40D5970A 
X-CRM114-Status: UNSURE (   7.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
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
 gregkh@linuxfoundation.org, simon@fire.lp0.eu, alcooperx@gmail.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kishon@ti.com, vkoul@kernel.org,
 robh+dt@kernel.org, bcm-kernel-feedback-list@broadcom.com,
 p.zabel@pengutronix.de, jonas.gorski@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 16 Jun 2020 10:34:07 +0200, =C1lvaro Fern=E1ndez Rojas wrote:
> Document BCM63xx USBH PHY bindings.
> =

> Signed-off-by: =C1lvaro Fern=E1ndez Rojas <noltari@gmail.com>
> ---
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


See https://patchwork.ozlabs.org/patch/1310130

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --u=
pgrade

Please check and re-submit.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C5A16EDD5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 19:19:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cvC84KS68FV8tAx6i4SeDPVkt+kKnl6nneMJwbfeIEM=; b=GzIEKLxZWskHIH
	sWQlP+G6Tph/2zrKJOljF8eHpqFwwgMmtPoT4k1NpK6RNU5wVf+kLCxV7lOHR2Y8bN4NPy70WdzXV
	Y2ZggpTf+5TF5eFANyviU4Ysvs+i/oESkhq9pv4BasschZlinKgVl0fv1JuoYQo0TtaAplRhbwivY
	wKe2ady7k3OUrXmlBDUJo/9pNr8hVOt02HQWwH0h2fM3Wwe1zt3FYTmAympW3XKgsQNEgJg0rXxdL
	POE+B6KrupyqLFD9O1SAhxQsL+abeoztqUYNmGvPCu0H0iCuog0SIKJIY5RiKRUclEPWegJJgMTq7
	87tXo5cBfvemhksYFXaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6eno-0005Jt-SS; Tue, 25 Feb 2020 18:19:28 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6enb-0005I4-6f; Tue, 25 Feb 2020 18:19:17 +0000
Received: by mail-oi1-f194.google.com with SMTP id l136so280218oig.1;
 Tue, 25 Feb 2020 10:19:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=iSNFodvA5lKumKKqhkZzGA6DFgZu/Be6kzIV2/+7uvI=;
 b=ENf24g2urnhLo8bSsoPLOpg748kWoU9MWa8HOSdkvZEmkYLlP4O+THN1mjPaF1o2KH
 eSNiQ/UP6DGSOCRbcB6r6XVM6jXJrLvQRWgPqZrBOQU8Bbpkhw/VRtFgZ3iUTZxQw1lI
 6vRqEQbwD9Kv1a7ZtCn/E2xA/Dkehl87GGDKv57GH2t5ZGUfAXom1WAS5xSrUO3X71xe
 xm8zu3/2E5S04S5xkrGnMSnF+Ecm7KRNQDRSM+vL5777fbI6dm6kV314LDQwDgaKLjbk
 L52h5a7gl7sLerxwTGbk/jvW57yBrWj3PxJaLJCTk1p5azG3wGF1BP+XwMprtFYqztmm
 MAxg==
X-Gm-Message-State: APjAAAVfoEMQU3P4q95Zy6jbTezRICw0wZhEFq4JbFWi/x95Q3mZt2rP
 XMyti2YrlhK8qLHneHTjYw==
X-Google-Smtp-Source: APXvYqylGxOIYQjx7oEtM4f5L4ZlqydvtMZMW3lXsVUQ+Cx55CgvSY6HFR33P45JatrRLi9lFN5i7w==
X-Received: by 2002:aca:d544:: with SMTP id m65mr158319oig.177.1582654754520; 
 Tue, 25 Feb 2020 10:19:14 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y6sm5921513oti.44.2020.02.25.10.19.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 10:19:14 -0800 (PST)
Received: (nullmailer pid 7582 invoked by uid 1000);
 Tue, 25 Feb 2020 18:19:13 -0000
Date: Tue, 25 Feb 2020 12:19:13 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 59/89] dt-bindings: display: vc4: pv: Add BCM2711 pixel
 valves
Message-ID: <20200225181913.GA7531@bogus>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <4a3c6e3cad10eeff93fafbc512c35b0c69dd1c68.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4a3c6e3cad10eeff93fafbc512c35b0c69dd1c68.1582533919.git-series.maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_101915_240744_F125F173 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Maxime Ripard <maxime@cerno.tech>, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 24 Feb 2020 10:07:01 +0100, Maxime Ripard wrote:
> The BCM2711 comes with other pixelvalves that have different requirements
> and capabilities. Let's document their compatible.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  Documentation/devicetree/bindings/display/brcm,bcm2835-pixelvalve0.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4D416EDBC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 19:17:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z6oQZfnZtfMkMiy/BxRIYnbPpsjWciKtETKzsOMqL0M=; b=FKFsOsqNGOBeDs
	vPdaxwIMuKG2/e5N7u2+oWeuwuv3+7AdUf6sMabcQrlKAqqbTzzVM5EnCe7cD11eLCAVGAbI3SRMh
	9yMrlrMEJzHeRhjIxASvxKMz2d6BMmN8Zj1ef+REyMFk+IrGccd3e3/fZTxwFnv9JeeB3Pr7ubQSN
	7ydNLM/rOuk+OFQoNBmGxhOJtxuNiXaD2mAHNCWzKax1PxBxjl4HF3n6UuIoV3psmlZFsrwwVuGq/
	cA0uISD8oqyV10HmLieBUGTdg92NoKqIQsQs6nf1/QTttYLGjCXvKPUVedO1D0Du8v+SLaCL4wSAr
	QcyTn4jPFq36LwzDFpOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6emB-00041g-JA; Tue, 25 Feb 2020 18:17:47 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6elw-00040n-SF; Tue, 25 Feb 2020 18:17:37 +0000
Received: by mail-oi1-f195.google.com with SMTP id 18so242914oij.6;
 Tue, 25 Feb 2020 10:17:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=M0E7HviNSBsG8AdRJKzEgXOr8kHrjfuX94agJUStr7g=;
 b=EFXlFyUFeIjxELt9nU4fHG7h97+KH6I0qHxN1uboeIslIzWmKVdXB9OAUjJACvIhos
 CFGSbrZufVQ0RyaxnBfYOXIK+24lRLE8bu/1zC8sKAS2fR4LZ/pJBjayzyE1h/G3Nvgn
 n0+GRR2n1XZtzvLxsGl0/VJd4styCpT07ySl6MzF7UmKYIfIQT0Qz4NYjkL3TLVzPbwJ
 HHpA4PQOPD1Bjj74IGrg1mF8okCm72ADhetFVApYSZKDSHFLF/5xfnY2OJULlj7TR9mK
 vg6HxiPjyMUzKrpFbL1vPYwPV9wbFYymlQkqZe0JsokivJeillfWyuyQ8TMLgWaP3YpS
 W1zg==
X-Gm-Message-State: APjAAAVxVHiT/Feb0PQ85r8Xxlk9pFkJHnDkIAw7K/zzE0dkloWHYhBd
 5FwojwEW8FdHAS5VHvG+gA==
X-Google-Smtp-Source: APXvYqz1dylt8yKJtPhfpv45+IE1rLmfphrTF+EPA04MjmfXy9gQm/1y+8I9VO0b52zpWHhUF1c3oQ==
X-Received: by 2002:aca:b9c2:: with SMTP id j185mr181742oif.112.1582654652267; 
 Tue, 25 Feb 2020 10:17:32 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v25sm5890424otk.51.2020.02.25.10.17.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 10:17:31 -0800 (PST)
Received: (nullmailer pid 4562 invoked by uid 1000);
 Tue, 25 Feb 2020 18:17:30 -0000
Date: Tue, 25 Feb 2020 12:17:30 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 26/89] dt-bindings: clock: Add BCM2711 DVP binding
Message-ID: <20200225181730.GA4511@bogus>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <106e8a589a79eb70668b03d7160994c6a09a92c4.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <106e8a589a79eb70668b03d7160994c6a09a92c4.1582533919.git-series.maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_101732_908236_D2CF6AC8 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
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
 Philipp Zabel <p.zabel@pengutronix.de>, Maxime Ripard <maxime@cerno.tech>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 24 Feb 2020 10:06:28 +0100, Maxime Ripard wrote:
> The BCM2711 has a unit controlling the HDMI0 and HDMI1 clock and reset
> signals. Let's add a binding for it.
> 
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  Documentation/devicetree/bindings/clock/brcm,bcm2711-dvp.yaml | 47 +++++++-
>  1 file changed, 47 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/brcm,bcm2711-dvp.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

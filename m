Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 756B41FD8A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 00:23:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hIJAMd5jeIXKMOf4lhiDT54S1r81TUnfT059a2O+5qw=; b=YknDQyl3wrbVEs
	BemiSCamxE62BH31AaPNqhFRd4rsulQK4FoemGBaMUKKo9JRdQHiNrEX7/9DdIl0YfNVK8Qhy5elt
	RaZoIgj3hMxdMig8gu76ONyPM7vynwiPikPq2vRDO1QH09rn+F0/CoO0MVAWFaFVKrUI4dZ5PrZla
	8mfBA1IGteo0PYHGP9HS9AbxPENgdvDUCUTTCeiHEcjrfNgWpUV3rM4in4+MNoF7/wUfMzd0Fzgyw
	QlVVhkgekn2Uk3MDkvEiLDqPvgpozhjPacUXqdjd9Tq+gvnZ3xQZ2g+nEOY3uoS+T0klqaPLejo0V
	XAd9X3VfXMUB0k0Cuwxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlgSx-0008MP-KU; Wed, 17 Jun 2020 22:23:31 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlgSj-0008Kk-W7
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 22:23:19 +0000
Received: by mail-io1-f68.google.com with SMTP id r2so4844309ioo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 15:23:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=fdc8LPvBg7IpDqgfMUorl6fjRqzreVXTCr85BbLnOzI=;
 b=UH9V6WXuBsDRXMIeb0kwiOSDPXkQNAulpUfqw1zoubNFvk2o44Uzz4F+xGjmpAapom
 r3uAXfyMrBvh/jTJIxKWWzMeLvbUD/gajVAGENBomudmGAtvKwVuV8erUeZKfvVZcyTQ
 KK8j+6XH+3FAXuS64AID4m+I7zQy5f/z43AoD/2RXhgYo6RDrzOMWoZKqpSKSN0KnCXd
 gfPUg3HKIKx5OcEpthJ+Izan5Gq9uyIiFFhSJ+b1hzhKwSjmrw5rIKNBeKWIXNiQOEdm
 yVQdZqAtXgeJ3I3lMcWH8VujAA3mwY50odRcS5x46S+1FGEJskubijSx/FTR8IV/49co
 QE8w==
X-Gm-Message-State: AOAM531QDdn80irmj/Lduunn+kjwoGZDGWHZB0Y/tqL1FD9AS5aGnFGD
 gyWls6IpKy+9E+JBjnhedw==
X-Google-Smtp-Source: ABdhPJw4FuQdRZJ34pMNVpkgP9I9YSTdXE0rgcVdxFi02YCM5O6qCa3oVlDmE8AWdr3loG3FQ6p+FA==
X-Received: by 2002:a6b:9355:: with SMTP id v82mr1704625iod.92.1592432597053; 
 Wed, 17 Jun 2020 15:23:17 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id g15sm495112ilq.39.2020.06.17.15.23.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 15:23:16 -0700 (PDT)
Received: (nullmailer pid 2942106 invoked by uid 1000);
 Wed, 17 Jun 2020 22:23:14 -0000
Date: Wed, 17 Jun 2020 16:23:14 -0600
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?=C1lvaro_Fern=E1ndez?= Rojas <noltari@gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: bcm63xx: add 6318 gated clock
 bindings
Message-ID: <20200617222314.GA2942054@bogus>
References: <20200609113049.4035426-1-noltari@gmail.com>
 <20200610140858.207329-1-noltari@gmail.com>
 <20200610140858.207329-2-noltari@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200610140858.207329-2-noltari@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_152318_041471_61BBA90C 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com, lkp@intel.com,
 sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 f4bug@amsat.org, julia.lawall@lip6.fr, robh+dt@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, jonas.gorski@gmail.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 10 Jun 2020 16:08:57 +0200, =C1lvaro Fern=E1ndez Rojas wrote:
> Add BCM6318 to the binding documentation for the gated clock controllers =
found
> on BCM63xx SoCs.
> =

> Signed-off-by: =C1lvaro Fern=E1ndez Rojas <noltari@gmail.com>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  v2: no changes.
> =

>  Documentation/devicetree/bindings/clock/brcm,bcm63xx-clocks.txt | 2 ++
>  1 file changed, 2 insertions(+)
> =


Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

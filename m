Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A428866FF1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 15:23:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NVTPtFMc5j1t29UyqIzmcizpD8NnOaBKox7v1jJTASo=; b=j3fQJbFxJQk85I
	cDd7Pxua79oqDnIpo+TAN5LIzeW74n2RNKPcGNOQVUCmq2ChaGZVdEPAgtSDhwn/X01QpresBXuB7
	zg7fXBUgjtQYn4+wcuHwVGH0/A7TikknYAuHscYOOvz+r98CStgzsrpWeVr5alnRTBe4hLuD2xfel
	DwuvGTpLjAhWCE1LhqegsJAvjBcSrIA++MzVUeyVKqNw/2W0bDGjxqivo5Kssf4hK2kstKYgr4XSx
	FqFiYh9dL5qy+xptZoPPYOA/Yfu5+rXQdylYyBTKfMaKpSmDaME4A2t44EYEKssWWy3WpgFTMUTBe
	4rTRRnflu46LJN8qc1yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlvW8-00054t-9O; Fri, 12 Jul 2019 13:23:16 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlvVz-00054G-Mh
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 13:23:10 +0000
Received: by mail-io1-f68.google.com with SMTP id f4so20261691ioh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 06:23:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1826QRSZND5xFSaycA3VXZ3Su7jhccLEc5HQPy9cFIA=;
 b=gm7tlnLyvjjEifLbxOrkVgijMF5MwjYVG+vnz56ZZ3T90kvTNcfvFUPJC/8hY7RWaY
 hiwWLE+qhQ2IhVkbxs+sW9/vB5Cb6RVN41rEJZfLK/pGkgiY6opgTIDRBqaQv1PyE1qk
 jWdQh8NT82CGpB/URLUSYfWVSSk1mHGAOLcQBX+6EPNOkCdCD3Kp1Iyw+mevosBWsYpI
 UA5ots8BhV5zmyO1Ljw04xNDuNKfaWmHxt5BZD3tZ2+VW+LTkigYQjGXUWWaqi3KeDWV
 2d2c/KPbtuadVKAZM/+D2kMug8N9KKNk8eYGe/VJEu2zt83AufmtBQ8JxN3kJGXFdeIh
 oTqA==
X-Gm-Message-State: APjAAAUAULO9592rTjKCatvfOQUcjpaOIAWDqvLi8+7CqqlwHCAKtpx8
 g28XLolD5QfFpsEet0DnZQ==
X-Google-Smtp-Source: APXvYqwhSj3Ox6SQUhezN9z9ULkaflrYBgXnSp7Q2YXOxs4aR926uZ7KXEPvo5nAPyWaFq2nES5Zyw==
X-Received: by 2002:a6b:3c0a:: with SMTP id k10mr10816706iob.271.1562937786548; 
 Fri, 12 Jul 2019 06:23:06 -0700 (PDT)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id 8sm7543818ion.26.2019.07.12.06.23.05
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 12 Jul 2019 06:23:06 -0700 (PDT)
Date: Fri, 12 Jul 2019 07:23:05 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH] dt-bindings: bus: Convert Allwinner DE2 bus to a schema
Message-ID: <20190712132305.GA13584@bogus>
References: <20190711094036.21777-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190711094036.21777-1-maxime.ripard@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_062309_014522_125864A7 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 11, 2019 at 11:40:36AM +0200, Maxime Ripard wrote:
> The Allwinner SoCs using the second generation of the display engine have a
> bus for that display engine. The bus is supported in Linux, with a matching
> Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../bus/allwinner,sun50i-a64-de2.yaml         | 84 +++++++++++++++++++
>  .../bindings/bus/sun50i-de2-bus.txt           | 40 ---------
>  2 files changed, 84 insertions(+), 40 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/bus/allwinner,sun50i-a64-de2.yaml
>  delete mode 100644 Documentation/devicetree/bindings/bus/sun50i-de2-bus.txt
> 
> diff --git a/Documentation/devicetree/bindings/bus/allwinner,sun50i-a64-de2.yaml b/Documentation/devicetree/bindings/bus/allwinner,sun50i-a64-de2.yaml
> new file mode 100644
> index 000000000000..b9734f8109c6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/bus/allwinner,sun50i-a64-de2.yaml
> @@ -0,0 +1,84 @@
> +# SPDX-License-Identifier: GPL2

I fixed this up.

Rob


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

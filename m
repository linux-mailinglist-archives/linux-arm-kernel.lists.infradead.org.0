Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BEF6E7E35
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 02:50:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cKkXaeQwXbRp/QFuyc/6CZLWDXi2i6qOoVA3hwKrQ3Q=; b=sQaLwKS/4THCN1
	b/sm/XLcegS53bFl8RMF5v702Str2CFb7pFTMwmVdnIO3okEo0XlX1nZFiwSMQSu7wEL+yQQ7CHp9
	+L2pi85a7c8GFkvLvkBwrUZ1efZ77ffiSpgLOKdhD3i/U0dxxPMXFtcvnv3LrFMVNIR5rDcWFQsf5
	DtfoPRtfnpekwMfAj//9ZgsVPnx2TY+i+iNPz7vNWMZ8mf+UvEIKv9b6bWttzs+5rSmWWJDz5yEy7
	GJhRrm5n4TmMq5Iaz+zm1D/pdQOIGr7JbnUYg8WBaGx45cdDteUzTXujaU8xb6dPRYBlV5K8EoEFW
	mI7HrX/yv1dcAav1Hpqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPGeC-0003O5-Pr; Tue, 29 Oct 2019 01:50:12 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPGdr-0003NS-IC
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 01:49:53 +0000
Received: by mail-ot1-f68.google.com with SMTP id d8so8414691otc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 18:49:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OwO97DxpTpJcLYlkzMeOuj/rD0CUwDcPUCTNwf6RveY=;
 b=TG6laPV0iUKUrKbkGnVln5QV0OJ71SlF0SxhCbbeTc8eTAOuMQw00OWrxdS8fJq3RY
 xh+V9QGS1myKPCU0g78I4VGxgp3Da6+YvQampOcJ/dTQg28Su3QVV/AYqVZYTo6LSi3t
 IA0jsJmPb/wII8L4TP7sAev/4ImX/hk4SHNv8BP6ng4OnMwUKl3Yu6+UAO0f4iTzAGLX
 KOWN3Fr4mbbK+WcbQ0Giij7rvl2+ZV0FdpOg2iK2PjKLPNjXDMcV4sRhZUBc4nxa9Mjq
 D20vicSEAhgxtOQyimrmWer5rGQe5HrXLAjcMURyBK5FqWcbgTN07x+u68B1ByA/Yu9W
 lNEQ==
X-Gm-Message-State: APjAAAW+JVxNVA6YnmvKtK/tSFHtuIb11XtX7FrNkEnqwtTM71gFoCBm
 mHGJpUSgj3HXe1ShIT4Ssg==
X-Google-Smtp-Source: APXvYqxb+Q+XI/gBXpbL/OnoFUprupV1+asYGZRYItetzH0XJsjrBhjrnc7oNJmispxysnmUIHX34g==
X-Received: by 2002:a9d:4c04:: with SMTP id l4mr8138995otf.303.1572313790495; 
 Mon, 28 Oct 2019 18:49:50 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m3sm2051438otr.5.2019.10.28.18.49.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 18:49:49 -0700 (PDT)
Date: Mon, 28 Oct 2019 20:49:49 -0500
From: Rob Herring <robh@kernel.org>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: at91: Document Kizbox2 boards
 binding
Message-ID: <20191029014949.GA22009@bogus>
References: <20191017085405.12599-1-kamel.bouhara@bootlin.com>
 <20191017085405.12599-2-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191017085405.12599-2-kamel.bouhara@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_184951_601340_DACAFCE0 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 10:54:04AM +0200, Kamel Bouhara wrote:
> Document devicetree's bindings for the SAMA5D31 Kizbox2 boards of
> Overkiz SAS.
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
>  .../devicetree/bindings/arm/atmel-at91.yaml   | 35 +++++++++++++++++++
>  1 file changed, 35 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> index c0869cb860f3..7636bf7c2382 100644
> --- a/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> +++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> @@ -80,6 +80,41 @@ properties:
>            - const: atmel,sama5d3
>            - const: atmel,sama5
>  
> +      - description: Overkiz kizbox2 board without antenna
> +        items:
> +          - const: overkiz,kizbox2-0
> +          - const: atmel,sama5d31
> +          - const: atmel,sama5d3
> +          - const: atmel,sama5
> +
> +      - description: Overkiz kizbox2 board with one head
> +        items:
> +          - const: overkiz,kizbox2-1
> +          - const: atmel,sama5d31
> +          - const: atmel,sama5d3
> +          - const: atmel,sama5
> +
> +      - description: Overkiz kizbox2 board with two heads
> +        items:
> +          - const: overkiz,kizbox2-2
> +          - const: atmel,sama5d31
> +          - const: atmel,sama5d3
> +          - const: atmel,sama5
> +
> +      - description: Overkiz kizbox2 board with three heads
> +        items:
> +          - const: overkiz,kizbox2-3
> +          - const: atmel,sama5d31
> +          - const: atmel,sama5d3
> +          - const: atmel,sama5
> +
> +      - description: Overkiz kizbox2 board Rev2 with two heads
> +        items:
> +          - const: overkiz,kizbox2-rev2
> +          - const: atmel,sama5d31
> +          - const: atmel,sama5d3
> +          - const: atmel,sama5

These can all be made a single items list with the 1st entry being an 
enum of all the boards. The board description can be a comment.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

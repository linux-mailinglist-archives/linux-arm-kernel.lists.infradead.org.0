Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 085E7E8859
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 13:39:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tTpIfWELTdWcOwBGbFVeHruEJTGS/hNNFsQlQmyzq3o=; b=MhhW/VYN2rbZFk
	LCgIWOb6Zw3Ev+uoHBCHQJOZixvZUOV5QhQYVnlBX54o+IwkxLkHQ4AKs82UV3s8QXeZVcik8gIUA
	cerjFEvZVsplUADhUmXjD+vhNheekA0t6WwVCL5mfyG8D0cnLTr2zOABqM/Kf4XHcQJMchSMCOWBj
	NpPypYxfs+31HzlMut8+gwyM7LybW3BWkif7zszX8DPnHOgcpjRsmF3iz+YMGHkrU+SFM36mykTwh
	7CDknBWK6A5yxCNBXGQEGqRGpd8esDinVerXZU6KxtOzE894mF3avpvv+9O1Zl5OdpIxBHmuAUFr4
	RJRt06eMrxnROraOAB7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPQmD-0000eW-QK; Tue, 29 Oct 2019 12:39:09 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPQm4-0000db-Vs
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 12:39:02 +0000
Received: by mail-oi1-f193.google.com with SMTP id l202so773460oig.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 05:39:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=P0pAlxPefnZPIRefBhrT3Sgrq5uaOunz9Aa6ST/gasM=;
 b=Q7juG4N/QUcm8uINOuXDDr/C+uysei28NFci3SMaS6frZs5C8xSseLsssQ3mWKNs2A
 EmJabdPn3Y8G/9tWfCnDf7+r1LZATh8/JUtfwbGhaD6VYBziY5BtQnJQ6/9eRIkgJHp0
 RAE4eeUQUEGAwFg5llLnC6T4bFNkwfcx50H20D5byBUBeb316rbWSZqaYwbi1esfklwd
 25TU5Zt5WIIKwHPSYes045sqzyOzo78+ZrAVzJpVJF70KmH7vT8oZIPhGLQEQKafHb6H
 lm7aSjn0QScMZw5hwPcNuF0A3ut1FqbRIneWmeQrs4665WMAyE5A1khurNYhlflx6C4u
 X23g==
X-Gm-Message-State: APjAAAXdecsMSXCHMB7P21xJCDvX30BKWsgq4OfVtA19XxiKl8uGjYof
 E1EyMYCJ/9SmaMsT16WowA==
X-Google-Smtp-Source: APXvYqxt+//5ED9g7iyU7AWAtvtc4k6r5HOC14j46hy0je9ALb9EwgOj5H8dxKh8G41DIjRra9VFYg==
X-Received: by 2002:a54:4885:: with SMTP id r5mr3723686oic.3.1572352740007;
 Tue, 29 Oct 2019 05:39:00 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t10sm3873234oib.49.2019.10.29.05.38.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 05:38:59 -0700 (PDT)
Date: Tue, 29 Oct 2019 07:38:58 -0500
From: Rob Herring <robh@kernel.org>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: at91: Document SmartKiz board
 binding
Message-ID: <20191029123858.GA24145@bogus>
References: <20191018140658.31703-1-kamel.bouhara@bootlin.com>
 <20191018140658.31703-2-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018140658.31703-2-kamel.bouhara@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_053901_028503_CCA9F155 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
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

On Fri, Oct 18, 2019 at 04:06:57PM +0200, Kamel Bouhara wrote:
> Document devicetree's bindings for the SAM9G25 SmartKiz board of
> Overkiz SAS.
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
>  Documentation/devicetree/bindings/arm/atmel-at91.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> index 666462988179..f8053268cfa5 100644
> --- a/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> +++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> @@ -49,8 +49,16 @@ properties:
>            - const: atmel,at91sam9x5
>            - const: atmel,at91sam9
>  
> +      - description: Overkiz SmartKiz Board
> +        items:
> +          - const: overkiz,smartkiz
> +          - const: atmel,at91sam9g25
> +          - const: atmel,at91sam9x5
> +          - const: atmel,at91sam9
> +
>        - items:
>            - enum:
> +              - atmel,at91sam9g25
>                - atmel,at91sam9g15
>                - atmel,at91sam9g25

Duplicated... You did check this with 'make dt_binding_check', right?

>                - atmel,at91sam9g35
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD94D1704C7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 17:47:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5/hfsoMfPWvHpxKxi7maBYuKLKn1l09Ba/j5c3ZJbxw=; b=Z+4IqRVs/qpVcy
	s00JMqBr9MY8ks7yhx3DxQFBATeWkXsYdKUh/MAXhDBuDET6KnZe8GpIV0Zdq8YWSBY+76yMBW58x
	Q0iZHZFky69q0we0zuohakZsmrfjINka5e0J4C/2c+3C5PVzsT9oT5ZYYCgisjDLUqI7TLjoiGpoR
	kTF2CnlCmdHRNwNgNTXwcM9rLEiKXP+UhTaRG/7O87MECB1snT5zrm8cNLvhT0G2ogSm35Q8snM2p
	vO/6FB7NAiCw2gIlJ6Ug1ZRRSLutU6oOFfbN2CWc3PcEXnnbaZySW096/81YnVHl+SEuEcKCBbRob
	CZKJ7ot01BN7OXK6RB8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6zpo-0007Vi-HF; Wed, 26 Feb 2020 16:46:56 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6zpb-0007VF-VY
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 16:46:45 +0000
Received: by mail-oi1-f194.google.com with SMTP id j132so121467oih.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 08:46:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=euaE0a/F9iYPW3bW8ux6dEgfNohg5LV/qaPC46bfJbM=;
 b=pIJgrkJdDBeDPiJaXonNfzxdiBu0suJVB00VjbXFytmbz0VZywyLmFKW2CNXqys5C8
 dpELUmINHpglWbUERH4BWAVuKTJqT0NWhMfSRTI6jonzKBrDeq5ba3tLlLW9Rik8lFCm
 pU6Jp6SLVxj7o/kSbABlpN+H1eFwJUAaHz2WyIuDym4S+k1Q+2vg3plW1Nol3BgZMTUG
 v0B+3ml6KIt07dYKOGFK11H1mWIJN5xTqClfkrywuxJeT6Kx5m236jK6mhWJr57R1BG1
 vvbu/MKajUc8b6dIy4urDRIomFL1pz5g4mprYQ7R+y9hb81rSs/dEN3fEvmWVI+/JnRK
 aU1w==
X-Gm-Message-State: APjAAAXevTaC/O9ZpkZjOWLRuGa1HyHQfz+IZrptDQmsi2WmiIJdn2Fy
 BAA/LplgcSTlP927paugIg==
X-Google-Smtp-Source: APXvYqzvFmpRltCmQ98B2SbSzE+zSJMuj+TzJyd3FWc6UU39WI1WJ12+22L0RBnizVTQyeY8Y+GqkA==
X-Received: by 2002:a54:408f:: with SMTP id i15mr3758403oii.64.1582735603027; 
 Wed, 26 Feb 2020 08:46:43 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 15sm967111ois.20.2020.02.26.08.46.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 08:46:42 -0800 (PST)
Received: (nullmailer pid 17386 invoked by uid 1000);
 Wed, 26 Feb 2020 16:46:41 -0000
Date: Wed, 26 Feb 2020 10:46:41 -0600
From: Rob Herring <robh@kernel.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH 1/2] dt-bindings: i2c: Convert UniPhier I2C controller to
 json-schema
Message-ID: <20200226164641.GA17311@bogus>
References: <20200221025535.30311-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200221025535.30311-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_084644_012338_43219F49 
X-CRM114-Status: GOOD (  18.86  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-i2c@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 21 Feb 2020 11:55:33 +0900, Masahiro Yamada wrote:
> Convert the UniPhier I2C controller (FIFO-less) binding to DT schema
> format.
> 
> There are two types of I2C controllers used on the UniPhier platform.
> This is the legacy one without FIFO support, which is used on the
> sLD8 SoC or older.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
> 
> When I search for a subsystem-common schema, I need to
> look in both dt-schema project and the kernel tree.
> 
> For example,
> the i2c-controller.yaml is located in the dt-schema project.
> dt-schema/schemas/i2c/i2c-controller.yaml
> 
> The dma-controller.yaml is located in the kernel tree.
> Documentation/devicetree/bindings/dma/dma-controller.yaml
> 
> I am still wondering about the policy...
> 
> As far as I understood, the schema written by Rob
> tend to go in the dt-schma project. Is this correct?
> 
> 
>  .../devicetree/bindings/i2c/i2c-uniphier.txt  | 25 ----------
>  .../bindings/i2c/socionext,uniphier-i2c.yaml  | 50 +++++++++++++++++++
>  2 files changed, 50 insertions(+), 25 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-uniphier.txt
>  create mode 100644 Documentation/devicetree/bindings/i2c/socionext,uniphier-i2c.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

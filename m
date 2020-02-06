Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7BC154D3E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 21:46:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RMiTWXxDEFiGy+PR/VQm1VljUBNxUgkcBdS301xUSq8=; b=cWMBj2TTPkvojW
	/ITByL5hXCGUb/n9iwEaOygV6NYNdlqRpIf4ZfnSj7/fJWoFXxJfkQ1xlPMiVhk8EOJ0DocqC5MDJ
	FGKOLsWH/aKFANL8E/PzUo8YJLuB5Drd8DbkN7IjQiJaVAVM4dUkYFYUPDrBQ8fiwsvIdtrwVqv2c
	B3JtVtSADZtCkSbDshxQE5AwZf/H1mI1UvDDxHdyWrJkBKt+hqnbBni2CAQZ0jhM579BnDq2p7Hlw
	DwhNCiqZcBlaGemqbSnVQtrAgFAGx6ZFxuSUi06l/HkOmujIkeFLhMkuk5pFTN2kp5h1a6Lvce5WP
	0wmo4su1RQHtTzq6tATw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izo2r-0008Kz-Mi; Thu, 06 Feb 2020 20:46:41 +0000
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izo2A-0007pZ-H3; Thu, 06 Feb 2020 20:46:00 +0000
Received: by mail-pg1-f195.google.com with SMTP id l24so3347623pgk.2;
 Thu, 06 Feb 2020 12:45:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TDSSUXzp+jY2mafKrqhbmPqt3x8XToH1UVPF0nShXrw=;
 b=N4K745qDqAQ9jlKMcxKCRCv8PylhGqFFc87nocoLxpEI6iEz5OpslvNgFqCb4qdgyl
 EiSiJhkJF1xg2kOltaOQEfoyGJLND4gU/2225FxA1RpZkL4o+WJUw8+NDjJc0k6zmBab
 /6FgWFUJoV/Nyo8yz1Gpt1aHS2LplXwTVtKY3TBC4+H5QTixvYgBhW6qjCQmkgPQRcfX
 0BxI+CC/DtX85GwALNzAaIEqDNJ4uJFCjTkus4IRL0uN+N0TmklbgHy8SwC1TWrQfEV+
 DRt9cwke9805Ia78N73s9asUFpVbwM/3XjeHrZmpEdpuNT45weUKQTMgry4FIj1ygMBB
 jOlA==
X-Gm-Message-State: APjAAAV/OFKDufoAk7zt2GuQy1lB6q7zZ+gsw22mYZESe3jc4Uua61iZ
 0uDnjjB7IzvSsSA4CR5riA==
X-Google-Smtp-Source: APXvYqyKjJUU76EY2SMDKH/N4kc6OvY/ZOAHowg2c6/pV5A8+7AkkIOuBxeq4e48NlDl4hjXDTlmrA==
X-Received: by 2002:a63:ed14:: with SMTP id d20mr5610058pgi.267.1581021956822; 
 Thu, 06 Feb 2020 12:45:56 -0800 (PST)
Received: from rob-hp-laptop (63-158-47-182.dia.static.qwest.net.
 [63.158.47.182])
 by smtp.gmail.com with ESMTPSA id x12sm287256pfr.47.2020.02.06.12.45.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 12:45:56 -0800 (PST)
Received: (nullmailer pid 13377 invoked by uid 1000);
 Thu, 06 Feb 2020 19:24:37 -0000
Date: Thu, 6 Feb 2020 19:24:37 +0000
From: Rob Herring <robh@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v2 00/12] dt-bindings: arm: bcm: Convert boards to YAML
Message-ID: <20200206192437.GB30325@bogus>
References: <20200204235552.7466-1-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200204235552.7466-1-f.fainelli@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_124558_589043_B67E86DE 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, "james.tai" <james.tai@realtek.com>,
 Arnd Bergmann <arnd@arndb.de>, Scott Branden <sbranden@broadcom.com>,
 Sugaya Taichi <sugaya.taichi@socionext.com>, Ray Jui <rjui@broadcom.com>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>, Vinod Koul <vkoul@kernel.org>,
 "maintainer:BROADCOM IPROC ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, linux-arm-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, Joel Stanley <joel@jms.id.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 04, 2020 at 03:55:40PM -0800, Florian Fainelli wrote:
> Hi Rob, Maxime,
> 
> This patch series converts most files under D/dt-bindings/arm/bcm/ with
> the exception of bcm63138 and brcmstb to the YAML format. Those two may
> be split accordingly later on since document not just the root node.
> 
> Changes in v2:
> 
> - fixed typo in Vulcan binding
> - simplified how SoC compatible strings are specified
> - fixed filename in bcm2835 firmware binding
> - added 'secondary-boot-reg' constraint
> 
> 
> Florian Fainelli (12):
>   dt-bindings: arm: bcm: Convert Cygnus to YAML
>   dt-bindings: arm: bcm: Convert Hurricane 2 to YAML
>   dt-bindings: arm: bcm: Convert Northstar Plus to YAML
>   dt-bindings: arm: bcm: Convert Northstar 2 to YAML
>   dt-bindings: arm: bcm: Convert Stingray to YAML
>   dt-bindings: arm: bcm: Convert BCM21664 to YAML
>   dt-bindings: arm: bcm: Convert BCM23550 to YAML
>   dt-bindings: arm: bcm: Convert BCM4708 to YAML
>   dt-bindings: arm: bcm: Convert BCM11351 to YAML
>   dt-bindings: arm: bcm: Convert Vulcan to YAML
>   dt-bindings: arm: Document Broadcom SoCs 'secondary-boot-reg'

For all the above,

Reviewed-by: Rob Herring <robh@kernel.org>

>   dt-bindings: arm: bcm: Convert BCM2835 firmware binding to YAML
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

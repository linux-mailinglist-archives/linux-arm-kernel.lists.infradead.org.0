Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 492E410252
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 00:25:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tW8ENqVvXy/Jsf3WG5XFPhP30PPL87OTZrYE8mpJGLA=; b=Ibj4yBfsKi139X
	hkwS6iY59ZZgQQBpe1/vvf/NUPM2+5EHFAehzO2Dnnf96LaegPSIeQYtClY5khGzxcGSe2feNNlO7
	57l2ZSpYolnOA52l08vQLirgQo2LgSXHCCAqBMFYG4MjGAKe7q9iINany7AltzEc9bSxmbM4+HgQC
	r12ajOy+8NBPhYpT1aeCH7rAHDaCP5/lFTkXhAoEEnWKy/xDHFiwuYnWs08m15alkH+GPry9b3fNv
	wESCWAhFgd48pPw1bhPfcb2wBj8grRQo/Ties3DODEHjqeN6F5bxhMt/RNF175YtfNxAdG8UCmfxD
	qqqcPeI9AVQ4dSjpgw9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLbBr-0001Za-Dt; Tue, 30 Apr 2019 22:25:31 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLbBg-0001Yl-Fs
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 22:25:25 +0000
Received: by mail-ot1-f68.google.com with SMTP id w6so13439206otl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 15:25:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=brf7Bb8id6Hk+i6bJxTGFqDIbEXOeaazWSGC46nmM0E=;
 b=h3qoxnSJtAoyZj0L7e/QNNdZqfCH2I9R6CA0E9w+hEnqcnSuXA00mS7oYnw8FdKj3O
 4e61mX996pZhnLVsKQZmjS1hd8JcL8GOHwJtFPFr1FiOwQV//lVN+szBj6n5uRKZuFOV
 gTK2/jPVTTaItqUT50fq11MQFx5ViwB8tchOGpTUySW0lgvLYjMGSHdL3bKKvK8cnPJk
 xcgh2TEDiU0YfBALk20omWXZaCkXHTTktcHUYilk46f/Mgpfud6lmpikd16fkS9kNHFb
 9piXPoVct+xU2nR87srauvgQd5sXLmolADkqRg0hbG6Sal4dnCTFCN9sUdR39N2miuD/
 n5Vw==
X-Gm-Message-State: APjAAAUSPJKHvrE57XyqEgtj7yqkjLGLd9WAoe7GqPPyJoawEFLkJf14
 0muhbs4j7qXJL9ZU/vzofQ==
X-Google-Smtp-Source: APXvYqyyRL+scZJ1xlL9sgDE1ulI6fxpWupwNB6e11rvDCaYex/jkYDco3+Yr1qYKX+MCz5J3CuiUA==
X-Received: by 2002:a9d:5c09:: with SMTP id o9mr13588147otk.311.1556663119307; 
 Tue, 30 Apr 2019 15:25:19 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n3sm15918317oia.46.2019.04.30.15.25.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 30 Apr 2019 15:25:18 -0700 (PDT)
Date: Tue, 30 Apr 2019 17:25:18 -0500
From: Rob Herring <robh@kernel.org>
To: Lokesh Vutla <lokeshvutla@ti.com>
Subject: Re: [PATCH v8 10/14] dt-bindings: irqchip: Introduce TISCI Interrupt
 Aggregator bindings
Message-ID: <20190430222518.GA8786@bogus>
References: <20190430101230.21794-1-lokeshvutla@ti.com>
 <20190430101230.21794-11-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430101230.21794-11-lokeshvutla@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_152524_505290_B2D8F127 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Nishanth Menon <nm@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, jason@lakedaemon.net,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Marc Zyngier <marc.zyngier@arm.com>, linus.walleij@linaro.org,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, Tony Lindgren <tony@atomide.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Lokesh Vutla <lokeshvutla@ti.com>,
 tglx@linutronix.de,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 30 Apr 2019 15:42:26 +0530, Lokesh Vutla wrote:
> Add the DT binding documentation for Interrupt Aggregator driver.
> 
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> ---
> Changes since v7:
> - None
>  .../interrupt-controller/ti,sci-inta.txt      | 66 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 67 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/ti,sci-inta.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

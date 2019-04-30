Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 041A71024F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 00:24:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zwwo0GbWPveWr7rnpu6iwanp40P3zFU6VQSzJFW65eo=; b=Piu4irj38r0t6K
	tmfIGnvq0U7686e8QvWN6kt1OGe/nR8ERXM3ArtC42EDG2Ks3B+O+662+RLHPSnligyRS6M7hd/fJ
	m2VqFGg2GlmvorOwu5t+SCt3W61PCwsBjY49RU/hq/MzIpeuXS1RPoTtWhgXK/i1Magw1caLOASq1
	QiA3qme5fA6H4aQCWvDzkkSEglVvmPfR0xMfeOsLXPRWnXpRisI8P4tbbZoNDUZ4exUITGQYt7HyB
	csSlF1RjNfcMdCEk7Ahs0paE4NvVI3RQvT2iVSCeHvLoAYMX5iJyjOkwMGOVOp7toB/qMih7EGZwR
	0h/nf7qszP4dFmKEnhNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLbBB-00006U-Rb; Tue, 30 Apr 2019 22:24:49 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLbB5-00005v-8o
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 22:24:44 +0000
Received: by mail-oi1-f194.google.com with SMTP id t81so12608629oig.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 15:24:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MyOJCP+P9cbGTkqaQ+gM72dvr3UEtLfUje9xWwcxdRM=;
 b=XSU+X4e12INCfCvc+Thl6a08jGSRbs1AusFL7ohOdPBIPQ+TutvYQbFRt4MlzxcYwt
 dlJsOvz5a/KrTb/DyOG2A0qSOhPDhlBQcmQujg3sZTFjeCddqFHxba93o1jZlYRO5hi4
 Zh5OjIekBHNdrwsYiTYEA3HqzudOZZ9zio+7TGilA0RbF9HJav9jPtaM3pJlML937qi8
 hgdFgF82dU4/iQVq3n+RqjHx/0xKwjSQujDHR+BHCrTJpn3g8LOYB6segUUkAknpQ5DX
 oDITco/WUCl05d1Lb5moBzFK3pZUZvdivppZ4ZrTwiTR85eSwQUdz6SmruTznNvColXH
 7rHw==
X-Gm-Message-State: APjAAAWo6dyFT0zdCQxGR8Ibo8+NHnOFfy/FUDnBqQoWqE0KKuOkMWcs
 dzTTtDcwy/JU+nRvo3vRuaXY9zY=
X-Google-Smtp-Source: APXvYqw4JhJjcmKbH1sQuC0lBNbYVFG1NpxdTXInzLvoWK38OT5etr7o7ik3qtuYPr0A5OmNK5lWtA==
X-Received: by 2002:aca:eb11:: with SMTP id j17mr4718250oih.67.1556663080990; 
 Tue, 30 Apr 2019 15:24:40 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u127sm2204372oif.14.2019.04.30.15.24.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 30 Apr 2019 15:24:40 -0700 (PDT)
Date: Tue, 30 Apr 2019 17:24:39 -0500
From: Rob Herring <robh@kernel.org>
To: Lokesh Vutla <lokeshvutla@ti.com>
Subject: Re: [PATCH v8 08/14] dt-bindings: irqchip: Introduce TISCI Interrupt
 router bindings
Message-ID: <20190430222439.GA7845@bogus>
References: <20190430101230.21794-1-lokeshvutla@ti.com>
 <20190430101230.21794-9-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430101230.21794-9-lokeshvutla@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_152443_312211_2CEE13B6 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
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

On Tue, 30 Apr 2019 15:42:24 +0530, Lokesh Vutla wrote:
> Add the DT binding documentation for Interrupt router driver.
> 
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> ---
> Changes since v7:
> - Changes interrupt cells to 2.
> 
>  .../interrupt-controller/ti,sci-intr.txt      | 82 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 83 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

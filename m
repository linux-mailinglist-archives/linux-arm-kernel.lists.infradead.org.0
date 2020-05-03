Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E96FA1C2DCD
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 17:58:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7LXjFLaogzmtZGioOZ5TLeo2wMGfrbBZRxtFYEu2UVA=; b=lAra9NuhX4zsTF
	4E/fMFRliBz9JCffvHDEjSg3gjuHzNZTj7+rXxZqjcaNOCB5YH4ogQ6VHRU4Au7pBlXGddpEhvoQK
	vsDQ+udOlNelwhshFJjv+22kHBLq0Qwp6uL7MjoHfpV7yIzivNzK4yFt/I5bTVYAFlpXv8YYOpKoj
	yBSYyTis1jaakDPPN2Uhl9AlTqZgicwtqU00qr3WAbhIDtkE/K9xEIwTuct1CSmS76yiomCbTzBQ3
	iV8ZAZE9fHnJTHE5Zm+bPRM0j9xgH4HRNA6+tyATKjFkSoKsIis0jWvg89SP8PYop+POsKS5+DobD
	dVuCeilZnJJsAXyN9XAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVH0O-0000G9-M8; Sun, 03 May 2020 15:58:12 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVGyM-0006wT-Q4
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 15:56:08 +0000
Received: by mail-oi1-f194.google.com with SMTP id i13so4443156oie.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 May 2020 08:56:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AuVp8U3lUOpSxeWV6NIshZiOxwm/x49dcEZgnd1MVVY=;
 b=PclOYZR1NQIMA0aRKdqXu1QpKvQrgm5dJkKRE1ogLpIZBcUHiuel7Oabm9pm9kkrmR
 FW1s4IPSgMkbSOqUHuLQEay1kHbGVdetyyTUG6flkjG1JWMY0c+Q2aB1SPSKPTOjjLFF
 wSZ+2WoOhCm4ULbWBHDv+1sU92UbdWybPPRFVa+iJRO/Xu4em5Z83CMOsTF3C7sDr6Hs
 4iaOXpLExF/KovaGiLVWLQS/zETotJFba4XCd2nMFgSzj77Nfc1zLyhZn7Oo7UsvenWk
 EZZ79IeZA2KPfWWaqrUSbtFZwhchhD1lf6EaLf1R2NoQs2DuWj+DpFl6mMzLd4zsWlR+
 mtXw==
X-Gm-Message-State: AGi0PubyzPghjoxBQcQF4cS5+2y0T356Nm51ZBBjlBQZ7r5NYHvN6tzB
 /xoGKJVPQXqYGZqHNafE+w==
X-Google-Smtp-Source: APiQypKjV4PG8jLS/iGjenYZhgg6QXvELjLNIbQW1FvLo1A6vgT6B95EbaPC/6tNrbjvAH1sMuxGMA==
X-Received: by 2002:aca:1709:: with SMTP id j9mr6155165oii.59.1588521365873;
 Sun, 03 May 2020 08:56:05 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j42sm2498223ooi.5.2020.05.03.08.56.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 May 2020 08:56:05 -0700 (PDT)
Received: (nullmailer pid 21916 invoked by uid 1000);
 Sun, 03 May 2020 15:56:04 -0000
Date: Sun, 3 May 2020 10:56:04 -0500
From: Rob Herring <robh@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v3 6/8] dt-bindings: memory-controllers: Convert Calxeda
 DDR to json-schema
Message-ID: <20200503155604.GA21813@bogus>
References: <20200430211054.30466-1-andre.przywara@arm.com>
 <20200430211054.30466-7-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430211054.30466-7-andre.przywara@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_085607_071481_6F33928C 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 30 Apr 2020 22:10:52 +0100, Andre Przywara wrote:
> Convert the Calxeda DDR memory controller binding to DT schema format
> using json-schema.
> Although this technically covers the whole DRAM controller, the
> intention to use it only for error reporting and mapping fault addresses
> to DRAM chips.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../memory-controllers/calxeda-ddr-ctrlr.txt  | 16 -------
>  .../memory-controllers/calxeda-ddr-ctrlr.yaml | 42 +++++++++++++++++++
>  2 files changed, 42 insertions(+), 16 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.txt
>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 788F316EDC3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 19:18:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LmDhlVOeT537o+71qeiZgShK+jBwnhFw5nf2Bp0SqpY=; b=W/lUnr9h9fjPAw
	q4L9DdrFP5f1eFhEB4JmOadoT/l/ENC8zBBNsJgtpmA4rBIqcq5CVSNAxk3uZ5eiHtaWQA9XieVns
	8vmXwNoJJS9AJrABhY8TfoWloITwnB1lbdSAhQj2/a/9sZWNSwAOqIJnxi3XIP8VsgS160JdlLJFV
	zs0nzvYcnk3rNyDBL9/aFeu8Devoym+S0H1HK6G76ErsC9HMNzRRjKv6Hf+iKY4s0r7Z6zXH4EBA1
	S//k9RGs0x/3oaSgz4SYlqPgHf4QrOZoSx0qzu6BGtyojQtb0GGOXG7s1pYliNNoPUGsEKy/qLvUk
	OaIZmbSNp0bwgQRi3fxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6emU-0004Gb-PN; Tue, 25 Feb 2020 18:18:06 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6emK-0004FQ-3C; Tue, 25 Feb 2020 18:17:57 +0000
Received: by mail-ot1-f65.google.com with SMTP id p8so386530oth.10;
 Tue, 25 Feb 2020 10:17:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cfeiAYk0sz6jKgpfGcPq2AbGtANcSLd4G7ZU9zGmlGY=;
 b=r9hvhrM3HZzVlo8JHttyYFl6Hwkq+vp1nzY4IaM8utvp1RFoAorbbH99rImZgyGP4j
 lFGB/PNRuzg5Uh7Ys/3EW4izOE9nGgC1QvbwBmKSAbZRSF6PYUXkDZAW9AQPnq+CStCV
 Ka6tJnfF6lOZ1IvUspAGhHcXTBe1ByLt2bDnnCmPbv96zkJXTHiWa/ogpPewdtWwYDJu
 IQgiyToTPKIXx0A+6RdtBiITdvuWS+CVcYAl2Q4CdadxmwvcLpWKS6xiP7eqxG/bDwt0
 t8PfSvDYrL0e22QvLvsybi+FFXvmYzlZWIaXd739G7AKnvlTmn9h21DwIHZzksQfMg1v
 OexQ==
X-Gm-Message-State: APjAAAV/zslLW2GMaYBvh+zxu19NHj44a8Y35IpUMRBu5fDDyIV10TeQ
 SohHlZ8keuuFVdeXJk9LUQ==
X-Google-Smtp-Source: APXvYqyfQgGOrT9ThsnJbQjUHaKtSnLHIPJhsBT8XMy6vzVDDAHDLigOB2OIEY8iBbOVlcXyZ2O+tw==
X-Received: by 2002:a05:6830:1657:: with SMTP id
 h23mr2287541otr.299.1582654674415; 
 Tue, 25 Feb 2020 10:17:54 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i7sm5569162oib.42.2020.02.25.10.17.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 10:17:53 -0800 (PST)
Received: (nullmailer pid 5252 invoked by uid 1000);
 Tue, 25 Feb 2020 18:17:53 -0000
Date: Tue, 25 Feb 2020 12:17:53 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 30/89] dt-bindings: display: vc4: dpi: Add missing
 clock-names property
Message-ID: <20200225181753.GA5213@bogus>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <042c8f676d3d863b55092bb58c1f15db95370782.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <042c8f676d3d863b55092bb58c1f15db95370782.1582533919.git-series.maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_101756_132207_998F80D3 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Maxime Ripard <maxime@cerno.tech>, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 24 Feb 2020 10:06:32 +0100, Maxime Ripard wrote:
> While the device tree and the driver expected a clock-names property, it
> wasn't explicitly documented in the previous binding. Make sure it is now.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  Documentation/devicetree/bindings/display/brcm,bcm2835-dpi.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

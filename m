Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 921BA13B534
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 23:22:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w7d/G9XlK/QyuHPlYNEvIS87ttMQwYJuJL2OC2OngzY=; b=jr7/07uNIUGY//
	SHXaUvE6CqU6PJfaWYI0aOctBwvwm2XIL83FEsnRAQ3BW6+GjFWq/P41WScRkJ+mE/gHbMOFJDnym
	psfrWOjtrGHmp+dZGUaSTCYseAXxAXi9mZcHCcMnpHQa+97xNQ1wk+w856bX5BwfTM52sfM1sMWv9
	nkx7oZ2eK/SqVGn3ldGAgtVHjtNFXKpiSjhkNtrCcKhzvX8sTLuTEoyRsVQ98AF/YH+F9j49L8Rn0
	ByyL/UXGQJaqUdws3sQ7RQgnRWhZmUFtaxMoYVKLFpYqWBG9rtsnGVuGI2MXjhZsbPPVNJRLcdwIz
	pc20ilxNFARrElL5TTYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irUZQ-0003aA-Aa; Tue, 14 Jan 2020 22:21:56 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irUZG-0003Zk-UC
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 22:21:48 +0000
Received: by mail-ot1-f67.google.com with SMTP id 66so14253232otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 14:21:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WS8NlkYRgt1yxklwHlCzn8AYd/wck8523N3nH8IJHG4=;
 b=iIQmhWNWzEuPZpe7Rw/FdxnEbNYwSjF23+2MACPK5h47Xg3I43UoeJDvbFZldPH66D
 sl5T7h+hYdUEFowuT5L0+G1MvtfUIIYcvJ6bqn1RVhj86nBoGNhBh1WqxgujNn4orToW
 lQ6+hyAHaCWTeCCY7y4YAE9Kqjkc7LQ6fXBVJU19Rq0rmhWzSYuIPucZSkGH2ceJ0Z3i
 erlRsrrNYfq/fIQbefARo/OB60skVqLbpYWF7P23gT44fxTW5YQ8hyuLobhJlVyu30SJ
 NLqaYSaV2hu5aWE7xf2zmWlj0xZexjpJ/Z81Yb5Bd9C0U+yGowYv+SVMht9J95CnGMuP
 9E0g==
X-Gm-Message-State: APjAAAXug9woilBJJjZSpNGfNLhaiV+9+BQXH5ICC5xVNXPY9xpW+jTr
 SvoKwXBkMXzOyC21EmPyOdO098Q=
X-Google-Smtp-Source: APXvYqzpcZYgwfG0VLSvGPUOSILx5VaA584xjQBBWSdx2yDGjellR6nH78yEU4EEl1idDd+fbm+O8g==
X-Received: by 2002:a9d:2c68:: with SMTP id f95mr475659otb.33.1579040502920;
 Tue, 14 Jan 2020 14:21:42 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e21sm5029774oib.16.2020.01.14.14.21.40
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 14:21:41 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2209ae
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Tue, 14 Jan 2020 16:21:40 -0600
Date: Tue, 14 Jan 2020 16:21:40 -0600
From: Rob Herring <robh@kernel.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v8 05/15] dt-bindings: arm: Adds CoreSight CTI hardware
 definitions.
Message-ID: <20200114222140.GA20488@bogus>
References: <20200113213149.25599-1-mike.leach@linaro.org>
 <20200113213149.25599-6-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200113213149.25599-6-mike.leach@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_142146_973854_195DF291 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mathieu.poirier@linaro.org, linux-doc@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
 suzuki.poulose@arm.com, liviu.dudau@arm.com, agross@kernel.org,
 robh+dt@kernel.org, maxime@cerno.tech, sudeep.holla@arm.com, corbet@lwn.net,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 Jan 2020 21:31:39 +0000, Mike Leach wrote:
> Adds new coresight-cti.yaml file describing the bindings required to define
> CTI in the device trees.
> 
> Adds an include file to dt-bindings/arm to define constants describing
> common signal functionality used in CoreSight and generic usage.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  .../bindings/arm/coresight-cti.yaml           | 336 ++++++++++++++++++
>  .../devicetree/bindings/arm/coresight.txt     |   7 +
>  MAINTAINERS                                   |   2 +
>  include/dt-bindings/arm/coresight-cti-dt.h    |  37 ++
>  4 files changed, 382 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/coresight-cti.yaml
>  create mode 100644 include/dt-bindings/arm/coresight-cti-dt.h
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

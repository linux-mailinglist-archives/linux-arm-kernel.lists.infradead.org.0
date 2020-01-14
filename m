Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5092813B5E0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 00:30:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jsy21HUCXrAg0aFmkaHeCKhTKhnVnLsRBJBWKvXRi8I=; b=NWfu839QIQPmVn
	37zv8ITeA9V1uzo9W0Zx7mrzHLwOJRLziusv3f1WnNxiOlkW4XnfOVu4gPlE9eVSszofUgcJL3AZd
	+1dcsMwMrqdN42rM7TBU+EYI8R2kSC/kdLEOJc94lIDbV7pOwFdBwmuCSn/JvxC1jSG1OMCHHfD/E
	gT+mCanXTJNmuCpmIA/Jl2OkzUQrOgJ29SbrLEzY974f0h9z1zN1yeik49bf4kC5kqTdyNG3dHO+A
	CY3xXW6FNEFkHsijnELBjosI3G5yET925ZnFcUhqY+GMu7Y0RbRa3DpzZOdrvWVDy3Ga9D7nTnRfX
	Tz9uQ5jRn7FAGC8E9aNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irVdo-0001PG-DC; Tue, 14 Jan 2020 23:30:32 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irVdd-0001OE-Nn
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 23:30:26 +0000
Received: by mail-ot1-f68.google.com with SMTP id w21so14403623otj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 15:30:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OD3k/3afce55aKrw/+Sox/ckv7HTxlsRWXlz74Axqv4=;
 b=BOq0OY8PZZX6Qs3myFZi7GZursrbZXcmuknuqsf9jgS7ED87x4MNo2LqYN2GZzWNQd
 MPtdRZNJoBdhaUsrdVZrlI07fQmwTBb1QqumMCLcUv+5kvJqHyVU9sReP23dO8bu/Ioy
 a2jK3ehQJleOHDwLapln1A0hMFdEJzTrX5Ir/3FTtq5prbR2fr3C27YSohQ3PVOu3qpC
 ducWjBGbDx3vpE1zbJuOpmCK0QvBolEpKLDb49SXEGLQ4ARI7yuGNbOHQ+4S70bXr/7P
 qGXrXib5UiTRmlD3vfijZuaelGcPcUMKyO5ErH4ZjMouyBH1pHFbTsvIZCKwgY2w0TIp
 9hUw==
X-Gm-Message-State: APjAAAUWu3rnCsfI82ofTPj8wIF23nFYMqiY+K/5mwC2SV/P0knvUqev
 HqLHIRKJfChYmBbaCI9sf+2/w1E=
X-Google-Smtp-Source: APXvYqyxcEwVEmFQZWACNmjUqJrB92b+ZPVriEtvKvGfGRzeh9/7wzWw6C2UZ6ZpEF2AEJEOSssT4A==
X-Received: by 2002:a9d:664a:: with SMTP id q10mr629239otm.99.1579044620914;
 Tue, 14 Jan 2020 15:30:20 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id d17sm4606180otf.35.2020.01.14.15.30.20
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 15:30:20 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2209ae
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Tue, 14 Jan 2020 17:26:49 -0600
Date: Tue, 14 Jan 2020 17:26:49 -0600
From: Rob Herring <robh@kernel.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v3 1/7] dt-bindings: atmel-tcb: remove wildcard
Message-ID: <20200114232648.GA16276@bogus>
References: <1578997397-23165-1-git-send-email-claudiu.beznea@microchip.com>
 <1578997397-23165-2-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578997397-23165-2-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_153021_773407_191A5453 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 devicetree@vger.kernel.org, richard.genoud@gmail.com,
 radu_nicolae.pirea@upb.ro, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, robh+dt@kernel.org, linux-spi@vger.kernel.org,
 lee.jones@linaro.org, Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 14 Jan 2020 12:23:11 +0200, Claudiu Beznea wrote:
> Remove wildcard and use the available compatibles.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
>  Documentation/devicetree/bindings/mfd/atmel-tcb.txt | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

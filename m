Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A06139EAE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 02:00:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w1KPOQiHYF2Ovtz9rtvPXhwvGrRawr0xNu3kC1yD3j0=; b=DCWchVVTgykLpa
	iMhXIdj6K1JF4qmyUijLtjXWRS3XXu0AX1CBZzdXFvRNbRMkXQK+r4eXvFEVMw5N0/e3N42rpsp18
	78RdH4DB3EMEqMext5pZLuhuehLBB9RI17zcWffXVEh2D7WxAvPYIl+u1zkFuYKjTpsZd99202d+9
	nG81u3bn77AIJJDcw04WLBbjDVQwsbQwtncBlwTNPUXACQxwoKw83bjr6Lozzq1WHFzpkFA16b/Xu
	u1Z6ObBN7hh9LqoxaGfjQuzaBN+GE83SepA8RkJBGt97pD+JqtzI08ZX6dltP/8KbTdG7SjqpyJjl
	x9pXP37D/919iq3gYEAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irAZ6-0002vx-16; Tue, 14 Jan 2020 01:00:16 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irAYx-0002aR-Eq
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 01:00:08 +0000
Received: by mail-oi1-f196.google.com with SMTP id 18so10223875oin.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 17:00:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UiO2+Fp93HhiZmZTyPCKddyYzvj9rECWLiqMRlRa5BM=;
 b=pBNX9HPVOXUl/4vqpdgrdx7/959gDaxRybxrvIJnGlTlAcZQRQRdqBNyW5hkOXNSUS
 XAC33KZw7ZJU8TgswIjncRtvu/hn62MGjeCrEPTkMfV9WoZub0CnsDtq+f2BmFunEfYh
 9SjlZaCYQ+rje50wbm+mK36NxvwkNXZnOEUd+Uj0uV+Hwx2/Sa82i8+EIJgilS0h25K5
 myk+uBu9lOJ8kUZkyT8OEFRHE2R30WMDUJbhM6qyzQNCs7OnaFEcRl7cOjaPlw5nyfQE
 Ka2iMbmYmpXGqf+kU1HDezCe55LA6EByfO/tS7WNHQZkni/So1liubku8lp1koTD6U9G
 u9FQ==
X-Gm-Message-State: APjAAAV4ZFod9VTOmp1Jt3tzCmJRRAZN7tA8f07cQzrvsiE8LwouRP19
 35/rFaM6+uMkb3MGhlusNzk1v24j6g==
X-Google-Smtp-Source: APXvYqwcb5fcoELEnuRXcZ53bJyN2w2UnJq41ZIK/BbSTdlW/ubtG1V6DY4a9WCNEC3VVLDJ7FktCw==
X-Received: by 2002:aca:a883:: with SMTP id r125mr15734860oie.56.1578963606424; 
 Mon, 13 Jan 2020 17:00:06 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u18sm4798953otq.26.2020.01.13.17.00.02
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 17:00:03 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 220b00
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Mon, 13 Jan 2020 18:18:03 -0600
Date: Mon, 13 Jan 2020 18:18:03 -0600
From: Rob Herring <robh@kernel.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v2 10/17] dt-bindings: atmel-smc: add microchip,sam9x60-smc
Message-ID: <20200114001803.GA13249@bogus>
References: <1578673089-3484-1-git-send-email-claudiu.beznea@microchip.com>
 <1578673089-3484-11-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578673089-3484-11-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_170007_509544_D9D4AF05 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mark.rutland@arm.com, alexandre.belloni@bootlin.com, vigneshr@ti.com,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, pmeerw@pmeerw.net, miquel.raynal@bootlin.com,
 lee.jones@linaro.org, linux-rtc@vger.kernel.org, lars@metafoo.de,
 richard@nod.at, ludovic.desroches@microchip.com, wg@grandegger.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 tudor.ambarus@microchip.com, radu_nicolae.pirea@upb.ro,
 linux-can@vger.kernel.org, robh+dt@kernel.org, mkl@pengutronix.de,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org, a.zummo@towertech.it,
 richard.genoud@gmail.com, linux-spi@vger.kernel.org, vkoul@kernel.org,
 knaack.h@gmx.de, dmaengine@vger.kernel.org, eugen.hristev@microchip.com,
 Claudiu Beznea <claudiu.beznea@microchip.com>, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 10 Jan 2020 18:18:02 +0200, Claudiu Beznea wrote:
> Add microchip,sam9x60-smc to DT bindings documentation.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
>  Documentation/devicetree/bindings/mfd/atmel-smc.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

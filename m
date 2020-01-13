Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61AF2139D8C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 00:42:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WDU7LHj+vQNXozcjb4Y+VWEKlXYnE44pr9ox+rs59gg=; b=lJJkvXoFJAnxbg
	PBk1rDRds1wgMZK0XEXNydLV6VXQcCNowd0btH53yStPXCTeCC9BroSI8QaE6GzHCAS7esS5f98or
	y60BokZ8MyOUU957YL6PeenOD1Qd1ZAHDbNfyygNyXLQJ0T1MkbS0Ba9OXKDpRYh36Z+w3ksoKGMQ
	YYVJnfwZXiCaSNvq8Kf9tuPIFfVm1527FvMK3dcGZB05srDJjBlOfxeGBfgFozRAfpsgq+LMbPzwe
	2hboS1E4hgsdYANgF8kLdkoZJIoPpnBvhn3V0i3R2JRPDxn7vrE3Drr1PTOCnZFG/T7EfdqJvVVfZ
	e86oSTfjpZIzt9jlpJfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir9LU-0004XZ-HC; Mon, 13 Jan 2020 23:42:08 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir9K1-0003Td-VU
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 23:40:40 +0000
Received: by mail-ot1-f67.google.com with SMTP id r9so10744828otp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 15:40:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1hWr5fTf0UvM/FdokqnbY78OahK5vgKtckbIjPFsKcM=;
 b=bAAdAjgOsjNejHFJc9OhT7ctnwBGgFOf/J5WIBT2Gak3RMVKJ8cqWy2kci6T9dg24r
 4sEDlWzK2UOKghops4ItRjx737cWDfygGUVdCzUZN/k1QQolqW6++XxFa9PM5iThmPJc
 cPFTmCSjgM1yP6PtgGlkceu4k4XepE0QvL24QuZjSx2IW0+IriHpFPBlFoOWRN2WXRwe
 hXkKck5enAvn1cCz19wuCRLlXybDo4QeZU67BtTFOMEvixGrrmCmDdfcvRgiP0WzeGvY
 DPuKa++ouFHLsNb70PlljmFDDHU9wYRlQWSCQXgUezjTPAiWfO3uieMVqJwv4HtggPUD
 uzuw==
X-Gm-Message-State: APjAAAXdHOkOxM4agJ56v6/TEixLT5nK7a6FWzzHNbO1d4fpS6GaR/hm
 X3PgJ+YfF7Ls9xAAdZ1ezMzRFlxSuQ==
X-Google-Smtp-Source: APXvYqwMAQNPMx+B8ypLUVSqpvk7Cn3nRKUWKv4WLSW44T9aV3JxDtf/uXuwZbaPutNUwSJvnoyVkw==
X-Received: by 2002:a9d:12a8:: with SMTP id g37mr15195448otg.261.1578958837037; 
 Mon, 13 Jan 2020 15:40:37 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r25sm4721829otk.2.2020.01.13.15.40.35
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 15:40:36 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 223f23
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Mon, 13 Jan 2020 17:25:51 -0600
Date: Mon, 13 Jan 2020 17:25:51 -0600
From: Rob Herring <robh@kernel.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v2 05/17] dt-bindings: atmel-isi: add microchip,sam9x60-isi
Message-ID: <20200113232550.GA2344@bogus>
References: <1578673089-3484-1-git-send-email-claudiu.beznea@microchip.com>
 <1578673089-3484-6-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578673089-3484-6-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_154038_051294_60C20A0D 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Fri, 10 Jan 2020 18:17:57 +0200, Claudiu Beznea wrote:
> Add microchip,sam9x60-isi to DT bindings documentation.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
>  Documentation/devicetree/bindings/media/atmel-isi.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

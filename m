Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA8D139E27
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 01:26:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PkjkoRhyhjkafy/bA+4OMG+OxclaqEUKtblooLf8ToM=; b=YUPS35muU5jvYX
	6HmCd9MErnjBJIufCFwx1mDh14n0eDxdf3eZXydPY/Puup6ER0DJFHxTtc0eyKvFGfe//IyXydFSq
	Bsvg4ZlOmzzAC+vvjBV3DMDQMJL0BQTof5aArYTmp5GPTTzKDUk0ZnwkPq3ox1DaFeCAUW43IMspw
	pLWZDMMgdnt/v1C307PIMQXVIxpPNxyPl0GhqtRLIWCXdd1hurMQeel5rD1/j5DgeIT6PO4brLz8K
	O01HuGYqRegj5qeI5DkvccP9uTo+1BsIfSSOzgQFPRdoQhmQOhxJ79j5+9XmZW1oj0g46AFsyOMPx
	rNHAtVlZPeoXvVDMxkmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irA1s-0006NJ-7u; Tue, 14 Jan 2020 00:25:56 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irA1M-000673-9o
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 00:25:26 +0000
Received: by mail-oi1-f195.google.com with SMTP id l136so10203092oig.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 16:25:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nnCP/oi7Z0mxzEO5kxr1fVYeBOYXbt9IQu/uVhgHHc8=;
 b=h6M/dbsTzNWe2hjGwHd3o4oXxkpC7MGYz/M333jO0wEhBxprrX/ub/zUkiRlfucsjO
 9n1+gwU357mnrbJrRpwpqDlTwm83+dB5KUe96sm577+6eK5+WSRQX/Wj1xElKYoIfk5U
 7fk3VxUFMXw3A0vcZv+FWN+Y+OQ/t6KLOPPMyXQ44/ZMJKGYPTZUBV8YUBmKLongbWwF
 EIFXwpI1D7GMe8BVTDGoVuiBImALPG/B4twIxy/D3RZYXkhzDsC3NCGYssghvp+DVG15
 sXmXDITCT7F/rw3R7dcco5QAjHx2EMlo77FSmXBprxogczBWVFs5e84d2iomn3o2tGjD
 qIHw==
X-Gm-Message-State: APjAAAVMPRbCBAgERrWI52bmlKq88p1eepe9pkG6KlY4r1VPyxtHA/GM
 TiuRfWt7Z8joxdnaznEvTBGp2oGs6g==
X-Google-Smtp-Source: APXvYqzELMMDCJ5kvOCa7zxmMTQ+liSWxEjZbIZtn9PfzIkVdFSrNFWAPCG/Zzdyq3vI59P7YHmSTA==
X-Received: by 2002:aca:1801:: with SMTP id h1mr15252086oih.16.1578961523388; 
 Mon, 13 Jan 2020 16:25:23 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r205sm4095831oih.54.2020.01.13.16.25.22
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 16:25:22 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2219cf
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Mon, 13 Jan 2020 18:16:49 -0600
Date: Mon, 13 Jan 2020 18:16:49 -0600
From: Rob Herring <robh@kernel.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v2 07/17] dt-bindings: atmel-matrix: add
 microchip,sam9x60-matrix
Message-ID: <20200114001649.GA11024@bogus>
References: <1578673089-3484-1-git-send-email-claudiu.beznea@microchip.com>
 <1578673089-3484-8-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578673089-3484-8-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_162524_351376_06982C07 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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

On Fri, 10 Jan 2020 18:17:59 +0200, Claudiu Beznea wrote:
> Add microchip,sam9x60-matrix to DT bindings documentation.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
>  Documentation/devicetree/bindings/mfd/atmel-matrix.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

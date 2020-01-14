Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F97139DF0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 01:17:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JHQsvusyxTj76dgpCWoOXbNtxnosbvOu2yBeP8LQL1s=; b=jdW1PE6ocD1gCT
	ZKlPjzfiiBGRje5a/TZCQSRIOCD2NtTY4WVHKjBG+RaRNFN37o4CkydC1A9GDTbsiIvJJo9FWxmJr
	Ut8NFueeCKdst/2fdtzD7PKXomTiy6emvHFhEKDavvEzvinRhdXYI6FQqzz0iSKVjZJOCYLrPa7Cr
	7IEbzRLVwRzRCP2BYAFv0c3Zok/a+G2rUjoUDtNJ+Rt1dosQRA91aR0I0hp84iFYHUDKyY2pZdxAt
	Wt7poFBydizIoEujoJqYiZCMbNKCLBduQAzAFCbrCiy3Oisu/+nX5QaRSmBUB+JLnbVfH4XEPB1MW
	qW7DXmaZbo7ve5hZazDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir9tv-000110-0N; Tue, 14 Jan 2020 00:17:43 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir9tY-0000rV-Rv
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 00:17:22 +0000
Received: by mail-ot1-f66.google.com with SMTP id i15so10868599oto.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 16:17:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PuZkmizV0FjMntSV+5swUbzzYgbKg4dX9XcvnF9x9qQ=;
 b=f11kh8jZrzhJGH+eucGwxEQwZa4l5e5zZWlQXQoPhUsiF7/QdjaN5j39Kt38344DnT
 ggb0NR6Wg0HrmtSZ5ExGd5y6w2cD4qVFoE3HgxRhxF6de2I8F5wxmJmN5y0K9oLOX9sf
 gW3mqBxOnOMcSjtgPDAG+VXm37tF5h2HdeKk8MpRpKdyd53DS5Vhbr4axL3KosYu/6io
 B2+KFrNyluzm1wK7lwJ0b6fVS99mG5CwMAQz5uGs9MaApx+kqIOui/L0jGhCdKs4VwZj
 KzzE9jOz1IoTBHBjcHcWGjzER9qV6hjeIYEim+WFtbJnLsDraaGd3F0gLYhQGbvWPLn+
 R7uw==
X-Gm-Message-State: APjAAAXR9iyHCozTT6hf9M/wd9kU8fKsTFloL4+vA5EemhsDKmJ0daKA
 HyS97WhtV5T+CsOSlUzvNjQ8ByV0zQ==
X-Google-Smtp-Source: APXvYqxlIznQdsYpFiY2NjcjPL2MmjGBo52gbIoxLiqziaC+Gq8+mE03V41YooYvlnJBepUyhOCAcg==
X-Received: by 2002:a05:6830:1d91:: with SMTP id
 y17mr14253835oti.276.1578961039594; 
 Mon, 13 Jan 2020 16:17:19 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g25sm4757366otr.8.2020.01.13.16.17.17
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 16:17:18 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 223d55
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Mon, 13 Jan 2020 18:17:17 -0600
Date: Mon, 13 Jan 2020 18:17:17 -0600
From: Rob Herring <robh@kernel.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v2 09/17] dt-bindings: atmel-sysreg: add
 microchip,sam9x60-ddramc
Message-ID: <20200114001717.GA11996@bogus>
References: <1578673089-3484-1-git-send-email-claudiu.beznea@microchip.com>
 <1578673089-3484-10-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578673089-3484-10-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_161720_899790_ADE334FC 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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

On Fri, 10 Jan 2020 18:18:01 +0200, Claudiu Beznea wrote:
> Add microchip,sam9x60-ddramc to DT bindings documentation.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
>  Documentation/devicetree/bindings/arm/atmel-sysregs.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

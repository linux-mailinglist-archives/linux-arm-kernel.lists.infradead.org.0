Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B021D027C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 00:44:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=82odc2uL0i7NHt7bcscEbxDG5SGHJbRZSdX6xnw66Wo=; b=e8IWcN1z3eWbas
	X00VnqDNOZ30PnNEXeQOPy9JPCqXYX/1DJ0a6IixJ/iYilLj5I3bfxS5EIjskXHifWvqIjev2PoZQ
	5xoaSsZO6PkSViUxiyIxSZEA+gKN1GC8BtcANGZExAMJYaqwWWxLhxUY5zEclpXWwGfIf7ngkjSLq
	K2OuAfbJjtjl1Ar/OpIHzCmZuDE8G/Y9TSm5oi8bpSfzHz79q0IWuxG2tNRiEZjHTPjF1zGIMf6w9
	5Z8Uc71EACsAoDsi//xAaBuLL8tS0DXe64sDddijDINbBadnYmqlJIxCl6TE6vN9XJNzhmSRDfy5A
	2NhRdYmXRErOCEguelHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYddV-0000Qk-LA; Tue, 12 May 2020 22:44:29 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYddL-0000P0-OF; Tue, 12 May 2020 22:44:20 +0000
Received: by mail-ot1-f67.google.com with SMTP id d26so645697otc.7;
 Tue, 12 May 2020 15:44:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uumrDYsgwLaDX3HJhkdtaUmDr4MtGqDPU0CrAV2rD6U=;
 b=o6P9O7+GUFEAnlaFQYg++B/rlkYKb0+jRvIAkec7UIzEKTKbBb7/2AqIg3M3dAi1Mn
 qyxrzf0nRThCODOXpXw0i75wAsBhnoKZhv1vvvOyVhXBBVmGXLY2CoGXx9ObEgMFpPTv
 giT1/MWdid++d1NMoWxTWaw/8/UM4aRUWmLOFSl1tyzRfT7Ae8TtvgFfT11IYeZwluc4
 ZSYRq9bZMJXOLJglczuO1vDBvviRSfxvPIEXChsnCW9tHwd3bZzpvkS6e1JrrWNxMOG6
 CNF/CXwqMU+I5XJ2rGaJyJLLX8bw+tkQkM61t+/lHXilkLvPy/S5U6E95o+UtkdlHStY
 wL4A==
X-Gm-Message-State: AGi0PuZhij8V/EyHqN2y+u6X35/vWtKPLXbAYvchORCTHhTH7hAxIqeb
 6uXAS4jTS5ESAEdqIH6jWw==
X-Google-Smtp-Source: APiQypLudLaDx5Hvkugopv+ecKjUtr8tCweVHIWbZyoNgK4NPkO3hFmOEWUVAp12V5dMbReJH6+0XQ==
X-Received: by 2002:a9d:69c9:: with SMTP id v9mr19153655oto.267.1589323458777; 
 Tue, 12 May 2020 15:44:18 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w3sm3779500otg.24.2020.05.12.15.44.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 15:44:18 -0700 (PDT)
Received: (nullmailer pid 11405 invoked by uid 1000);
 Tue, 12 May 2020 22:44:17 -0000
Date: Tue, 12 May 2020 17:44:17 -0500
From: Rob Herring <robh@kernel.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH v7 1/2] dt-bindings: mmc: Document the Amlogic Meson SDHC
 MMC host controller
Message-ID: <20200512224417.GA11220@bogus>
References: <20200512204147.504087-1-martin.blumenstingl@googlemail.com>
 <20200512204147.504087-2-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512204147.504087-2-martin.blumenstingl@googlemail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_154419_786778_411835C5 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, ulf.hansson@linaro.org, jianxin.pan@amlogic.com,
 linux.amoon@gmail.com, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 yinxin_1989@aliyun.com, robh+dt@kernel.org, linux-amlogic@lists.infradead.org,
 lnykww@gmail.com, linux-arm-kernel@lists.infradead.org, jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 12 May 2020 22:41:46 +0200, Martin Blumenstingl wrote:
> This documents the devicetree bindings for the SDHC MMC host controller
> found in Meson6, Meson8, Meson8b and Meson8m2 SoCs. It can use a
> bus-width of 1/4/8-bit and it supports eMMC spec 4.4x/4.5x including
> HS200 mode (up to 100MHz clock). It embeds an internal clock controller
> which outputs four clocks (mod_clk, sd_clk, tx_clk and rx_clk) and is
> fed by four external input clocks (clkin[0-3]). "pclk" is the module
> register clock, it has to be enabled to access the registers.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  .../bindings/mmc/amlogic,meson-mx-sdhc.yaml   | 68 +++++++++++++++++++
>  1 file changed, 68 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdhc.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

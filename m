Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB3B9637F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 16:32:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gpk5C++qTbgI3UCm3RXI1h1bk5QldzxpVMpx4zf1GEo=; b=O5LYP4DgSEUhcn
	4S0GH4xYlbHGHKUjUYfGTxLxL8t2pRyR4+7ZMFCXfolugaORPIqNxfPXP+DFUhphRX6UO0gBs5YyV
	F+/eUa4jFcX6buK0W0+4BbEyuMDwtyWSjAkHNU7qATWmXDMhQ2J5OhaLimxmvNBcEpHVr8pG/kVd1
	v0X/uRsHZPZqv4e5Z2Xot8tx5vJrxLoWwI0dZc7/TX+Mo6B9QKfS2aijmDOshG25qOPD5HgAkfo8Z
	YJ5/pF2mJ434R2C+mLjiMMHO7O0yQrjLHWUiGD0x9KXXDtSPRgFe0ZtAqup0UBHIsO6zg3wEcB6mU
	NXRavTWkky8b7Q/Wnn8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkrA7-0007X1-HD; Tue, 09 Jul 2019 14:32:07 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkr9x-0007WW-8r
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 14:31:58 +0000
Received: by mail-io1-f65.google.com with SMTP id j5so24231710ioj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 07:31:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=u2Bhzhxh3FEszzLNG7jCV0i48QmfCa45j1OtQVUeCY4=;
 b=r7+Kd7sldStdUEiP/XfbDoAP3KArc2HS1IgwaFmJXg6B6A5JCh6i2t/lkJf+ygHuhd
 A2imueRhswiToJw8EYLmdJo2x2HpKHZvaAp2E4n0d+n//p2Dh+bqrtqLztfdsbxSPUiQ
 WznbmfZzDra22/JUCZXi8umvy7qbkXQ31pKRKrXkqSgbVyq+yjjjpIuFSg5w3ixriv6X
 t1Oey7q+rjXXKJ/TKGILDByBXjexZWCNJIvq1CCkybcygVZ91Y1wd9vmgZxuASV0YW9I
 agvCWMj3mgsgbrfo1G0zksFPimx/0r1eXR2RJ7Q0i2/WLraHLDChN+b1e8AoLEEZbRTW
 r5FQ==
X-Gm-Message-State: APjAAAX67o9nL6zt8Hq+j3QIR210MZUe9ClJV16hej7Cb4n0ovodCnO5
 SGaRAyKcNWq5+4oaI7bZNA==
X-Google-Smtp-Source: APXvYqz6A9Rq1TzdM0KoNY1rhrBGz4Dyqy8mBPpR0tkcaRVUCsVwOskSgLSeBkQcP4skCS0dni35Cg==
X-Received: by 2002:a02:a595:: with SMTP id b21mr6298813jam.28.1562682716084; 
 Tue, 09 Jul 2019 07:31:56 -0700 (PDT)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id z26sm22721257ioi.85.2019.07.09.07.31.55
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 07:31:55 -0700 (PDT)
Date: Tue, 9 Jul 2019 08:31:53 -0600
From: Rob Herring <robh@kernel.org>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [RESEND, PATCH v4 2/2] dt-bindings: cpufreq: Document
 allwinner,sun50i-h6-operating-points
Message-ID: <20190709143153.GA30638@bogus>
References: <20190612162816.31713-1-tiny.windzz@gmail.com>
 <20190612162816.31713-3-tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612162816.31713-3-tiny.windzz@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_073157_314157_6FC8F970 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: nm@ti.com, mark.rutland@arm.com, Yangtao Li <tiny.windzz@gmail.com>,
 linux-pm@vger.kernel.org, maxime.ripard@bootlin.com, vireshk@kernel.org,
 linus.walleij@linaro.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 sboyd@kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, gregkh@linuxfoundation.org,
 mchehab+samsung@kernel.org, paulmck@linux.ibm.com, davem@davemloft.net,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 12 Jun 2019 12:28:16 -0400, Yangtao Li wrote:
> Allwinner Process Voltage Scaling Tables defines the voltage and
> frequency value based on the speedbin blown in the efuse combination.
> The sunxi-cpufreq-nvmem driver reads the efuse value from the SoC to
> provide the OPP framework with required information.
> This is used to determine the voltage and frequency value for each
> OPP of operating-points-v2 table when it is parsed by the OPP framework.
> 
> The "allwinner,sun50i-h6-operating-points" DT extends the
> "operating-points-v2"
> with following parameters:
> - nvmem-cells (NVMEM area containig the speedbin information)
> - opp-microvolt-<name>: voltage in micro Volts.
>   At runtime, the platform can pick a <name> and matching
>   opp-microvolt-<name> property.
>                         HW:             <name>:
>                         sun50i-h6      speed0 speed1 speed2
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../bindings/opp/sun50i-nvmem-cpufreq.txt     | 167 ++++++++++++++++++
>  1 file changed, 167 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/opp/sun50i-nvmem-cpufreq.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

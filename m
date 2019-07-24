Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D7E73E14
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 22:22:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3d63iwtuP1648GmC9tyuE/VKLwoYqKk7keIQDeg8cZ4=; b=gM+6Vhdz4aIIta
	ShJaKyhZoj50Usy4wfBMcT2m+SfxjBrTA/kaDpH/Gg1y7SmopDdKnMVxI4T8dCGtvDd8hBnLgqw+V
	8+qqbBub5TIAvljw5TZTfSfH5yFLW1bjIcO/eSw7SGv8jykQ4ADeI5ULaJWZNfnXScNgdHFvqD9f0
	p46t7r8XYb+nuHpoxUdLbxBQrIIigkwBu3FwK4Q84AWwmrhrGm4Z+7jskxPocvmC3ot+7T9Cv9QXz
	FAxxfHC5z5cxgxX1aISD1HPutitUTAdcKm5ZPAeTb1YRB9cFEe/UUutkbgaE9OqaMygRwT0rfaiRQ
	Ne3qHpFgEAVIn1+On34w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqNmN-00049A-8l; Wed, 24 Jul 2019 20:22:27 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqNm7-00048U-5V
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 20:22:12 +0000
Received: by mail-io1-f65.google.com with SMTP id g20so92339923ioc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 13:22:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/30AS3nqkWWu+3IMVyX4v9nQ/uVi14wrBVbKbNIwDH0=;
 b=YeceZYgczkW7DqXw2A2/FYYGRhMcSqYyu/zVERW0NUcg1mX5GGFU6Tjt5DIOU38mRY
 KCBe3/cGB+f0CyagYsucDEmCC2BrQJTvUERPWZZH/rAMuMB9tVUCPcdEU2jMu8I9y9aS
 E+W8dIqyWQRkeGhQoL7W3j6X5pLtmO4EpdfOpT/y0rSSEU9Gc1s4LjREEDwgB1rTUObv
 HZeLO0xatiJAiCGCm4ppDrzR947Pw2BNbIu/UTqfJjEhloqYP/cKRIViigkazCX2jR7a
 fHt9B6iqFJ77SumkZQxSupa8fr09ZeozS/XzBcY1+t6GttKMsfwLOHn2c6oxXcOEfdlC
 MKlw==
X-Gm-Message-State: APjAAAUp4bDA0bBqAZWYXxtEwoH34Wa7l3tU8oT8dqnH3Ls7XBik4cAN
 XICpO14smuHqw0KrHh/Y8g==
X-Google-Smtp-Source: APXvYqw8/yMFLvKjW7NMwY+ZvPnqeFIopuxH5djPlnJEGbRQVjM6/Fd6l3umrAZVnmBM4ywFQ0VJmA==
X-Received: by 2002:a02:b395:: with SMTP id p21mr88532316jan.31.1563999730430; 
 Wed, 24 Jul 2019 13:22:10 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id x22sm33617648ioh.87.2019.07.24.13.22.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 13:22:09 -0700 (PDT)
Date: Wed, 24 Jul 2019 14:22:09 -0600
From: Rob Herring <robh@kernel.org>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH v3 1/9] dt-bindings: i2c: at91: add new compatible
Message-ID: <20190724202209.GA31102@bogus>
References: <1562678049-17581-1-git-send-email-eugen.hristev@microchip.com>
 <1562678049-17581-2-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562678049-17581-2-git-send-email-eugen.hristev@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_132211_204164_52727DC4 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 alexandre.belloni@bootlin.com, wsa@the-dreams.de, linux-kernel@vger.kernel.org,
 pierre-yves.mordret@st.com, Ludovic.Desroches@microchip.com,
 robh+dt@kernel.org, linux-i2c@vger.kernel.org, Eugen.Hristev@microchip.com,
 peda@axentia.se, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 9 Jul 2019 13:19:29 +0000, <Eugen.Hristev@microchip.com> wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Add compatible for new Microchip SoC, sam9x60
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---
>  Documentation/devicetree/bindings/i2c/i2c-at91.txt | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

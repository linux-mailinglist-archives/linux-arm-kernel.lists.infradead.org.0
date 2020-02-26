Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC10170B36
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 23:07:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MY8jBXme1ABCK42ERTQbTFwHph0FCn8B5xproAz/64I=; b=il3GlVFASWX5c8
	t7J4G43Q9wjN5P6k92qE1abK5ah5YWG5NY9bVB7lUzSiF2TymxAI7z27TWlIgi1Vh8ApBpF9T1dj6
	8hu+uNT7NVNsqM3Iw5QlD5/pdqADti2dkqyRmc8B67ICaj3YvXHW/E1X8efUyBg09cM80q+9vSN0a
	hN9/qaWthjZoUOMiLm1/u9zGSS/b2TY7X+c79LxH1RQcifH2y7n+LHEsLjZwpnQ7KXIYd1Jhcumby
	YRmpKWPj0SHqKgN+xqRlSooj8fnV4uKL6cUEmQsvavu6ODhnfK6o7lo/m3T+Dr5PT1RpebPBNXk8Y
	3tj3EjEJWYy1BtPBiEDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j74q5-00066i-E5; Wed, 26 Feb 2020 22:07:33 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j74pw-00065v-HS
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 22:07:25 +0000
Received: by mail-oi1-f194.google.com with SMTP id c16so1203091oic.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 14:07:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mh9L6UBbZd077xS3dYC1Wgq1kmV8/0MwjWPhr3ALxzw=;
 b=ky3EUAAEx3pDjm5HFqanbZ94rEwaMqT6xXnhvdxnPEQrxjPu7H89zZZEQaKcPj1ceL
 N6KgvgCe7aqyXyMTV8ocqBfSx3uR5nB64QFIHzdlR9PxA31XP4Nmup1TVS6ow/AF/WKM
 0EFB1xmlIO7AxH/aUkX47s1U//Cxk716x/Cj3X40Ui47HUW/Qnk6yPZd7oRB+GGmVfc0
 lKOoYVAvf48nzaDt127Qsv3Lzeh0OrvU4wzBP79S2IevDbS/070Pu5nKCQcppyq/ihks
 swWJVsnKVyYyWD8AsLb9aW37m7/1Jn2afHeou4tqsla2/ajKNeqpBkGrSW3tEmNxktag
 IwAw==
X-Gm-Message-State: APjAAAWcSv9+ry2hAq+E/RA4xNiF27pZ6V1X5Ycp+0s74lp3UEO8Uj61
 d6DCa7B3Zm7gMK4mnJrVBg==
X-Google-Smtp-Source: APXvYqw1VLx2OrRQwWC2sH4XIbmcGTHpYpjGcFlcP4IOlWJurHfS6aQcTHXktgvzJUWnvB4nMfEaPg==
X-Received: by 2002:a54:4510:: with SMTP id l16mr969952oil.70.1582754843674;
 Wed, 26 Feb 2020 14:07:23 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j45sm1220921ota.59.2020.02.26.14.07.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 14:07:23 -0800 (PST)
Received: (nullmailer pid 18100 invoked by uid 1000);
 Wed, 26 Feb 2020 22:07:21 -0000
Date: Wed, 26 Feb 2020 16:07:21 -0600
From: Rob Herring <robh@kernel.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH v2 3/3] dt-bingings: pinctrl: Convert UniPhier pin
 controller to json-schema
Message-ID: <20200226220721.GA18049@bogus>
References: <20200222060435.971-1-yamada.masahiro@socionext.com>
 <20200222060435.971-3-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200222060435.971-3-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_140724_578672_9CDECE8A 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-gpio@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 22 Feb 2020 15:04:35 +0900, Masahiro Yamada wrote:
> Convert the UniPhier pin controller binding to DT schema format.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
> 
> In the original .txt file, there is a description:
> The UniPhier pinctrl should be a subnode of a "syscon" compatible node
> 
> I did not figure out how to represent (or check) it in dt-schema.
> I just moved it to a comment line in 'examples'.
> If there is a better way, please let me know.
> 
> 
> Changes in v2: None
> 
>  .../pinctrl/socionext,uniphier-pinctrl.txt    | 27 ------------
>  .../pinctrl/socionext,uniphier-pinctrl.yaml   | 42 +++++++++++++++++++
>  MAINTAINERS                                   |  2 +-
>  3 files changed, 43 insertions(+), 28 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/pinctrl/socionext,uniphier-pinctrl.txt
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/socionext,uniphier-pinctrl.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

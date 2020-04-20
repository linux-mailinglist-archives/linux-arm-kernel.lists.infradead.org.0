Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C209D1B1586
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 21:13:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nqvxOyq9L/mb700T1xHTxFp2cC6WuZUEvP/KMSEhAGQ=; b=nc9W++JUwjcc14
	EcFCW+E3s9bA7O5QfNSSK6k//YRsp5XDMrDZ/gfn+PU08szUKBBDPOE9pGJwb2APZ9enFmcWrWhOu
	1BFcrOEmuyWVd2YR3BJormEcHeqMFCVE018dvFhurMzQl5wchoNpXcBRrYibtumfAUIY7/R6Iq2oB
	Y4bQjMjlVoRqZLVngTS+svr/kw3j4EJSCQrAWQwM3XqUrqbidyx0T3+zp5UbJGpzL8R1gQGKc6Ka0
	1NRnayw6Cv1CCTh3w7R7+TfwyGCGtUm1viXLm87RcLmsB5NabVYGAl3+dkrfNWzNLEjVF7dW3ny80
	KMHMhrdl0CA0FfB6Xh1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQbqf-0003Mx-7J; Mon, 20 Apr 2020 19:12:53 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQbqY-0003MU-Dp; Mon, 20 Apr 2020 19:12:47 +0000
Received: by mail-oi1-f193.google.com with SMTP id r25so9845020oij.4;
 Mon, 20 Apr 2020 12:12:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mEdiyEyzF5/3OIaRLc3gV3pkykIsXa9nKV2IZYxgel4=;
 b=UEdyRTEriqko8MkpY9CRRt1wpdw2sq7ipUVBUjugu6IsKWT2xRIW41U9v7LKYuYPut
 jypwHh5wRivTicGUh1KNa2qdqIGL4m9wNfkMRjzvJdm2Uvx3oHPH0yh3LE7REigIWw51
 ESaVWF+jj6dsWmXnOJKv9+MwGCD0p96X+KX8YnAUKHk2uOSocwRNLjFTusVwWjGy/yDX
 3P+RCqHyqHkBIHuCMgiN2lzRuZvnxVda1RcIg7q+ielRXb4jZV1uWhBgofS/alY+Mkvd
 nq4K1DLe+kMFm7v2xEn+VGiJRFmNnWbOnUX/ZYRR3gI9xxgA3vhrb8S5MlGzG9SIBEK+
 twjw==
X-Gm-Message-State: AGi0PuZ06AQhzgGgn2I1TWFdsgZPQagpWrSM/qtEz3kdKPX6Y+YXzpj1
 j8ekU9g6r9BF735vKpruqw==
X-Google-Smtp-Source: APiQypIOTpxeJOVA9/QpCyaMB4NuAAYY4PvbIbTNDLbFynkqVjNurgkpjmad0ZzFxNEnYm/RIpvAMg==
X-Received: by 2002:aca:6042:: with SMTP id u63mr688459oib.179.1587409965183; 
 Mon, 20 Apr 2020 12:12:45 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id p5sm81101ooa.14.2020.04.20.12.12.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 12:12:44 -0700 (PDT)
Received: (nullmailer pid 31561 invoked by uid 1000);
 Mon, 20 Apr 2020 19:12:43 -0000
Date: Mon, 20 Apr 2020 14:12:43 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v4] dt-bindings: sram: convert rockchip-pmu-sram bindings
 to yaml
Message-ID: <20200420191243.GA31486@bogus>
References: <20200411122507.4040-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200411122507.4040-1-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_121246_463543_1ACBAE6D 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 11 Apr 2020 14:25:07 +0200, Johan Jonker wrote:
> Current dts files with 'rockchip-pmu-sram' compatible nodes
> are now verified with sram.yaml, although the original
> text document still exists. Merge rockchip-pmu-sram.txt
> with sram.yaml by adding it as description with an example.
> Make #address-cells, #size-cells and ranges optional
> if there are no child nodes to prevent yaml warnings.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> Changes v4:
>   Make some properties optional
> 
> Changes v3:
>   Document the compatible
> 
> Changed v2:
>   Merge with sram.yaml
> ---
>  .../devicetree/bindings/sram/rockchip-pmu-sram.txt | 16 -------------
>  Documentation/devicetree/bindings/sram/sram.yaml   | 26 +++++++++++++++++++---
>  2 files changed, 23 insertions(+), 19 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sram/rockchip-pmu-sram.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

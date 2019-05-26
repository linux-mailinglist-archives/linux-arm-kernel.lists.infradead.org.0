Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB912AA92
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 18:05:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UHXSnr8XAMpVgPA7PM+hzFxUYvoph3XiNoer/ZZEifI=; b=rrAfrvbQn8xTBI
	Q/efBZW/fftfBGZcof2COrmTWtwSsRZM6yRTtg9iTI9FwxDB30gYMvMnLV+w6eWH+IqWKB882tZhd
	KGPJPFmURd9Hqs69gQSs64moaT96z3kxLoANRiuZrxJQAJngXX2/dMNju7wnjM3Ay9UgeKEWAZbVr
	10ay6TFX39ML+E657u9fSaB8Ow4Ej/kbJVU40suZQYmke/rACuB3gALFma6AxvvHe26Ul99v2r1uP
	DrJdPGoO1+RaHAvYIGWKadO7Ai4ebbTXnV2bzwLR2gcqgXDBvnfu0LKhgk+Gv9QZRxzyPzk+WdAeD
	oBm/V2/coFllPAJGlc+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUvds-0000pP-AD; Sun, 26 May 2019 16:05:00 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUvdl-0000ou-3E
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 16:04:54 +0000
Received: by mail-oi1-f195.google.com with SMTP id w144so10293343oie.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 09:04:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jykIpBYCQi6zX4tPq4AomDQzhRlqunWT8OC4zFcA/5k=;
 b=dak5WVYkQHELSlLWDZCRQ7ST3muuvFkcDyNma46EN1U881KWvfD4jGsYqeYIvauTBq
 lhK7lYbx3RvNrjZnu8d6JW+gbC2403v5sH9zmAsuHl1blY4JRl8/GuomZ+qxg/WZaCHa
 MUHhJuxYaQA1J0Rt+GtZ5JJ3SApxPIi2LGhJ3XOT89UmWP+b4HSr7KaikT42DafonYgH
 XFLeCMhi3P8urt83pE5+TulHl38ys2HYIiq/bnG4Fayi/s+TOxX0+PcWY/6BnpeL1J4Z
 KGszGeZ7ZytAF5pAV4QVx3+i2eRHe+zQEMUTBs4hnMnB/5NPrlp4enp6uE3d4LFHCOCx
 HuJQ==
X-Gm-Message-State: APjAAAVBZaOUsnnOdfDyn9cVHAc5dAa2erNj86bTd94F2w0X6xREv1Gb
 sy8Pd9D56GBG5+JjHmL2yQ==
X-Google-Smtp-Source: APXvYqxnfdT5APY2v9FEfBObPQzQp0k19PxpIhJm97Wn/aiFQYzEEmK+/N1BH2rUD+h6N0ZrlyXoyQ==
X-Received: by 2002:aca:e594:: with SMTP id
 c142mr13040056oih.155.1558886689574; 
 Sun, 26 May 2019 09:04:49 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 63sm3358926ota.28.2019.05.26.09.04.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 26 May 2019 09:04:48 -0700 (PDT)
Date: Sun, 26 May 2019 11:04:47 -0500
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH 1/5] dt-bindings: vendor: Escape single quote
Message-ID: <20190526160447.GA31299@bogus>
References: <20190525134140.6220-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190525134140.6220-1-maxime.ripard@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_090453_138132_C5038BB8 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 25 May 2019 15:41:36 +0200, Maxime Ripard wrote:
> Single quotes need to be escaped in YAML, make sure it's the case.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

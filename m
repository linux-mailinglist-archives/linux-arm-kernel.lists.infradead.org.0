Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20AB71E32F3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 00:51:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SWKmyILUO8pPqF8/cbtNWp4bIwtVOO1DHFWh/Mbg2qc=; b=btuD4NaBpaSiWQ
	PbLoCRKqnQtZP9ezlEgulbH/rVq0TKGZ2X8Ct3+c6T8tSXKg6i4cIVFCOc11+NHL+yXx+ftZC4csz
	66BgsOQhUKTJc5vItKyhJiS5tNF5efEmqy7Am7SKqv0QwoDsKUgzmzi4lJAUVnLnZB8pXAKIwqyH+
	0HNEf+SV+BsGUuKn/nr175xFax/dRer25aEfFFKtjhhyjFzfHpgq0MgGAN1+lVBaOMtDCD8IJUSU8
	O2oBV9/lYdhD1pRWIFlfB+l+NCzkuYpuD0tHsORmWJOxyZ4wSIyzYOF8CMwpWIGxEYe9zY8uaEy6W
	eIuBwZ7LQjd8BJVS2Q7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdiPS-0004W6-Ct; Tue, 26 May 2020 22:50:58 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdiPI-0004Mz-W5
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 22:50:50 +0000
Received: by mail-il1-f195.google.com with SMTP id v11so4808060ilh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 15:50:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=OK9x5VtJCjk7ns+n8rJJ2eqoCOZIYQWVhZELo9bv0M0=;
 b=UY69ORgY18FkJRVw6qnVcjCYnppUHhzr9PL0C5MG4jrDArKOudnJb5D8wqsYlNYqlz
 7YnGyIyGdCiqU4pgNU7JLHbn8Koct59Emo0VD3J+nc66NPiJBTOrwcrH3xDnDjSDVoeY
 hHrqPQbUmHDWgrO5ofX8vRhOIcyvPWZo4LqhzeBf2RJmAmWPnBsWqHxz/BrbhYbod4MP
 tWIT2h6WnQBtVHAeV7P6JsR5RmLXatmb3CLh8yRCSrepc6gmwXtsryc6jc6yHHFGchsv
 psBF7acW7TZUpaQEjDU+T6kaeXGlNmbqaFmOhHQ6RS6MaHeMZPU8RrUxlfjEe/OPFzI8
 jtlw==
X-Gm-Message-State: AOAM532dLKfOg6M6LwT5aCZv4pe3f1Bx6ZCNpc/VLgzsHWET2aunN488
 KHSCL4TBVH81aprOFmWuJg==
X-Google-Smtp-Source: ABdhPJztTmAtLvK+aSkJiWcjWBiMfCXKr7NUWfYDNNlMqP/XiIh8cqEiim/xZKuMj+BxyZrpFjDSLA==
X-Received: by 2002:a92:5ec1:: with SMTP id f62mr3408821ilg.80.1590533448280; 
 Tue, 26 May 2020 15:50:48 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id k18sm477196ioj.54.2020.05.26.15.50.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 15:50:47 -0700 (PDT)
Received: (nullmailer pid 534722 invoked by uid 1000);
 Tue, 26 May 2020 22:50:46 -0000
Date: Tue, 26 May 2020 16:50:46 -0600
From: Rob Herring <robh@kernel.org>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH v5 3/5] dt-bindings: microchip: atmel, at91rm9200-tcb:
 add sama5d2 compatible
Message-ID: <20200526225046.GA534667@bogus>
References: <20200519083716.938384-1-kamel.bouhara@bootlin.com>
 <20200519083716.938384-4-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519083716.938384-4-kamel.bouhara@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_155049_035853_BC15B999 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-iio@vger.kernel.org,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 19 May 2020 10:37:14 +0200, Kamel Bouhara wrote:
> From: Alexandre Belloni <alexandre.belloni@bootlin.com>
> 
> The sama5d2 TC block TIMER_CLOCK1 is different from the at91sam9x5 one.
> Instead of being MCK / 2, it is the TCB GCLK.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> ---
>  .../soc/microchip/atmel,at91rm9200-tcb.yaml   | 36 +++++++++++++++----
>  1 file changed, 30 insertions(+), 6 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

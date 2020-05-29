Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7731E8452
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 19:08:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W19SNRbBvgqKptS3ncy+QTG07e3wT0jQOAXV9o1NHxA=; b=qr+H52RgEFZMK8
	uKzkL8s2NrXQoEWKxjE8kkU6KqRUFZg0fuEIGjdZooJElXQpP+tNwl5LHLCW3FrSIQZkA/Gj+tgvq
	V83YwqY86g8KdvQxripzh90A6TeTpLncMQkD197o2YiClZI6MTyA+I3dmUYu+9PZwWd/zdMiwS1iq
	8eWEqtgcwQARCcODRBmCk9wkgK5YfHFYxuTrwCX7+FkD8dLnXJUZP4a44Ut2Sf0atec6xVs921UDq
	gDvPSRuN98dfQQ+U3fXHFeCHZuE908gK1KdsVbr8unZkY1ZTgEZcIgOG4HXaSvZhQsy8pUYxDTPqS
	koXAkAG2m0P8bi8w84gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeiUA-0001kP-Nv; Fri, 29 May 2020 17:07:58 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeiTz-0001jP-O5; Fri, 29 May 2020 17:07:48 +0000
Received: by mail-il1-f196.google.com with SMTP id 17so3231084ilj.3;
 Fri, 29 May 2020 10:07:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=MUooCf11G+wzFa88ewKcb5EHAEEa+XEEiZTRljzO3gM=;
 b=ZyWrXI30CjLcjwvuoOka2tZiaudT4kHja1RvaW1N4A5If+4jRCvEtReQ3u0ecC6ynt
 gQOXbOV3ypFBgL0AEzBiJssfL8iYAn+P5rLBdsRu48f1ImX6s8Vomq6RnI8JHiaawMs6
 MM4c+q2aeNpreF0x/3H9yEW2/y7VD9NRFCPd3nBHnL4BG2VJtdQkx2geJQbX4TAXq7u4
 p+V7oIq4g/ZN7RUmBW5j9DDossT4HGWMsQJAwLK4IJAoqk7F/S9hOjf8e7RxwltexEif
 ak5wfvChg6gQ8sbfWSvA7qpDDdF3e7KZOisbwfZMCFH03bdtHy5rBD3jDpBGCmkMus/X
 gCwA==
X-Gm-Message-State: AOAM531ffAhWt5BfZ0M78CT2YdkaLM/MPzYOQothNTf75sZEPxdKNfU0
 WS/xFDIV0On7Lj18dvKx8w==
X-Google-Smtp-Source: ABdhPJxBmlK7urpI9ApsfbfQd7gBioqSkjdj2dSXUO1JzWzfzgFdYXxVnOPUDRqf46kOGQCOV5afxQ==
X-Received: by 2002:a92:8496:: with SMTP id y22mr1243486ilk.115.1590772067110; 
 Fri, 29 May 2020 10:07:47 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id c23sm3276894ioc.28.2020.05.29.10.07.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 10:07:45 -0700 (PDT)
Received: (nullmailer pid 2577192 invoked by uid 1000);
 Fri, 29 May 2020 17:07:44 -0000
Date: Fri, 29 May 2020 11:07:44 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] dt-bindings: input: touchscreen: edt-ft5x06: change reg
 property
Message-ID: <20200529170744.GA2577033@bogus>
References: <20200520073327.6016-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520073327.6016-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_100747_783524_E00220BE 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, dmitry.torokhov@gmail.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 20 May 2020 09:33:27 +0200, Johan Jonker wrote:
> A test with the command below gives this error:
> 
> arch/arm/boot/dts/rk3188-bqedison2qc.dt.yaml:
> touchscreen@3e: reg:0:0: 56 was expected
> 
> The touchscreen chip on 'rk3188-bqedison2qc' and other BQ models
> was shipped with different addresses then the binding currently allows.
> Change the reg property that any address will pass.
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/input/touchscreen/
> edt-ft5x06.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

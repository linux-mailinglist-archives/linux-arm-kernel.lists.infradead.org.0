Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7521A3C5B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 00:21:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P5hWfB4qRZ2QT6erWUMIvaIef/aC4HhoM9mmIkYU1X8=; b=nPXd70woRcDAKL
	nQqTGlYc9gUzOGHvVzPJi0LP2jAaU9HmgXsk8KzgHAkXtum7LdhDt6xeuIZDh4Yq/DKWkwM3VzZdL
	juKG5B7TA2TWrfzoqrGytK9r3XXz7od5dbZ+klizLtVqWm9tS9WRSRwZJuxNqwGQ6aa5MpUNnM/vr
	NxL+5963niTHOoIU3wBriMUSSy9p/zMNEm3zrIVAOTUYZyKYUawGYhCZv0zLliuKaY34TqlmeHEai
	h7BTdjXhf4aO45O/kpr9RHKlpnjQRxnH/hUB7OH9pP/52ubad7fvYvIt538jD/jLVNaatGEGB+Ysl
	uq881mkIYnrBHircCaeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMfYA-0007I4-PN; Thu, 09 Apr 2020 22:21:30 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMfXz-0007HJ-NV
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 22:21:21 +0000
Received: by mail-pl1-x642.google.com with SMTP id g2so17184plo.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 15:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=b/z7pZVsoL64ZtHgrjrIO469h05laKsMY8CKKpD5QBo=;
 b=QDOj8D/0r9lj0VWPS1hjZHjen3FyvjOFLPFuK0iOffJfzv068Gx/QiT2kIHxjKOQ0z
 lkqACCkh60DlDPaXdimT+TKHWH+MqoBZ0NUwECdtXy6k9D3ZYZoXaETRK3Eq54wZTOVz
 c++xc1HVAERJnZJ7mvOPzBGs701RvlpqK4t1YivkmIwgDtJpJK4uNhn8+Z54FdggBaxd
 AkmXvXalebDcPhqo16yBlTde3FlwHy5NQox9i0zOy5cqGmJYVvn68E/1zaxZkyKKTtCi
 CStml2P/48l8YMIkJZneReGDGcSek3CTQx9VV8aM9dfXeI/a8wbwUCgBJ+nW9BSpzIYx
 wxOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=b/z7pZVsoL64ZtHgrjrIO469h05laKsMY8CKKpD5QBo=;
 b=JhSYPu8rigevWauLYu6OawurHkgkvPywWhS+fvAK7V/WWLX+xP9daskQjxf+n2mcJs
 blttANev/1iJOY1naS2vPpTi0OPIb03RaOhzMAts3cG6H8vENufyXUnNzZeKgCM4ic3R
 FR8TYtFr9jGWaQyZmp6Swg4thpyGTccUIosPXRVoctW+GA37YqwWak7eZu3LE9ciCwvH
 iycRPWqokgQC8ELhzosKWuLgCXQ+GzVoDVjCo9L/RW4DjpYLGSNxriIV90dM33Gp7+x9
 Wtixzrd7nTm1OgSG3uuZqP+UjZlWwniFLJ/IXXpVn6xhRJS+Rmo2ZsXFtaLMYurY1PyN
 3hcQ==
X-Gm-Message-State: AGi0PuaVINbvS6mlouNKZF84VT5vMgz5Duvl3U0yJnDVWdutdEObjPJM
 kW+SR1dKxb3zCmdvU1v0MlY=
X-Google-Smtp-Source: APiQypJeMlNd4RzEjBh0f9WL+l4grp3ZuAocSpUJXgM81FgeIXhiv5N3Q2EbBQtnxVdDVkNUIuKe1A==
X-Received: by 2002:a17:90a:c08c:: with SMTP id
 o12mr1862986pjs.16.1586470878413; 
 Thu, 09 Apr 2020 15:21:18 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3c2a:73a9:c2cf:7f45])
 by smtp.gmail.com with ESMTPSA id q7sm94017pfc.166.2020.04.09.15.21.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 15:21:17 -0700 (PDT)
Date: Thu, 9 Apr 2020 15:21:15 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH 2/3] Input: rotary-encoder-counter: add DT bindings
Message-ID: <20200409222115.GT75430@dtor-ws>
References: <20200406155806.1295169-1-kamel.bouhara@bootlin.com>
 <20200406155806.1295169-3-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406155806.1295169-3-kamel.bouhara@bootlin.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_152119_763065_296C21E1 
X-CRM114-Status: GOOD (  20.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dmitry.torokhov[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel@vger.kernel.org, William Breathitt Gray <vilhelm.gray@gmail.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 06, 2020 at 05:58:05PM +0200, Kamel Bouhara wrote:
> Add dt binding for the counter variant of the rotary encoder driver.
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
>  .../input/rotary-encoder-counter.yaml         | 67 +++++++++++++++++++
>  1 file changed, 67 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml
> 
> diff --git a/Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml b/Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml
> new file mode 100644
> index 000000000000..a59f7c1faf0c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml
> @@ -0,0 +1,67 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/input/rotary-encoder-counter.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rotary Encoder Counter
> +
> +maintainers:
> +  - Kamel Bouhara <kamel.bouhara@bootlin.com>
> +
> +description:
> +  Registers a Rotary encoder connected through a counter device.
> +
> +properties:
> +  compatible:
> +    const: rotary-encoder-counter

I wonder if a separate driver is really needed. The original driver be
taught to use counter device when available?

> +
> +  counter:
> +    description: Phandle for the counter device providing rotary position.
> +
> +  linux-axis:
> +    description: The input subsystem axis to map to this rotary encoder.
> +    type: boolean
> +
> +  qdec-mode:
> +    description: |
> +      Quadrature decoder function to set in the counter device.
> +      3: x1-PHA
> +      4: x1-PHB
> +      5: x2-PHA
> +      6: x2-PHB
> +      7: x4-PHA and PHB

Is it really property of the rotary encoder itself or property of the
counter device?

> +
> +  steps:
> +    description: Number of steps in a full turnaround of the encoder.
> +      Only relevant for absolute axis. Defaults to 24 which is a typical
> +      value for such devices.
> +
> +  relative-axis:
> +    description: Register a relative axis rather than an absolute one.
> +    type: boolean
> +
> +  rollover:
> +    description: Automatic rollover when the rotary value becomes greater
> +      than the specified steps or smaller than 0. For absolute axis only.
> +    type: boolean
> +
> +  poll-interval:
> +    description: Poll interval at which the position is read from the counter
> +      device (default 500ms).

Is there a way found counters to signal an interrupt?

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

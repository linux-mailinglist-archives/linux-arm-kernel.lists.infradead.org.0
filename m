Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D19CA12FEC7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 23:29:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MjB8puJ0ZzYGvcVxeqslErv8fkJ7+HrYXpGCJmiV7U8=; b=QKA+iJ9mNN+lvc
	oCfaDzBkVFYWgDAkXyLSQpEk0f7Cx85e9BHauBbZ4Be44KQuuPr7N6Tvqq3hma5VrOP75v3noIWe0
	S3J20N2A4ktidz7DWBPfhCyVUq9hM6hc0kCCfUvpS4wa6IPKnOylNrVM7a611lPtACkXgXouHc92u
	R762FEC/ykpDhz29dn43sM/it5Wg90lYleMaJkY6yv3OY+sdCQPyEAzlfL2esRir+lImWEuPzXLHt
	EMDVvFj6o9zSEmO3I2zV4+9vqWefFJ0NIriiFgaalsjXofZ21BC2At32g+2TXYWiZNja8yCZf1BDI
	O5JSERFHYI9TxUFUJb8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inVRm-0001Kf-Rr; Fri, 03 Jan 2020 22:29:34 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inVRa-0001Js-JP
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 22:29:23 +0000
Received: by mail-io1-f66.google.com with SMTP id k24so12580535ioc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 14:29:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:content-language
 :user-agent;
 bh=gGxgEmek66XClr+I4ZOssMbObOa7QPZhKH2BM6JU+5M=;
 b=qCGLYGdLwm1Q1fI7zbA4n55EzA9yde8iniWP639g8fuWwVzO0FnCAED1net0MiJ0EB
 +N7mx+PWI4MxZ+Au0UNM7K6HYIeFVTsY8oo8sOYd/ximhQZPQ5or20H6o+2zQsP3vIOy
 6MGkU4pAxVWAcDpakfMn+ekbzXBLvAIIIs0dIqM4TiiKGJPatbqiqatJlqoBH9fCV7vv
 lqHAtTteP4qi1Ez4HcqCuF1+MzntxnrClUxaZ3rSDB0yAxYjXbDHqEI4M/Zt1IGfiH7J
 kMEI/L8FNC0nNyyY5rh6UHxBPw9AzAyjA69B2R2L9Qi9C0NChwrtk9ffaK49UihwZ8Ja
 Et8A==
X-Gm-Message-State: APjAAAWe4G1BrPfNJ/Czf5S8cn9adNw3Fq+rlUvbNMHrnYGbgICe9P5F
 V13+dea3fqEfresjpoPjFAnHoh4=
X-Google-Smtp-Source: APXvYqwgvFy1D8/M4W8DBO5yiQqYxw3r78+u+ehSfR1Vic0AGrwozh4gYLLw6HyI5k+wVvi8e5W+3A==
X-Received: by 2002:a6b:710f:: with SMTP id q15mr61873641iog.103.1578090561386; 
 Fri, 03 Jan 2020 14:29:21 -0800 (PST)
Received: from rob-hp-laptop ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id u13sm15260491iof.2.2020.01.03.14.29.20
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 14:29:20 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2219b7
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Fri, 03 Jan 2020 15:29:19 -0700
Date: Fri, 3 Jan 2020 15:29:19 -0700
From: Rob Herring <robh@kernel.org>
To: Codrin.Ciubotariu@microchip.com
Subject: Re: [PATCH v2 1/6] dt-bindings: i2c: at91: document optional bus
 recovery  properties
Message-ID: <20200103222919.GA32421@bogus>
References: <20200103094821.13185-1-codrin.ciubotariu@microchip.com>
 <20200103094821.13185-2-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200103094821.13185-2-codrin.ciubotariu@microchip.com>
Content-Language: en-US
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_142922_639039_1EDDF76F 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, alexandre.belloni@bootlin.com,
 kamel.bouhara@bootlin.com, wsa@the-dreams.de, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, linux-i2c@vger.kernel.org, robh@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 3 Jan 2020 09:49:06 +0000, <Codrin.Ciubotariu@microchip.com> wrote:
> 
> From: Kamel Bouhara <kamel.bouhara@bootlin.com>
> 
> The at91 I2C controller can support bus recovery by re-assigning SCL
> and SDA to gpios. Add the optional pinctrl and gpio properties to do
> so.
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
> 
> Changes in v2:
>  - none
> 
>  Documentation/devicetree/bindings/i2c/i2c-at91.txt | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

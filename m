Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 472C6C35EF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 15:40:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0d78EBoo2R1Pibxidl9LgJCS2RbWm2vv0sPdsKOn6oM=; b=EXk3sXkH5wzJVb
	k905l9p0vFga/OYEyL1NfkdgZbZnKHI+tGL55ojdyRlogzdgy1KEBYOTY2hj5dFwMyHbuu8/f563K
	jjyAoYoTL4WNhjmQP2qKcaab2jaWGgZeKguw/dAgVUOEOXqiKYjHZHPeyEB3/zGBaSLa/pWagjPR7
	miWpNFPa9e3k5a3FR5N53ddxFQYckV6LMcqTXtoB1sgLnZACxHk56o6WdfNEnjeov4Ba+TSkVkPhk
	sgxqt3n8d8MGe1K6VvGbL0TBqJwU0ygaVIoimUNA9NgQdqzSGgggm+s717WjDgKRCR9EtHwrAav8H
	p9jVGdgu8cMnU/tESwNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFINc-0003Zt-Ej; Tue, 01 Oct 2019 13:39:52 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFINS-0003Vp-1w
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 13:39:44 +0000
Received: by mail-ot1-f68.google.com with SMTP id 60so1611200otu.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 06:39:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VUMlq66dEzuwplXVYJdSygdvuPoZ83mfs0aFAtH/Dos=;
 b=Rt4vG9Vl/RqCXXhetu3hTPx8t6jtSpp9qffeX2IOyYyctBDOBlxlB4lblMoV9ZCpcr
 jE6UiD5e49Q23Vwgbc1BwWpJxfv32CYzmBsW1YUZhMm2MnoS6YamlZQXjQoJOWL/mSeG
 Xqz/urkbfGjKtoQCaPlQg5FR+U7ye6HRmbwAgby3sG2F7ptQ6uRsSd5EL7BmEoCZnNDb
 dEwntHwJ/0I5hUACPiAYF8v4pdzwSTlMxiTaXuOoQuXEq1e3VF6ECc87yu14Hxt1EH+n
 9DpB/5tIFVb+vnMOYi6BFpeyZXvY0zJULfuvY86r3/gf3Q3l8o9AWvY7Um/ESoqJfeJS
 6dnA==
X-Gm-Message-State: APjAAAVXCCXTtzCuAzrP+k6bP9KH9p6AdnYgNvqdr5ZLtfVtz0brIEi7
 jvg+fC8kLDsCFqaTDSW9oQ==
X-Google-Smtp-Source: APXvYqwcZLcnAoU3g0ebxrKDG2Zm3JhH90F8tOYDm55u0jQnbo17K7uPCU6e+MSayZYt4F74qyGV+A==
X-Received: by 2002:a9d:7251:: with SMTP id a17mr1388490otk.110.1569937180254; 
 Tue, 01 Oct 2019 06:39:40 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j11sm4674948otk.80.2019.10.01.06.39.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 06:39:39 -0700 (PDT)
Date: Tue, 1 Oct 2019 08:39:39 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v5 2/2] dt-bindings: timer: Use defines instead of
 numbers in Exynos MCT examples
Message-ID: <20191001133939.GA13715@bogus>
References: <20190930154418.4884-1-krzk@kernel.org>
 <20190930154418.4884-2-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190930154418.4884-2-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_063942_104491_57019AA2 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.68 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 30 Sep 2019 17:44:18 +0200, Krzysztof Kozlowski wrote:
> Make the examples in Exynos Multi Core Timer bindings more readable and
> bring them closer to real DTS by using defines for interrupt flags.
> Fix also GIC interrupt type in example for Exynos4412 (from SPI to PPI).
> 
> Suggested-by: Marek Szyprowski <m.szyprowski@samsung.com>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v1:
> 1. Use GIC_PPI where applicable.
> 
> Rebased on top of:
> https://patchwork.kernel.org/project/linux-samsung-soc/list/?series=177667&state=*
> ---
>  .../timer/samsung,exynos4210-mct.yaml         | 37 ++++++++++++++-----
>  1 file changed, 27 insertions(+), 10 deletions(-)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

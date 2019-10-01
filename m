Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5559BC35ED
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 15:39:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tuq3nk4y2E2t2U/Hynq/GR8VWvkuzupG+ft3Ft7Bpec=; b=avPy318Oroo756
	6+oo+FwoXu8zSYOzqPcllmld14Xj9dUUdQPxO0iksWOuDfDcnK0/ZFd1CCNRjpVqwfTxd+U9cWCCh
	A42BQOkLz6r0xdF+Ybl/D83yxiMDMcEfx/9T9U2FIjDPg03IrPCWImt7C4NZXx8ScxPHBEtT395yH
	fF+xlhDPeEuDHGTAxJYc0iH7dFOXQaYhAR87f9T6DAf00qvt+Uq/zfvFOQtCdodrM+qqJ4ZKgZfwE
	BWimgT7ISl4QLn7stDWTV/EmDRaAQz7/NgWCWRMgXNEVgekX91WVYG6bvN6AA97mG7IERmecgzlka
	FDupt83jXitFHmxC2i2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFINM-0003KV-LJ; Tue, 01 Oct 2019 13:39:36 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFING-0003JT-Ja
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 13:39:31 +0000
Received: by mail-oi1-f195.google.com with SMTP id t84so14392688oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 06:39:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KLHRZTdgmJ31FLV+CneDtjsb45WoIfxvw7NRmXa0ukk=;
 b=oAlKGeK2DzQctiWtjhfv9cr3HhOabyFyz26RHYxpN2eSMOB+KSi9icnckkACcNRJWO
 YVUB6Cp7qFNECCbiLg1p+bQ5E07pxwzNfTYjDA1RIfAlyIuyxUwWm3wl6Wrl7V+zkXda
 hCg9FUMYIWcl/7dkdQpFMh10ig2Ge7JglsXm7ZTMo7oFh7WZ+mY7fKlFgQMax7Lcnyto
 jAxCBKR9ZD2gmS9OZjReEXIAjc1SNLbnPXVsWl97o7+owz0QowXJoI6XpQ94zZZ08s7N
 GydH445TIAJt1LkhpWhkuvTDxj7iC1Us+LRL3ErXzrcANFemQhKjK7rfVW9T+zKReu/Y
 i+pQ==
X-Gm-Message-State: APjAAAXu+7SFvvQglMYQtmrzTYlFQKrvqnqNDUhcsuIXVeiABC9TEFRZ
 KccPwokJa9D0Se8HR90TLA==
X-Google-Smtp-Source: APXvYqzTSJLcgzzb/0m5cCOwspezBpAaf7U3FUZPelAKilntUhGtVSw7W2yg9hXJszyYW5Ya4alysA==
X-Received: by 2002:aca:df88:: with SMTP id w130mr3890865oig.0.1569937167125; 
 Tue, 01 Oct 2019 06:39:27 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w201sm5101599oie.44.2019.10.01.06.39.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 06:39:26 -0700 (PDT)
Date: Tue, 1 Oct 2019 08:39:25 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v5 1/2] dt-bindings: timer: Convert Exynos MCT bindings
 to json-schema
Message-ID: <20191001133925.GA13146@bogus>
References: <20190930154418.4884-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190930154418.4884-1-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_063930_644592_7ACC5A0A 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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

On Mon, 30 Sep 2019 17:44:17 +0200, Krzysztof Kozlowski wrote:
> Convert Samsung Exynos Soc Multi Core Timer bindings to DT schema format
> using json-schema.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v4:
> 1. Do not mention interrupts-extended in the bindings (old bindings
>    mentioned only interrupts).
> 
> Changes since v3:
> 1. Use interrupts-extended instead of interrupts-map in example.
> 
> Changes since v1:
> 1. Indent example with four spaces (more readable),
> 2. Rename nodes in example to timer,
> 3. Remove mct-map subnode.
> ---
>  .../bindings/timer/samsung,exynos4210-mct.txt |  88 --------------
>  .../timer/samsung,exynos4210-mct.yaml         | 107 ++++++++++++++++++
>  2 files changed, 107 insertions(+), 88 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.txt
>  create mode 100644 Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

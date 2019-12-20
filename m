Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA491284F2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 23:36:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yRi3oxz/vXb0hpI5PZe6FYjZlzDtBzDkFQeE72rBudo=; b=j1z26PsQ07sSrb
	ygD7b2K8eSb1ChvUwWp5Rck9nWE/6YbPY+dYHmP15zstSPbXbHM9tFXoo1JOyS/Qa7pPraV65ON+6
	ewx8YD8HuyRG/LmgG6IQs1TXHTTPER/EC0o8FAQQfXi+2baImJ6BeRWH8L3COKihOAVlnxo3m43y6
	xC7RrHJJAQzDUDNdxr3BGbcv+pwQr3nTExOEWoBhr4QeWcCESZoivX39ID9faQpu5E95j+01yJDib
	BHzu4kRIVzey+jHW47toSUsICWjNYP9SFpkKEcJSp0DUft+wliCdilooTJ0PDkABWJrV1s26uc995
	U3T11bmLS6KPU3nXLodQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiQsi-0006bi-94; Fri, 20 Dec 2019 22:36:24 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiQsb-0006bI-Kp
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 22:36:19 +0000
Received: by mail-io1-f68.google.com with SMTP id c16so9521002ioh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 14:36:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=r/ujD9cpeTVxLA7xaDbDkgLLbv59I8EnWN3w9PFRh2g=;
 b=AuRdlUlqLEb9RxuV6DI/c6/DwYBgbD6DXkEg4PrY3OJx6YYb7W2JxpJlwF2CsaLcYX
 TcRF9VYTI2GOjhum1nUe8PlLm8rLgcaJjr9E8Y2r3wQK7CH0QQlxtLZTzdC1OURWt1Jz
 1KF9KggY9Lz8c3BhXYQt/LrOzHeF8O3OY8TqyYhXYnTEO1hmj8G65KR7+8G8a45KHKqy
 MuMNic29V/bgt97OwR3H+MMRMLHqO25cSaKeVnglclG+N3dq3GEZOw4xXsyVEZgQBxFW
 8sOwVhwtd2mpU1dGo6Z37vBkREVyervASEu31RVf8FGKCH8+o6jhEszUqQaJ37G7GAF+
 vLhQ==
X-Gm-Message-State: APjAAAXh8hkUtG7rEPEEsFIkOq8HkmCSNCzYoIOa/1K9qv/DJmlTEsps
 4tJj7ox3pB7rk7chapQSxw==
X-Google-Smtp-Source: APXvYqznRk6G0L20Qoe2oj7Zw9Ec8BirMdFnF1btWzmGivMJBa/bk89K1dHrEAE9tQQWsYloq5Ln2g==
X-Received: by 2002:a02:cd9c:: with SMTP id l28mr14138518jap.46.1576881370878; 
 Fri, 20 Dec 2019 14:36:10 -0800 (PST)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id e1sm5446541ill.47.2019.12.20.14.36.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Dec 2019 14:36:10 -0800 (PST)
Date: Fri, 20 Dec 2019 15:36:09 -0700
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH] dt-bindings: opp: Convert Allwinner H6 OPP to a schema
Message-ID: <20191220223609.GA8940@bogus>
References: <20191219084623.944458-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191219084623.944458-1-maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_143617_681958_92DC4649 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 linux-pm@vger.kernel.org, tiny.windzz@gmail.com, vireshk@kernel.org,
 Maxime Ripard <mripard@kernel.org>, sboyd@kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 19 Dec 2019 09:46:23 +0100, Maxime Ripard wrote:
> The Allwinner H6 SoCs use binning in order to provide binning to
> cpufreq which is supported in Linux, with a matching Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../allwinner,sun50i-h6-operating-points.yaml | 129 ++++++++++++++
>  .../bindings/opp/sun50i-nvmem-cpufreq.txt     | 167 ------------------
>  2 files changed, 129 insertions(+), 167 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/opp/allwinner,sun50i-h6-operating-points.yaml
>  delete mode 100644 Documentation/devicetree/bindings/opp/sun50i-nvmem-cpufreq.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

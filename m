Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC020E9223
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 22:35:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JGH0xZyYIKDjruhO3eWVyo/Izd6NrxoakJuYGprXafo=; b=Pd/F6WOkMbJCMa
	8EPeS0HJh4ZxMoDQR7ELaFSif8inoXzVDPVBwqgDQAcQdnvUH/CkgAXLc8P912MJHmjyw3kuNO27T
	e5fUJrqoCcIfoH14i9W+qY4HRPv1Qz+YNoP0dbOkpyqTpod2/RbZWI3Isa09Zr+QfVSi0PwHLKNtH
	jgufCOAaEKw/6tvQcEABchpphwa8iZY5N37bQGaikPavvoOBmSQriVZZ7eYEeaoxIdvhM8aQ+thZ2
	5m88/c+vH0GHKZ5VryV6oeTOzRGyNtNcIPOsy1BdgfzbWKGqfYPYg4tvHvjc8XW1ZzX3wUKxn8G8d
	qctUa43RV1RAkmpc6lRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPZ8k-0002AR-8V; Tue, 29 Oct 2019 21:34:58 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPZ8a-00029P-Er
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 21:34:49 +0000
Received: by mail-oi1-f196.google.com with SMTP id l202so188336oig.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 14:34:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xKnMFA8khBrgWosC3rLpBnkIJRXhAp6FK2NOqhcPbYw=;
 b=EP5JzbmjWV8xx4GHo3AyoV7DEDbE6yCdNKcOg7Kzba0G31PGCMDrMx5sT6O86yQtNT
 tEEZmmptky7csxsGQxKtdPp1+fdgrzCX4B7Y77fVLf515kduKWI8RBB+FdubGxJtzvcU
 +j0Dlh8Mhqj/AlSMPCQwqeCkqE7tNLLAVW+wtuKEUjy1qIVkrx/9ap5eolC57z+C5CI9
 eI6FNXsByexAcMiOKfWCJsghAQYektDKRlpXMRmN0GOnrfCg+Ty+/2REfQOnopMU9t7i
 0ujgHsK++W8hQ2YZM2ngkmGGMPWpu/5WTA/kbBVP9A78xggaQm5bba/DY6RI24TZevLe
 7oEQ==
X-Gm-Message-State: APjAAAUc3C9zTNojlgS7RNNUhShUSRyen/bYfaMAf8KSe+urUhWMFXDV
 NLcEAUN+eYVdzmH35ERACg==
X-Google-Smtp-Source: APXvYqyFk3qlj8sA9FQfR00eawHaunkPpkZvCBKKxoWVP3TT0JlnTrtIaOyo0Zk5UoJLfGt6z9xs8Q==
X-Received: by 2002:aca:b03:: with SMTP id 3mr6118637oil.103.1572384887426;
 Tue, 29 Oct 2019 14:34:47 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a88sm80434otb.0.2019.10.29.14.34.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 14:34:46 -0700 (PDT)
Date: Tue, 29 Oct 2019 16:34:45 -0500
From: Rob Herring <robh@kernel.org>
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Subject: Re: [PATCH 1/2] dt-bindings: rng: atmel-trng: add new compatible
Message-ID: <20191029213445.GA7474@bogus>
References: <20191024170452.2145-1-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024170452.2145-1-codrin.ciubotariu@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_143448_499053_0FE1C33D 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 alexandre.belloni@bootlin.com, herbert@gondor.apana.org.au, arnd@arndb.de,
 Tudor.Ambarus@microchip.com, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, mpm@selenic.com,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 24 Oct 2019 20:04:51 +0300, Codrin Ciubotariu wrote:
> Add compatible for new IP found on sam9x60 SoC.
> 
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> ---
>  Documentation/devicetree/bindings/rng/atmel-trng.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

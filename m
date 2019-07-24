Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 250F574003
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 22:37:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l8K94Ayh+rMdUuAhFNeX2b+rATKHXHT6VU0rklUQPlo=; b=YP96Ns/mjhEvdz
	kqppYgWK5iOr1rbHr3b7mod2lwM7PpfaEF+WZpf/Vup7Rzb9vKAEybg3436VNU/FTTSxMxJC5YYKg
	R+MTkFhWV/NrYDm20VUB3gqFjSnN41SNiyvDY+b7t9qHfFZDA7XEtyqJkeNP9Un77zYy+UnZSP/wK
	jx5N9pxqnUzkQAIzutC9mvlUp5StBJKHxrYuX9wZrGFnDPHExuhgOT2UeESvpZohlnHqlC5JRzVGn
	Jb7r9jWJYyVwTFMtZS/dAjMXgxmMK3ZRwzxH5LKmsL/bDcidCkum9POL13NLtDuX5V68W6df/iS7g
	nwf45WceyZfuitsCt6cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqO0a-0001b2-OQ; Wed, 24 Jul 2019 20:37:08 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqO0M-0001aa-V2
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 20:36:56 +0000
Received: by mail-io1-f67.google.com with SMTP id g20so92425729ioc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 13:36:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ezauUXaQEEHVy+2OcDcxOeDrntwiw+XADj/ab5JOeyk=;
 b=jkYqbkik15KjjdWNaOkh1Atu4veTm4HVwgthw5X87PvzMi+vH7Noy0sslv7vBLG/Xw
 qsyzjh/ZHpuqvkkqJFAXzn16d3/YuHNOJk167XYR8tr6GWUewsIFsyB0BHPqrGg5Xej/
 ltd9nh6RCWY1WlPMRdMVnvrrFlkCl+pr7S4loYenRCzo/1kt9tphLaWWf0PPbrjmZ75Z
 ws4PlRsPs60MgxT5+OLERyEYrAOjsL0rPwkEVhBQ1HyfpHsclTMubRh6QKluTQmuDq2s
 3aRi8/26qwdmcMVAjZGufkaSgtIpXmuoTve6Aci6FMLceSFq48iongSd/gAJ5VknsYxn
 6RQA==
X-Gm-Message-State: APjAAAUvbZ5HGrwhzkR4XAkPL+s71OQT7T21fCZt2q/V4Us8TpLyjEnk
 QT0qspeflQoOs0WREqJE9Q==
X-Google-Smtp-Source: APXvYqxi6iYl7bDx+4SE5POY1hGXofqijIvqy6IHLDGPzYHohBVh4g3K/4amhnyALZl9eJN0E91egA==
X-Received: by 2002:a05:6638:201:: with SMTP id
 e1mr7480694jaq.45.1564000614010; 
 Wed, 24 Jul 2019 13:36:54 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id b8sm38661034ioj.16.2019.07.24.13.36.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 13:36:53 -0700 (PDT)
Date: Wed, 24 Jul 2019 14:36:52 -0600
From: Rob Herring <robh@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [PATCH v2 3/4] dt-bindings: iommu/arm,smmu: add compatible
 string for Marvell
Message-ID: <20190724203652.GA27065@bogus>
References: <20190711150242.25290-1-gregory.clement@bootlin.com>
 <20190711150242.25290-4-gregory.clement@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190711150242.25290-4-gregory.clement@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_133655_009337_BDBE363A 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Andrew Lunn <andrew@lunn.ch>, Antoine Tenart <antoine.tenart@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>, iommu@lists.linux-foundation.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?iso-8859-1?Q?Miqu=E8l?= Raynal <miquel.raynal@bootlin.com>,
 Hanna Hawa <hannah@marvell.com>, Robin Murphy <robin.murphy@arm.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 11 Jul 2019 17:02:41 +0200, Gregory CLEMENT wrote:
> From: Hanna Hawa <hannah@marvell.com>
> 
> Add specific compatible string for Marvell usage due errata of
> accessing 64bits registers of ARM SMMU, in AP806.
> 
> AP806 SoC uses the generic ARM-MMU500, and there's no specific
> implementation of Marvell, this compatible is used for errata only.
> 
> Signed-off-by: Hanna Hawa <hannah@marvell.com>
> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
> ---
>  Documentation/devicetree/bindings/iommu/arm,smmu.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

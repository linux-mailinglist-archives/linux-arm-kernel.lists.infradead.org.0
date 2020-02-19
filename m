Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8C61651BB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 22:37:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6IHXY6+v1Mrj/WrV4oKhNIobvLtSNZ0gKtPgLRgOWlU=; b=a4JKPY7a9zcYQL
	FjY43Slxp1jM+Do7g6aW5rjUCFEIAk2ChG1TZwkcYgiTZE4rCDoL+oRFbXgyqYq26wOVkSN3ivn23
	00PDWFNfZ9qoYBNikN4CUVjrOAuxNo8rWgc+3WHfeuGNYtexdx9DXXOXFxaFlChutW6bDyyUA9M4b
	wmhNZZ6CqR1QpnKzFDu0zbnDEj7Slq/XDUlBT7FuXxfltwRqF5LEOQs0ESAf71ax26duq3beP4xzU
	Fb8CiYGIFnqUf2P7FZzLhywowfVWSEUyjXjfg2rLuCs1cb1mJyBjrwgwHIm3cYy6ICXsTokQoxEfr
	Yz2Qr2eBRBA8sd1Mt05Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4X1l-0005Vd-36; Wed, 19 Feb 2020 21:37:05 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4X1d-0005V8-C0
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 21:36:58 +0000
Received: by mail-oi1-f196.google.com with SMTP id r137so5796164oie.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 13:36:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DuxIjKakUovTLWJrrUy0F4nZWjjNRF7r2EzINrOf4VY=;
 b=TpVwtIIM0CprV1iHqZiPZzZ0VKz4XG6JIqH5h8X1GPJEUJa3iZIh70LhAwmMk/TjDg
 BHUARVsCJe91dSORECSpmdkc6EZCmkPV/4siSBMs63iisSeNEEcDD98tVn5hFyGpbbdx
 TaE7LrsP1LzW6OqVZF39Q+7aaiQ7gl0UOrkNJJoJ4aLf3q8q8xwya2wU5u5mgItwyM0Q
 NYjrHFrFiLYMAvkB6+vdNc0Q1rW+AErKEOhGfdcAEfRUrtSugQ0mCz4F/ZAqeGnZ/iAj
 8RWV4zMe69KqiuNJVFmDbtpoWy/Z15opeGd8ObGg9lcdSN73B7cUX4GYhL+vnJNSAjRk
 Uh2Q==
X-Gm-Message-State: APjAAAWLWQceEhwT7HtCm3exsVSx9TuI3wgLaEvXFK6TMZIvkIhzTJ8i
 2yG9TbjqIP6cvNI4SOWvaw==
X-Google-Smtp-Source: APXvYqzr/vS7d9QJGh+dXQuTXIewzPQA3FFO3+dnNCb8cuSi1tgLl4sdiFnz8tCgRMksqfyJUey8Rg==
X-Received: by 2002:aca:100e:: with SMTP id 14mr6121071oiq.88.1582148216399;
 Wed, 19 Feb 2020 13:36:56 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id p65sm380817oif.47.2020.02.19.13.36.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 13:36:55 -0800 (PST)
Received: (nullmailer pid 13132 invoked by uid 1000);
 Wed, 19 Feb 2020 21:36:55 -0000
Date: Wed, 19 Feb 2020 15:36:55 -0600
From: Rob Herring <robh@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v2 1/2] dt-bindings: spi: Add fsl,ls1028a-dspi compatible
Message-ID: <20200219213655.GA13076@bogus>
References: <20200218171418.18297-1-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218171418.18297-1-michael@walle.cc>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_133657_412049_DF5AA44B 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
 Michael Walle <michael@walle.cc>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 18 Feb 2020 18:14:17 +0100, Michael Walle wrote:
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---
> changes since v1:
>  - none, this is a new patch
> 
>  Documentation/devicetree/bindings/spi/spi-fsl-dspi.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

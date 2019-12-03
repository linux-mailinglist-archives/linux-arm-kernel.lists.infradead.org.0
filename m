Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F121104F3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 20:19:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7yJHiKduPhjBq5HkJcf3ytfQ22YVM7NWa7CtjkAXDbo=; b=Ka07zzoC5//6Ym
	3ZqValGw0W/iX54+qg26JKzh8d3bg6KA7M10nHFJg9WoCPf6LjaPpbqKkVlkmX/qdhU08LThrzNfh
	wC/yhrWkFKYs/nByUpjDasGNGUzO/X9DXWoiSkV4axlH6IGsx1dEBUEDCtXtmrFPaBkIOH56kM/8p
	wb0Ung6fSXKBm0+vSbKx99ZFWeZUfONtsbfF/PiBiD3AY8amgrp16tp5fy3Zdctg5U4XpjTCFJZZm
	wtBD4V0mRquMZYhZilg73bhKiwwTsD1rwp+2hLhWcVeLGjFNLioizExNY/D3FrTjyGU9PiZKXRT4s
	0gDAvxsbKLOQQdkXWSXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icDhr-0005eQ-Oy; Tue, 03 Dec 2019 19:19:31 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icDhb-0005bw-9B
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 19:19:17 +0000
Received: by mail-oi1-f195.google.com with SMTP id a124so4361710oii.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 11:19:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VhGuCOSgKbP4988nwTLXWSOEoYXbGs7dSJ2jvNBuhT4=;
 b=V5WeYGjEVreJyP7UhNirtb6f3zURltrpfFD60Os6O+nf9zmYYCW3M18cZ417/LuWX9
 uOdavZhNSzxMcAfphX8FttsHYQgVsVqiNgFpTm5+ufrNIivrrFF4qiu8MJarEiBz12gS
 mBIU/Jv1ivEMyAauItJi4e+15oSVoi2DWHMYWuA2S34F+N6xrnYubL6/j0eTRl41sbyb
 txwB1iN/NdEArx5T1EmSp44VZm/IswlyR9/ZvRJiEJ0zM/7s7T+pKguHcTMcJpqCbXHB
 9uXddlCNqarlBpxHnzPhWjGigM8n0PCv/65+YItn1DoxCghYpkfKrv2vorlupB4FAwuu
 jruQ==
X-Gm-Message-State: APjAAAV9ZKut21rAp/j8PSGBUOu9IceLr8Pn+NuvhgvXOse9Y3TW2KFO
 tU27Llkkqc1F7KFT11HkdT/9PeQ=
X-Google-Smtp-Source: APXvYqwXMVbFZmRe8QxF27h0Kfw3uND3v8OqThcJ1mrg8to0o6bWBoF0eqOAN8t4mfWgef6ZruT5hA==
X-Received: by 2002:a05:6808:b2d:: with SMTP id
 t13mr5046037oij.83.1575400754268; 
 Tue, 03 Dec 2019 11:19:14 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y16sm1345750otq.60.2019.12.03.11.19.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 11:19:13 -0800 (PST)
Date: Tue, 3 Dec 2019 13:19:13 -0600
From: Rob Herring <robh@kernel.org>
To: Srinath Mannam <srinath.mannam@broadcom.com>
Subject: Re: [PATCH v3 1/6] dt-bindings: pci: Update iProc PCI binding for
 INTx support
Message-ID: <20191203191913.GA20024@bogus>
References: <1575349026-8743-1-git-send-email-srinath.mannam@broadcom.com>
 <1575349026-8743-2-git-send-email-srinath.mannam@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575349026-8743-2-git-send-email-srinath.mannam@broadcom.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_111915_350486_66FB8BFE 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Florian Fainelli <f.fainelli@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Ray Jui <rjui@broadcom.com>, Srinath Mannam <srinath.mannam@broadcom.com>,
 linux-kernel@vger.kernel.org, Andy Shevchenko <andy.shevchenko@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, Ray Jui <ray.jui@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  3 Dec 2019 10:27:01 +0530, Srinath Mannam wrote:
> From: Ray Jui <ray.jui@broadcom.com>
> 
> Update the iProc PCIe binding document for better modeling of the legacy
> interrupt (INTx) support
> 
> Signed-off-by: Ray Jui <ray.jui@broadcom.com>
> Signed-off-by: Srinath Mannam <srinath.mannam@broadcom.com>
> ---
>  .../devicetree/bindings/pci/brcm,iproc-pcie.txt    | 48 ++++++++++++++++++----
>  1 file changed, 41 insertions(+), 7 deletions(-)
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

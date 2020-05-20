Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 618321DC2A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 01:07:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YaO5xJSFj3usmIfw5qEAdMNPfZkdthqieHS0EBoEbi8=; b=FXykdQyJHobhX0
	ixKXn9nr6Z+RgonyEye33QabGh6+0gJgmqrIU3WSFZnmA6HL8sF4RBN+lwrOtJl/oOUM2L/G3HGbA
	Y1GkuxpPRZzjs8Ln2Fn2VI5kuoTUpmEc00JG0KF23LQX21faSZvIe/BZTkwoOC2c3ORcGcmFgKLEp
	xGqJq8770wAHq3iFPaI+dZse9mWxFBysqrqCm7jKWJQzbe7KWP6GgzXAkEJ/tg9O+l+qN7tcyDZaD
	TigXxpGaRV9iWN+3O0knAjuLP+JRJvvtiMRYGPu7mfseK3y8yC538l8vQuCFEcEj0n69ebFAAEOw2
	LCweaFljc5ARUiWI8ZWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbXns-00026M-BW; Wed, 20 May 2020 23:07:12 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbXnf-00025W-TG
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 23:07:01 +0000
Received: by mail-il1-f195.google.com with SMTP id j2so5091553ilr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 16:06:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hpxe6Kf1Y1YKMS1+011D2HXa532cg7CAEDYR3p5RkEw=;
 b=ESJr2SZXYpCwpRrEaHsLHM2jw01qhWnrU2UDkEC40wMjgfxBpbCk5bA0vz6vPKVIoQ
 RavimkgQZQv7os2u9EhAwsxbYbBYV0oA37uAY943pXJvPd29yvfvX2Wdma2LCjGaKWrW
 Wm+DZOsoOB+dqkyVgQqW05FqBJGXCpBeTB6tDJfbXBOhqko2mnIMfZ2+DenhDww8Z+nH
 CRmGU4YGnoIgJFvyW83lgYP46VUSRpKJdwfRb7VFfQBjYebSFJvPoyEPAqKohnNhnTM3
 Ri1Xqb1rKcL6FVBmBmaMwNucvF1vAMGQWc5VGL/lUjvkpEBtJquHaCRG/1bHBPNqJ0Va
 /E0w==
X-Gm-Message-State: AOAM532qM0A4jK3xSYJdCxofP0UrqCehloWWBAXUkTe9XGx0xHGX+P55
 SVo5HB9d6ZSbpUOcazBwoA==
X-Google-Smtp-Source: ABdhPJxjcHECSsdzZdmzcqRS1EuJexuCuPYCn1h85LxDvs0MwMakXDkCfb4HocQNRcy4sUr6NgDWnA==
X-Received: by 2002:a05:6e02:106d:: with SMTP id
 q13mr6278919ilj.107.1590016018819; 
 Wed, 20 May 2020 16:06:58 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id q13sm1667155ion.36.2020.05.20.16.06.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 16:06:58 -0700 (PDT)
Received: (nullmailer pid 788100 invoked by uid 1000);
 Wed, 20 May 2020 23:06:57 -0000
Date: Wed, 20 May 2020 17:06:57 -0600
From: Rob Herring <robh@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH v4 2/2] PCI: uniphier: Add Socionext UniPhier Pro5 PCIe
 endpoint controller driver
Message-ID: <20200520230657.GA788030@bogus>
References: <1589457801-12796-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1589457801-12796-3-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589457801-12796-3-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_160659_944911_9B0A5C2D 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 14 May 2020 21:03:21 +0900, Kunihiko Hayashi wrote:
> Add driver for the Socionext UniPhier Pro5 SoC endpoint controller.
> This controller is based on the DesignWare PCIe core.
> 
> And add "host" to existing controller descriontions for the host controller
> in Kconfig.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  MAINTAINERS                                   |   2 +-
>  drivers/pci/controller/dwc/Kconfig            |  13 +-
>  drivers/pci/controller/dwc/Makefile           |   1 +
>  drivers/pci/controller/dwc/pcie-uniphier-ep.c | 383 ++++++++++++++++++++++++++
>  4 files changed, 396 insertions(+), 3 deletions(-)
>  create mode 100644 drivers/pci/controller/dwc/pcie-uniphier-ep.c
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

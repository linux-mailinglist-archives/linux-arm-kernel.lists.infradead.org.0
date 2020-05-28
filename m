Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 359A21E65D4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 17:19:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L0xYt8RkjXnGFAqoq0HPT5ClAhEB8hdKdwtQvnuCXaE=; b=RjNfqyutg/bqRI
	D/L09rKY8vq6D4jcpmgJ0mOCcZTNL14bRyuxaU6o9gkVQrxIfs5Md0F1Fqz7V9l+fJUs631rbQR9m
	J8r2EvOr3m2v5INB9x/AZb+qxd4QiDhR8MzqfIl9zBNs+6HpZk+e1fsIORl84/BxG0rBscq/x0E17
	L4hchwz94Wklz8nW4/mDUC2pKa+mDywkuHki+gkARxCSm/wiAc6FKYkrk36XgpTE3wggQhZLZey3u
	s8LVci0kStqiGkKLN7wuDIg9SU8tt2XsJGE4+NIHf42nVMHG16XXDA0Z7dqVnp9wLwOnijjj2Bs3b
	WS4Nygk0AlIHSV1wxquA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeKJj-0003z6-OB; Thu, 28 May 2020 15:19:35 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeKJa-0003yc-62
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 15:19:27 +0000
Received: by mail-il1-f195.google.com with SMTP id 18so472333iln.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 08:19:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=5kBEZPlNqzKPyCgrp/KWIwOTiSVLQMBol2Vgbb91EpM=;
 b=Z+StSx5Z5vX9QpBErdWON6nfnyBsJLXd68vmOU+BY1TvTOeKTaUWZ7RuQ93zCve0QE
 wnMkHI2yFy4ekQ/VHg82TwuluS3DIHBLpgT8/eWa7UibBai6oq3EFE4x7AO4TwFd4YMF
 h+6G4Fl4/D5yFujREKdb4h30qlOFnVdP58acnNmAEAukLnDSKq+OS7LwxoMdYsC1XSW8
 Md9fBk+wZXq8+0M/9y6dxWKasoAMDXaYMqYZvW+gyyh2p5Nund41DSyLZd8jLL8L+L45
 MtAM1yCFbSyFs+OZFQv5F+p0QNDOqslpANtWko9W+udh1gHuIbPr0Y6j/bnYyrmZmEm/
 cyHA==
X-Gm-Message-State: AOAM530TBDw6QzDCWtb5VkeQHJKyIOJlvAiDV37EnxZEZ/N6LGBXO7Zi
 DGbVeHtBxDqmSpLLuzRJSla65kM=
X-Google-Smtp-Source: ABdhPJwibNiFPrIx377+XuzcIXNpytt1Fqw5yA5j7iuroWojsn3v5IBwUqhYpDxPaOr7/N2GzRdyqw==
X-Received: by 2002:a92:1b86:: with SMTP id f6mr3430564ill.9.1590679165207;
 Thu, 28 May 2020 08:19:25 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id u66sm3018630ilc.61.2020.05.28.08.19.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 08:19:24 -0700 (PDT)
Received: (nullmailer pid 94809 invoked by uid 1000);
 Thu, 28 May 2020 15:19:23 -0000
Date: Thu, 28 May 2020 09:19:23 -0600
From: Rob Herring <robh@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: PCI: Add UniPhier PCIe endpoint
 controller description
Message-ID: <20200528151923.GA94755@bogus>
References: <1589457801-12796-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1589457801-12796-2-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589457801-12796-2-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_081926_224080_4A96EDE9 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jassi Brar <jaswinder.singh@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 14 May 2020 21:03:20 +0900, Kunihiko Hayashi wrote:
> Add DT bindings for PCIe controller implemented in UniPhier SoCs
> when configured in endpoint mode. This controller is based on
> the DesignWare PCIe core.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../bindings/pci/socionext,uniphier-pcie-ep.yaml   | 92 ++++++++++++++++++++++
>  MAINTAINERS                                        |  2 +-
>  2 files changed, 93 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/pci/socionext,uniphier-pcie-ep.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

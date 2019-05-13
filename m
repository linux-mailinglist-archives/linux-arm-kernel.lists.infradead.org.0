Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDDD1B99A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 17:10:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2eh2PUHq0hUDMqfp7H55eWGsBIYisyICZyxDwKnfcwg=; b=KsArKef/F/E35D
	n/tebYFF9CUq6RfGP7vJY+MKjWijBLNR6/ko0KTjjA0B2tZGQf3ZHDdPOWqZTRRkzBNBF4DcfEUgM
	DI2qwxPH5eydyRTY+/5VW4rMLPrNUKCsxsqiXjxT3uIzFWH7djplBfzBnjgXD+wpMgju5MLznO67N
	TYPQkC0CiwuKFln5OSP4ISLXTOftgmYlmdErla2TvuBZG+S3+0x67Pkf4h8KRw7uuiYdBvHa2Mrlb
	3iotsOBEH2b+viGZ+5Z447Dg4ciB+semk/i4GR6fliOfBdAoZHf/YLaS791oMYEt/BLiMA4qlJD27
	PJ/woEHhHmwyLOUXtTIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCbJ-0004Tg-9c; Mon, 13 May 2019 15:10:49 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCbB-0004Sz-6Q
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 15:10:42 +0000
Received: by mail-ot1-f67.google.com with SMTP id f23so12051746otl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 08:10:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mrlBNb20gXfjogJL/vTxD9cKe2qkJA2/o6bt1fHbzvs=;
 b=cM5mE5ohN9C/7gZPRUeUcoyW0gU+Glis/zpcZI6CmAve5grVYnax7QRrB+r1vx3hlN
 tTK3wCqF3mNiA40jHhMRWCOSpSIOHDdyI2TKeSQhTbCWMakrL7JFJ+Mdd8Pbt8YA6mKN
 b6vVCn/ynKlOQc48ksZmgH3u7PtypTLBl7pRa7P0/3gX2Oz9okPlycd/9hDArbSy/j1X
 YeIQfneI3Tyx0HuZ7IYhTACN17RAscc85rUTwYdvj0bsuFuTOs+5sS7CV2j563GFMXPN
 G3XuQWwxulj2vHj+tL9/xg91Fkn2tebRer77OM8BltggIjdJTkjXd0TsqaOmBrhO5eMm
 Dfmw==
X-Gm-Message-State: APjAAAVn7coVSyXrj+G0DjfkKwKl+IDqOP/YjvHWxSahzjqVnm2ZSs3g
 UkWSTsCz3ruV66VPz1D4qQ==
X-Google-Smtp-Source: APXvYqz9+00kzCXfTWCaYUMHUIJW4CqyQSVc0SoytOVsa8luLWoZm8aaMTmTn2waEWJZVCnDKf4BTw==
X-Received: by 2002:a9d:4a98:: with SMTP id i24mr1395692otf.199.1557760240114; 
 Mon, 13 May 2019 08:10:40 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 64sm5294507oth.47.2019.05.13.08.10.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 08:10:39 -0700 (PDT)
Date: Mon, 13 May 2019 10:10:38 -0500
From: Rob Herring <robh@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V6 06/15] dt-bindings: PCI: designware: Add binding for
 CDM register check
Message-ID: <20190513151038.GA30653@bogus>
References: <20190513050626.14991-1-vidyas@nvidia.com>
 <20190513050626.14991-7-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513050626.14991-7-vidyas@nvidia.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_081041_230450_FE2EE74A 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 kthota@nvidia.com, kishon@ti.com, linux-tegra@vger.kernel.org,
 thierry.reding@gmail.com, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 10:36:17AM +0530, Vidya Sagar wrote:
> Add support to enable CDM (Configuration Dependent Module) registers check
> for any data corruption. CDM registers include standard PCIe configuration
> space registers, Port Logic registers and iATU and DMA registers.
> Refer Section S.4 of Synopsys DesignWare Cores PCI Express Controller Databook
> Version 4.90a
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> Changes since [v5]:
> * None
> 
> Changes since [v4]:
> * None
> 
> Changes since [v3]:
> * None
> 
> Changes since [v2]:
> * Changed flag name from 'cdm-check' to 'enable-cdm-check'
> * Added info about Port Logic and DMA registers being part of CDM
> 
> Changes since [v1]:
> * This is a new patch in v2 series
> 
>  Documentation/devicetree/bindings/pci/designware-pcie.txt | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/designware-pcie.txt b/Documentation/devicetree/bindings/pci/designware-pcie.txt
> index 5561a1c060d0..85b872c42a9f 100644
> --- a/Documentation/devicetree/bindings/pci/designware-pcie.txt
> +++ b/Documentation/devicetree/bindings/pci/designware-pcie.txt
> @@ -34,6 +34,11 @@ Optional properties:
>  - clock-names: Must include the following entries:
>  	- "pcie"
>  	- "pcie_bus"
> +- enable-cdm-check: This is a boolean property and if present enables
> +   automatic checking of CDM (Configuration Dependent Module) registers
> +   for data corruption. CDM registers include standard PCIe configuration
> +   space registers, Port Logic registers, DMA and iATU (internal Address
> +   Translation Unit) registers.

snps,enable-cdm-check

>  RC mode:
>  - num-viewport: number of view ports configured in hardware. If a platform
>    does not specify it, the driver assumes 2.
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

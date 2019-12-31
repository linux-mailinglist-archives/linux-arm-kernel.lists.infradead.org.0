Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A82A12D709
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 09:20:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=caOThH+tnbu3JeBs7rKsPAh5dIWzVEjxrW1SXBdidiw=; b=t8yLY26Dtd2O4/
	/fuNgyyAVA5Js93vvknP/A6hIn6+O11YlouMSLGPpeSwt1XjUNbdCWbn2Uj/3ImhG1WilI/6okiFh
	S7oaVxuCsvwkADFRZ7Xf98nTCl+t/5GggmMtdTzxXqeKUmFhksYXXkaf07Ki4ELnvjSvd+RucJVxe
	dEPqteGlstUtZbohFezgjCS12KPgENOgHpg2yqUyYRNvMlLa6XT9Q2iia2Gj0e2AUBidYGvU1VIm5
	MK+Y/hxWx9VSkNX7JfgZPgkrCFn8K0RQ/HwXBr9hTrcX7+dFCV1yQEXvFvqT5K//vyBj3+8LShEDx
	j1yTFiO36kPbFR+lW1zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imCle-0000n3-7L; Tue, 31 Dec 2019 08:20:42 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imClV-0000mW-Rd; Tue, 31 Dec 2019 08:20:35 +0000
Received: by mail-ed1-f66.google.com with SMTP id i16so34733363edr.5;
 Tue, 31 Dec 2019 00:20:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=OCioKZCCJQ7tT73SyyKzkO9RMHazBLb5Wt3QDWkITuY=;
 b=fGTFMV42H4tjnc39pDS24RA8PfTctQ035ZcCV2YZeCIYe1CrSOiTVSdYLj8WB06bZx
 kAAVVs8XaypGz+M0JQKFp2NNu63+HXtqMvesi9j6ovAkgm0rU8jYzfrgivEZGZrbvIAc
 qrlQaG3VwW1GEz+YsqMlvJu6nn1KcjLZTySddJJxPAy15R8+FPh9UcLiJ4+lBf2bVMFZ
 IS7wYsbc88/S3k1AEjvqgnUcTMGawx54/iVwW0mCjZHp63dSiptAmWWX1j25/QxFpfY7
 wZ15kRAmny/ZozpZ3PiVcdwBRf8N8PN2kulcwvXEmknnv8gZGZMSpjOPgxpIgHAmqooq
 rggQ==
X-Gm-Message-State: APjAAAULeiilSBEyQ508+/sPDSqOWJ8z8a9cSi2bhe8bmvfkyPZFO/CE
 rY3WrnaKKWL7yuw0CEL21So=
X-Google-Smtp-Source: APXvYqyY2gPXd0BiQQrtUFNJI/5iVX0C/CtQWvEacT6jWsjUbweBcqZjXhfz4qpJbuWs2pkwg5NIgQ==
X-Received: by 2002:aa7:cf81:: with SMTP id z1mr75335663edx.234.1577780431167; 
 Tue, 31 Dec 2019 00:20:31 -0800 (PST)
Received: from pi3 ([194.230.155.138])
 by smtp.googlemail.com with ESMTPSA id r24sm5708609edp.15.2019.12.31.00.20.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 00:20:30 -0800 (PST)
Date: Tue, 31 Dec 2019 09:20:28 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 2/2] phy: Enable compile testing for some of drivers
Message-ID: <20191231082028.GC6804@pi3>
References: <20191230172449.17648-1-krzk@kernel.org>
 <20191230172449.17648-2-krzk@kernel.org>
 <791d83ef-faee-d6e6-445e-a8088c5ac654@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <791d83ef-faee-d6e6-445e-a8088c5ac654@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_002033_897122_1C5F6786 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
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
Cc: linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 30, 2019 at 12:10:51PM -0800, Florian Fainelli wrote:
> Hi Krzysztof,
> 
> On 12/30/19 9:24 AM, Krzysztof Kozlowski wrote:
> > Some of the phy drivers can be compile tested to increase build
> > coverage.
> > 
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> This looks fine, you could also consider adding a bunch of other
> Broadcom PHY drivers which are not currently under COMPILE_TEST, yet
> build fine:

I'll send a v2 with them as well. They seem to compile fine.

Best regards,
Krzysztof

> 
> diff --git a/drivers/phy/broadcom/Kconfig b/drivers/phy/broadcom/Kconfig
> index d3d983c128ea..d56db6d375e1 100644
> --- a/drivers/phy/broadcom/Kconfig
> +++ b/drivers/phy/broadcom/Kconfig
> @@ -50,7 +50,7 @@ config PHY_BCM_NS_USB3
> 
>  config PHY_NS2_PCIE
>         tristate "Broadcom Northstar2 PCIe PHY driver"
> -       depends on OF && MDIO_BUS_MUX_BCM_IPROC
> +       depends on (OF && MDIO_BUS_MUX_BCM_IPROC) || COMPILE_TEST
>         select GENERIC_PHY
>         default ARCH_BCM_IPROC
>         help
> @@ -83,7 +83,7 @@ config PHY_BRCM_SATA
> 
>  config PHY_BRCM_USB
>         tristate "Broadcom STB USB PHY driver"
> -       depends on ARCH_BRCMSTB
> +       depends on ARCH_BRCMSTB || COMPILE_TEST
>         depends on OF
>         select GENERIC_PHY
>         select SOC_BRCMSTB
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

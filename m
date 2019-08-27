Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 774A69F61D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 00:26:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oXWLVB3jUwxvyhUNfInWgQbB5zd/Q5K9b/HA+sIX6So=; b=EjaWJBZ/XSVD8Y
	KXJ3bcAVOEHwhHQ5J9WnDWmjLvF6QAvhpz18lxzMcVXQXUoHChKbERn4nLJj8IKgF62y7aQo+uFRS
	jUwOhXio6NCDQFRO3lcTE/jQvNLCRce6B6ubNb3nlzRDCYIH44HUCwUzrjRfJ+xnK5m//beNYybwS
	5QMUc+UzjZZrjWfK+UlCvoVJrHXoCxrB/bTrCzlRYJDKMJVZf7kM+iNUlHMDPVBEnZfxmoyYIYH5O
	05yoTyBzBBDNQMKKn6Ww/qrjyT+cnobupqseYGKqF0v8WDC289CXD+qpVZqBYQ58P9iZ03LV70kP3
	4He9/y7MPiKAtNzkXuXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2jv9-0001zh-Ax; Tue, 27 Aug 2019 22:26:35 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2juu-0001yk-R0
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 22:26:22 +0000
Received: by mail-oi1-f196.google.com with SMTP id b25so548950oib.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 15:26:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RsXxLyUlV4lqdtFyyPSn3Dwod1DhrS1XN9CvxX7CGqs=;
 b=OSZqLqxgVKo4Qpgn1h3yc3fHJCKlinzImLerNm5CPqFbA9EKN+bXHouSZpbzw3BrM6
 6rPfVa29LjfGz/jcW6u3HwqXzrTNCcJp6VDkxfEaNaxysmLR9BYN/1kySGSThwTdBfRI
 fKCcRiwu7SMtVESP60ExswkVQ6wxdS+9AYG93b6XpekHP0YoNYfeCmL9njrgeQVFNUM8
 4zQeu1cOts+XdaIV8IEWg4Y7pHbmnSHJRs2jaTyqWRGM4sYbNDIsR2N52MHPo7d1vsUK
 ZcwEz/oxMqStog1NxdBkEILeDUXMKAwymME5qL6RzoKo55fAPCauCcAfpnics1lP3m62
 2JHA==
X-Gm-Message-State: APjAAAW/6mUmWNKGX6kPCHZnUwuR6CzV0cXLtU+2lKaRa9YS+ME/JDjB
 oL0I+Jkx0/UiHqStUCUVAg==
X-Google-Smtp-Source: APXvYqy3XTy77RRAsfzmCAwhDWWJujML7UeMVZxJl+o+X2Va2w3R8MESfCjhk2TLGcKIC236QGmbgA==
X-Received: by 2002:aca:4b83:: with SMTP id y125mr712264oia.25.1566944779068; 
 Tue, 27 Aug 2019 15:26:19 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k12sm170734oij.21.2019.08.27.15.26.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 15:26:18 -0700 (PDT)
Date: Tue, 27 Aug 2019 17:26:18 -0500
From: Rob Herring <robh@kernel.org>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCH v2 04/10] dt-bindings: pci: layerscape-pci: add
 compatible strings for ls1088a and ls2088a
Message-ID: <20190827222617.GA16361@bogus>
References: <20190822112242.16309-1-xiaowei.bao@nxp.com>
 <20190822112242.16309-4-xiaowei.bao@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822112242.16309-4-xiaowei.bao@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_152620_903776_E7D05679 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, roy.zang@nxp.com, lorenzo.pieralisi@arm.co,
 arnd@arndb.de, devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
 linuxppc-dev@lists.ozlabs.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, kishon@ti.com, minghuan.Lian@nxp.com,
 gustavo.pimentel@synopsys.com, jingoohan1@gmail.com, bhelgaas@google.com,
 andrew.murray@arm.com, leoyang.li@nxp.com, shawnguo@kernel.org,
 mingkai.hu@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 07:22:36PM +0800, Xiaowei Bao wrote:
> Add compatible strings for ls1088a and ls2088a.
> 
> Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
> ---
> v2:
>  - No change.
> 
>  Documentation/devicetree/bindings/pci/layerscape-pci.txt | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/layerscape-pci.txt b/Documentation/devicetree/bindings/pci/layerscape-pci.txt
> index e20ceaa..16f592e 100644
> --- a/Documentation/devicetree/bindings/pci/layerscape-pci.txt
> +++ b/Documentation/devicetree/bindings/pci/layerscape-pci.txt
> @@ -22,7 +22,10 @@ Required properties:
>          "fsl,ls1043a-pcie"
>          "fsl,ls1012a-pcie"
>    EP mode:
> -	"fsl,ls1046a-pcie-ep", "fsl,ls-pcie-ep"
> +	"fsl,ls-pcie-ep"

Wasn't this a fallback? Each line should be one valid combination of 
compatible strings.

> +	"fsl,ls1046a-pcie-ep"
> +	"fsl,ls1088a-pcie-ep"
> +	"fsl,ls2088a-pcie-ep"
>  - reg: base addresses and lengths of the PCIe controller register blocks.
>  - interrupts: A list of interrupt outputs of the controller. Must contain an
>    entry for each entry in the interrupt-names property.
> -- 
> 2.9.5
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

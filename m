Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F82751C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 16:50:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dQRK06PRw4gzNPkX/klbmQu96T5GisqFQmlSOjJGLnc=; b=jM9K7PMVKD27sd
	Q/bTpud3fRyWPeCZrktuMCue2dxCxHJvgrA9oR/7TDhEr0tJr9uSukVuuDL1KujA7JnJfgPiDAVoB
	zmXmuUtFDPM60uGZaB8heL9H0gBGbWVB+KsmSwK7CFPPSOsFwwPHC17sA+5o5vUN/hnA3tQ3iPkwm
	oP6j3zGg+Wae6BtlP8NeTK4Fq+i6kLpFWUntqqkKnIrCjDqUKAE+/h0Y+WQ6ART2p6ZUhC1A/iEgJ
	mfY6r87MD6uqGtdx8P8W8L6jRWF5G/Ksm8Ia8Cse/503EpGVeXsLlzw7XWPy01VQUHmecuTH7dCqj
	P4Qzc8W6wRbsWo95pY7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqf4p-0000b4-T3; Thu, 25 Jul 2019 14:50:39 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqf4C-0007cS-FH
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 14:50:02 +0000
Received: by mail-lj1-x241.google.com with SMTP id k18so48264825ljc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 07:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6wnAGGabQ71U78o4knoiSKA6pj8ghCt55D9V1wo+T0U=;
 b=B2IYRqLxUH1+yV5JsUcKz1/ZA+iccTO0ufD34R4byQxZe7CXU3NbtHo9tyPuLSiW87
 /jfTp7pPZqqDJkeWd7NyZU0KqqbvGv12Qr+Nb9kyskTiZuABrjsxV9cKcmjF0e72KdSm
 MssRnvOCrLO36PJWr1KlgMV24aABKeJpQy0F7bW9yGhdrOwRAVhl/oeVFZ1SMIa1hpVr
 kvMyCUIgqACnih1DZJmdmeCYCDSKcrIfvcmSb+yusMcEKryJ4A3mSswtgNW/useWALsE
 owKKVrwkAuaR26qlCtSEa6R2rjFuZUqYzF0Azr5MdIJgXbtKRAwEu2UBb7m5rSvJ9ibc
 vxQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=6wnAGGabQ71U78o4knoiSKA6pj8ghCt55D9V1wo+T0U=;
 b=QxNUJedmuwujKred/+9kedYBBb+PlIqBfoOC9ho7d/HL+P4V915A4jHHowzYfyQX3a
 sWKX54GWY0/KecdJELjOTaE/RwVukNPmgCxYcttccqCv7uPFkUga1obAXCXmM9juqS3p
 PXS+XeHVScxtopkjT19fKxBzUopagLjWNjZb8CWO4Tzq6ktyHtcEh15t0GNlNdHwp6wZ
 4jyDAH3dXW0w6/zwjbq9iI9yh5HsjfP6bp45vH+MHYIgvzImmFf0oX4ZP+6NE+o+E0P0
 8mO1hNrKx8fhiswbkHNfWo9C5QZoMYTgsWZ/2WI2SJIfiSetTc83uGIlpv0BPFzTusQu
 zbhg==
X-Gm-Message-State: APjAAAVw65s7drWwIH/MnTtfqhtX3B7rlDg9Yyu5iVZh7wgOC8aNbBZl
 Qx28BHhQ9twfEWXSjKUbwLimmA==
X-Google-Smtp-Source: APXvYqwrCKqf4m+8KV0D4fmENaffy3HRKJJq6mh6Y4FyQ1BPvI6qdmY0bGVRwsAXaiGfVrkPGRJQrw==
X-Received: by 2002:a2e:a415:: with SMTP id p21mr46282699ljn.111.1564066197927; 
 Thu, 25 Jul 2019 07:49:57 -0700 (PDT)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:669:e7fc:391:1b4e:d17c:23d6])
 by smtp.gmail.com with ESMTPSA id z25sm7546587lfi.51.2019.07.25.07.49.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 07:49:57 -0700 (PDT)
Subject: Re: [PATCH net-next v2 3/4] dt-bindings: net: fsl: enetc: Add
 bindings for the central MDIO PCIe endpoint
To: Claudiu Manoil <claudiu.manoil@nxp.com>,
 "David S . Miller" <davem@davemloft.net>
References: <1564053568-20522-1-git-send-email-claudiu.manoil@nxp.com>
 <1564053568-20522-4-git-send-email-claudiu.manoil@nxp.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <927717df-1a74-3253-f905-6a2f742fda63@cogentembedded.com>
Date: Thu, 25 Jul 2019 17:49:54 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <1564053568-20522-4-git-send-email-claudiu.manoil@nxp.com>
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_075000_778820_A56538CF 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: andrew@lunn.ch, devicetree@vger.kernel.org, netdev@vger.kernel.org,
 alexandru.marginean@nxp.com, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

On 07/25/2019 02:19 PM, Claudiu Manoil wrote:

> The on-chip PCIe root complex that integrates the ENETC ethernet
> controllers also integrates a PCIe enpoint for the MDIO controller
> provinding for cetralized control of the ENETC mdio bus.

   Providing, centralized.

> Add bindings for this "central" MDIO Integrated PCIe Endpoit.
> 
> Signed-off-by: Claudiu Manoil <claudiu.manoil@nxp.com>
> ---
> v1 - none
> v2 - none
> 
>  .../devicetree/bindings/net/fsl-enetc.txt     | 42 +++++++++++++++++--
>  1 file changed, 39 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/net/fsl-enetc.txt b/Documentation/devicetree/bindings/net/fsl-enetc.txt
> index 25fc687419db..c090f6df7a39 100644
> --- a/Documentation/devicetree/bindings/net/fsl-enetc.txt
> +++ b/Documentation/devicetree/bindings/net/fsl-enetc.txt
[...]
> @@ -47,8 +49,42 @@ Example:
>  		};
>  	};
>  
> -2) The ENETC port is an internal port or has a fixed-link external
> -connection:
> +1.2. Using the central MDIO PCIe enpoint device

   Endpoint. -ETOOMANYTYPOS. :-)

[...]

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

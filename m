Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67445A2A39
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 00:48:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d1EsORNEAt83wN96gaJTCPNv2XoRU8+ZyRPY+8W34w4=; b=TNftm/BogeR6bQ
	LQRN3cYMnipg/Zd9SzBSKKPB0fEM4Zy5RFaGVZuQzChSlw1aJdzSgqkGQpu182QDsRe3pX0bwRGPa
	1d4fqhrpI4VsUG1leDAiJhcrhbUWPSPRKR5xT7m7LBIahgBbDorTF/WEW2orGvY94h865IdfOW5j3
	QteZI+nntb691uURydfb9bDLZWDjOZi/0p9zKgb1G65ZjIg4jP2VZYX5wvbnme6HYNbrwBrN85WIV
	tGe2nB86dTeIJ3UZCHI3SL2bbt3YFsykgHAk4PRdSA0f81cgJBghUq/m20GI4hJ4CdO7oBBjqaiE/
	yi339rO9vYtHanXphMEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3TDm-00032e-TV; Thu, 29 Aug 2019 22:48:51 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3TCU-00020V-DS
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 22:47:32 +0000
Received: by mail-ot1-f65.google.com with SMTP id r20so5093801ota.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 15:47:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LGSaPx3LdslUNS74sxx3stGfHKDniSUYmPCWv7ZUOGU=;
 b=VbXSMymnUk4QlCK3WWYuaTHBLV6cDyEHyiiv52k4Q9M23OmS98PaU85Uz35FeJ5M9V
 6kKlGixJJZNxtv0IZIfDdasdKekL3f6EY3iycmfP6D68BI0y1d1UwQC3SNk1kI2Lc+tS
 +3srLmjRsJf7mA2gJlg/7a+J7zvRKwWrYUoVepI5gnxC2xC2oV+U2wOsG5wZVY81wukJ
 NDrSzz6BKO3shNe10n8CWtKqbUOP5RJCixInHI44510GKToUVM0z/CB/g7q2EjOp83+e
 mzE9s9Y5W5k5bLDT8GQwxUvW413PMqTRoWmh/Ce/eZ98/WjwadvfYo5I/WhxnAjFExwa
 xcYQ==
X-Gm-Message-State: APjAAAV6w9VjYwX9mU5ZpdxLVRqcn0xhA64FbmL9zFRnlqVpvlss32ug
 VW+3bIBY7ectV5dCgl69Cw==
X-Google-Smtp-Source: APXvYqxvjUidJEXS3GfJHqsfP2OQKa+fDP+j/F6yDenxAYwRHbUHx3JF0HxP1UjQZHQSup1Fw1dzRQ==
X-Received: by 2002:a05:6830:1f04:: with SMTP id
 u4mr1227223otg.340.1567118849657; 
 Thu, 29 Aug 2019 15:47:29 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e27sm971378oig.53.2019.08.29.15.47.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 15:47:29 -0700 (PDT)
Date: Thu, 29 Aug 2019 17:47:28 -0500
From: Rob Herring <robh@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH 4/5] dt-bindings: dma: ti-edma: Add option for reserved
 channel ranges
Message-ID: <20190829224728.GA1198@bogus>
References: <20190823125618.8133-1-peter.ujfalusi@ti.com>
 <20190823125618.8133-5-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823125618.8133-5-peter.ujfalusi@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_154730_454484_C17A0594 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, vkoul@kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 03:56:17PM +0300, Peter Ujfalusi wrote:
> Similarly to paRAM slots, channels can be used by other cores.
> 
> Add optional property to configure the reserved channel ranges.
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> ---
>  Documentation/devicetree/bindings/dma/ti-edma.txt | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/dma/ti-edma.txt b/Documentation/devicetree/bindings/dma/ti-edma.txt
> index 4bbc94d829c8..1198682ada99 100644
> --- a/Documentation/devicetree/bindings/dma/ti-edma.txt
> +++ b/Documentation/devicetree/bindings/dma/ti-edma.txt
> @@ -42,6 +42,9 @@ Optional properties:
>  - ti,edma-reserved-slot-ranges: PaRAM slot ranges which should not be used by
>  		the driver, they are allocated to be used by for example the
>  		DSP. See example.
> +- ti,edma-reserved-chan-ranges: channel ranges which should not be used by
> +		the driver, they are allocated to be used by for example the
> +		DSP. See example.

Based on the other thread, I think extending dma-channel-mask to a 
uint32-array makes sense here.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

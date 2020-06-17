Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F13D1FD6FC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 23:17:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gWdPH5VT5ADPd1ULMBUjKPOsMmffwhRFSqLk+tZJ4MQ=; b=LlPFIdr68aiHiJ
	/toBquywqWfiOysjiTxxv6iUeYRwU7xH8FIzXMi1p8Shpb7HC8+z+7LXhkkyhrIs1seru0dZTbCwG
	0V1I9L2EtUauwXi+H8gyPGcdsPu6fYlMCXRP0p963KxW43zF9SNMCQNKUbSOl9HEWvhoQt6sNumx8
	T7uBep/AZf9wJMnPWNAXjAuL+URTdZVi+DojnD1J3i4oWTBcgDzd6YTR5I16pLc/m5iUOX7UJ1AnR
	m63dVJ6i3teWLcmpmySjqi6OHs5Dgxi1Cbfe21a3A73pgUEQPBebhYXyJZqVUfiW3JcP2rViYEQp6
	SJundGgwVvgmiv+buEHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlfQc-0006iC-EQ; Wed, 17 Jun 2020 21:17:02 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlfQS-0006hk-M9; Wed, 17 Jun 2020 21:16:53 +0000
Received: by mail-io1-f65.google.com with SMTP id w18so4660219iom.5;
 Wed, 17 Jun 2020 14:16:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=j8CHgerKh+kCi8teLN3sFICipYAv2LGJo9hWRjpOE2w=;
 b=QabqFq6HfHvNLzANxproHy6QoONRMv+enNw+LUZkBIkCJWldIwb0ElIqbzofqKgOzh
 mCD5V48INaahu/wWnKFaC59BfZ6q5UcC6+b748F+u43lUSzvzMbAJRGwi6Nt/8fbqH7z
 mee4hyZBMmkscAVNJeM4l6pqxGgbZNDwQgNOLBmVK4EyeSroWNm403eEOQVIvPM1gSrM
 6W7Y3+bZjegdALU2IrowgcsUGI7Eo3nlWEG/UmHwM+v73LEnwR55C0AzIwFXsJVDGJlC
 GzPNAu6IKR530mEHsqFFjmFFbCOsQt7dEaRqsaOCM08j72mzatt4ddQLmsxmZPxs/z4w
 AFlg==
X-Gm-Message-State: AOAM533qru4hT9URhd1e9ROkza9UFmVf0NtZURmG0ggIdhdtD0rJJSOK
 AQhLdLnCUOYl7zDIEZf45B6GNmmFnQ==
X-Google-Smtp-Source: ABdhPJz4vmd5HW/ld1MMrmvl7UPaTLl7RJ4RvzL8jISwi+1GHLhCRTRT9B1g3Vta6QmIHKFwG4d3QQ==
X-Received: by 2002:a6b:3805:: with SMTP id f5mr1450731ioa.41.1592428612080;
 Wed, 17 Jun 2020 14:16:52 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id b73sm570734iof.13.2020.06.17.14.16.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 14:16:51 -0700 (PDT)
Received: (nullmailer pid 2837249 invoked by uid 1000);
 Wed, 17 Jun 2020 21:16:49 -0000
Date: Wed, 17 Jun 2020 15:16:49 -0600
From: Rob Herring <robh@kernel.org>
To: Amit Singh Tomar <amittomer25@gmail.com>
Subject: Re: [PATCH v4 05/10] dt-bindings: dmaengine: convert Actions Semi
 Owl SoCs bindings to yaml
Message-ID: <20200617211649.GA2837196@bogus>
References: <1591697830-16311-1-git-send-email-amittomer25@gmail.com>
 <1591697830-16311-6-git-send-email-amittomer25@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591697830-16311-6-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_141652_721041_07C2E971 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, andre.przywara@arm.com,
 linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 cristian.ciocaltea@gmail.com, vkoul@kernel.org, robh+dt@kernel.org,
 manivannan.sadhasivam@linaro.org, dan.j.williams@intel.com, afaerber@suse.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 09 Jun 2020 15:47:05 +0530, Amit Singh Tomar wrote:
> Converts the device tree bindings for the Actions Semi Owl SoCs DMA
> Controller over to YAML schemas.
> 
> It also adds new compatible string "actions,s700-dma".
> 
> Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
> ---
> Changes since v3:
> 	* No change.
> Changes since v2:
>         * Addressed Rob's comments:
>            - removed unnecessary description.
>            - added unevaluatedProperties
>            - added relevant information about
>              dma-channels and dma-request
>         * Added power-domain property.
> Change since v1:
>         * Updated the description field to reflect
>           only the necessary information.
>         * replaced the maxItems field with description for each
>           controller attribute(except interrupts).
>         * Replaced the clock macro with number to keep the example
>           as independent as possible.
> 
>  New patch, was not there in RFC.
> ---
>  Documentation/devicetree/bindings/dma/owl-dma.txt  | 47 -------------
>  Documentation/devicetree/bindings/dma/owl-dma.yaml | 79 ++++++++++++++++++++++
>  2 files changed, 79 insertions(+), 47 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/dma/owl-dma.txt
>  create mode 100644 Documentation/devicetree/bindings/dma/owl-dma.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

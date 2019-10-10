Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E3CD3097
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 20:41:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UCnz72g+CjoVvUVgK92TF17yta9OIlRMehsfEI/NhZI=; b=Lbm3Z7IgA5MQ90
	SI35Xy9zQJs7hwBGdpbv7u50d0IUom6MD7gbitup9E5NLJsuFt+o2bEn35+md/HVFwgq3hOQyz6/S
	TLmuNzQxq/e17xE6yYYBXhlvLhkIHgwJjV9iuVWgZ0170sWB3grrUAnuRnxmwIC0yKEGmR3XqjIzs
	Ha7+F7189jPMivi8BFUaSd+q0GkZBQPWPI/G9qU1xs9cbYZMjYnr22VOMLQduhHGy8JGDzpr02tgq
	aN+GLDYjRSPtI5Q9PO/8P/BSY6mzDfcXcfmyK0NdphnL+HdupN6TbFSXo6VyafKXIRpcYHLBWlN93
	Vyl4xjMLOhFfcqGUgOUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIdNE-0003aj-0d; Thu, 10 Oct 2019 18:41:16 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIdN3-0003a3-07
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 18:41:06 +0000
Received: by mail-oi1-f194.google.com with SMTP id k9so5813322oib.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 11:41:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XmWVPPP865LCrxGXKVMx+awlUtO1lgx35IM/Tkg3d/4=;
 b=B+ehRL+fgO1X2huPbV/FQ0OqluY66M5MzD+fCGFlJrh6IoRtqyQrt0dLZ7XO0lslHL
 8OcwrEu2jYGsTz4Q7BCgjm52J+vGQJ8sb1edHX+YCPJNscGNwSEM9D/JlbzZvtBSqiZQ
 n2KYC0aUClYuet2HeP/Q3hsW3NAQB2sEM5Ji8aSREzif1e4PMo69BX5BClQQJVQvd9yV
 fFuCDvdaqYLYiWqZyxJ/A8FNo0Y/cs53nmztbFQHhsLlSrNOLkWc8xCESu9b9pzxhC8v
 YxozyYWZJ3hZ9Qld7jB5CGCTmiSRJ5tNGbmz8F2xlYOookvYz2uOWDpxDCogOCVSVEeL
 UxTA==
X-Gm-Message-State: APjAAAXVqoYt2lEu7pD76cC/U+lxt3P0sbDhFf5xe5p+lBhecn2SMrdJ
 spQ70dqMPzi4V8VlB8HJ5BEK4fI=
X-Google-Smtp-Source: APXvYqyhnaWIZALC+KGjjdwYuY6XqSa0t4X1o/I5FP/w0EG3/e1rUV3ELAxXyTApAAYjD9jmtuIQiQ==
X-Received: by 2002:aca:a9ca:: with SMTP id s193mr9116907oie.85.1570732863751; 
 Thu, 10 Oct 2019 11:41:03 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t10sm1836170oib.49.2019.10.10.11.41.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 11:41:02 -0700 (PDT)
Date: Thu, 10 Oct 2019 13:41:02 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v3] dt-bindings: rng: exynos4-rng: Convert Exynos PRNG
 bindings to json-schema
Message-ID: <20191010184102.GA16673@bogus>
References: <20191002161340.11846-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002161340.11846-1-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_114105_038213_B511A5ED 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, Matt Mackall <mpm@selenic.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  2 Oct 2019 18:13:40 +0200, Krzysztof Kozlowski wrote:
> Convert Samsung Exynos Pseudo Random Number Generator bindings to DT
> schema format using json-schema.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v2:
> 1. Add additionalProperties false,
> 2. Include clock header and use defines instead of clock numbers.
> 
> Changes since v1:
> 1. Indent example with four spaces (more readable).
> ---
>  .../bindings/rng/samsung,exynos4-rng.txt      | 19 --------
>  .../bindings/rng/samsung,exynos4-rng.yaml     | 45 +++++++++++++++++++
>  MAINTAINERS                                   |  2 +-
>  3 files changed, 46 insertions(+), 20 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/rng/samsung,exynos4-rng.txt
>  create mode 100644 Documentation/devicetree/bindings/rng/samsung,exynos4-rng.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

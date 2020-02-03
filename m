Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A3315044E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 11:32:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SPcbVMTYwXLRFYnEoIckZNzjJomx1Ap2+Ygja6aoxEA=; b=X4Fr6WrsFpr0aQ
	9/Yp/BSCx2Q2E+FS3q2Lb8tx5LSH39sGKKijMP+VH47Bhl7qs4PfILefkpu/j+gwBGZFlhIa1s5gg
	u/cQqTLLqLIOOsKJJHzcaXZzQn9L7G2knMgbRdlwiBPwP+4uoaQmajSShHfgFhxmKzTqfJEEMHrf2
	CPiv8IEtKNot7R8oKNygh2GREDxvkaENb9Uh1d2Shl3E8GfwHPPBeYXmaoTeDsSuFVMsoYTvG4Lwg
	JoCcg2ka6K0V/5xJbDShjRIEcYE+NFq3P5eRp3z3I7QlxWhVFIHSW0MghQdRUDhYyFJJSlTRQjYu4
	gFgfd/OYsZkSwF1b9Sgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyZ1Z-0006Mz-Ek; Mon, 03 Feb 2020 10:32:13 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyZ1O-0006MK-OS
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 10:32:04 +0000
Received: by mail-wr1-f68.google.com with SMTP id c9so17274524wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 02:32:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NFuh06mCbIFHLnWl/yp4KwHBKhZRCL1Lbf1jiW0JM98=;
 b=sK9UVmIHTAwTMzMja0yDLqqKlzGuvcYlTutcOg9a3Ij2hYBeHbXEL14DAfhF0qCdP4
 3FcT0iXz4Bhij/lHOzRolNZOBZ8zZKhsZcP2MKKn74DBzwVxdl+hzjkbTgNHnPvxAYZX
 dmiE1O2q7P3UDRs12xTJvv/knafcftT5771RJ5EpLxtzdABfdseOzJDgNw6duOLSuNak
 YWGtPHy9B7Fdhl/EJp39c52w9KrKwsASne8Wc0ocXEQAK8Whbmz9ckEf2eR8OaEPOLhE
 O6fH9Oo27cR8gwFFq7gx7ee29k8+/CAtHiSqHbKOKLQ7fKkcxWwRZooMCknj0yBsoX9F
 f/ww==
X-Gm-Message-State: APjAAAXdtbmEOeRckhbtDtlMPPKLO/a5x05prd5mYU6M+qe7sT4kYaKt
 sAf+9SUEYkmtUaZmU42CrQ==
X-Google-Smtp-Source: APXvYqyQJyScAUAfc7hRV/ni9Ov1rrCOL/vQpSraOmoLvu0hd1vpN6CEC4XJZDRuzYtupTLkxa0YGQ==
X-Received: by 2002:a5d:6445:: with SMTP id d5mr14473037wrw.244.1580725921100; 
 Mon, 03 Feb 2020 02:32:01 -0800 (PST)
Received: from rob-hp-laptop ([212.187.182.163])
 by smtp.gmail.com with ESMTPSA id t131sm23233901wmb.13.2020.02.03.02.31.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2020 02:32:00 -0800 (PST)
Received: (nullmailer pid 31847 invoked by uid 1000);
 Mon, 03 Feb 2020 10:31:58 -0000
Date: Mon, 3 Feb 2020 10:31:58 +0000
From: Rob Herring <robh@kernel.org>
To: Oscar A Perez <linux@neuralgames.com>
Subject: Re: [PATCH 1/2] hwrng: Add support for ASPEED RNG
Message-ID: <20200203103158.GA9276@bogus>
References: <20200120150113.2565-1-linux@neuralgames.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120150113.2565-1-linux@neuralgames.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_023202_799724_2E778123 
X-CRM114-Status: GOOD (  24.05  )
X-Spam-Score: 3.2 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_ABUSE_MALW   Contains an abused malware URL listed in
 the Spamhaus DBL blocklist [URIs: infradead.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Herbert Xu <herbert@gondor.apana.org.au>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, Matt Mackall <mpm@selenic.com>,
 linux-arm-kernel@lists.infradead.org, Joel Stanley <joel@jms.id.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 20, 2020 at 03:01:08PM +0000, Oscar A Perez wrote:
> This minimal driver adds support for the Hardware Random Number Generator
> that comes with the AST2400/AST2500/AST2600 SOCs from AspeedTech.

This patch is not a driver. 'dt-bindings: rng: ...' for the subject. 
(Plus, 2 patches with the same subject is never a good idea.)

> 
> The HRNG on these SOCs uses Ring Oscillators working together to generate
> a stream of random bits that can be read by the platform via a 32bit data
> register.
> 
> Signed-off-by: Oscar A Perez <linux@neuralgames.com>
> ---
>  .../devicetree/bindings/rng/aspeed-rng.yaml   | 90 +++++++++++++++++++
>  1 file changed, 90 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/rng/aspeed-rng.yaml
> 
> diff --git a/Documentation/devicetree/bindings/rng/aspeed-rng.yaml b/Documentation/devicetree/bindings/rng/aspeed-rng.yaml
> new file mode 100644
> index 000000000000..06070ebe1c33
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/rng/aspeed-rng.yaml
> @@ -0,0 +1,90 @@
> +# SPDX-License-Identifier: GPL-2.0

Dual license new bindings:

(GPL-2.0-only OR BSD-2-Clause)

> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/rng/aspeed-rng.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +
> +title: Bindings for Aspeed Hardware Random Number Generator
> +
> +
> +maintainers:
> +  - Oscar A Perez <linux@neuralgames.com>
> +
> +
> +description: |
> +  The HRNG on the AST2400/AST2500/AST2600 SOCs from AspeedTech  uses four Ring
> +  Oscillators working together to generate a stream of random bits that can be
> +  read by the platform via a 32bit data register every one microsecond.
> +  All the platform has to do is to provide to the driver the 'quality' entropy
> +  value, the  'mode' in which the combining  ROs will generate the  stream  of
> +  random bits and, the 'period' value that is used as a wait-time between reads
> +  from the 32bit data register.
> +
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - aspeed,ast2400-rng
> +              - aspeed,ast2500-rng
> +              - aspeed,ast2600-rng

Just:

compatible:
  enum: ...

> +
> +
> +  reg:
> +    description:
> +      Base address and length of the register set of this block.

Drop. That's *every* 'reg' property.

> +      Currently 'reg' must be eight bytes wide and 32-bit aligned.

Currently? Is that going to change? Are things going to break if the DT 
has a bigger size?

> +
> +    maxItems: 1
> +
> +
> +  period:

Needs a vendor prefix and unit suffix.

> +    description:
> +      Wait time in microseconds to be used between reads.
> +      The RNG on these Aspeed SOCs generates 32bit of random data
> +      every one microsecond. Choose between 1 and n microseconds.

Why would you pick something more than 1?

> +
> +    maxItems: 1
> +
> +
> +  mode:

Needs a vendor prefix and a type reference.

> +    description:
> +      One of the eight modes in which the four internal ROs (Ring
> +      Oscillators)  are combined to generate a stream  of random
> +      bits. The default mode is seven which is the default method
> +      of combining RO random bits on these Aspeed SOCs.
> +
> +    maxItems: 1
> +
> +
> +  quality:

Needs a vendor prefix and a type reference.

> +    description:
> +      Estimated number of bits of entropy per 1024 bits read from
> +      the RNG.  Note that the default quality is zero which stops
> +      this HRNG from automatically filling the kernel's entropy
> +      pool with data.
> +
> +    maxItems: 1
> +
> +
> +required:
> +  - compatible
> +  - reg
> +  - period
> +  - quality
> +
> +
> +examples:
> +  - |
> +    rng: hwrng@1e6e2074 {

rng@...

> +         compatible = "aspeed,ast2500-rng";
> +         reg = <0x1e6e2074 0x8>;
> +         period = <4>;
> +         quality = <128>;
> +         mode = <0x7>;
> +    };
> +
> +
> +...
> -- 
> 2.17.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

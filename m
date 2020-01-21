Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C33314356C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 02:53:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RNU0GcEObGnYkNjrd+Eo0kO0pbplEggFGvq0t15RnG0=; b=nMHSFs+mMWf7sU
	5zCVCiEet/EX/Hx6T6tnOIfLkbvcgEbheMAk1cQSkO5ee7YZiLnDHMy3foFlQYEp+B0ZHPk/abTdF
	FEKqZ2HAZlHI6MNIMtqTUibFbs+mYiCymzon76fRqGWdjxRskRdvjj6tfQNLn4ztTDpQV1G5PpNJQ
	JiKt3qTs137g64j2VVFcos5GTTrWZx0jX1r23yRPvkD712mg4jVFFKVXRvCpCyZiOw2JCXakwJNYl
	kcNr5RuMPdmIooNBfdRttgC9nmv1Ws6QK+dnJqJbu51KrLq1N2cmrZAMQ2FdMat6gmBGGXJUzLWq1
	6mQDb/moqBa9euPpSDcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itijf-0003YH-7h; Tue, 21 Jan 2020 01:53:43 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itijT-0003Xd-SU
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 01:53:33 +0000
Received: by mail-qk1-x743.google.com with SMTP id x1so1165499qkl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Jan 2020 17:53:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DLwWB53t6sz09f9B1uK0zwEN9SxdL7h+I/vAqzXh1rs=;
 b=IUMcFpRQ8vz/Oz098DsJ/MlfrAlkASfp0SYSePY2V0VNezU4rSDADZWDuogLY83ITE
 6qOiftcsBHTGequV+QapUdKtSjbKt+Lu/mUFk4ZyU+XNjiuz67a5JUmyh7cgP3cDXB4u
 h3CtmwJqCqQUK9zrwgIefdFvbNJZ8pnnLyo0s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DLwWB53t6sz09f9B1uK0zwEN9SxdL7h+I/vAqzXh1rs=;
 b=ZRTFh+45sNZ4nn3pPcA3iTwevxahYUnUHBAuc7CJwoJqiDsw2cZFk41ccLD+P3qm85
 s/IJY8xarwH/s/1AWnyeMsDxQOyT3+dOLJC15gV998ejTJOP40/xcIAMkWSVkCZFde8R
 Ty8Pmq2B3IV3Q6I12/te16PbRCMU5IEdNnm+03FCQgG2ZCA4OAqMQ8acvM9GwXwM8+E0
 Hzhq0K+Q48y+HNDU4e7xMJJQ4dJgIkeNtn78fII/rqCpZrxitbmlqPiQ0lsrFkpXvg/C
 OXkyzcYmHtB2IRZstRodKIRJGaEI1regpVUWEWlx+Z/FwIn62Z6D34ntsjPn+ua7Mhw2
 356w==
X-Gm-Message-State: APjAAAWj5eZe5KSvBTSowLWBkg3lJZurkvYaI9ZeO0AYjCgdaTh46z8z
 xDHPCntEDQMziWblqYzLRrbcjpi6GQPodMJVluw=
X-Google-Smtp-Source: APXvYqwu+C+7GEOmDwQMJ1OCXr0L1MJ1vO3XA/YvvHsO/1Pr4qqlLpiL2FeuSh8Rtqj95aStJGWL/5FEIAlw9Nv83x8=
X-Received: by 2002:a37:a43:: with SMTP id 64mr36517qkk.292.1579571606933;
 Mon, 20 Jan 2020 17:53:26 -0800 (PST)
MIME-Version: 1.0
References: <20200120150113.2565-1-linux@neuralgames.com>
In-Reply-To: <20200120150113.2565-1-linux@neuralgames.com>
From: Joel Stanley <joel@jms.id.au>
Date: Tue, 21 Jan 2020 01:53:15 +0000
Message-ID: <CACPK8XfuVN3Q=npEoOP-amQS0-wemxcx6LKaHHZEsBAHzq1wzA@mail.gmail.com>
Subject: Re: [PATCH 1/2] hwrng: Add support for ASPEED RNG
To: Oscar A Perez <linux@neuralgames.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_175332_124178_F8CA17BB 
X-CRM114-Status: GOOD (  22.98  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Matt Mackall <mpm@selenic.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, 20 Jan 2020 at 15:12, Oscar A Perez <linux@neuralgames.com> wrote:
>
> This minimal driver adds support for the Hardware Random Number Generator
> that comes with the AST2400/AST2500/AST2600 SOCs from AspeedTech.
>
> The HRNG on these SOCs uses Ring Oscillators working together to generate
> a stream of random bits that can be read by the platform via a 32bit data
> register.

Thanks for the patch.

We've been using the timeriomem-rng driver for the past few years on
aspeed hardware. You can see how that's set up by looking at
arch/arm/boot/dts/aspeed-g{4,5,6}.dtsi

I suggest we continue to use the generic driver.

Cheers,

Joel



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
> +
> +
> +  reg:
> +    description:
> +      Base address and length of the register set of this block.
> +      Currently 'reg' must be eight bytes wide and 32-bit aligned.
> +
> +    maxItems: 1
> +
> +
> +  period:
> +    description:
> +      Wait time in microseconds to be used between reads.
> +      The RNG on these Aspeed SOCs generates 32bit of random data
> +      every one microsecond. Choose between 1 and n microseconds.
> +
> +    maxItems: 1
> +
> +
> +  mode:
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

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

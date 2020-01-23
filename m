Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F96A14604F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 02:26:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OIAiVKFnBGixOA867Fc+y3Y2dTxnkDHR2kGaoselOFg=; b=lT9XCjsffSZYPTxf+5uERFxYA
	f07d49q3eCjPMxRZrRqg7qE1g1rhipkxH0eN7R+z4nP3MOxskxUPodQQyD6gi6Ag7yWkIlvGB/0C1
	8lsP4i1LqD9ykBG9uHYCHb0IrRSXrR9nAwBRem5VhWR49DWYYT2jploIeNoIAFxkDFPihOg23S3SV
	18hr5Irt4BSSU9B55j5Le65A1B61LxReOi03ho20tLtkoHYZNfs2stA45+UEoaCGq94KLRbKPUKUC
	flolvvCdByS70cEyXxvaIweDePAnE4/eEsDDNNq83ANAoBL1LaANNGjpXG0e1QstIaNCAM3g4rOq+
	yISEUufxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuRFl-00022F-Rv; Thu, 23 Jan 2020 01:25:49 +0000
Received: from kross.rwserver.com ([69.13.37.146] helo=kross2019.rwserver.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iuRFc-00021L-VZ
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 01:25:42 +0000
Received: from localhost (localhost [127.0.0.1])
 by kross2019.rwserver.com (Postfix) with ESMTP id 1A6B7B39EF;
 Wed, 22 Jan 2020 19:25:37 -0600 (CST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=neuralgames.com;
 h=user-agent:message-id:references:in-reply-to:subject:subject
 :from:from:date:date:content-transfer-encoding:content-type
 :content-type:mime-version; s=default; t=1579742736; x=
 1581557137; bh=Rk/Ounh4vmGF04q+59h2/BCGllWhaNrGkT3gZmCD4gg=; b=J
 L4ECqtM8PRZ4hdC/SzbrrjBJW1nz42HjpM5FgtmftoIl4EvXxcRCHbBKS+YhMwqB
 6Eu/gtTTxKx56BePYs5714M1h0QpcKjlh3tyJnJ2fTjxMUUUFDCzxDESp+FZo/k7
 XPSQJGUp0igogDccsH5O87reiPvJc6ApOq/i1bo/CQ=
X-Virus-Scanned: Debian amavisd-new at kross2019.rwserver.com
Received: from kross2019.rwserver.com ([127.0.0.1])
 by localhost (kross2019.rwserver.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id IFigBOrF8czw; Wed, 22 Jan 2020 19:25:36 -0600 (CST)
Received: from rwserver.com (localhost [IPv6:::1])
 (Authenticated sender: linux@neuralgames.com)
 by kross2019.rwserver.com (Postfix) with ESMTPA id 7723FB39EE;
 Wed, 22 Jan 2020 19:25:36 -0600 (CST)
MIME-Version: 1.0
Date: Wed, 22 Jan 2020 19:25:36 -0600
From: linux@neuralgames.com
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH 1/2] hwrng: Add support for ASPEED RNG
In-Reply-To: <CACPK8XfuVN3Q=npEoOP-amQS0-wemxcx6LKaHHZEsBAHzq1wzA@mail.gmail.com>
References: <20200120150113.2565-1-linux@neuralgames.com>
 <CACPK8XfuVN3Q=npEoOP-amQS0-wemxcx6LKaHHZEsBAHzq1wzA@mail.gmail.com>
Message-ID: <4446ffb694c7742ca9492c7360856789@neuralgames.com>
X-Sender: linux@neuralgames.com
User-Agent: Roundcube Webmail/1.3.8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_172541_141902_FFC1C1DB 
X-CRM114-Status: GOOD (  19.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Matt Mackall <mpm@selenic.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Joel,

On 2020-01-20 19:53, Joel Stanley wrote:
> Hi,
> 
> On Mon, 20 Jan 2020 at 15:12, Oscar A Perez <linux@neuralgames.com> 
> wrote:
>> 
>> This minimal driver adds support for the Hardware Random Number 
>> Generator
>> that comes with the AST2400/AST2500/AST2600 SOCs from AspeedTech.
>> 
>> The HRNG on these SOCs uses Ring Oscillators working together to 
>> generate
>> a stream of random bits that can be read by the platform via a 32bit 
>> data
>> register.
> 
> Thanks for the patch.
> 
> We've been using the timeriomem-rng driver for the past few years on
> aspeed hardware. You can see how that's set up by looking at
> arch/arm/boot/dts/aspeed-g{4,5,6}.dtsi
> 
> I suggest we continue to use the generic driver.
> 
> Cheers,
> 
> Joel
> 
> 
> 

Thanks for reviewing the patch.

The RNG on Aspeed hardware allows eight different modes for combining 
its four internal Ring Oscillators that together generate a stream of 
random bits. However, the timeriomem-rng driver does not allow for mode 
selection so, the Aspeed RNG with this generic driver runs always on 
mode 'seven' (The default value for mode according to the AspeedTech 
datasheets).

I've performed some testings on this Aspeed RNG using the NIST 
Statistical Test Suite (NIST 800-22r1a) and, the results I got show that 
the default mode 'seven' isn't producing the best entropy and linear 
rank when compared against the other modes available on these SOCs.  On 
the other hand, the driver that I'm proposing here allows for mode 
selection which would help improve the random output for those looking 
to get the best out of this Aspeed RNG.

Thanks and regards,

Oscar A Perez

>> 
>> Signed-off-by: Oscar A Perez <linux@neuralgames.com>
>> ---
>>  .../devicetree/bindings/rng/aspeed-rng.yaml   | 90 
>> +++++++++++++++++++
>>  1 file changed, 90 insertions(+)
>>  create mode 100644 
>> Documentation/devicetree/bindings/rng/aspeed-rng.yaml
>> 
>> diff --git a/Documentation/devicetree/bindings/rng/aspeed-rng.yaml 
>> b/Documentation/devicetree/bindings/rng/aspeed-rng.yaml
>> new file mode 100644
>> index 000000000000..06070ebe1c33
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/rng/aspeed-rng.yaml
>> @@ -0,0 +1,90 @@
>> +# SPDX-License-Identifier: GPL-2.0
>> +%YAML 1.2
>> +---
>> +$id: "http://devicetree.org/schemas/rng/aspeed-rng.yaml#"
>> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
>> +
>> +
>> +title: Bindings for Aspeed Hardware Random Number Generator
>> +
>> +
>> +maintainers:
>> +  - Oscar A Perez <linux@neuralgames.com>
>> +
>> +
>> +description: |
>> +  The HRNG on the AST2400/AST2500/AST2600 SOCs from AspeedTech  uses 
>> four Ring
>> +  Oscillators working together to generate a stream of random bits 
>> that can be
>> +  read by the platform via a 32bit data register every one 
>> microsecond.
>> +  All the platform has to do is to provide to the driver the 
>> 'quality' entropy
>> +  value, the  'mode' in which the combining  ROs will generate the  
>> stream  of
>> +  random bits and, the 'period' value that is used as a wait-time 
>> between reads
>> +  from the 32bit data register.
>> +
>> +
>> +properties:
>> +  compatible:
>> +    oneOf:
>> +      - items:
>> +          - enum:
>> +              - aspeed,ast2400-rng
>> +              - aspeed,ast2500-rng
>> +              - aspeed,ast2600-rng
>> +
>> +
>> +  reg:
>> +    description:
>> +      Base address and length of the register set of this block.
>> +      Currently 'reg' must be eight bytes wide and 32-bit aligned.
>> +
>> +    maxItems: 1
>> +
>> +
>> +  period:
>> +    description:
>> +      Wait time in microseconds to be used between reads.
>> +      The RNG on these Aspeed SOCs generates 32bit of random data
>> +      every one microsecond. Choose between 1 and n microseconds.
>> +
>> +    maxItems: 1
>> +
>> +
>> +  mode:
>> +    description:
>> +      One of the eight modes in which the four internal ROs (Ring
>> +      Oscillators)  are combined to generate a stream  of random
>> +      bits. The default mode is seven which is the default method
>> +      of combining RO random bits on these Aspeed SOCs.
>> +
>> +    maxItems: 1
>> +
>> +
>> +  quality:
>> +    description:
>> +      Estimated number of bits of entropy per 1024 bits read from
>> +      the RNG.  Note that the default quality is zero which stops
>> +      this HRNG from automatically filling the kernel's entropy
>> +      pool with data.
>> +
>> +    maxItems: 1
>> +
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - period
>> +  - quality
>> +
>> +
>> +examples:
>> +  - |
>> +    rng: hwrng@1e6e2074 {
>> +         compatible = "aspeed,ast2500-rng";
>> +         reg = <0x1e6e2074 0x8>;
>> +         period = <4>;
>> +         quality = <128>;
>> +         mode = <0x7>;
>> +    };
>> +
>> +
>> +...
>> --
>> 2.17.1
>> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

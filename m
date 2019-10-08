Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2889FD00D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 20:47:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lcv/ZyeaAnChjNub1Xg5QrFCpMqR8O0ckcFEOnFU27k=; b=dwkrH9eo8DtfIgaQhSbMSIM3q
	xzDnOlA/Hl67+m+7qimp2F9q6L7NrrMXdFukmQDmDiCKjH5dT6tUI3QMLfrsgKB1es1aGrdk/qE0e
	x/afDLkKHhlexnNFhxafGYb/HIgePwdkixZPVmZIflTlxK8iGFDkoSuLafbScgCt54tCYG5o/ENcY
	BPC4/OcR0IdqoDaWjOVy8EsfkCJPtU8OSMxANACa297Wi9sNiQnNhhsSBwhL1S+tecV28i0AZ9/aG
	ISB1kOJiG1ls489djehkDTHmERbub6lhuvJTLEmE6gXwn82T8TUhUiHLeDqvUytTkj3B1aRIAspUJ
	uxoDdXjCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHuWC-0004hW-LN; Tue, 08 Oct 2019 18:47:32 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHuW3-0004gs-Aa
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 18:47:24 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 11:47:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,272,1566889200"; d="scan'208";a="187381092"
Received: from yoojae-mobl1.amr.corp.intel.com (HELO [10.7.153.148])
 ([10.7.153.148])
 by orsmga008.jf.intel.com with ESMTP; 08 Oct 2019 11:47:19 -0700
Subject: Re: [PATCH 1/5] dt-bindings: i2c: aspeed: add buffer and DMA mode
 transfer support
To: Brendan Higgins <brendanhiggins@google.com>
References: <20191007231313.4700-1-jae.hyun.yoo@linux.intel.com>
 <20191007231313.4700-2-jae.hyun.yoo@linux.intel.com>
 <20191008181213.GB155928@google.com>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <c09072c6-13f2-202d-8985-ccf409793784@linux.intel.com>
Date: Tue, 8 Oct 2019 11:47:19 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191008181213.GB155928@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_114723_407571_A7D809C2 
X-CRM114-Status: GOOD (  19.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, openbmc@lists.ozlabs.org,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Tao Ren <taoren@fb.com>, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Brendan,

On 10/8/2019 11:12 AM, Brendan Higgins wrote:
> On Mon, Oct 07, 2019 at 04:13:09PM -0700, Jae Hyun Yoo wrote:
>> Append bindings to support buffer mode and DMA mode transfer.
>>
>> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>> ---
>>   .../devicetree/bindings/i2c/i2c-aspeed.txt    | 67 +++++++++++++++++--
>>   1 file changed, 60 insertions(+), 7 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt b/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt
>> index 8fbd8633a387..e40dcc108307 100644
>> --- a/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt
>> +++ b/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt
>> @@ -3,7 +3,10 @@ Device tree configuration for the I2C busses on the AST24XX and AST25XX SoCs.
>>   Required Properties:
>>   - #address-cells	: should be 1
>>   - #size-cells		: should be 0
>> -- reg			: address offset and range of bus
>> +- reg			: Address offset and range of bus registers.
>> +			  An additional SRAM buffer address offset and range is
>> +			  optional in case of enabling I2C dedicated SRAM for
>> +			  buffer mode transfer support.
> 
> Sorry, I am having trouble parsing this. This seems like the SRAM buffer
> is global to all busses. Can you clarify? I expect I will probably have
> some more questions elsewhere.

Each SoC has a different SRAM structure. In case of AST2400, it has a
SRAM buffer pool which can be shared by all busses. In the other hand,
AST2500/2600 have dedicated SRAM spaces for each bus.

This is what I explained in the cover letter:

* Buffer mode
   AST2400:
     It has 2 KBytes (256 Bytes x 8 pages) of I2C SRAM buffer pool from
     0x1e78a800 to 0x1e78afff that can be used for all busses with
     buffer pool manipulation. To simplify implementation for supporting
     both AST2400 and AST2500, it assigns each 128 Bytes per bus without
     using buffer pool manipulation so total 1792 Bytes of I2C SRAM
     buffer will be used.

   AST2500:
     It has 16 Bytes of individual I2C SRAM buffer per each bus and its
     range is from 0x1e78a200 to 0x1e78a2df, so it doesn't have 'buffer
     page selection' bit field in the Function control register, and
     neither 'base address pointer' bit field in the Pool buffer control
     register it has. To simplify implementation for supporting both
     AST2400 and AST2500, it writes zeros on those register bit fields
     but it's okay because it does nothing in AST2500.

>>   - compatible		: should be "aspeed,ast2400-i2c-bus"
>>   			  or "aspeed,ast2500-i2c-bus"
>>   - clocks		: root clock of bus, should reference the APB
>> @@ -16,6 +19,18 @@ Optional Properties:
>>   - bus-frequency	: frequency of the bus clock in Hz defaults to 100 kHz when not
>>   		  specified
>>   - multi-master	: states that there is another master active on this bus.
>> +- aspeed,dma-buf-size	: size of DMA buffer (from 2 to 4095 in case of AST2500
>> +			  or later versions).
>> +			  Only AST2500 and later versions support DMA mode
>> +			  under some limitations:
>> +			  I2C is sharing the DMA H/W with UHCI host controller
>> +			  and MCTP controller. Since those controllers operate
>> +			  with DMA mode only, I2C has to use buffer mode or byte
>> +			  mode instead if one of those controllers is enabled.
>> +			  Also make sure that if SD/eMMC or Port80 snoop uses
>> +			  DMA mode instead of PIO or FIFO respectively, I2C
>> +			  can't use DMA mode. If both DMA and buffer modes are
>> +			  enabled, DMA mode will be selected.
> 
> nit: I think it makes sense to break down the exceptions into a
> bulleted list.

Okay. Will update it using bulleted list.

Thanks,

Jae

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

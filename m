Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A5CD0499
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 02:08:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wMlEDcJmqCOnPUXkYcRCU1ifZaoXJno7JBOUaWSa/Ik=; b=ekGaWzCR/GFW6QrB5HGagsRz8
	A2JjRAQCdtH1kYb388eduGOUfv8UGZu0DqDGyJMN1MaKdwIspAMhHQJpj/KI3mwHHrfS4effRc1KL
	Dku9pRfjCbUxdgYaHkaNAwM8LzFpYg7ley7/5XFIALWWGOwNl0hghELkS2lydA4vS4uGFFPWbSjgJ
	balAX2WwCL5z160YEGWFnohOKbKL83s1OiHK0gxar0RBdO7qPkXF0OP9YNe7YicEEMTYB92yUErxH
	lsAdwNDjmRCX22diZi/G7SfN3umdt/j1sLJAu0mrTnGEKX06tBjGh9xu1qHHO7o4SIPJbYLu3BVa5
	zJyBpPB9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHzXD-00024l-JU; Wed, 09 Oct 2019 00:08:55 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHzX4-00024L-9w
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 00:08:48 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 17:08:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,273,1566889200"; d="scan'208";a="187465243"
Received: from yoojae-mobl1.amr.corp.intel.com (HELO [10.7.153.148])
 ([10.7.153.148])
 by orsmga008.jf.intel.com with ESMTP; 08 Oct 2019 17:08:44 -0700
Subject: Re: [PATCH 4/5] i2c: aspeed: add buffer mode transfer support
To: Brendan Higgins <brendanhiggins@google.com>
References: <20191007231313.4700-1-jae.hyun.yoo@linux.intel.com>
 <20191007231313.4700-5-jae.hyun.yoo@linux.intel.com>
 <20191008201254.GC155928@google.com>
 <29436b73-3473-d34d-0c7a-6f78ff077002@linux.intel.com>
 <CAFd5g4522cSkS_-aJHjc3fqM9nYRjs4DmQx9te3PcPMh8WEMBg@mail.gmail.com>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <36c4d421-2a9f-bee0-5cdb-4a2114f7870f@linux.intel.com>
Date: Tue, 8 Oct 2019 17:08:44 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAFd5g4522cSkS_-aJHjc3fqM9nYRjs4DmQx9te3PcPMh8WEMBg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_170846_392932_2AAE14D9 
X-CRM114-Status: GOOD (  40.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, Tao Ren <taoren@fb.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-i2c@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/8/2019 4:15 PM, Brendan Higgins wrote:
> On Tue, Oct 8, 2019 at 2:10 PM Jae Hyun Yoo
> <jae.hyun.yoo@linux.intel.com> wrote:
>>
>> Hi Brendan,
>>
>> On 10/8/2019 1:12 PM, Brendan Higgins wrote:
>>> On Mon, Oct 07, 2019 at 04:13:12PM -0700, Jae Hyun Yoo wrote:
>>>> Byte mode currently this driver uses makes lots of interrupt call
>>>
>>> nit: Drop "Byte mode".
>>
>> 'Byte mode' is one of modes which is described in the datasheet.
>>
>> Would it be better if I change it like below?
>> "This driver uses byte mode that makes lots of interrupt call ..."
> 
> Yeah, I think that would probably be clearer.

Okay. Will change it.

>>>> which isn't good for performance and it makes the driver very
>>>> timing sensitive. To improve performance of the driver, this commit
>>>> adds buffer mode transfer support which uses I2C SRAM buffer
>>>> instead of using a single byte buffer.
>>>
>>> nit: Please use imperative mood.
>>
>> I used imperative mood in commit title. The commit message is okay as it
>> is.
> 
> Hey, that's just what I have been told in the past. I don't actually
> feel strongly about it though. If no one else cares, then it is fine.

Yeah, I suggested that in the past on a commit title of your patch not
on a commit message body. Anyway, it's not a strict rule.

>>>> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>>>> Tested-by: Tao Ren <taoren@fb.com>
>>>> ---
>>>>    drivers/i2c/busses/i2c-aspeed.c | 297 ++++++++++++++++++++++++++++----
>>>>    1 file changed, 263 insertions(+), 34 deletions(-)
>>>>
>>>> diff --git a/drivers/i2c/busses/i2c-aspeed.c b/drivers/i2c/busses/i2c-aspeed.c
>>>> index 40f6cf98d32e..37d1a7fa2f87 100644
>>>> --- a/drivers/i2c/busses/i2c-aspeed.c
>>>> +++ b/drivers/i2c/busses/i2c-aspeed.c
> [...]
>>>> @@ -238,6 +260,7 @@ static u32 aspeed_i2c_slave_irq(struct aspeed_i2c_bus *bus, u32 irq_status)
>>>>    {
>>>>       u32 command, irq_handled = 0;
>>>>       struct i2c_client *slave = bus->slave;
>>>> +    int i, len;
>>>>       u8 value;
>>>>
>>>>       if (!slave)
>>>> @@ -260,7 +283,12 @@ static u32 aspeed_i2c_slave_irq(struct aspeed_i2c_bus *bus, u32 irq_status)
>>>>
>>>>       /* Slave was sent something. */
>>>>       if (irq_status & ASPEED_I2CD_INTR_RX_DONE) {
>>>> -            value = readl(bus->base + ASPEED_I2C_BYTE_BUF_REG) >> 8;
>>>> +            if (bus->buf_base &&
>>>> +                bus->slave_state == ASPEED_I2C_SLAVE_WRITE_RECEIVED &&
>>>> +                !(irq_status & ASPEED_I2CD_INTR_NORMAL_STOP))
>>>
>>> I think checking for the buf_base all over the place makes this really
>>> complicated and hard to read.
>>>
>>> It might be better to just split this out and have separate handlers
>>> based on what mode the driver is running in.
>>
>> I think you're saying about splitting this irq handler out to:
>> aspeed_i2c_slave_byte_mode_irq()
>> aspeed_i2c_slave_buffer_mode_irq()
>> aspeed_i2c_slave_dma_mode_irq()
>>
>> Yes, I can do like that but it will bring us two bad things:
>> 1. It makes big chunks of duplicate code because most of interrupt
>>      handling logic is the same.
>> 2. If we are going to change something in irq routine, we need to
>>      touch all irq routines if the change is commonly used.
>>
>> I think, the way this patch uses is better.
> 
> I think there are other alternatives. For example, I think you could
> abstract over the buffer reading mechanism here.
> 
> We might have a method on aspeed_i2c_bus called handle_rx_done() or
> something like that which could get called here.
> 
> I just really don't want to grow the McCabe's complexity of this
> function much more, it is really too high as it is. Nevertheless, I am
> open to other suggestions on how to improve this function.

Okay, Using of abstract functions would be a better way to simplify it.
Will update it in the next spin.

>>>> +                    value = readb(bus->buf_base);
>>>> +            else
>>>> +                    value = readl(bus->base + ASPEED_I2C_BYTE_BUF_REG) >> 8;
>>>>               /* Handle address frame. */
>>>>               if (bus->slave_state == ASPEED_I2C_SLAVE_START) {
>>>>                       if (value & 0x1)
>>>> @@ -275,6 +303,20 @@ static u32 aspeed_i2c_slave_irq(struct aspeed_i2c_bus *bus, u32 irq_status)
>>>>
>>>>       /* Slave was asked to stop. */
>>>>       if (irq_status & ASPEED_I2CD_INTR_NORMAL_STOP) {
>>>> +            if (bus->slave_state == ASPEED_I2C_SLAVE_WRITE_RECEIVED &&
>>>> +                irq_status & ASPEED_I2CD_INTR_RX_DONE) {
>>>> +                    if (bus->buf_base) {
>>>> +                            len = FIELD_GET(ASPEED_I2CD_BUF_RX_COUNT_MASK,
>>>> +                                            readl(bus->base +
>>>> +                                                  ASPEED_I2C_BUF_CTRL_REG));
>>>
>>> It looks like you have a lot of improvements in here unrelated to adding
>>> support for buffer mode.
>>>
>>> I really appreciate the improvements, but it makes it harder to
>>> understand what buffer features you are adding vs. what
>>> improvments/modernizations you are making.
>>>
>>> Can you split this commit up?
>>
>> No, this isn't an improvement. This code will not be executed if
>> transfer mode is byte mode. This is added because data handling pattern
>> is different in buffer mode so the collected data in buffer mode should
>> be sent when it recieves RX_DONE.
> 
> Oh sorry about that, I saw the switch to the
> devm_platform_ioremap_resource below and saw all the FIELD_{GET|PREP}
> and assumed that some of them were improvements. If
> devm_platform_ioremap_resource is the only one, that's fine.
> 
> Actually, would you mind (in a separate commit), update the existing
> usages to FIELD_{GET|PREP}? It's kind of jarring going back and forth
> between them.

No. Will do that later using a separate commit.

>>>> +                            for (i = 0; i < len; i++) {
>>>> +                                    value = readb(bus->buf_base + i);
>>>> +                                    i2c_slave_event(slave,
>>>> +                                                    I2C_SLAVE_WRITE_RECEIVED,
>>>> +                                                    &value);
>>>> +                            }
>>>> +                    }
>>>> +            }
>>>>               irq_handled |= ASPEED_I2CD_INTR_NORMAL_STOP;
>>>>               bus->slave_state = ASPEED_I2C_SLAVE_STOP;
>>>>       }
> [....]
>>>> @@ -990,6 +1180,45 @@ static int aspeed_i2c_probe_bus(struct platform_device *pdev)
>>>>               bus->get_clk_reg_val = (u32 (*)(struct device *, u32))
>>>>                               match->data;
>>>>
>>>> +    /*
>>>> +     * Enable I2C SRAM in case of AST2500.
>>>> +     * SRAM is enabled by default in AST2400 and AST2600.
>>>> +     */
>>>
>>> This probe function is already pretty complicated as it is. Can we move
>>> this to a helper function (especially since it only applies to the
>>> 25xx)?
>>
>> Okay, that would be better. I'll add this transfer mode setting logic
>> as a helper function.
>>
>>>> +    if (of_device_is_compatible(pdev->dev.of_node,
>>>> +                                "aspeed,ast2500-i2c-bus")) {
>>>> +            struct regmap *gr_regmap = syscon_regmap_lookup_by_compatible("aspeed,ast2500-i2c-gr");
>>>
>>> So this memory is global, right? It is shared by all the busses?
>>
>> Yes, this is global register area which can be shared by all busses.
>>
>>> If I am reading this right, then I think we need to protect so that only
>>> one bus is accessing this memory at a time.
>>
>> It will not be accessed at run time but only at probing time. Since we
>> don't use multi-threaded probing, we don't need to protect it.
> 
> What if this is loaded as a module?

Loading modules at the same time? This driver just enables the bit. It
doesn't have a bit clearing code so it would be safe even in that case.

Actually, I2C SRAM doesn't need to be disabled, means that the SRAM can
be left as enabled for all xfer modes. It's an unnecessary control so
Aspeed removed this register setting in AST2600 after enabling the SRAM
always by default.

> Also, it seems as though turning on SRAM should only happen once. Is
> this correct?

It's a global setting which affects all busses so it can be set just
once. Since we don't need to clear the bit, each bus driver enables the
bit without checking the bit that is simple way.

Thanks,

Jae

>>>> +            if (IS_ERR(gr_regmap))
>>>> +                    ret = PTR_ERR(gr_regmap);
>>>> +            else
>>>> +                    ret = regmap_update_bits(gr_regmap,
>>>> +                                             ASPEED_I2CG_GLOBAL_CTRL_REG,
>>>> +                                             ASPEED_I2CG_SRAM_BUFFER_EN,
>>>> +                                             ASPEED_I2CG_SRAM_BUFFER_EN);
>>>> +
>>>> +            if (ret)
>>>> +                    sram_enabled = false;
>>>> +    }
>>>> +
>>>> +    if (sram_enabled) {
>>>> +            struct resource *res = platform_get_resource(pdev,
>>>> +                                                         IORESOURCE_MEM, 1);
>>>> +
>>>> +            if (res && resource_size(res) >= 2)
>>>> +                    bus->buf_base = devm_ioremap_resource(&pdev->dev, res);
>>>> +
>>>> +            if (!IS_ERR_OR_NULL(bus->buf_base)) {
>>>> +                    bus->buf_size = resource_size(res);
>>>> +                    if (of_device_is_compatible(pdev->dev.of_node,
>>>> +                                                "aspeed,ast2400-i2c-bus")) {
>>>> +                            bus->buf_page = ((res->start >> 8) &
>>>> +                                             GENMASK(3, 0)) - 8;
>>>> +                            bus->buf_offset = (res->start >> 2) &
>>>> +                                              ASPEED_I2CD_BUF_OFFSET_MASK;
>>>> +                    }
>>>> +            }
>>>> +    }
> [...]
> 
> Cheers
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

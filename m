Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FDB201B19
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 21:17:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wML8DQWEKqhvNTLfEK+bHovQMPNNyUrbSLI+jFSWFLI=; b=ZWeWnLC7clw8i8jwj5Ae6AIXW
	zIDCh284XK9n6s7G/fIKxmsUiZKp0+vGwqbwOcLsNCUeD1aQIubZtY/Z3f+AxvuFWTshqoJJDz0IK
	uxHvmvUkQSld94DXdz0o997U9L7z7AKHNm/IzRXvV8wbGMF2EwOfImo0vrVkKfrhQv3j/nzUMS1ES
	cYlPzSbq/cI9z6CavAmYjnm+a3fx0+UUnqOqpVLkFtUv54Wud1sRA4i75zim89bL3DMZ+EL7pZfWH
	eRy+w7jfgIN1fSJIIa66+4ZaUfTDykH+axkPfTRsfP8ryjIFwa+LqOH04v/bSYMVX/20XmHXjSXtK
	NZ5KFoSsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmMVq-0004RK-R3; Fri, 19 Jun 2020 19:17:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmMVi-0004Qh-MB
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 19:17:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C7CEB2B;
 Fri, 19 Jun 2020 12:17:07 -0700 (PDT)
Received: from [10.57.9.128] (unknown [10.57.9.128])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 49DD33F73C;
 Fri, 19 Jun 2020 12:17:06 -0700 (PDT)
Subject: Re: [PATCH v8 4/4] gpio: xilinx: Utilize for_each_set_clump macro
To: Syed Nayyar Waris <syednwaris@gmail.com>, linus.walleij@linaro.org,
 akpm@linux-foundation.org
References: <cover.1592224128.git.syednwaris@gmail.com>
 <46c05c5deeada60a13ee0de83c68583d578f42fd.1592224129.git.syednwaris@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <7c0bcc9e-ab76-b356-7da6-6eb8b3868610@arm.com>
Date: Fri, 19 Jun 2020 20:17:05 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <46c05c5deeada60a13ee0de83c68583d578f42fd.1592224129.git.syednwaris@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_121710_809445_9E62FA16 
X-CRM114-Status: GOOD (  25.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: bgolaszewski@baylibre.com, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 vilhelm.gray@gmail.com, andriy.shevchenko@linux.intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-06-15 13:54, Syed Nayyar Waris wrote:
> This patch reimplements the xgpio_set_multiple function in
> drivers/gpio/gpio-xilinx.c to use the new for_each_set_clump macro.
> Instead of looping for each bit in xgpio_set_multiple
> function, now we can check each channel at a time and save cycles.
> 
> Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> Cc: Michal Simek <michal.simek@xilinx.com>
> Signed-off-by: Syed Nayyar Waris <syednwaris@gmail.com>
> Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
> ---
> Changes in v8:
>   - No change.
> 
> Changes in v7:
>   - No change.
> 
> Changes in v6:
>   - No change.
> 
> Changes in v5:
>   - Minor change: Inline values '32' and '64' in code for better
>     code readability.
> 
> Changes in v4:
>   - Minor change: Inline values '32' and '64' in code for better
>     code readability.
> 
> Changes in v3:
>   - No change.
> 
> Changes in v2:
>   - No change.
> 
>   drivers/gpio/gpio-xilinx.c | 62 ++++++++++++++++++++------------------
>   1 file changed, 32 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/gpio/gpio-xilinx.c b/drivers/gpio/gpio-xilinx.c
> index 67f9f82e0db0..e81092dea27e 100644
> --- a/drivers/gpio/gpio-xilinx.c
> +++ b/drivers/gpio/gpio-xilinx.c
> @@ -136,39 +136,41 @@ static void xgpio_set(struct gpio_chip *gc, unsigned int gpio, int val)
>   static void xgpio_set_multiple(struct gpio_chip *gc, unsigned long *mask,
>   			       unsigned long *bits)
>   {
> -	unsigned long flags;
> +	unsigned long flags[2];
>   	struct xgpio_instance *chip = gpiochip_get_data(gc);
> -	int index = xgpio_index(chip, 0);
> -	int offset, i;
> -
> -	spin_lock_irqsave(&chip->gpio_lock[index], flags);
> -
> -	/* Write to GPIO signals */
> -	for (i = 0; i < gc->ngpio; i++) {
> -		if (*mask == 0)
> -			break;
> -		/* Once finished with an index write it out to the register */
> -		if (index !=  xgpio_index(chip, i)) {
> -			xgpio_writereg(chip->regs + XGPIO_DATA_OFFSET +
> -				       index * XGPIO_CHANNEL_OFFSET,
> -				       chip->gpio_state[index]);
> -			spin_unlock_irqrestore(&chip->gpio_lock[index], flags);
> -			index =  xgpio_index(chip, i);
> -			spin_lock_irqsave(&chip->gpio_lock[index], flags);
> -		}
> -		if (__test_and_clear_bit(i, mask)) {
> -			offset =  xgpio_offset(chip, i);
> -			if (test_bit(i, bits))
> -				chip->gpio_state[index] |= BIT(offset);
> -			else
> -				chip->gpio_state[index] &= ~BIT(offset);
> -		}
> +	u32 *const state = chip->gpio_state;
> +	unsigned int *const width = chip->gpio_width;

Immutable pointers to mutable data are pretty unusual, especially for 
temporary local variables. Let me share my thought process upon seeing this:

- hmm, is "* const" simply a mistake that's meant to be "const *"?
- <scan the rest of the function> no, updating chip->gpio_state seems 
appropriate, so it can't be that.
- does anything take the address of either of these variables that might 
justify it?
- <scan the rest of the function again> nope, they're only ever used by 
value
- hmm, maybe it's just paranoia, but in that case why isn't width "const 
* const" since chip->gpio_width shouldn't need to be modified?
- hmm...

And at that point I've spent nearly a minute parsing what should have 
been be some trivial definitions of local shorthand variables. Defensive 
programming is all very well, but the distraction to readers (I can't be 
the only one) can easily outweigh any perceived value in trying to 
harden against theoretical future developer error in a straightforward 
~30-line function.

> +	unsigned long offset, clump;
> +	size_t index;
> +
> +	DECLARE_BITMAP(old, 64);
> +	DECLARE_BITMAP(new, 64);
> +	DECLARE_BITMAP(changed, 64);
> +
> +	spin_lock_irqsave(&chip->gpio_lock[0], flags[0]);
> +	spin_lock_irqsave(&chip->gpio_lock[1], flags[1]);

Why _irqsave on the inner lock? (think about it...)

> +
> +	bitmap_set_value(old, state[0], 0, width[0]);
> +	bitmap_set_value(old, state[1], width[0], width[1]);
> +	bitmap_replace(new, old, bits, mask, gc->ngpio);
> +
> +	bitmap_set_value(old, state[0], 0, 32);
> +	bitmap_set_value(old, state[1], 32, 32);
> +	state[0] = bitmap_get_value(new, 0, width[0]);
> +	state[1] = bitmap_get_value(new, width[0], width[1]);
> +	bitmap_set_value(new, state[0], 0, 32);
> +	bitmap_set_value(new, state[1], 32, 32);
> +	bitmap_xor(changed, old, new, 64);
> +
> +	for_each_set_clump(offset, clump, changed, 64, 32) {
> +		index = offset / 32;
> +		xgpio_writereg(chip->regs + XGPIO_DATA_OFFSET +
> +				index * XGPIO_CHANNEL_OFFSET,
> +				state[index]);
>   	}

TBH this looks like a rather overcomplicated and horribly inefficient 
way of doing:

	if (((u32 *)changed)[0])
		xgpio_writereg(chip->regs + XGPIO_DATA_OFFSET,
				state[0]);
	if (((u32 *)changed)[1])
		xgpio_writereg(chip->regs + XGPIO_DATA_OFFSET +
				XGPIO_CHANNEL_OFFSET, state[1]);

(and doing the changed/state update itself one word at a time for each 
condition would probably be a fair bit more efficient in terms of 
minimising spilling to the stack on 32-bit machines)

I can see this API having merit if the clumps are a weird size or 
expected to be significantly sparse in the bitmap, but making 
out-of-line calls to an iterator which itself involves another 
out-of-line call and an integer division, all just to process two halves 
of a 64-bit value, seems... unnecessarily silly :/

[drive-by review since I had a "packing small values into bitmaps" 
use-case and wondered if there might be anything interesting here]

Robin.

>   
> -	xgpio_writereg(chip->regs + XGPIO_DATA_OFFSET +
> -		       index * XGPIO_CHANNEL_OFFSET, chip->gpio_state[index]);
> -
> -	spin_unlock_irqrestore(&chip->gpio_lock[index], flags);
> +	spin_unlock_irqrestore(&chip->gpio_lock[1], flags[1]);
> +	spin_unlock_irqrestore(&chip->gpio_lock[0], flags[0]);
>   }
>   
>   /**
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

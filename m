Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 105E74B2EC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 09:17:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GySToOVBfcV7VffIYKQckZp2TKv3gYFreJlzY2XbUj4=; b=RP0jfPyJ0uSqHO
	3eo0v0f0n9K4zHfxC7b4wAFIshmFapJ8LB7Y0vS6wD6Am0FnTDrr52PxNhbLgI5fznnESihvNWCbl
	GBZNeWaKEDwy1QInnwvPxw25gS+JFyR/4AM/Dx+iNfgRsCe3EqVVHeCOkAGuyi4HWq3pZB1aWDIuC
	XcstnHlmrn/rux/QsNrAHavq8mbLXOe2NjzhxLCbP04aAL4JmkQx7YzXJW2BjGRIqG2NuPMlDRG57
	SiPoHbGqUJ+rintEKLGlUkhOvfe4djEgEEgJxJ4vZEW934qqlKk3EgU1CU8M7A9p9flYxYQ8ArFAZ
	7VqnGeC3ellPTs5nmdnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdUqD-0007uL-41; Wed, 19 Jun 2019 07:17:09 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdUpw-0007tn-JV; Wed, 19 Jun 2019 07:16:54 +0000
Received: from [192.168.178.24] ([109.104.35.35]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MDhpZ-1hndqq3XeB-00Aqff; Wed, 19 Jun 2019 09:16:39 +0200
Subject: Re: [PATCH v4] i2c: bcm2835: Model Divider in CCF
To: Annaliese McDermond <nh6z@nh6z.net>, eric@anholt.net,
 f.fainelli@gmail.com, wsa@the-dreams.de, swarren@wwwdotorg.org,
 linux-i2c@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <20190529042912.12956-1-nh6z@nh6z.net>
 <20190608171443.14484-1-nh6z@nh6z.net>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <cd25e228-c3e1-2a01-14e3-fe9a5198c78d@i2se.com>
Date: Wed, 19 Jun 2019 09:16:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190608171443.14484-1-nh6z@nh6z.net>
Content-Language: en-US
X-Provags-ID: V03:K1:t5ZOohhSSX0jU+TsmVmjcDsOLs7rTGgiDvh/JevsxG5BOISztkr
 WT9BabKNkNIua4M1kjmmSwUyNOhJZlnBqD1lyOAnc10Kropsm0BNTme1oE6WzguvifWfqcX
 5dmFbaW4Qkk5q3aUFeE4Uufdekw7jwl/o+tzvqw38wx7a0XZHm6hQLfcGeQtNc/c+iyEUtJ
 ZWGvLnP61Aqf/J3cuGFdA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Vk5iRPIkUNM=:K4GWXYq0TIVs6/NoSsCMdR
 I6dXjRNcHmMstU8CXaV/T9Ao6+zA3dAKirttW4ToGAXfqM87quua5OXD1kdNMa0pPYu7FcMLG
 5uqgS6N2yLMh1bkw0D06ZiyHmfmVBHc/1lhG5mRN5zDkaadAPmO2u6yo6OJv5ISXXDht5cZvt
 r9FZPek/PlTwZgXCEIlXLPWSS8/uteWUZq29wHAo9VkR+VMFpuc7PCjPogxd/7tXeKszuQ3mV
 RrU9omXAoQoqHr7D83R6/1Yjyzd0S0W18G/yaaegv+zbxCgOJgmGiJs5gRInXLgaCfVt0Hr62
 uTq9QawJYPar2fdkrSROtFdV++HBtHnhfY+l9flRcQeaQj7FYGfxjwHEECyavsYX9HnvDwbAo
 E3Oy9WE2c/xYsTf7Kohsp00DQW/q5WYYenYOg57DDB11UfN1Kwh6PJ7Pfx20wrlRlfe6BhkHo
 Xt45rtEZ7rlkdg6WJ+SUkPiVWZGfR6h4bhqIYHVLZHH56CVZsHKJ7y+zk5x1BWwZ1GcTDw/o4
 xV7L7ZSVcCe87ldCNq+5DbKD9xXY4NzRjc9n//j/uZhOmqLQ50u3m7YQKz3srpQCpLSAXjDVK
 yEFP6cbWPtf1o1lB5NmyivUFlOH8LFnSyvTRaH7/jk2JGB0UeZwlUMaZwst1lf99FxxoN8UvI
 SJOJtIOzgEq65drtUJaWUo9PLUYYjq9FS8hi7+DLh7BSC9JCELsgVe47wUiqMyvL7homvzdjw
 8fj+C2sBLSqtRDA2ka7EQ99yYXup5OSEJ3UY9MFWxIM6Mqi1gTMShTPRs6g=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_001652_938678_6A88C0F6 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
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
Cc: team@nwdigitalradio.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Annaliese,

On 08.06.19 19:14, Annaliese McDermond wrote:
> Model the I2C bus clock divider as a part of the Core Clock Framework.
> Primarily this removes the clk_get_rate() call from each transfer.
> This call causes problems for slave drivers that themselves have
> internal clock components that are controlled by an I2C interface.
> When the slave's internal clock component is prepared, the prepare
> lock is obtained, and it makes calls to the I2C subsystem to
> command the hardware to activate the clock.  In order to perform
> the I2C transfer, this driver sets the divider, which requires
> it to get the parent clock rate, which it does with clk_get_rate().
> Unfortunately, this function will try to take the clock prepare
> lock, which is already held by the slave's internal clock calls
> creating a deadlock.
>
> Modeling the divider in the CCF natively removes this dependency
> and the divider value is only set upon changing the bus clock
> frequency or changes in the parent clock that cascade down to this
> divisor.  This obviates the need to set the divider with every
> transfer and avoids the deadlock described above.  It also should
> provide better clock debugging and save a few cycles on each
> transfer due to not having to recalcuate the divider value.
>
i've seen reports [1], [2] that this commit causes trouble.

Could you please look into them?

Thanks

[1] - https://www.raspberrypi.org/forums/viewtopic.php?f=44&t=242856
[2] - https://archlinuxarm.org/forum/viewtopic.php?f=23&t=13719


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

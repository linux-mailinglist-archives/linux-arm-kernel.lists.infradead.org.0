Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2457ED03E7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 01:15:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1AoP8m589sy5iRP2dv9cajVV35yZfhJeX/mymdyzeF4=; b=rpvT+q6kqogiub
	Ga4BQ2LgG9FbzWlHhIMnSZjo4Qd1FRzaPKsWtYJ4+/k4IX4GcPU81hkvugT9BezI1NKg0zzSM6rBH
	Tfgb2ItEi3RaoZeQT7sEay8T5d5gzSXRmXds9bnjmE5tmp3mI0dj9ololxa/FO9bbpsuog5ViSZ80
	7yk3SSYuu1kqeb1nwnldF7eLjreQp1zzCn+w1XSdiLPwQrndMci/MLG7ogZWqeVqRgFugbVRnVnAt
	Wg6fjOT84HPJkHYpM6ugPYBH1qIsRoaZMa8sX/NqKnBXOTpzud9/x3R0dmvClrUUnZChK1bX3fqfk
	x/BAjOHuKSuzbORNprNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHyhf-00025g-VD; Tue, 08 Oct 2019 23:15:39 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHyhY-00025H-Do
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 23:15:34 +0000
Received: by mail-pl1-x641.google.com with SMTP id u20so93061plq.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 16:15:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ElRJeyhKKsOWRNeX29+OvPdp21SCBqlQ+7xzxKQTQog=;
 b=XlU2sto5s6pRQEduFFGr41SzIAZYwYciIK3xC5wPc1mqpWq4KVBPYUz7saTs84Q0FS
 q+A//aofU8AJiqFFarBV3VI/Fh6iCHSwqVyIR8HpljvlfSMV15RETN0+6dlRlZv6ktLC
 nMyr0PwfyUEJWeQa7dtqrmRHAfF/LD5xQBldMwWhyEfFVnC/MoaH615NYeaXt9lbnoVW
 YlCnqdsEb3jh7x2gVJGNfgtzy9Ar8y1hXTZ3Ozh8Td6RUDAeKcrsyxhCozXupfanqAkx
 znl7lpdSvbb4h5IjLjutjV+7Sbb61oeXyfC0wvEww1KbwFaESiVyCJjzc4PBEN6LNfQB
 2LYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ElRJeyhKKsOWRNeX29+OvPdp21SCBqlQ+7xzxKQTQog=;
 b=T2FZCi+5b3IT7L3V7g05Vys6eGSsmktoz5KNxCJn0ZWuGnMj2w6iAj3wL7SqGhaz64
 MWExvzig+TaBDhHWJF00cQTyHPIlILuZj/RE/QBpjalP3G37ajUmpGOaeU8er+yKC3Th
 99shHQSDREBIjW0Q8Bn/CB/oKuh3kIgrNPEYhWG+5IG8M73hmLhsDcbB4tD4tnihPJ/I
 1fPwJbv5+Ud4RxmNKlLnxUtlInCKGO8RgVpjgjULvUtiCS7aEOJYof7dA87NLGhViRg6
 9qXTI8oI1yhR3bHNuDCT6OFDt0Qz/I4ziBzkTuvZx3RT5a+vvntbBXBPGPr3a6VqrBKh
 YVvA==
X-Gm-Message-State: APjAAAVxoD4ROLikCsvwzonhRJ7TrhhT2pHQWdmfilQGxdImGOoLPHcW
 2T95HHZwgLdCRokm+E2Vi2ARuplz4GgGyuvy473FiA==
X-Google-Smtp-Source: APXvYqwwsu/BPIrkCBkEQf4DaZGZnRecPlzEl0anYZMVd06nlI1KDOrUxydhA8gxjHRLobO6utBmN6PYcgD37BIpuus=
X-Received: by 2002:a17:902:7282:: with SMTP id d2mr16453pll.325.1570576530918; 
 Tue, 08 Oct 2019 16:15:30 -0700 (PDT)
MIME-Version: 1.0
References: <20191007231313.4700-1-jae.hyun.yoo@linux.intel.com>
 <20191007231313.4700-5-jae.hyun.yoo@linux.intel.com>
 <20191008201254.GC155928@google.com>
 <29436b73-3473-d34d-0c7a-6f78ff077002@linux.intel.com>
In-Reply-To: <29436b73-3473-d34d-0c7a-6f78ff077002@linux.intel.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 8 Oct 2019 16:15:19 -0700
Message-ID: <CAFd5g4522cSkS_-aJHjc3fqM9nYRjs4DmQx9te3PcPMh8WEMBg@mail.gmail.com>
Subject: Re: [PATCH 4/5] i2c: aspeed: add buffer mode transfer support
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_161532_490690_F432D410 
X-CRM114-Status: GOOD (  39.82  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 8, 2019 at 2:10 PM Jae Hyun Yoo
<jae.hyun.yoo@linux.intel.com> wrote:
>
> Hi Brendan,
>
> On 10/8/2019 1:12 PM, Brendan Higgins wrote:
> > On Mon, Oct 07, 2019 at 04:13:12PM -0700, Jae Hyun Yoo wrote:
> >> Byte mode currently this driver uses makes lots of interrupt call
> >
> > nit: Drop "Byte mode".
>
> 'Byte mode' is one of modes which is described in the datasheet.
>
> Would it be better if I change it like below?
> "This driver uses byte mode that makes lots of interrupt call ..."

Yeah, I think that would probably be clearer.

> >> which isn't good for performance and it makes the driver very
> >> timing sensitive. To improve performance of the driver, this commit
> >> adds buffer mode transfer support which uses I2C SRAM buffer
> >> instead of using a single byte buffer.
> >
> > nit: Please use imperative mood.
>
> I used imperative mood in commit title. The commit message is okay as it
> is.

Hey, that's just what I have been told in the past. I don't actually
feel strongly about it though. If no one else cares, then it is fine.

> >> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> >> Tested-by: Tao Ren <taoren@fb.com>
> >> ---
> >>   drivers/i2c/busses/i2c-aspeed.c | 297 ++++++++++++++++++++++++++++----
> >>   1 file changed, 263 insertions(+), 34 deletions(-)
> >>
> >> diff --git a/drivers/i2c/busses/i2c-aspeed.c b/drivers/i2c/busses/i2c-aspeed.c
> >> index 40f6cf98d32e..37d1a7fa2f87 100644
> >> --- a/drivers/i2c/busses/i2c-aspeed.c
> >> +++ b/drivers/i2c/busses/i2c-aspeed.c
[...]
> >> @@ -238,6 +260,7 @@ static u32 aspeed_i2c_slave_irq(struct aspeed_i2c_bus *bus, u32 irq_status)
> >>   {
> >>      u32 command, irq_handled = 0;
> >>      struct i2c_client *slave = bus->slave;
> >> +    int i, len;
> >>      u8 value;
> >>
> >>      if (!slave)
> >> @@ -260,7 +283,12 @@ static u32 aspeed_i2c_slave_irq(struct aspeed_i2c_bus *bus, u32 irq_status)
> >>
> >>      /* Slave was sent something. */
> >>      if (irq_status & ASPEED_I2CD_INTR_RX_DONE) {
> >> -            value = readl(bus->base + ASPEED_I2C_BYTE_BUF_REG) >> 8;
> >> +            if (bus->buf_base &&
> >> +                bus->slave_state == ASPEED_I2C_SLAVE_WRITE_RECEIVED &&
> >> +                !(irq_status & ASPEED_I2CD_INTR_NORMAL_STOP))
> >
> > I think checking for the buf_base all over the place makes this really
> > complicated and hard to read.
> >
> > It might be better to just split this out and have separate handlers
> > based on what mode the driver is running in.
>
> I think you're saying about splitting this irq handler out to:
> aspeed_i2c_slave_byte_mode_irq()
> aspeed_i2c_slave_buffer_mode_irq()
> aspeed_i2c_slave_dma_mode_irq()
>
> Yes, I can do like that but it will bring us two bad things:
> 1. It makes big chunks of duplicate code because most of interrupt
>     handling logic is the same.
> 2. If we are going to change something in irq routine, we need to
>     touch all irq routines if the change is commonly used.
>
> I think, the way this patch uses is better.

I think there are other alternatives. For example, I think you could
abstract over the buffer reading mechanism here.

We might have a method on aspeed_i2c_bus called handle_rx_done() or
something like that which could get called here.

I just really don't want to grow the McCabe's complexity of this
function much more, it is really too high as it is. Nevertheless, I am
open to other suggestions on how to improve this function.

> >> +                    value = readb(bus->buf_base);
> >> +            else
> >> +                    value = readl(bus->base + ASPEED_I2C_BYTE_BUF_REG) >> 8;
> >>              /* Handle address frame. */
> >>              if (bus->slave_state == ASPEED_I2C_SLAVE_START) {
> >>                      if (value & 0x1)
> >> @@ -275,6 +303,20 @@ static u32 aspeed_i2c_slave_irq(struct aspeed_i2c_bus *bus, u32 irq_status)
> >>
> >>      /* Slave was asked to stop. */
> >>      if (irq_status & ASPEED_I2CD_INTR_NORMAL_STOP) {
> >> +            if (bus->slave_state == ASPEED_I2C_SLAVE_WRITE_RECEIVED &&
> >> +                irq_status & ASPEED_I2CD_INTR_RX_DONE) {
> >> +                    if (bus->buf_base) {
> >> +                            len = FIELD_GET(ASPEED_I2CD_BUF_RX_COUNT_MASK,
> >> +                                            readl(bus->base +
> >> +                                                  ASPEED_I2C_BUF_CTRL_REG));
> >
> > It looks like you have a lot of improvements in here unrelated to adding
> > support for buffer mode.
> >
> > I really appreciate the improvements, but it makes it harder to
> > understand what buffer features you are adding vs. what
> > improvments/modernizations you are making.
> >
> > Can you split this commit up?
>
> No, this isn't an improvement. This code will not be executed if
> transfer mode is byte mode. This is added because data handling pattern
> is different in buffer mode so the collected data in buffer mode should
> be sent when it recieves RX_DONE.

Oh sorry about that, I saw the switch to the
devm_platform_ioremap_resource below and saw all the FIELD_{GET|PREP}
and assumed that some of them were improvements. If
devm_platform_ioremap_resource is the only one, that's fine.

Actually, would you mind (in a separate commit), update the existing
usages to FIELD_{GET|PREP}? It's kind of jarring going back and forth
between them.

> >> +                            for (i = 0; i < len; i++) {
> >> +                                    value = readb(bus->buf_base + i);
> >> +                                    i2c_slave_event(slave,
> >> +                                                    I2C_SLAVE_WRITE_RECEIVED,
> >> +                                                    &value);
> >> +                            }
> >> +                    }
> >> +            }
> >>              irq_handled |= ASPEED_I2CD_INTR_NORMAL_STOP;
> >>              bus->slave_state = ASPEED_I2C_SLAVE_STOP;
> >>      }
[....]
> >> @@ -990,6 +1180,45 @@ static int aspeed_i2c_probe_bus(struct platform_device *pdev)
> >>              bus->get_clk_reg_val = (u32 (*)(struct device *, u32))
> >>                              match->data;
> >>
> >> +    /*
> >> +     * Enable I2C SRAM in case of AST2500.
> >> +     * SRAM is enabled by default in AST2400 and AST2600.
> >> +     */
> >
> > This probe function is already pretty complicated as it is. Can we move
> > this to a helper function (especially since it only applies to the
> > 25xx)?
>
> Okay, that would be better. I'll add this transfer mode setting logic
> as a helper function.
>
> >> +    if (of_device_is_compatible(pdev->dev.of_node,
> >> +                                "aspeed,ast2500-i2c-bus")) {
> >> +            struct regmap *gr_regmap = syscon_regmap_lookup_by_compatible("aspeed,ast2500-i2c-gr");
> >
> > So this memory is global, right? It is shared by all the busses?
>
> Yes, this is global register area which can be shared by all busses.
>
> > If I am reading this right, then I think we need to protect so that only
> > one bus is accessing this memory at a time.
>
> It will not be accessed at run time but only at probing time. Since we
> don't use multi-threaded probing, we don't need to protect it.

What if this is loaded as a module?

Also, it seems as though turning on SRAM should only happen once. Is
this correct?

> >> +            if (IS_ERR(gr_regmap))
> >> +                    ret = PTR_ERR(gr_regmap);
> >> +            else
> >> +                    ret = regmap_update_bits(gr_regmap,
> >> +                                             ASPEED_I2CG_GLOBAL_CTRL_REG,
> >> +                                             ASPEED_I2CG_SRAM_BUFFER_EN,
> >> +                                             ASPEED_I2CG_SRAM_BUFFER_EN);
> >> +
> >> +            if (ret)
> >> +                    sram_enabled = false;
> >> +    }
> >> +
> >> +    if (sram_enabled) {
> >> +            struct resource *res = platform_get_resource(pdev,
> >> +                                                         IORESOURCE_MEM, 1);
> >> +
> >> +            if (res && resource_size(res) >= 2)
> >> +                    bus->buf_base = devm_ioremap_resource(&pdev->dev, res);
> >> +
> >> +            if (!IS_ERR_OR_NULL(bus->buf_base)) {
> >> +                    bus->buf_size = resource_size(res);
> >> +                    if (of_device_is_compatible(pdev->dev.of_node,
> >> +                                                "aspeed,ast2400-i2c-bus")) {
> >> +                            bus->buf_page = ((res->start >> 8) &
> >> +                                             GENMASK(3, 0)) - 8;
> >> +                            bus->buf_offset = (res->start >> 2) &
> >> +                                              ASPEED_I2CD_BUF_OFFSET_MASK;
> >> +                    }
> >> +            }
> >> +    }
[...]

Cheers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D50189BDA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 13:20:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OcPRz462dZt5Wt2UlTiLxZamfn8SsbPRZimehLUp0M4=; b=biPp8mDMq/bqli
	BQ0qzwzonFcOClzyoI1Mv4fxPxNC5sY2xOAf9aDsTxS5ZF/W8miavnsuUN532sd2mjJ5qlKK/jwFT
	bZVmPZC88wTn3sDv7AQ2K4DmNDl24pyD+FOmCx4BEgIPj4vCL4sh/uivcobYw4HS/MGztWwwf8GRU
	/bdiZSd7/XQRz7d/JkYraUGmOIhXEt8R6HLGO5JNnn1ip4v1oP50SB02Hum/9JGHBA8QyPX2eiLUk
	MiQSToi4Q84IZ46Q8WSjGQI4zTVXIQosHEwUStM3K0HHz37z+VosyB5OLhzZdnujxBMz+9xqVaBWr
	aIdHVUx8dWHeI97Y40TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEXga-0004OD-0a; Wed, 18 Mar 2020 12:20:36 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEXgR-0004Ni-Vs
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 12:20:29 +0000
Received: by mail-io1-xd42.google.com with SMTP id c25so24054738ioi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 05:20:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dVoMkzgYQUBeeaFssbPW+r4P2HKu0vpJpb49VsywRCo=;
 b=f5cTNpqqRFSY0EGLfxCvuptPZpDADSjc0o8hQ527ovxzDq/SRQoj0oLH5t1wkyvVE3
 MUXllplWwbLnd8dT7j7DiUjRO+9F5JtXjZ5p5HUTb5UU9SmoUrbmvhNdF/C5NqOrAc/a
 D3VEO2Go+Va/hHonMJeAzGYrnfaSM38iHvUfQtDrYo15cA0mt3wfsREYt7CAzRhl834b
 0OLDil3/1fvQp4xs1owWyu2cpE2oaOIX/GEYBHs5pK2rMYmw1ergIfeRvlffoJ0dq8yX
 LwW5CmK5xp45LSOFBOgqGCcC9MGB1C7R5OyOgNEU26yNSM7a3W1GJWSECsbQRKKJyWSr
 RflA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dVoMkzgYQUBeeaFssbPW+r4P2HKu0vpJpb49VsywRCo=;
 b=meMKc6WcUoNtWw+Jm8w4R+EIQ36rK9g4eAU3ar3+P+eC6rLrd6iM3jPR0P0PqyCZZR
 jV/TZWzw0+VZBMujVXGjWsXDy+lpN9Z+j11CUbdftWTN7xIo7nFbhqdk2Y5kfIglWuct
 1iROLkSnyoVCBGXYNlfO3p1/Vur38wUG+awGgfzxqiEhElVSYqzx/COrHtXSeEkrbGhf
 KyML0szxV9JpCsCt/6P9bUzyV5VJS9xrvT67QvG2P0M7zK+E9eKeu0e+JaX8sw9/b+bS
 2TuEdnrD397H0Eoz5AjP15A3J1P8jAOS/zwNLz2Lg2kR+iVha76zCeexA0vTHF+nowxU
 eL8A==
X-Gm-Message-State: ANhLgQ1Q1YI1wSwx6uJ0ib1CZRWnAjFOJ4eBYF8yX36v2WP15/TLoz1k
 tbCP71OlpDObmBynRqVtQJsxi1q6Zdt1U7D+lX0=
X-Google-Smtp-Source: ADFU+vv1GjHzmJHkmCm6L4/nFLFSVHjSt5dOeZ0w4/BdGmF6pNvf2Yjs87MdjQe/k9Y7HUaXrnbsb2P1Z8GyfgT91Kk=
X-Received: by 2002:a05:6602:2098:: with SMTP id
 a24mr3395500ioa.101.1584534026916; 
 Wed, 18 Mar 2020 05:20:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200218135627.24739-1-ext-jaakko.laine@vaisala.com>
In-Reply-To: <20200218135627.24739-1-ext-jaakko.laine@vaisala.com>
From: Shubhrajyoti Datta <shubhrajyoti.datta@gmail.com>
Date: Wed, 18 Mar 2020 17:50:15 +0530
Message-ID: <CAKfKVtFf+VpinkOGsBFZ2-_PKvx-C1L7G7_uhY2RCvV5dy6L_w@mail.gmail.com>
Subject: Re: [PATCH] i2c: xiic: Support disabling multi-master in DT
To: Laine Jaakko EXT <ext-jaakko.laine@vaisala.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_052028_051447_D2209938 
X-CRM114-Status: GOOD (  36.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shubhrajyoti.datta[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "michal.simek@xilinx.com" <michal.simek@xilinx.com>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

HI Laine,

On Tue, Feb 18, 2020 at 7:29 PM Laine Jaakko EXT
<ext-jaakko.laine@vaisala.com> wrote:
>
> I2C master operating in multimaster mode can get stuck
> indefinitely if I2C start is detected on bus, but no master
> has a transaction going.
>
> This is a weakness in I2C standard, which defines no way
> to recover, since all masters are indefinitely disallowed
> from interrupting the currently operating master. A start
> condition can be created for example by an electromagnetic
> discharge applied near physical I2C lines. Or a already
> operating master could get reset immediately after sending
> a start.
>
> If it is known during device tree creation that only a single
> I2C master will be present on the bus, this deadlock of the
> I2C bus could be avoided in the driver by ignoring the
> bus_is_busy register of the xiic, since bus can never be
> reserved by any other master.
>
> This patch adds this support for detecting multi-master flag
> in device tree and when not provided, improves I2C reliability
> by ignoring the therefore unnecessary xiic bus_is_busy register.
>
> Error can be reproduced by pulling I2C SDA -line temporarily low
> by shorting it to ground, while linux I2C master is operating on
> it using the xiic driver. The application using the bus will
> start receiving linux error code 16: "Device or resource busy"
> indefinitely:
>
> kernel: pca953x 0-0020: failed writing register
> app: Error writing file, error: 16
>
> With multi-master disabled device will instead receive error
> code 5: "I/O error" while SDA is grounded, but recover normal
> operation once short is removed.
>
> kernel: pca953x 0-0020: failed reading register
> app: Error reading file, error: 5
>
> Signed-off-by: Jaakko Laine <ext-jaakko.laine@vaisala.com>
> ---
>
> Applies against Linux 5.6-rc1 from master in
> https://git.kernel.org/pub/scm/linux/kernel/git/wsa/linux.git
>
> I would like to point out that that since this patch disables
> multimaster mode based on the standard I2C multimaster property
> in device tree (as it propably should) and since the driver has
> previously supported multimaster even when this property doesn't
> exist in device tree, there is a possible backwards
> compatibility issue:
>
> If there are devices relying on the multimaster mode to work
> without defining the property in device tree, their I2C bus
> might not work without issues anymore after this patch, since
> the driver will asume it is the only master on bus and could
> therefore interrupt the communication of some other master on
> same bus.
>
> Please suggest some alternative fix if this is not acceptable
> as is. On the other hand supporting multimaster even on a bus
> with only a single master does currently cause some
> reliability issues since the bus can get indefinitely stuck.
> I don't think there exists a I2C protocol compatible way to
> resolve the deadlock on multimaster bus.
>
>  drivers/i2c/busses/i2c-xiic.c | 52 +++++++++++++++++++++--------------
>  1 file changed, 32 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/i2c/busses/i2c-xiic.c b/drivers/i2c/busses/i2c-xiic.c
> index 90c1c362394d..37f8d6ee0577 100644
> --- a/drivers/i2c/busses/i2c-xiic.c
> +++ b/drivers/i2c/busses/i2c-xiic.c
> @@ -46,19 +46,20 @@ enum xiic_endian {
>
>  /**
>   * struct xiic_i2c - Internal representation of the XIIC I2C bus
> - * @dev:       Pointer to device structure
> - * @base:      Memory base of the HW registers
> - * @wait:      Wait queue for callers
> - * @adap:      Kernel adapter representation
> - * @tx_msg:    Messages from above to be sent
> - * @lock:      Mutual exclusion
> - * @tx_pos:    Current pos in TX message
> - * @nmsgs:     Number of messages in tx_msg
> - * @state:     See STATE_
> - * @rx_msg:    Current RX message
> - * @rx_pos:    Position within current RX message
> - * @endianness: big/little-endian byte order
> - * @clk:       Pointer to AXI4-lite input clock
> + * @dev:               Pointer to device structure
> + * @base:              Memory base of the HW registers
> + * @wait:              Wait queue for callers
> + * @adap:              Kernel adapter representation
> + * @tx_msg:            Messages from above to be sent
> + * @lock:              Mutual exclusion
> + * @tx_pos:            Current pos in TX message
> + * @nmsgs:             Number of messages in tx_msg
> + * @state:             See STATE_
> + * @rx_msg:            Current RX message
> + * @rx_pos:            Position within current RX message
> + * @endianness:                big/little-endian byte order
> + * @multimaster:       Indicates bus has multiple masters
> + * @clk:               Pointer to AXI4-lite input clock
>   */
>  struct xiic_i2c {
>         struct device           *dev;
> @@ -73,6 +74,7 @@ struct xiic_i2c {
>         struct i2c_msg          *rx_msg;
>         int                     rx_pos;
>         enum xiic_endian        endianness;
> +       bool                    multimaster;
>         struct clk *clk;
>  };
>
> @@ -521,19 +523,26 @@ static int xiic_bus_busy(struct xiic_i2c *i2c)
>  static int xiic_busy(struct xiic_i2c *i2c)
>  {
>         int tries = 3;
> -       int err;
> +       int err = 0;
>
>         if (i2c->tx_msg)
>                 return -EBUSY;
>
> -       /* for instance if previous transfer was terminated due to TX error
> -        * it might be that the bus is on it's way to become available
> -        * give it at most 3 ms to wake
> +       /* In single master mode bus can only be busy, when in use by this
> +        * driver. If the register indicates bus being busy for some reason we
> +        * should ignore it, since bus will never be released and i2c will be
> +        * stuck forever.
>          */

the other thing i was thinking how will multithreading .
Should we have a lock here.

> -       err = xiic_bus_busy(i2c);
> -       while (err && tries--) {
> -               msleep(1);
> +       if (i2c->multimaster) {
> +               /* for instance if previous transfer was terminated due to TX
> +                * error it might be that the bus is on it's way to become
> +                * available give it at most 3 ms to wake
> +                */
>                 err = xiic_bus_busy(i2c);
> +               while (err && tries--) {
> +                       msleep(1);
> +                       err = xiic_bus_busy(i2c);
> +               }
>         }
>
>         return err;
> @@ -811,6 +820,9 @@ static int xiic_i2c_probe(struct platform_device *pdev)
>                 goto err_clk_dis;
>         }
>
> +       i2c->multimaster =
> +               of_property_read_bool(pdev->dev.of_node, "multi-master");
> +
Current will default to mustimaster is 0.
May be the default should be 1 if not specified.
>         /*
>          * Detect endianness
>          * Try to reset the TX FIFO. Then check the EMPTY flag. If it is not
> --
> 2.19.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6429F1CD84A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:28:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y/DXHvIjGk/t277cKkM0UFL0wHlDi38HqH970MAgjpU=; b=M/qqfWSRDKa6F7
	ZaS1s1IBprWc806ffLn83zfd8xzXTkFuXXJnUDZGX9McuQYLibf7pwT/jXeF4DM//bCx0SElZPBq7
	kil/77KjzcZ9LV0fi+VHwGtNWFyolFZ3M20GCiItoDVnaX78BcIzXMHWfq8jACOydeombEqNs9vZ7
	r6jBmFaOA/A6oQ6lL2fVzVVia1FoxPUXGM44Oz2VH9vAHegmKTZ7OWjkvQLwpG8WJbRIVVIzx72mp
	YvdDsdZdi9uoCBBUkKJ2YXJX6SegQsHP9MfCQO3uBc8S26A4H79OFS1SjUlxT3tGG56zkCRRk6Vnm
	Ht0i2Eln7NrvTcGZ4p1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6bC-00087C-NZ; Mon, 11 May 2020 11:27:54 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6ay-00085b-DX
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:27:42 +0000
Received: by mail-lj1-x244.google.com with SMTP id a21so9023051ljj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 04:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vaB9hU9OmyfFXTQp3Ro8TCS0oJ1JBGJMlLHsQD/icQs=;
 b=B11Pm6i378UfISHZsNk0nzMTp1ytpuFElTXChP5p5rfSBHgFXSvuIWdO9AuSII/v4L
 JoXj8tmU64Sov4ttXUk+utPGxHIq+UsAHzKdC+xfO2pyjaQgU0B8FNCNM1tEE5a6a+Bb
 lVLbbKB5+Drtgyu+Cx6j2yuv4R6xL3Vx83M/2VTvQGYK5L9CGr8jRyKNLN/TGYcESVrg
 fPnZvzpHrNC2Ub7OaStzqBPbwrPL5nuRFb5OH615K8cpdmSNBoRfCYqnn1LNnamAJLVa
 ymOntHstg1G1B2aaxiJSR7DHWzSbohQ93hZO8PTB8Ync9/qLg3Qkf7TZJn0VuMhti5DF
 Dd4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vaB9hU9OmyfFXTQp3Ro8TCS0oJ1JBGJMlLHsQD/icQs=;
 b=b/mh8TaII2sZAGsMnPBFd1BoI9gaf8z5ODgLk3n/fMNM+1VxXPlKecrKahpDq5X0yJ
 74BTIdCtvfp+u5EczzpJC6+WdRFViIDBC2O7/w9o08RIM0wzhkfXPmDZql9xTMiF2/TX
 5eku7gENYn5wuXDbciCQjmQu0iWYNlvhkEp+t7ygSuqEyFtrS7mPVSwcWpfQ7IvKP/MZ
 CZCbHeel8ENRet5ayJQsb2RXT2HASY3FFMSICAGRJ01hiILNwE8SvEy5zBrF6sYRJzTK
 2WItJ1zOYyhHt4TlSQknPJi/5Q4ESZDshzIoAceoeyOS2NvPYANeNLlMaBpV5YkY3XnB
 g8dQ==
X-Gm-Message-State: AOAM530Fdw89X1o92/r4iDr83SaPIU0vLZKX+hAs/QyOQFzCXXmr57XM
 vCeweoVvAkTcW56S6lv4g9O3pfBoJe7a8YSL7x4bCSmuEnE=
X-Google-Smtp-Source: ABdhPJxjS7B69iERkJXybN1FRa7Oxd7PZfUVSfeSeQJxEpGjVNnxZ1aHys/mj0Ck3Q4insH6zi+f+AQGU7gf0xFawuI=
X-Received: by 2002:a2e:b6d3:: with SMTP id m19mr6903929ljo.43.1589196457920; 
 Mon, 11 May 2020 04:27:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200510102330.66715-1-tali.perry1@gmail.com>
 <20200510102330.66715-3-tali.perry1@gmail.com>
 <20200511091759.GE185537@smile.fi.intel.com>
In-Reply-To: <20200511091759.GE185537@smile.fi.intel.com>
From: Tali Perry <tali.perry1@gmail.com>
Date: Mon, 11 May 2020 14:28:50 +0300
Message-ID: <CAHb3i=tERsM+gwmQN1+vjnML9o5NxRK=uBokEUsd-Ljyje4s3A@mail.gmail.com>
Subject: Re: [PATCH v10 2/3] i2c: npcm7xx: Add Nuvoton NPCM I2C controller
 driver
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_042740_659986_F3864BF2 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [tali.perry1[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tali.perry1[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree <devicetree@vger.kernel.org>, Tomer Maimon <tmaimon77@gmail.com>,
 Nancy Yuen <yuenn@google.com>, avifishman70@gmail.com,
 Patrick Venture <venture@google.com>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>, Wolfram Sang <wsa@the-dreams.de>,
 Brendan Higgins <brendanhiggins@google.com>, ofery@google.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, kfting@nuvoton.com,
 Rob Herring <robh+dt@kernel.org>, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 12:18 PM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Sun, May 10, 2020 at 01:23:29PM +0300, Tali Perry wrote:
> > Add Nuvoton NPCM BMC I2C controller driver.
>
> Some cosmetic changes needs to be done.
>

Thanks for the review and the comments.
Will fix all, have a few questions (below)

> ...
>
> > +/*
> > + * Nuvoton NPCM7xx I2C Controller driver
> > + *
> > + * Copyright (C) 2020 Nuvoton Technologies tali.perry@nuvoton.com
> > + */
>
> So, entire file has C99 comment style, but this and few other places.
> Any reason of inconsistency?
>
> ...
>
> > +#if IS_ENABLED(CONFIG_DEBUG_FS)
>
> Why?

We wanted to add an optional feature to track i2c slave status.
the NPCM has 16 channels handling multiple devices each. Some of the devices
are polled periodically, and might power down.
The user wanted to implement a health monitoring option
to occasionally check the status of the buses (how many timeouts, recovery etc.)
This feature is optional and depends on CONFIG_DEBUG_FS The counters are exposed
to user through the file system.

....

> ...
>
> > +#define I2C_NUM_OF_ADDR 10
>
> Is it 10-bit address support or what?
>

No, the NPCM has an option to respond to multiple slave addresses
(10 own slave addresses)



...

> > +     // Repeat the following sequence until SDA is released
> > +     do {
> > +             // Issue a single SCL toggle
> > +             iowrite8(NPCM_I2CCST_TGSCL, bus->reg + NPCM_I2CCST);
> > +             udelay(20);
> > +             // If SDA line is inactive (high), stop
> > +             if (npcm_i2c_get_SDA(_adap)) {
> > +                     done = true;
> > +                     status = 0;
> > +             }
> > +     } while (!done && iter--);
>
> readx_poll_timeout() ?

Not exactly, readx_poll_timeout includes only a read operation, here there is a
write in the middle. (iowrite8)


>
> ...
>


...


Thanks!
Tali Perry
Nuvoton Technologies

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

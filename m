Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF63458604
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 17:38:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=53qHRPl593q+yemlJlb0NEt6Ci0bBcNiwJs5E+hWGJM=; b=s2yMKbQvfWulMA
	z8y83zM1IZcA4KZn1yjAgdkn33NMMAf8DkRazxV91its+5BRWVbGo2GrnaYFZ0cmJDvWCJZCY62KL
	Y5bXIPd+R8G++JqGoV4bDIdDVyGL4fGepedKOlJuNrK870Ttt9XqK6Vwr5rupft1aNwmjNVDS5X45
	c0Ac6LS+RKngmTBT/Q0uNXc7bRHIBcLSZbQeIouH7d4KtqwzYSbgU9IYGPjqo2R1UTKXdqxZ78tW7
	Bad6W07eJJsf2dcF5+KqeUSdPph2+2hQOBJrr1cQqRqaXSMPCHxAqIZcwMXbcxrtxYtyMKvO+zxQP
	fCxMpz9QJbPZfkrZ3YXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgWTI-0002K6-0C; Thu, 27 Jun 2019 15:38:00 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgWO7-0006YB-MS
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 15:32:42 +0000
Received: by mail-io1-xd42.google.com with SMTP id n5so5670553ioc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 08:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=59Nn5nbRZMXaiSawckn2aQ0fMAxX2U20XTjPkPEFxrM=;
 b=VmJcIzz2oyCbL3ltguvci+laxVDoe5qs6Vvm19EijK1BOvGGG9BGPVrb6Slx88G/8I
 Xw8APQexZMaGSggJhNV/JASgUuylKtgQ/D20Fcp0Nuz/9NTl+/rWjPiHQHZ+Lyl5/8sz
 znKErZCuNbs68f29ekSCZoaATgcvpMTKGrDeguV5jAEoRUqv3RSAAhCAyxeLo+QEtWmC
 p3qnZUzhcusy5LRytRb9DUG5bDqy4/G+F76EmcwSH/CNd8k26UxCBkV6UTKcbXhbzBiC
 etOgLhxJHu8ISguqUZklDcaatKaCS7I2/LIyd9xxfsLk48v8jCnLi8tHIkCSmB+J0MbD
 11jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=59Nn5nbRZMXaiSawckn2aQ0fMAxX2U20XTjPkPEFxrM=;
 b=VL7xcKihn4CclBQtBTGll0cd0e3Mv9hxEOMcw1BnsleUgbaRXDbIvdzT3ppOHlkDaN
 n9s7H7dE5VH4B3tWy+PZg4LKPMf/jw6EB00ThzL1AXfrlb9pByL8xmpdZv1FoMP5lCtm
 y7AVJP+z9R/nUBbnJqhdlM+j91AkjkjtxHNGpeYTuMwJFbdCDYIV2XO++MTaCaoHqR70
 7InElNIlJTqSo63/z5w0NkEnofyr83oFVMmzBIH65HjhGR7Q8o9iQfHPpE7BUjtomMDP
 HzucSCDgBalcIwAch0uMScObiw/2kKEaITUqLcDZeWvxizWNLWL01B6gs/yi3Q1uqkBa
 fKXA==
X-Gm-Message-State: APjAAAVUTIBRlP3k0o0ER4sWXq7dmhNErnRzshexJJ367Z+MF+6rR8yC
 hUbtSi6AodVQ6yLJnmooh/NRQ2ZgJKj9ToKw+ZI=
X-Google-Smtp-Source: APXvYqws3mmBGC1Nm5BMf5lOqIkEiXBt4nu6Kkfl1ZOPSvzUJsjmwD4gIgkLWMsvDM5nmAawlgv+cqbhhf0ZmY71Jfw=
X-Received: by 2002:a02:a38d:: with SMTP id y13mr5124660jak.68.1561649558019; 
 Thu, 27 Jun 2019 08:32:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190603083005.4304-1-peng.fan@nxp.com>
 <20190603083005.4304-3-peng.fan@nxp.com>
 <CABb+yY1wW-arSMQSYjrezXOZ0Ar_shAr78MOyUD3hBxXohWx3g@mail.gmail.com>
 <AM0PR04MB44813A4DE544E53EB7B6F02B88E30@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CABb+yY38MAZqVOhjyV+GByPvpFcTfKbNG1rJ8YDRd1vi1F4fqg@mail.gmail.com>
 <AM0PR04MB44814D3BD59033ECDDE3094C88E20@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <e49278ba-f734-e019-ab44-53afe558bd85@gmail.com>
 <CABb+yY2B_bGqZhd3HRm2qOwGNXG8UYvRo0_uBmwGbx_1gA-vfA@mail.gmail.com>
 <20190627090903.GD13572@e107155-lin>
In-Reply-To: <20190627090903.GD13572@e107155-lin>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Thu, 27 Jun 2019 10:32:27 -0500
Message-ID: <CABb+yY1aVbKfuqX=GvTzyjkgRXB3DXLvgjZARGn8k8m2R2vSqA@mail.gmail.com>
Subject: Re: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_083239_887357_84844032 
X-CRM114-Status: GOOD (  26.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jassisinghbrar[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Devicetree List <devicetree@vger.kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>, ",
 Sascha Hauer" <kernel@pengutronix.de>, Andre Przywara <andre.przywara@arm.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 4:09 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Wed, Jun 26, 2019 at 01:27:41PM -0500, Jassi Brar wrote:
> > On Wed, Jun 26, 2019 at 11:44 AM Florian Fainelli <f.fainelli@gmail.com> wrote:
> > >
> > > On 6/26/19 6:31 AM, Peng Fan wrote:
> > > >>> The firmware driver might not have func-id, such as SCMI/SCPI.
> > > >>> So add an optional func-id to let smc mailbox driver could
> > > >>> use smc SiP func id.
> > > >>>
> > > >> There is no end to conforming to protocols. Controller drivers should
> > > >> be written having no particular client in mind.
> > > >
> > > > If the func-id needs be passed from user, then the chan_id suggested
> > > > by Sudeep should also be passed from user, not in mailbox driver.
> > > >
> > > > Jassi, so from your point, arm_smc_send_data just send a0 - a6
> > > > to firmware, right?
> > > >
> > > > Sudeep, Andre, Florian,
> > > >
> > > > What's your suggestion? SCMI not support, do you have
> > > > plan to add smc transport in SCMI?
> > >
> > > On the platforms that I work with, we have taken the liberty of
> > > implementing SCMI in our monitor firmware because the other MCU we use
> > > for dynamic voltage and frequency scaling did not have enough memory to
> > > support that and we still had the ability to make that firmware be
> > > trusted enough we could give it power management responsibilities. I
> > > would certainly feel more comfortable if the SCMI specification was
> > > amended to indicate that the Agent could be such a software entity,
> > > still residing on the same host CPU as the Platform(s), but if not,
> > > that's fine.
> > >
> > > This has lead us to implement a mailbox driver that uses a proprietary
> > > SMC call for the P2A path ("tx" channel) and the return being done via
> > > either that same SMC or through SGI. You can take a look at it in our
> > > downstream tree here actually:
> > >
> > > https://github.com/Broadcom/stblinux-4.9/blob/master/linux/drivers/mailbox/brcmstb-mailbox.c
> > >
> > > If we can get rid of our own driver and uses a standard SMC based
> > > mailbox driver that supports our use case that involves interrupts (we
> > > can always change their kind without our firmware/boot loader since FDT
> > > is generated from that component), that would be great.
> > >
> > static irqreturn_t brcm_isr(void)
> > {
> >          mbox_chan_received_data(&chans[0], NULL);
> >          return IRQ_HANDLED;
> > }
> >
> > Sorry, I fail to understand why the irq can't be moved inside the
> > client driver itself? There can't be more cost to it and there
> > definitely is no functionality lost.
>
> What if there are multiple clients ?
>
There is a flag IRQF_SHARED for such situations.
(good to see you considering multiple clients per channel as a legit scenario)

> And I assume you are referring to case like this where IRQ is not tied
> to the mailbox IP.
>
Yes, and that is the reason the irq should not be managed by the mailbox driver.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

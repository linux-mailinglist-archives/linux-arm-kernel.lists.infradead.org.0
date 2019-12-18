Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9173124538
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 12:02:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E445YciGaU+bOPdXlBMuSsuspgEzpf7axMcvfz4xVmM=; b=gghCkKYvrLUz3X
	myLkJ19F7Qz28+tHFM+B0ntCnqIK3btBYYs24ws9ejIsDIOCG6hJrMH+Jwnon7jgHpVHei4PgI9G5
	g+Kt8/ppCwEyC2wNdYQu98q9PAa0kwiCIddxSOjFFOm69fjNjQ96oM8U7/9PCD2LR294m3rm8GS0t
	1iVnav6xSr6gcS8PsN7cCH1DxFyG9NJA25i0WjmABJWJCmlwh1LwIr2NE28TNEY9h0kw5+RaWJABj
	clMdjQL6Tkmq5fI9rh5i1FWQvWgEpfO8OlADRb0lxqRplNxnTuRPFlUpDKvswO5R7Nm4ayXKgeUBA
	XvTcDv344cQIzCHa5N+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihX5l-0004vF-8c; Wed, 18 Dec 2019 11:02:09 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihX5c-0004sw-Vq
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 11:02:02 +0000
Received: by mail-ed1-x544.google.com with SMTP id v28so1273847edw.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 03:01:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jOvy+Wb152d0zqbPj1ADcU3RyJlqbcpQxfTLATNTuZQ=;
 b=PVuXNYDR30Vl0OmPK1uSJ8/tPsKevwn7uSPY4MGZ/nxyH/Oi9o8xAnX+VGgjx1AICE
 5aEyvWakA/ZsPGdeagJcN8I8oDlmJtuiIfkwl3blosCbdenj7/Fd8To9TQNpXKZWp+5S
 RaA69AoMh7LiR3p6N5I6Q/DeOTk1opqaNdljEXK+LoDryFw6tdufAWouMwJa1HX+vfrh
 cuc7LU6miJEuGhbzGzoPn644sI0wjVwZXI7VqsUFWCjQ/+F32hdIR+hIpqhiXKXDsEr7
 cGWMZ6Lt0r6HG1O+6y9ODp459cgFAKRpR9G3SGb8FIXyZ9TLccF+8UcL03AKqM1Gy3lo
 LgCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jOvy+Wb152d0zqbPj1ADcU3RyJlqbcpQxfTLATNTuZQ=;
 b=jVnHsf2Jqpd96whwBBhMFKqC5RDK7zZyXRyRVE4UOxM8Knp097uTQUQp3IgTvyQj2U
 aNPbBO2YiexoFCR6OJBsJZ58NK+vq3V/PSLQPuN9nLQW4EwoFveCrxdtr8CZ+AdeqBW4
 s7iXNOjITAN9KrH/0brQwhGHeDIyq/nV3atpoHu/VgUbIABLtPN/eY/Cclxb5lSXCpaW
 J7NGtwoBneq6e8o3WorYUWfsAPwOkLdAyG5bw57i2gf9cavytqFBk31YApawn3Vo3jN3
 ikIAvBRNVQXfvrlvPuwJlRUO/jbjrQKsYD7RrUt3kfeVP4KTSLbD6OTX8L02LP2MbIlG
 +dxg==
X-Gm-Message-State: APjAAAXb/5IWFV88LNOMCn4tgXI6uKzwGpuIwtFt3Z7vrmkq5G0IUGN2
 eODLjrFmup8C4uPSsTD0YoO/pgY0Et0NF3tLx3k=
X-Google-Smtp-Source: APXvYqwjFGNoZwWaGD+ER9s2eFutTysDIRNxst+Rt1z3axVUFONKvQSxEEiVuQXpNKTc+8p03XpM24TZxlpMY/WZM24=
X-Received: by 2002:a50:9e01:: with SMTP id z1mr1572715ede.232.1576666916178; 
 Wed, 18 Dec 2019 03:01:56 -0800 (PST)
MIME-Version: 1.0
References: <1540378203-1655-1-git-send-email-shubhrajyoti.datta@gmail.com>
 <20181024105854.GU30658@n2100.armlinux.org.uk>
In-Reply-To: <20181024105854.GU30658@n2100.armlinux.org.uk>
From: Shubhrajyoti Datta <shubhrajyoti.datta@gmail.com>
Date: Wed, 18 Dec 2019 16:31:44 +0530
Message-ID: <CAKfKVtFLssjC3j3yHvQ98TNGSf=DRdMO+YdUyMn0o91+Jn10Zw@mail.gmail.com>
Subject: Re: [PATCH] i2c: cadence: Implement timeout
To: Russell King - ARM Linux <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_030201_072855_F4E7BAEB 
X-CRM114-Status: GOOD (  20.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (shubhrajyoti.datta[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Michal Simek <michal.simek@xilinx.com>,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-i2c <linux-i2c@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 24, 2018 at 4:29 PM Russell King - ARM Linux
<linux@armlinux.org.uk> wrote:
>
> On Wed, Oct 24, 2018 at 04:20:03PM +0530, shubhrajyoti.datta@gmail.com wrote:
> > From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> >
> > In some cases we are waiting in a loop. Replace the infinite wait with
> > the  timeout.
> >
> > Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> > ---
> >  drivers/i2c/busses/i2c-cadence.c | 30 ++++++++++++++++++++++++++----
> >  1 file changed, 26 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/i2c/busses/i2c-cadence.c b/drivers/i2c/busses/i2c-cadence.c
> > index b136057..9c38278 100644
> > --- a/drivers/i2c/busses/i2c-cadence.c
> > +++ b/drivers/i2c/busses/i2c-cadence.c
> > @@ -209,6 +209,7 @@ static irqreturn_t cdns_i2c_isr(int irq, void *ptr)
> >       struct cdns_i2c *id = ptr;
> >       /* Signal completion only after everything is updated */
> >       int done_flag = 0;
> > +     unsigned int timeout;
> >       irqreturn_t status = IRQ_NONE;
> >
> >       isr_status = cdns_i2c_readreg(CDNS_I2C_ISR_OFFSET);
> > @@ -235,6 +236,7 @@ static irqreturn_t cdns_i2c_isr(int irq, void *ptr)
> >           ((isr_status & CDNS_I2C_IXR_COMP) ||
> >            (isr_status & CDNS_I2C_IXR_DATA))) {
> >               /* Read data if receive data valid is set */
> > +             timeout = 1000;
> >               while (cdns_i2c_readreg(CDNS_I2C_SR_OFFSET) &
> >                      CDNS_I2C_SR_RXDV) {
> >                       /*
> > @@ -253,6 +255,16 @@ static irqreturn_t cdns_i2c_isr(int irq, void *ptr)
> >
> >                       if (cdns_is_holdquirk(id, hold_quirk))
> >                               break;
> > +                     timeout--;
> > +                     if (timeout)
> > +                             mdelay(1);
> > +                     else
> > +                             break;
> > +             }
> > +             if (!timeout) {
> > +                     id->err_status = -ETIMEDOUT;
> > +                     complete(&id->xfer_done);
> > +                     return IRQ_HANDLED;
>
> Good kernel programming principle: Always check for the success
> condition when exiting due to timeout rather than the fact that we
> timed out.
>
> Also, is this _really_ a loop that needs a timeout condition?  Looking
> at the original code, it looks like the purpose of the loop is to read
> more than one byte, and you are introducing a 1ms delay between the
> read of each byte.
Thanks for the review.
I agree will skip this patch.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
